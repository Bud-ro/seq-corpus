"""Manages Temptronic ATS Thermostream."""

import logging
import pathlib
import sys
import time
import random
import click
import ni_measurement_plugin_sdk_service as nims
from tracemalloc import stop
from numpy import double
from pymeasure.instruments.temptronic import ATSBase
from pymeasure.adapters import Adapter
from typing import Any, Generator, Tuple
import warnings
warnings.filterwarnings("ignore", category=FutureWarning)
logging.basicConfig(format="%(asctime)s %(levelname)s: %(message)s",level=logging.INFO)

script_or_exe = sys.executable if getattr(sys, "frozen", False) else __file__
service_directory = pathlib.Path(script_or_exe).resolve().parent
measurement_service = nims.MeasurementService(
    service_config_path=service_directory / "TemptronicATS.serviceconfig",
    ui_file_paths=[service_directory / "TemptronicATS.measui"],
)


@measurement_service.register_measurement
@measurement_service.configuration("target_temperature", nims.DataType.Double,default_value=30)
@measurement_service.configuration("tolerance", nims.DataType.Double,default_value=0.2)
@measurement_service.configuration("settling_time", nims.DataType.Double,default_value=1)
@measurement_service.configuration("timeout", nims.DataType.Double,default_value=20)
@measurement_service.configuration("stop", nims.DataType.Boolean, default_value=False)

@measurement_service.output("current_temp", nims.DataType.Double)
@measurement_service.output("elapsed_time", nims.DataType.Double)
@measurement_service.output("deviation", nims.DataType.Double)
@measurement_service.output("message", nims.DataType.String)
@measurement_service.output("stabilized", nims.DataType.Boolean)

def measure(target_temperature, tolerance, settling_time, timeout, stop
) -> Generator[Tuple[float,float,float,str], None, None]:
    

    class MockGPIBAdapter(Adapter):
        """Simulated GPIB adapter for Temptronic ATS."""
        def __init__(self):
            #super().__init__(resource_name="GPIB::1::INSTR")
            self.connection = None
            self.buffer = ""
            self.mode= 5 #manual mode

        def write(self, command):
            logging.info(f"WRITE: {command}")
            self.buffer = command
       
        def ask(self, command):
            self.write(command)
            return self.read()

        def read(self):
            # Simulated read values
            if self.buffer == "TEMP?":
                return f"{random.uniform(target_temperature-0.5, target_temperature+0.5):.2f}"
            elif self.buffer == "WHAT?":
                return str(self.mode)
            return "0"
    # Use the mock adapter with TemptronicATS
    mock_adapter = MockGPIBAdapter()
    ts = ATSBase(adapter=mock_adapter)

    # Configure the instrument with default values
    logging.info("Configuring the instrument with default values...")
    ts.configure()

    # Simulated interaction
    logging.info("Set temperature to Target Temperature")
    ts.set_temperature(target_temperature)

    # Start the airflow without changing the head position

    ts.start()

    # Wait for the temperature to stabilize
    logging.info(f"Setting temperature to {target_temperature}°C and waiting for stabilization...")
    start_time = time.time()
    stable_start = None
    stabilized = False

    while True:
        current_temp = ts.temperature
        elapsed_time = time.time() - start_time
        deviation = abs(current_temp - target_temperature)
        message=""

        if deviation <= tolerance:
            if stable_start is None:
                stable_start = time.time()
            elif time.time() - stable_start >= settling_time:
                message="Temperature stabilized."
                stabilized = True
                logging.info(message)
                break
        else:
            stable_start = None  # Reset stability timer

        if elapsed_time > timeout:
            message="Timeout: Temperature did not stabilize within the expected time."
            stabilized = False
            logging.info(message)
            break

        time.sleep(1)
        yield (current_temp,elapsed_time,deviation,message)

    # Optional: Shutdown the thermostream while keeping the head position unchanged
    if stop:
        ts.shutdown(head=False)

    return (current_temp, elapsed_time, deviation, message,stabilized)


@click.command
@click.option(
    "-v",
    "--verbose",
    count=True,
    help="Enable verbose logging. Repeat to increase verbosity.",
)
def main(verbose: int) -> None:
    """Host the TemptronicATS service."""
    if verbose > 1:
        level = logging.DEBUG
    elif verbose == 1:
        level = logging.INFO
    else:
        level = logging.WARNING
    logging.basicConfig(format="%(asctime)s %(levelname)s: %(message)s", level=level)

    with measurement_service.host_service():
        input("Press enter to close the measurement service.\n")


if __name__ == "__main__":
    main()
