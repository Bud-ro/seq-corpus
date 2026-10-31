"""
@author: Wolfgang
@description: bode plot base class using instruments for measurement link
MeasurementLogic without NI Session overhead
"""

import niscope
import nifgen
import math
import matplotlib.pyplot as plt

from bodeplot_base import BodeplotBase

class Bodeplot(BodeplotBase):
    """Runs a Bodeplot Measurement on a RC passive lowpass filter"""

# -- Property Setter/Getter
    @property
    def scope(self) -> niscope.Session:
        return self._scope

    @scope.setter
    def scope(self, new_scope: niscope.Session):
        self._scope = new_scope

    @property
    def fgen(self) -> nifgen.Session:
        return self._fgen

    @fgen.setter
    def fgen(self, new_fgen: nifgen.Session):
        self._fgen = new_fgen

# --- Methods
    def _configure_arb(self):
        """Initialize the arb reference and configure starting point"""
        # --- Set Channel Output Mode
        self.fgen.output_mode = nifgen.OutputMode.FUNC
        self.fgen.configure_standard_waveform(
            nifgen.Waveform.SINE, 
            self.amplitude, 
            self.f_start, 0)
        self.fgen.output_enabled = True
        self.fgen.load_impedance = 10e9
        self.fgen.initiate()

    def _configure_scope(self):
        """ Apply Base Scope Configuration, Trigger on Input Channel """
        self.scope.configure_trigger_edge(
            self.vin_measure, 0, 
            niscope.TriggerCoupling.DC, 
            niscope.TriggerSlope.POSITIVE, 0)

        # -- Apply Base Channel Configuration
        channel_list = [c for c in range(self.scope.channel_count)] 
        self.scope.channels[channel_list].channel_enabled = True
        self.scope.channels[channel_list].probe_attenuation = 1
        self.scope.channels[channel_list].vertical_coupling = niscope.VerticalCoupling.DC
        self.scope.channels[channel_list].input_impedance = 1e6
        self.scope.channels[channel_list].vertical_range = 4
        self.scope.channels[channel_list].vertical_offset = 0
        sr = 10e6
        records = int(20 * 1/self.f_start * sr)
        self.scope.configure_horizontal_timing(10.0e6, 100000, 50.0, 1,True)
        self.scope.commit()

    def _re_config_scope(self):

        self.scope.clear_waveform_measurement_stats(niscope.ClearableMeasurement.ALL_MEASUREMENTS)
        self.scope.clear_waveform_processing()
        self.scope.channels[0].vertical_range = 4
        self.scope.channels[1].vertical_range = 4
        self.scope.channels[0].add_waveform_processing(
            niscope.ArrayMeasurement.MULTI_ACQ_AVERAGE)
        self.scope.channels[1].add_waveform_processing(
            niscope.ArrayMeasurement.MULTI_ACQ_AVERAGE)
        # -- Start Acquisition
        self.scope.initiate()
        vin = self.scope.channels[1].fetch_measurement_stats(
            niscope.ScalarMeasurement.VOLTAGE_PEAK_TO_PEAK)[0]
        freq = self.scope.channels[1].fetch_measurement_stats(
            niscope.ScalarMeasurement.FREQUENCY)[0]
        vout = self.scope.channels[0].fetch_measurement_stats(
            niscope.ScalarMeasurement.VOLTAGE_PEAK_TO_PEAK)[0]
        # - Stop Scope Session
        self.scope.abort()
        self.scope.channels[0].vertical_range = 1.1*vout.result
        self.scope.channels[1].vertical_range = 1.1*vin.result
        # -- Fixed SR since expected cut-off is at 10k
        sr = 10.0e6
        records = int(20 * 1/freq.result * sr)
        print(f"{freq.result} =>{records}")
        self.scope.configure_horizontal_timing(sr, records, 50.0, 1,True)
        self.scope.commit()

    def _fetch_measurement(self) -> tuple:
        """Fetch Phase and Gain measurement from Scope

        Returns:
            tuple: gain, phase
        """
        self.scope.initiate()
        self.scope.clear_waveform_measurement_stats(niscope.ClearableMeasurement.ALL_MEASUREMENTS)
        self.scope.clear_waveform_processing()
        self.scope.channels[0].add_waveform_processing(
            niscope.ArrayMeasurement.MULTI_ACQ_AVERAGE)
        self.scope.channels[1].add_waveform_processing(
            niscope.ArrayMeasurement.MULTI_ACQ_AVERAGE)

        vin = self.scope.channels[1].fetch_measurement_stats(
            niscope.ScalarMeasurement.VOLTAGE_PEAK_TO_PEAK)[0]
        vout = self.scope.channels[0].fetch_measurement_stats(
            niscope.ScalarMeasurement.VOLTAGE_PEAK_TO_PEAK)[0]
        self.scope.meas_other_channel = 1

        phase = self.scope.channels[0].fetch_measurement_stats(
            niscope.ScalarMeasurement.PHASE_DELAY)[0]
        phase = phase.result - 360 #//360
        gain = 20 * math.log10(vout.result/vin.result)

        return (gain, phase)
  
    def _measure_single(self,f:float) -> tuple:
        """ Re-configure generator and return single measurement """
        self.fgen.configure_standard_waveform(
                nifgen.Waveform.SINE, self.amplitude, f, 0)
        self._re_config_scope()
        return self._fetch_measurement()
    
    
if __name__ == "__main__":
    #
    bp = Bodeplot()
    simulate = False
    bp.scope = niscope.Session("SCOPE", options={'simulate': simulate, 'driver_setup': {
                            'Model': '5122', 'BoardType': 'PXI'}})
    bp.fgen = nifgen.Session("FGEN", options={'simulate': simulate, 'driver_setup': {
                             'Model': '5421', 'BoardType': 'PXI'}})
    bp.f_start = 200
    bp.f_stop = 50e3
    bp.f_steps = 50
    bp.amplitude = 2
    bp.measure()
    bp.plot()
