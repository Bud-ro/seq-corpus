# Contributing to Measurement Plug-In Converter for LabVIEW

Contributions to Measurement Plug-In Converter for LabVIEW are welcome from all!

Measurement Plug-In Converter for LabVIEW is managed via [git](https://git-scm.com), with the
canonical upstream repository hosted on
[GitHub](https://github.com/ni/measurement-plugin-converter-labview).

Measurement Plug-In Converter for LabVIEW follows a pull-request model for development.  If you wish
to contribute, you will need to create a GitHub account, fork this project, push a branch with your
changes to your project, and then submit a pull request.

Please remember to sign off your commits (e.g., by using `git commit -s` if you are using the
command line client). This amends your git commit message with a line of the form `Signed-off-by:
Name Lastname <name.lastmail@emailaddress.com>`. Please include all authors of any given commit into
the commit message with a `Signed-off-by` line. This indicates that you have read and signed the
Developer Certificate of Origin (see below) and are able to legally submit your code to this
repository.

See [GitHub's official documentation](https://help.github.com/articles/using-pull-requests/) for
more details.

## Getting Started

This repository hosts the source code and VI package build specifications for the Measurement
Plug-In Converter tool and the Data Serialization palette.

`.\Source` contains the source code and `.\Build Specs` contains the package build definition files
(.vipb).

## Prerequisites

- Install Git
- Install Software Dependencies mentioned in the [README.md](./README.md)

## Clone or Update the Git Repository

To download the Measurement Plug-In Converter for LabVIEW source, clone the Git repository locally.

```cmd
git clone https://github.com/ni/measurement-plugin-converter-labview.git
```

If already available locally, update it

```cmd
git checkout main

git pull
```

## Steps to Contribute

To contribute to this project, it is recommended that you follow these steps:

1. Make your change.
2. Send a GitHub Pull Request to the main repository's master branch. GitHub Pull Requests are the
   expected method of code collaboration on this project.

## Building the LabVIEW packages

The source code is deployed using two VI packages (*.vip)

1. `ni_measurement_plugin_converter`
2. `data_serialization`

To build the packages:

1. Open the desired VIPM specification file (.vipb) under the [Build
   Specs](https://github.com/ni/measurement-plugin-converter-labview/tree/main/Build%20Specs) folder
   using VIPM 2021 or later
2. Click Build. A `.vip` file will be created in the `Build Output` folder under the repository's
   root directory.

### `ni_measurement_plugin_converter` Package

The `ni_measurement_plugin_converter` package provides the libraries and template files needed to
convert native LabVIEW measurements into measurement plug-ins.

#### Converter

The `Converter` folder contains scripting code that automates the conversion of LabVIEW measurements
into measurement plug-ins.

#### Measurement Plugin Generator

The `Measurement Plugin Generator` folder contains a copy of the scripting APIs from the
[measurement-plugin-labview](https://github.com/ni/measurement-plugin-labview) repository. These
APIs are used to generate a template measurement plug-in, which serves as the starting point for
converting LabVIEW measurements.

> [!NOTE]  
> Since these APIs are copied from the original repository, they must be updated whenever changes
> are made to the source APIs.

#### Templates and Utilities

The `Templates` and `Utilities` folders contain the necessary template files and utilities used
during the conversion process.

---

### `data_serialization` Package

#### Data Serialization

The `Data Serialization` folder includes `.vim` files for serializing and deserializing cluster data
to and from strings. It also contains a `.mnu` file to expose these `.vim` files in the LabVIEW
palette.

#### Palette Files

The `Palette Files` folder acts as a placeholder for configuring the deployment location of the
`Data Serialization` palette.

## Testing

Testing should be done manually before submitting the PR.

## Developer Certificate of Origin (DCO)

   Developer's Certificate of Origin 1.1

   By making a contribution to this project, I certify that:

   (a) The contribution was created in whole or in part by me and I have the right to submit it
       under the open source license indicated in the file; or

   (b) The contribution is based upon previous work that, to the best of my knowledge, is covered
       under an appropriate open source license and I have the right under that license to submit
       that work with modifications, whether created in whole or in part by me, under the same open
       source license (unless I am permitted to submit under a different license), as indicated in
       the file; or

   (c) The contribution was provided directly to me by some other person who certified (a), (b) or
       (c) and I have not modified it.

   (d) I understand and agree that this project and the contribution are public and that a record of
       the contribution (including all personal information I submit with it, including my sign-off)
       is maintained indefinitely and may be redistributed consistent with this project or the open
       source license(s) involved.

(taken from [developercertificate.org](https://developercertificate.org/))

See [LICENSE](https://github.com/ni/measurement-plugin-converter-labview/blob/main/LICENSE) for
details about how Measurement Plug-In Converter for LabVIEW is licensed.
