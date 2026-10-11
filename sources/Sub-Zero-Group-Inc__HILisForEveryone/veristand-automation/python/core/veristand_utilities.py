from dataclasses import dataclass
import time, contextlib, psutil, subprocess, enum
from typing import Optional
from pathlib import Path
from psutil._common import AccessDenied, NoSuchProcess
from niveristand.legacy.NIVeriStand import Workspace2, PySystemState
from niveristand.clientapi import realtimesequencedefinition as rtseqapi
from core.utils import wait_until


class LaunchMode(enum.Enum):
    # Launch full VeriStand desktop app and project explorer.
    # This mode opens the project and can connect an operate screen for visual feedback.
    UI = "ui"
    # Launch only the VeriStand gateway server (no desktop UI windows).
    # This mode is typically preferred for CI/automation runs.
    HEADLESS = "headless"


DEFAULT_LAUNCH_MODE = LaunchMode.UI

@dataclass
class Project:
    hostname: str = "localhost"
    veristand_gateway: str = (r"C:\Program Files\National Instruments\VeriStand 2024\veristand-server.exe")
    veristand_ui: str = (r"C:\Program Files\National Instruments\VeriStand 2024\veristand.exe")
    # Available values: LaunchMode.UI or LaunchMode.HEADLESS.
    # UI opens/verifies the project in the desktop app; HEADLESS starts only the gateway service.
    launch_mode: LaunchMode = DEFAULT_LAUNCH_MODE
    project_directory: str = ""
    project_file: Optional[str] = None
    screen_file: Optional[str] = None
    calibration_file: Optional[str] = None
    system_definition_file: Optional[str] = None

    def __post_init__(self):
        if isinstance(self.launch_mode, str):
            self.launch_mode = LaunchMode(self.launch_mode.lower())
        if self.calibration_file is None:
            raise ValueError("calibration_file must be provided")
        if self.system_definition_file is None:
            raise ValueError("system_definition_file must be provided")
        if self.launch_mode is LaunchMode.UI and self.project_file is None:
            raise ValueError("project_file must be provided for UI launch")

    @property
    def process_names(self):
        if self.launch_mode is LaunchMode.HEADLESS:
            return {"veristand-server.exe"}
        return {"veristand.exe", "veristand project explorer.exe"}


def _launch_veristand(vs_project: Project):
    # Headless: start the gateway server with no UI.
    if vs_project.launch_mode is LaunchMode.HEADLESS:
        subprocess.Popen(
            [vs_project.veristand_gateway, "start"],
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )
        return

    # UI: use CLI operations so the project opens and connects/deploys in the UI.
    # See: https://www.ni.com/docs/en-US/bundle/veristand/page/run-operations-command-line-interface.html
    launch_args = [
        vs_project.veristand_ui,
        "/openProject",
        vs_project.project_file,
        "/gateway",
        vs_project.hostname,
    ]
    if vs_project.system_definition_file:
        launch_args += ["/sysDef", vs_project.system_definition_file]
    if vs_project.screen_file:
        # /openFile path is relative to the project file.
        launch_args += ["/openFile", vs_project.screen_file]
    subprocess.Popen(
        launch_args,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )


def _connect_ui_screen(vs_project: Project):
    if vs_project.launch_mode is not LaunchMode.UI:
        return
    # Mirrors Operate > Connect so the demo screen shows live values while tests run.
    connect_args = [
        vs_project.veristand_ui,
        "/openProject",
        vs_project.project_file,
        "/gateway",
        vs_project.hostname,
        "/connect",
        "/operateScreen",
    ]
    subprocess.Popen(
        connect_args,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )


def _normalized_path(path_value: Optional[str]) -> str:
    if not path_value:
        return ""
    return str(Path(path_value).resolve()).casefold()


def _is_system_ready(system_state: dict, expected_sdf: str) -> bool:
    state_is_active = system_state.get("state") == PySystemState.Active
    has_targets = bool(system_state.get("targets"))
    current_sdf = _normalized_path(system_state.get("systemdefinition_file"))
    return state_is_active and has_targets and current_sdf == expected_sdf


def _wait_for_system_ready(workspace: Workspace2, expected_sdf: str, timeout_seconds: float):
    start = time.time()
    while True:
        system_state = workspace.GetSystemState()
        if _is_system_ready(system_state, expected_sdf):
            return
        if (time.time() - start) > timeout_seconds:
            raise Exception(
                "Failed to reach ready state (Active + targets + expected SDF)."
            )
        time.sleep(1)


