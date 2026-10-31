from itertools import filterfalse
import time
import random
import logging
from tracemalloc import stop
from pymeasure.instruments.temptronic import ATSBase
from pymeasure.adapters import Adapter

logging.basicConfig(format="%(asctime)s %(levelname)s: %(message)s",level=logging.INFO)
class MockGPIBAdapter(Adapter):
    """Simulated GPIB adapter for Temptronic ATS."""
    def __init__(self):
        #super().__init__(resource_name="GPIB::1::INSTR")
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

# Configuration parameters
target_temperature = 28.0  # Target temperature in °C
tolerance = 0.2            # Acceptable temperature deviation in °C
settling_time = 1          # Time in seconds to confirm stability
timeout = 20               # Maximum time in seconds to wait for stabilization
stop = True

# Configure the instrument with default values
logging.info("Configuring the instrument with default values...")
ts.configure()

# Simulated interaction
logging.info("Set temperature to 25°C")
ts.set_temperature(target_temperature)

# Start the airflow without changing the head position

ts.start()

# Wait for the temperature to stabilize
logging.info(f"Setting temperature to {target_temperature}°C and waiting for stabilization...")
start_time = time.time()
stable_start = None
stabilized= False

while True:
    current_temp = ts.temperature
    elapsed_time = time.time() - start_time
    deviation = abs(current_temp - target_temperature)
    message=""

    logging.info(f"Elapsed Time: {elapsed_time:.1f}s | Current Temp: {current_temp:.2f}°C | Deviation: {deviation:.2f}°C")

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

# Optional: Shutdown the thermostream while keeping the head position unchanged
if stop:
    ts.shutdown(head=False)



