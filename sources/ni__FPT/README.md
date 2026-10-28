# FPT Introduction
The demo system is architected as a **modular, scalable RF measurement platform** while supporting **manual SFP‑based workflows** and **fully automated TestStand sequences**. The architecture integrates NI’s measurement software ecosystem—**RFmx**, **InstrumentStudio**, and **TestStand**—with application libraries, for example, **PAEML** and **SPML** libraries, to deliver a unified and reusable measurement framework.

## Creating your own Measurement Plugin
You will find a folder named "Framework". Use that as the starting point to create your project. Refer to [source/Framework/ReadMe.txt](https://github.com/ni/FPT/blob/de1036fa5a1a0155b56b1abd00b57e666664d8d2/source/Framework/ReadMe.txt) for more information.

## Measurement Examples
This Repo includes examples of Measurement Plugin listed below that use the same framework. 

### Measurement List
**Small Signal CW and Pulsed S-Parameters**
- Vector Calibration with ECal
- Select Stimulus Waveform (CW or Pulsed)
- Graph S-Parameters on Individual Graphs for magnitude and phase separately.

**Large Signal CW and Pulsed S-Parameters**
- Vector Calibration with manual calkit (Maury)
- Select Stimulus Waveform (CW or Pulsed)
- Graph S-Parameters on Individual Graphs for magnitude and phase separately.

**Power Compression**
- No Calibration – Compensate Using Pre-Measured Cable Loss
- Select Stimulus Waveform (CW or Pulsed)
- PxdB, Linear Gain, Pout vs Pin, Gain vs Pin and PAE vs Pin graphs for each measured frequency.  

**Intermodulation and TOI – VST & RFmx SpecAn**
- No Calibration – Compensate Using Pre-Measured Cable Loss
- Select Sweep Type – Power, Frequency, or Tone Spacing
- Graph Output Power of Fundamental and Intermods and Gain (Separate Graphs), and Extrapolate TOI

**Noise Figure – VST, Synthetic Noise Source**
- Calibrate Using Loopback from VST RF Out to RF In
- Graph NF over Frequency

**Noise Figure – VST, External Noise Source (NC346x)**
- Calibrate by directly connecting NC346x to VNA port.
- Graph NF over Frequency

**Pulse Measurements**
- No Calibration – Compensate Using Pre-Measured Cable Loss
- Graph Intra-Pulse Stability, Pulse-to-Pulse Stability, and Acquired Amplitude.
- Table with Pulse Metrics data.

### Hardware
- NI PXIe-1095 x1
- NI PXIe-5842 x1
- NI PXIe-5655 x1
- NI PXIe-5633 x1
- NI PXIe-2599 x3
- NI PXIe-2597 x1
- NI PXIe-4139 x2
- NI PXIe-4147 x1
- NI PXIe-4142 x1
- NI PXIe-6571 x1
- NI CAL-5501 x1
- External Noise Source (NC346C) X1
- 20dB attenuator (BW-S20W20+) x1
- 20dB coupler (C1-C31-20 RD Microwave Couplers) x4
- Mechanical SOLT calibration kit x1

**Depending on the DUT, you may not need all the NI PXI cards.**

### Software
- LabVIEW 2023Q3
- niRFmx 26Q1
- niRFSA 26Q1
- niRFSG 26Q1
- niDCPower 26Q1
- niDigital 26Q1
- niSwitch 2023Q3
- ni SPML 2024
- ni PAEML 2024
- Measurement Plug-in SDK 3.5.4.1

### Start your first measurement with the example
### Prerequisite 
1. Power Sequencing File in CSV format. Here are some examples, \source\Example Measurement\Measurement Configuration Files.
2. De-embedding Files. All the path losses characteristic files.
3. Noise Figure Calibration (prior Noise Figure Measurement)

### Steps
1. Launch any of the RF measurement LV Project from <source\Example Measurement>, says Compression Test
2. Launch FPT_Compression.lvproj > My Computer > FPT_Compression.lvclass > **Run Service.vi**
3. Run VI
4. Launch InstrumentStudio, select Manual Layout
5. Select the desired RF Measurement Service, in this case, FPT Compression
6. Select **Create large panel** from the pull-down menu, then click **OK**
7. Verify and fill in the Power Sequencing File Path and all the configurations.
8. Make sure power sequencing file is valid and it is recommended to start with a lower RF power. 
9. Once verified, click RUN to start the measurement.