def _wait_for_ui_ready(vs_project: Project, workspace: Workspace2, expected_sdf: str):
    if vs_project.launch_mode is not LaunchMode.UI:
        return

    start = time.time()
    while True:
        ui_running = any(
            p.name().lower() in vs_project.process_names for p in psutil.process_iter()
        )
        if not ui_running:
            if (time.time() - start) > 20:
                raise Exception("VeriStand UI did not start in time")
            time.sleep(0.5)
            continue

        system_state = workspace.GetSystemState()
        if _is_system_ready(system_state, expected_sdf):
            # Small render settle so the demo screen visibly catches up before tests begin.
            print("VeriStand project is loaded. Waiting for screen to connect...", end="")
            time.sleep(10)
            return

        if (time.time() - start) > 30:
            raise Exception("VeriStand UI did not reach a ready connected state")
        time.sleep(0.5)


@contextlib.contextmanager
def connect_to_engine(vs_project: Project):
    """Generic fixture for all projects to connect to the VeriStand Gateway
    application and deploy the intended System Definition File."""
    # Verify the gateway is running with the same username as python
    # so communication is not blocked
    running = False
    retries = 2
    for i in range(retries):
        try:
            for p in psutil.process_iter():
                if p.name().lower() in vs_project.process_names:
                    current_p = psutil.Process()
                    if p.username() != current_p.username():
                        p.kill()
                    else:
                        running = True
        # AccessDenied errors get raised when attempting to access
        # details about the existing pid if it is being run by a different user.
        # A shell with elevated permissions can get around this.
        # Alternatively, kill the gateway to let this instance own the
        # gateway pid.
        except AccessDenied:
            raise Exception(
                "AccessDenied when getting existing pid info."
                " Implement one of the following and try again:\n"
                "\t1. Run the shell with higher permissions\n"
                "\t2. Kill the current gateway to let this process initialize it"
            )
        # NoSuchProcess sometimes raises if the gateway pid changes
        # during the init process.
        except NoSuchProcess as e:
            print("Retrying after NoSuchProcess raised...")
            time.sleep(2)
            if i < (retries - 1):
                continue
            else:
                raise e
    try:
        if vs_project.launch_mode is LaunchMode.UI:
            # CLI commands are valid whether VeriStand is already open or not.
            _launch_veristand(vs_project)
        elif not running:
            _launch_veristand(vs_project)
    except OSError:
        raise Exception("Could not launch VeriStand")

    start = time.time()
    while True:
        try:
            workspace = Workspace2(vs_project.hostname)
            break
        except Exception:
            time.sleep(0.5)
            now = time.time()
            if (now - start) > 60:
                raise Exception("Could not connect to gateway")

    try:
        system_state = workspace.GetSystemState()
        expected_sdf = _normalized_path(vs_project.system_definition_file)
        needs_connect = not _is_system_ready(system_state, expected_sdf)
        if needs_connect:
            if system_state["state"] == PySystemState.Active:
                workspace.DisconnectFromSystem("", True)
                time.sleep(5)
            workspace.ConnectToSystem(
                vs_project.system_definition_file,
                True,
                60000,
                vs_project.calibration_file,
            )
        _wait_for_system_ready(workspace, expected_sdf, timeout_seconds=60)
        _connect_ui_screen(vs_project)
        _wait_for_ui_ready(vs_project, workspace, expected_sdf)
        yield workspace
    finally:
        pass


def run_realtime_sequence(
    workspace: Workspace2,
    rt_sequence_path: str,
    rtseq_params: Optional[dict] = None,
    timeout: float = 30,
):
    """Run a .nivsseq file on cRIO and wait for completion."""
    status = workspace.GetSystemState()
    if (not "state" in status) or (status["state"] != PySystemState.Active):
        raise RuntimeError("Unable to run RT Sequence: Issue with Versitand Workspace")
    if not "targets" in status or len(status["targets"]) == 0:
        raise RuntimeError("Unable to run RT Sequence: No targets found in Veristand")
    target = status["targets"][0]
    if rtseq_params is None:
        rtseq_params = {}
    state = rtseqapi.run_rt_sequence(
        rt_sequence_path=rt_sequence_path,
        rtseq_params=rtseq_params,
        target=target,
    )
    if not wait_until(lambda: state.completion_state is not None, timeout=timeout):
        raise TimeoutError("RT Sequence did not complete in time")
    else:
        if state.completion_state != state.CompletionState.Success:
            raise Exception(f"RT Sequence failed: {state.completion_state}")

    time.sleep(1)
    return state.ret_val
