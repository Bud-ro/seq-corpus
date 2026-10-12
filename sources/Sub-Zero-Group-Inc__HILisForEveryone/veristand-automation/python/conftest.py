from math import isclose

import pytest
from niveristand.legacy.NIVeriStand import Workspace2
from core.veristand_utilities import connect_to_engine
from core.utils import wait_for_channel, wait_until
from engine_demo import EngineDemo, ENGINE_DEMO_PROJECT


@pytest.fixture(scope="session")
def vs_connection():
    vs_project = ENGINE_DEMO_PROJECT
    print(
        f"\nConnecting to gateway (hostname: {vs_project.hostname}, mode: {vs_project.launch_mode.value}, project: {vs_project.project_directory})...",
        end="",
    )
    with connect_to_engine(vs_project) as result:
        print("OK")
        yield result


@pytest.fixture(scope="function")
def engine_demo(vs_connection: Workspace2):
    print("\n")
    engine_demo = EngineDemo(vs_connection)
    try:
        print("Ensuring engine is off before starting test...", end="")
        engine_demo.set_defaults()
        assert wait_for_channel(
            engine_demo.engine_power, False, 5
        ), "Engine did not turn off"
        print("OK")
        print("Wating for engine RPM to return to 0...", end="")
        assert wait_for_channel(
            engine_demo.actual_rpm, 0, 60
        ), "Engine RPM did not return to 0"
        print("OK")
        print("Wating for engine temperature to return to environment temperature...", end="")
        assert wait_until(
            lambda: isclose(
                engine_demo.engine_temp.read(),
                engine_demo.environment_temperature.read(),
                abs_tol=1,
            ),
            120,
        ), "Engine temperature did not return to environment temperature"
        print("OK")
        yield engine_demo
    finally:
        print("\nEnsuring engine is off after test...", end="")
        engine_demo.engine_off()
        assert wait_for_channel(
            engine_demo.engine_power, False, 5
        ), "Engine did not turn off"
        print("OK")
