"""
@author: Wolfgang R
@description: Simulates a bodeplot using PySpice
@requires: Python 3.9 64-Bit
TODO:
https://pyspice.fabrice-salvaire.fr/releases/v1.4/overview.html
pip install PySpice
pyspice-post-installation --install-ngspice-dll
pyspice-post-installation --check-install

"""
import math
import numpy as np

from PySpice.Unit import *
from PySpice.Spice.Netlist import Circuit
from bodeplot_base import BodeplotBase
import PySpice.Logging.Logging as Logging
logger = Logging.setup_logging()


jumper = False
class BodePlotSim(BodeplotBase):
    
    def __init__(self):
        super().__init__()
        self._circuit = Circuit('Low-Pass RC Filter')

    def _configure_arb(self):
        # -- Configure Signal Generator
        self._circuit.SinusoidalVoltageSource('input', 'vin', self._circuit.gnd, amplitude=self.amplitude)

    def _configure_scope(self):
        # --- Configure Circuit Connections
        if jumper:
            R1 = self._circuit.R(1, 'vin', 'vout', 10@u_kΩ)
        else:
            R1 = self._circuit.R(1, 'vin', 'vout', 3.3@u_kΩ)
        C1 = self._circuit.C(1, 'vout', self._circuit.gnd, 6.8@u_nF)
        self.R1 = float(R1.resistance)
        self.C1 = float(C1.capacitance)
        self._calculate_break()
        print("Break frequency = {:.1f} Hz".format(self.f_cut_off))

# -- This would run a full AC analysis
    # def measure(self):
    #     self._configure_arb()
    #     self._configure_scope()
    #     simulator = self._circuit.simulator(temperature=25, nominal_temperature=25)
    #     analysis =  simulator.ac(start_frequency=self.f_start, stop_frequency=self.f_stop,
    #                     number_of_points=self.f_steps,  variation='dec')

    #     self.phases = np.angle(analysis.vout, deg=False)
    #     self.gains = 20*np.log10(np.absolute(analysis.vout/analysis.vin))
    #     self.frequencies = analysis.frequency

    def _measure_single(self, f: float) -> tuple:
        """ Run Single Point Simulation """
        simulator = self._circuit.simulator(temperature=25, nominal_temperature=25)
        analysis = simulator.ac(start_frequency=f, stop_frequency=f, number_of_points=1, variation='dec')
        gain = 20*np.log10(np.absolute(analysis.vout/analysis.vin))[0]
        phase = np.angle(analysis.vout, deg=True)[0]
        return(gain, phase)
    


if __name__ == "__main__":
    #
    bp = BodePlotSim()
    bp.f_start = 200
    bp.f_stop = 50e3
    bp.f_steps = 20
    bp.amplitude = 2
    bp.measure()
    # print(bp.measure_single(5000))
    bp.plot()
