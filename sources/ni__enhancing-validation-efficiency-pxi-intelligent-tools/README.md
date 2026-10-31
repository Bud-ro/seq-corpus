# Enhancing Validation Efficiency with PXI Hardware and Intelligent Software Tools Sample Code

This repository contains the sample code described in "Enhancing Validation Efficiency with PXI Hardware and Intelligent Software Tools" application note.
Standalone folder has a LabVIEW example to manage analog input acquisition for DAQ devices like the NI PXIe-4309 board; there's also an example in Python to manage the Temptronic ATS Thermostream.
InstrumentStudio folder has all the necessary files related to manage the measurements manually from InstrumentStudio environment, using standard instrument plug-in and also custom plug-in developed in LabVIEW and in Python leaveraging InstrumentStudio Professional.
Finally TestStand folder hosts a sequence to run automatically the measurements.

## Getting Started
- [Standalone\DAQ_labview](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/tree/main/Standalone/DAQ_labview) folder
	- Open and review [DAQ_Finite_AnalogInput_DigitalTrigger.vi](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/blob/main/Standalone/DAQ_labview/DAQ_Finite_AnalogInput_DigitalTrigger.vi) to perform analog acquisition using a digital trigger
	- [SMU_generateWfm_SaveToText_.vi](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/blob/main/Standalone/DAQ_labview/SMU_generateWfm_SaveToText_.vi) can be used to save to text file samples to be imported in InstrumentStudio SMU panel to run a waveform 
- [Standalone\TemptronicATS_python\TemptronicATS](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/tree/main/Standalone/TemptronicATS_python/TemptronicATS)folder
	- [TemptronicATS.py](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/blob/main/Standalone/TemptronicATS_python/TemptronicATS/TemptronicATS.py) is a python example that shows how to control the ATS thermostream
- [InstrumentStudio\DAQ_FiniteAnalogInput_plugin_labview](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/tree/main/InstrumentStudio/DAQ_FiniteAnalogInput_plugin_labview) folder
	- Open [DAQ_FiniteAI_plugin.lvproj](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/blob/main/InstrumentStudio/DAQ_FiniteAnalogInput_plugin_labview/DAQ_FiniteAI_plugin.lvproj) to review the plugin developed in LabVIEW.
	- In order to run manually the plug-in service open and run [Run Service.vi](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/blob/main/InstrumentStudio/DAQ_FiniteAnalogInput_plugin_labview/DAQ_FiniteAI/Run%20Service.vi)
- [InstrumentStudio\Temptronic_plugin_python](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/tree/main/InstrumentStudio/Temptronic_plugin_python) folder
	- Open and review [measurement.py](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/blob/main/InstrumentStudio/Temptronic_plugin_python/measurement.py) which is the plug-in for the thermostream
	- Open [TemptronicATS.measproj](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/blob/main/InstrumentStudio/Temptronic_plugin_python/TemptronicATS.measproj) to open the plug-in user interface developed using Measurement Plug-In UI Editor
	- In order to run manually the plug-in service run [start.bat](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/blob/main/InstrumentStudio/Temptronic_plugin_python/start.bat) file
- [InstrumentStudio\AppNote_LabSetUp](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/tree/main/InstrumentStudio/AppNote_LabSetUp) folder
	- Open [AppNote_LabSetUp.instudioproj](https://github.com/ni/enhancing-validation-efficiency-pxi-intelligent-tools/blob/main/InstrumentStudio/AppNote_LabSetUp/AppNote_LabSetUp.instudioproj) and review the project with the different panels to control SMU, DAQ and TemptronicATS.
	- In order to load correctly the DAQ plug-in and the TemptronicATS plug-in the services must be running, either manually or by statically registering them

Please refer to [Measurement Plug-In Overview](https://www.ni.com/docs/en-US/bundle/measurementplugins/page/measurement-plugins.html) manual to detailed info about LabVIEW and Python plug-in development.
Also refer to [Measurement Plug-In SDK for LabVIEW](https://github.com/ni/measurement-plugin-labview) page and [Measurement Plug-In SDK for Python](https://github.com/ni/measurement-plugin-python) for more information about sofware installation and tutorials.

Finally install [PyMeasure](https://pymeasure.readthedocs.io/en/latest/quick_start.html#installing-pymeasure) library in order to use the Python examples and plug-in.
