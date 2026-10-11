# STS MEMS Production Sample Code

The [STS MEMS Production Sample Code](https://github.com/ni/stsmemsapt) contains a TestStand sequence and its LabVIEW source code showing the main measurements and tests performed on a MEMS device, like Continuity, Leakage, Resistance, Offset, Capacitance and Resonance.
This is the sample code referred in the [MEMS Production Test with NI STS](https://ni.showpad.biz/webapp2/results?query=MEMS%20Production%20Test%20%20with%20NI%20STS&scope=content&slug=b8b8850c-7073-4987-8a48-5a15e17177a8) Application Note available in Showpad.

The example has been tested using OfflineMode, simulating the hardware for an 8 site scenario and also in a 2 sites configuration with real hardware.
Select the [STS_MEMS_Offline_Mode_System_Configuration.offlinecfg](https://github.com/ni/stsmemsapt/blob/main/Example/STS_MEMS_Offline_Mode_System_Configuration.offlinecfg) file when configuring OfflineMode from TestStand.
The simulated boards used in the test sequence are NI PXI-4110, NI PXIe-4137, NI PXIe-4147, NI PXIe-5433, NI PXIe-5172, NI PXIe-6571, NI PXI-2567.

## Software Requirements
You must have the following software to use the STST MEMS Production Sample Code:
- STS Software Bundle 24.5.2 or later

## Getting Started
There are two pinmap files in [Example\TestProgram\SupportingMaterials\PinMap](https://github.com/ni/stsmemsapt/tree/main/Example/TestProgram/SupportingMaterials/PinMap) folder:
- [AppNoteMEMS_PinMap_8Sites_hwSimulated.pinmap](https://github.com/ni/stsmemsapt/blob/main/Example/TestProgram/SupportingMaterials/PinMap/AppNoteMEMS_PinMap_8Sites_hwSimulated.pinmap) to run up to 8 sites using the simulated hardware defined in the offlinecfg file.
- [AppNoteMEMS_PinMap_2Site_hwReal.pinmap](https://github.com/ni/stsmemsapt/blob/main/Example/TestProgram/SupportingMaterials/PinMap/AppNoteMEMS_PinMap_2Site_hwReal.pinmap) to run up to 2 sites using real hardware that you might have in your PXI System

 For each site, the resources used are the following:
 - 2 SMU channels named SMU0 and SMU1 in the pinmaps
 - 2 SCOPE channels named V1 and V2 in the pinmaps
 - 1 FGEN channel named FGEN in the pinmaps
 - 4 PPMU channels named PPMU0, PPMU1, PPMU2, PPMU3 in the pinmaps

There are also system resources:
- 1 PPS channel named VRelay to supply power to the relays
- 14 System Relays to connect the instruments to different pins on the DUT side. Consider that 1 relay command is intended to drive N relays in parallel, where N is the number of sites being tested

In order to run the sequence correctly follow the instructions:
1) Open [AppNoteMEMS_TestProgram_Example.seq](https://github.com/ni/stsmemsapt/blob/main/Example/TestProgram/AppNoteMEMS_TestProgram_Example.seq) with TestStand
2) The first time you run it, select Calibration from the Configuration drop down menu
3) Run once the sequence in order to simulate the calibration and store data in StationGlobals
4) Select Production from the Configuration drop down menu and run the sequence
