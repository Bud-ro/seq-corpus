# Easy-User-Manager

This project allows developers to easily manage Teststand users from LabVIEW.

The intended usage is to incorporate these VIs into your own custom LabVIEW UI for Teststand, to use them within a LabVIEW standalone application, or to use them directly in Teststand if you prefer a LabVIEW-Adapter based approach to using the Teststand API directly.

## Usage

All functionality is implemented in the EasyUserManager class. Complete the following steps to use implemented functions:

1. Initialize an EasyUserManager object providing the teststand engine reference.

2. Start the Teststand Application.

3. Use class functions on the EasyUserManager object.

4. Shut down the Teststand Application when you are done.

5. Close the engine reference of the EasyUserManager object.


**Note**:In LabVIEW you can obtain the Teststand engine reference by executing a <i>GetEngine</i> InvokeNode on the Application Manager reference. Also, you need to start/shutdown the teststand application with the corresponding InvokeNodes on the Application Manager reference. 

From Teststand you need to initialize the EasyUserManager object with the "Initialize from Teststand.vi". Use <i>Runstate.Engine</i> as the Engine Reference input. This engine reference is duplicated, so you need to close it after usage (e.g. during clean up). Search for "Duplicating COM References in LabVIEW" in the Teststand User Manual for further information on this topic.

Refer to the [documentation file](Antidoc-Output/Easy%20User%20Manager.pdf) and the provided examples for further information.

Examples are located in <i>\<LabVIEW>\examples\Hasbun Wood Engineering\Easy User Manager</i>. This repository contains an example LabVIEW Project (which you can access through Help → Find Examples using the keyword <i>Easy User Manager</i>) and an example Teststand sequence.

## Dependencies

Teststand 2024 or newer.

## Third Party Licenses

The project documentation was created using the following tools:

### Antidoc

Project website: [Antidoc](https://gitlab.com/wovalab/open-source/labview-doc-generator)

Maintainer website: [Wovalab](https://www.wovalab.com/fr/)

BSD 3-Clause License

Copyright © 2019-2025, Wovalab, All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

### Asciidoc for LabVIEW<sup>TM</sup>

Project website: [Asciidoc toolkit](https://gitlab.com/wovalab/open-source/asciidoc-toolkit)

Maintainer website: [Wovalab](https://www.wovalab.com/)

BSD 3-Clause License

Copyright © 2019-2025, Wovalab, All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

### classy Diagram Viewer

Project website: [classy Diagram Viewer](https://gitlab.com/tatiana.boye/classy-diagram-viewer)

BSD 3-Clause License

Copyright © 2021, Tatiana Boyé All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
