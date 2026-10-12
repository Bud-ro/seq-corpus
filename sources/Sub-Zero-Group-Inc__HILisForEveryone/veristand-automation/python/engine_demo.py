from pathlib import Path
from niveristand.legacy.NIVeriStand import Workspace2
from core.veristand_channels import In, Out
from core.veristand_utilities import LaunchMode, Project

ENGINE_DEMO_PROJECT_DIR = str(Path(__file__).resolve().parents[1] / "engine-demo")
ENGINE_DEMO_PROJECT_FILE = str(Path(ENGINE_DEMO_PROJECT_DIR) / "engine-demo.nivsprj")
# /openFile expects a path relative to the project file
ENGINE_DEMO_SCREEN_FILE = "Engine Demo.nivsscreen"
ENGINE_DEMO_CALIBRATION_FILE = str(Path(ENGINE_DEMO_PROJECT_DIR) / "Engine Demo.nivscf")
ENGINE_DEMO_SYSTEM_DEFINITION_FILE = str(Path(ENGINE_DEMO_PROJECT_DIR) / "Engine Demo.nivssdf")
ENGINE_DEMO_PROJECT = Project(
    project_directory=ENGINE_DEMO_PROJECT_DIR,
    project_file=ENGINE_DEMO_PROJECT_FILE,
    screen_file=ENGINE_DEMO_SCREEN_FILE,
    calibration_file=ENGINE_DEMO_CALIBRATION_FILE,
    system_definition_file=ENGINE_DEMO_SYSTEM_DEFINITION_FILE,
    # UI: opens VeriStand desktop + operate screen.
    # HEADLESS: starts only the gateway server for non-interactive runs.
    launch_mode=LaunchMode.UI,
)


class EngineDemo:
    def __init__(self, workspace: Workspace2):
        # fmt: off
        self.workspace = workspace
        self.engine_power = Out("Aliases/EnginePower", bool)
        self.desired_rpm = Out("Aliases/DesiredRPM", int)
        self.engine_temp = In("Aliases/EngineTemp", float)
        self.actual_rpm = In("Aliases/ActualRPM", int)

        self.engine_temperature_alert = Out("Aliases/Engine Safety Limits/Engine Temperature Alert", float)
        self.engine_temperature_warning = Out("Aliases/Engine Safety Limits/Engine Temperature Warning", float)

        self.engine_revolutions = In("Aliases/Engine Calculations/Engine Revolutions", float)
        self.rpm_acceleration = In("Aliases/Engine Calculations/RPM Acceleration", float)
        self.rpm_offset = In("Aliases/Engine Calculations/RPM Offset", float)
        self.rpm_peak = In("Aliases/Engine Calculations/RPM Peak", float)
        self.rpm_set_point_difference = In("Aliases/Engine Calculations/RPM Set Point Difference", float)
        self.rpm_valley = In("Aliases/Engine Calculations/RPM Valley", float)
        self.rpm_velocity = In("Aliases/Engine Calculations/RPM Velocity", float)

        # Issues with VeriStand API prevent us from writing to model parameters
        # You will need to make Aliases for these if you want to change them in the test
        self.environment_temperature = In("Targets/Controller/Simulation Models/Models/Engine Demo/Parameters/Environment_Temperature", float)
        self.idle_speed = In("Targets/Controller/Simulation Models/Models/Engine Demo/Parameters/Idle_Speed_RPM", float)


        # fmt: on

    def set_defaults(self):
        self.engine_off()
        self.engine_temperature_alert.write(125)
        self.engine_temperature_warning.write(110)

    def engine_on(self):
        self.engine_power.write(True)

    def engine_off(self):
        self.engine_power.write(False)
