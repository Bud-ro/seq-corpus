"""
@author: Wolfgang R
@description: abstract template bodeplot base class

"""

import math
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.widgets import Cursor


class BodeplotBase(object):
    """ Bodeplot Base Class """

# -- Property Setter/Getter
    @property
    def R1(self) -> float:
        return self._R1

    @R1.setter
    def R1(self, value: float):
        self._R1 = value

    @property
    def C1(self) -> float:
        return self._C1

    @C1.setter
    def C1(self, value: float):
        self._C1 = value

    @property
    def f_start(self) -> float:
        return self._start_f

    @f_start.setter
    def f_start(self, f: float):
        self._start_f = f

    @property
    def f_stop(self) -> float:
        return self._stop_f

    @f_stop.setter
    def f_stop(self, f: float):
        self._stop_f = f

    @property
    def f_steps(self) -> int:
        return self._steps

    @f_steps.setter
    def f_steps(self, steps: int):
        self._steps = steps

    @property
    def vin_signal(self) -> str:
        return self._vin

    @vin_signal.setter
    def vin_signal(self, chn: str):
        self._vin = chn

    @property
    def vin_measure(self) -> str:
        return self._vin_measure

    @vin_measure.setter
    def vin_measure(self, chn: str):
        self._vin_measure = chn

    @property
    def vout_measure(self) -> str:
        return self._vout_measure

    @vout_measure.setter
    def vout_measure(self, chn: str):
        self._vout_measure = chn

    @property
    def amplitude(self) -> float:
        return self._vin_amplitude

    @amplitude.setter
    def amplitude(self, vpp: float):
        self._vin_amplitude = vpp

# --- Methods
    def __init__(self):
        """Constructor assign Default Values"""
        self._start_f = 100
        self._stop_f = 50e3
        self._steps = 100
        self._vin = '0'
        self._vout_measure = '0'
        self._vin_measure = '1'
        self._vin_amplitude = 1
        self.R1 = 1e3
        self.C1 = 100e-9
        self.gains = []
        self.frequencies = []
        self.phases = []

    def _configure_arb(self): pass
    def _configure_scope(self): pass
    def _re_config_scope(self): pass

    def _measure_single(self, f: float) -> tuple:
        return (0.0, 0.0)

    def _calculate_break(self):
        self.f_cut_off = 1 / (2 * math.pi * self.R1 * self.C1)

    # -- Abstract Implementation
    def measure(self) -> None:
        """Perform Measurement Sweep over configured properties"""
        self._calculate_break()
        self._configure_arb()
        self._configure_scope()
        self._re_config_scope()

        f = self.f_start
        while f < self.f_stop:
            # --- Measure
            gain, phase = self._measure_single(f)
            self.frequencies.append(f)
            self.gains.append(gain)
            self.phases.append(phase)
            # Call update results
            f = f * (self.f_stop/self.f_start)**(1/self.f_steps)

    def plot(self):
        # -- Create 2 Subplots
        figure, axes = plt.subplots(2, figsize=(20, 10))
        plt.suptitle("Bode Diagram of a Low-Pass RC Filter")
        style = {
            'marker': 'x',
            'color': 'blue',
            'linestyle': '--'
        }
        # -- configure gain plot
        axes[0].semilogx(self.frequencies, self.gains, **style)
        axes[0].grid(True)
        axes[0].grid(True, which='minor')
        axes[0].set_xlabel("Frequency [Hz]")
        axes[0].set_ylabel("Gain [dB]")
        axes[0].unit = 'dB'
        # -- configure phase plot
        axes[1].semilogx(self.frequencies, self.phases, **style)
        axes[1].grid(True)
        axes[1].grid(True, which='minor')
        axes[1].set_xlabel("Frequency [Hz]")
        axes[1].set_ylabel("Phase [deg]")
        axes[1].set_ylim(-90, 0)
        axes[1].unit = '°'
        # plt.yticks((-math.pi/2, -math.pi/4, 0),
        #            (r"$-\frac{\pi}{2}$", r"$-\frac{\pi}{4}$", 0))

        for ax in axes:
            ax.axvline(x=self.f_cut_off, color='red', linestyle='dashdot')
        cur1 = SnaptoCursor(axes[0], self.frequencies, self.gains)
        cur2 = SnaptoCursor(axes[1], self.frequencies, self.phases)
        cid = plt.connect('motion_notify_event', cur1.mouse_move)
        cid = plt.connect('motion_notify_event', cur2.mouse_move)
        plt.show()
# --- Cursors for Plot


class SnaptoCursor(object):
    def __init__(self, ax, x, y):
        self.ax = ax
        self.ly = ax.axvline(color='k', alpha=0.2)  # the vert line
        self.marker, = ax.plot([0], [0], marker="o", color="crimson", zorder=3)
        self.x = x
        self.y = y
        self.txt = ax.text(0.7, 0.9, '')
        self.unit = ax.unit

    def mouse_move(self, event):
        if not event.inaxes:
            return
        x, y = event.xdata, event.ydata
        indx = np.searchsorted(self.x, [x])[0]
        x = self.x[indx]
        y = self.y[indx]
        self.ly.set_xdata(x)
        self.marker.set_data([x], [y])
        self.txt.set_text(f'f=%1.2f Hz, y=%1.2f {self.unit}' % (x, y))
        self.txt.set_position((x, y))
        self.ax.figure.canvas.draw_idle()
