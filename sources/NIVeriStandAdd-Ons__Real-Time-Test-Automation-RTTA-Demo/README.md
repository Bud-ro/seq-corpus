## Real Time Test Automation (RTTA) Demo ##

**Real Time Test Automation (RTTA) Demo** is a comprehensive V cycle demo going from requirements to tests including detailed analysis. LabVIEW, TestStand, VeriStand, DIAdem and Requirements Gateway are used. A corresponding demo script and powerpoint presentation are included.

The demo can be built into an executable and an installer project is available to bundle all files into an easy to distribute installer.

### Versions ###

- NI VeriStand 2011
- NI TestStand 2010 SP1
- DIAdem
- Requirements Gateway
- LabVIEW 2011

### Built Availability ###

No builds are provided, however the files to build the installer and support packed library and exe's are included

### Quality, Limitations ###

This IP should be considered mature when used with the listed software versions. However, using the IP with later versions of software requires extensive changes. Notably, the way NI TestStand is used should be completely rewritten, and the stimulus profiles used for NI VeriStand are legacy profiles that should be upgraded to current gen profiles. The way the NI TestStand sequence is scripted was using a now-deprecated API. There is a [new technique](www.ni.com/example/31540/en/) that should be used instead. Additionally, one should evaluate if that technique should be used at all… or rather just script in the [veristand steps for NI Teststand](https://decibel.ni.com/content/docs/DOC-25218) directly. 

### License ###

*This repository and any materials provided by NI therein are provided AS IS. NI DISCLAIMS ANY AND ALL LIABILITIES FOR AND MAKES NO WARRANTIES, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY WARRANTIES OF MERCHANTABILITY, FITNESS FOR  PARTICULAR PURPOSE, OR NON-INFRINGEMENT OF INTELLECTUAL PROPERTY. NI shall have no liability for any direct, indirect, incidental, punitive, special, or consequential damages for your use of the repository or any materials contained therein.*