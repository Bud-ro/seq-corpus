# PCB Assembly Test Toolkit for DotNET

| Info | Description |
|------|-------------|
| **Info** | A DotNET based toolkit providing measurement libraries, validation examples and automation test sequences for electrical functional testing of PCB assembly. |
| **Author** | National Instruments |

## Table of Contents
- [About](#about)
- [Documentation](#documentation)
- [Prerequisites](#prerequisites)
- [Installation & Getting Started](#installation--getting-started)
- [Key Concepts](#key-concepts)
- [Usage](#usage)
- [Bugs / Feature Requests](#bugs--feature-requests)
- [License](#license)

---

## About

PCB Assembly Test Toolkit is a collection of measurement APIs classes for PCB Assembly electrical 
functional test, it is focused on **cDAQ** hardware used through DAQmx environment.  

Libraries are built in C# 7.3 and target .NET framework 4.6.2 and .NET Core 6.0, they are designed, and 
structured to be used with .NET custom sequencers or NI TestStand. They can be modified to be 
adapted to any specific measurements thanks to provided source code and DLLs.

---

## Documentation

For comprehensive information, refer to the following documentation:

- **[PCBA Test Toolkit Getting Started](docs/PCBA%20Test%20Toolkit%20Getting%20Started.pdf)** - Step-by-step instructions for installation and initial setup.
- **[PCBA Test Toolkit User Manual](docs/PCBA%20Test%20Toolkit%20User%20Manual.pdf)** - Complete reference documentation for measuremenets and TestStand automation sequences.

---

## Prerequisites

### Dependencies

Download and install the below mentioned packages from [NI Package Manager](https://www.ni.com/en/support/downloads/software-products/download.package-manager.html#322516) or visit [ni.com/downloads](ni.com/downloads).
   - **NI LabVIEW Runtime** - 2022 Q3 (32-bit, 64 bit)
   - **NI-DAQmx** -  2023 Q1 and above (32-bit, 64 bit) 
   - **NI-845x** - 19.0 and above (2022 Q3 recommended) 
   - **NI-VISA** - 2023 Q2 (32-bit, 64-bit) 

Also download the below mentioned dependencies:

   - **Visual Studio** - 2022
   - **Dot NET** - Framework 4.6.2 and .NET Core 6.0  

### Hardware Supported

- **cDAQ** (All NI-DAQmx devices with hardware resources compatible as optional) 
---

## Installation & Getting Started

### Installation

To Install and use the PCB Assembly Test Toolkit DotNET, follow the below mentioned steps: 

1. Download the source code from the repository.

2. Create a folder `PCB Assembly Test Toolkit DotNET` under  `C:\Users\Public\Documents\National Instruments\`.

3. Copy `source/Packages`, `source/PCBA.Test.Toolkit`, `source/PCBA.Test.Toolkit.Automation`, `source/PCBA.Test.Toolkit.Integration`, `source/NI_PCBA_Measurement_Simulated_TestScale.ini`, `source/PCB Assembly Test Toolkit.sln`, and `source/PCBA Test Toolkit csproj template.xml` from `source` and paste in the below mentioned location:
   ```
   C:\Users\Public\Documents\National Instruments\PCB Assembly Test Toolkit DotNET\
   ```

For detailed installation instructions and initial setup in Visual Studio, refer to the **[PCBA Test Toolkit Getting started - Section 6 Toolkit installation](docs/PCBA%20Test%20Toolkit%20Getting%20Started.pdf)**.

---

## Key Concepts

### 1. Libraries

All the measurement libraries are compiled in the DLLs as explained in the Getting Started guide. 
Each library as three main methods: 

| Method | Overview |
|--------|-------------|
| **CreateInstance** | Used to initialize a DAQmx task using either physical or global channels provided to perform the respective task. |
| **ConfigureAndMeasure/ConfigureAndGenerate** | Configures, Initiates and Measure/Generate for an input/output task respectively. Also, can returns raw data for external custom post analysis and measurements from embedded analysis(selectable/optional) |
| **Close** | Closes and clears the DAQmx task. |

### 2. Physical and Virtual Channels 

All Libraries (except Power Supply Source and Measure) support Global Virtual Channels created 
using NI MAX. User can either provide physical channels from the module directly or use virtual 
channels. If both are provided, Virtual channels will take precedence and will be used while 
initializing the task.

**Note:** Channel settings of Global Virtual Channels set in NI MAX will be overwritten using 
ConfigureAndMeasure methods of measurement and ConfigureAndGenerate methods of 
generation. 

---

## Usage

Refer to [PCBA Test Toolkit User Manual](docs/PCBA%20Test%20Toolkit%20User%20Manual.pdf) - Section 5 **PCBA test toolkit measurements** for understanding about each measurement and its usage, and Section 7 **Example of toolkit use** to learn about Automation sequences.



## Bugs / Feature Requests
To report a bug or submit a feature request, please use [GitHub Issues](https://github.com/ankitan-ni/nipcbatt-dotnet/issues).

## License
PCBATT LabVIEW is licensed under an MIT-style license. Other incorporated projects may be licensed under different licenses. All licenses allow for non-commercial and commercial use.