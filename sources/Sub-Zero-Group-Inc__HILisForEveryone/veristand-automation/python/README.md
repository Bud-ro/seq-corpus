# Python `pytest` + VeriStand

A minimal `pytest` example that automates VeriStand test execution.

## What is pytest?

[pytest](https://docs.pytest.org/) is a Python testing framework that discovers and runs test functions, reports pass/fail results, and handles setup/teardown automatically. You write ordinary Python functions — pytest finds them, runs them, and turns any failed `assert` into a detailed failure report.

In this demo we use three pytest features specifically:

- **Fixtures** (`conftest.py`) — pytest runs the `vs_connection` fixture once for the whole test session to connect to VeriStand and deploy the system definition. The `engine_demo` fixture runs before and after every individual test, resetting channels (engine off, RPM at 0, temperature cooled) so each test starts from a known state. If setup or teardown fails, pytest marks the test as an error rather than silently skipping cleanup.
- **Parameterized tests** — `@pytest.mark.parametrize` in `test_veristand_smoke.py` lets a single test function run against multiple RPM values (e.g., 5000 and 10000) without duplicating code. Each combination appears as its own row in the results.
- **Assertions** — plain Python `assert` statements are used to check that channel values reach expected targets within a timeout. A failed assertion stops the test immediately and prints the condition that was not met.

## What it demonstrates

- Connecting to a VeriStand system definition from Python.
- Deploying and running a real-time model.
- Driving stimulus channels (the inputs your DUT responds to).
- Reading response channels (what the DUT does in return).
- Writing assertions that turn channel values into pass/fail outcomes.
- Cleaning up the deployment regardless of test outcome (fixtures + teardown).

## Prerequisites

- Python 3.10+
- A VeriStand installation reachable from the host running pytest.
- A VeriStand system definition (`.nivssdf`) appropriate for your DUT.
- The Python packages listed in `requirements.txt` (added with the sample).

## Trying it out with the Engine Demo

The Python sample is pre-wired to the **Engine Demo** — a built-in template project that ships with VeriStand. Follow these steps to create the project so the file paths in `engine_demo.py` line up automatically.

![Engine Demo setup steps](engine_demo_setup.png)

1. **Open VeriStand.** The Project Explorer window will appear.
2. **Go to the Learning tab** at the top of the Project Explorer.
3. **Select "Engine Demo"** from the template cards and click it to open the creation dialog.
4. **Name the project `engine-demo`** (exactly — the Python code expects this folder name).
5. **Set the Location to the `veristand-automation` folder** of this repository (i.e., the folder that sits one level above `python/`). Use the browse button (`…`) to navigate there.
6. Click **Create**. VeriStand will generate the project files inside `veristand-automation/engine-demo/`.

Once the project exists you can run the tests:

```powershell
cd python
python -m pip install -r requirements.txt
python pytest_runner.py
```

## Running it

Once the sample is in place:

```powershell
python -m pip install -r requirements.txt
python pytest_runner.py
```

or

```powershell
python -m pip install -r requirements.txt
pytest -v
```

## Test report

If `pytest-html` is installed, runs via `pytest_runner.py` automatically generate `report.html` in the `python/` directory. Open it in any browser after a run to see a full summary: pass/fail status per test, captured stdout (the print statements in each test), timing, and failure tracebacks.

The `--self-contained-html` flag bundles all CSS and JavaScript into the single file, so you can share or archive it without any extra assets.

If you run pytest directly and want the report, pass the same flags:

```powershell
pytest -v --html=report.html --self-contained-html
```

## Launch mode configuration

You can control how VeriStand is started by setting `launch_mode` when creating your `Project` (see `engine_demo.py`).

```python
from core.veristand_utilities import LaunchMode, Project

ENGINE_DEMO_PROJECT = Project(
		project_directory=ENGINE_DEMO_PROJECT_DIR,
		project_file=ENGINE_DEMO_PROJECT_FILE,
		screen_file=ENGINE_DEMO_SCREEN_FILE,
		calibration_file=ENGINE_DEMO_CALIBRATION_FILE,
		system_definition_file=ENGINE_DEMO_SYSTEM_DEFINITION_FILE,
		launch_mode=LaunchMode.UI,  # or LaunchMode.HEADLESS
)
```

Launch mode options:

- `LaunchMode.UI`
	- Starts the VeriStand desktop UI.
	- Opens the configured project and connects/deploys through CLI arguments.
	- Connects to the operate screen so you can observe live values during test execution.
	- Requires `project_file`.

- `LaunchMode.HEADLESS`
	- Starts only `veristand-server.exe` (gateway), without desktop windows.
	- Useful for non-interactive automation or CI scenarios.
	- Does not open/operate a UI screen.

Notes:

- The default is `LaunchMode.UI`.
- String values are accepted and normalized (for example, `"ui"` or `"headless"`).

## Reccomended Reading

- [PyTest Documentation](https://docs.pytest.org/en/stable/index.html)
- [Veristand User Manual](https://www.ni.com/docs/en-US/bundle/veristand/page/user-manual-welcome.html)
- [Automate the Boring Stuff -- Python Tutorial](https://automatetheboringstuff.com/)
