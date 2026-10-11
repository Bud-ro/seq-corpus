import pytest
import sys
from importlib.util import find_spec


def _has_pytest_html() -> bool:
    """Return True when pytest-html is importable in the current environment."""
    return find_spec("pytest_html") is not None


def main():
    # Define which folders, files, or functions to test
    # You can specify folders, files, or indidual test functions here
    # If left blank, pytest will run all tests in the root directory
    files_to_test = [
        "test_veristand_smoke.py",
        # "test_veristand_smoke.py::test_engine_temperature_alert",
    ]

    # Arguments to pass to PyTest. You can modify these as needed.
    # fmt: off
    flags = [
        "--capture", "no",
        "--verbosity", "2",
    ]
    # fmt: on

    # Only include HTML report flags if pytest-html is installed.
    if _has_pytest_html():
        flags += [
            "--html", "report.html",
            "--self-contained-html",
        ]

    # Pass extra arguments to PyTest dynamically. Unused in this demo.
    cli_flags = []
    if len(sys.argv) > 1:
        cli_flags = [x for x in sys.argv[1:]]

    return pytest.main(files_to_test + flags + cli_flags)


if __name__ == "__main__":
    retcode = main()
    sys.exit(retcode)
