# CSV Sequence File Documentation Tool
This repository contains a proof-of-concept tool for generating CSV documentation from TestStand sequence files.

The produced .csv file contains a tab-delimited text defining a table with the following standard columns.

- Sequence File
- Sequence
- Step Group
- Step Index
- Indent Level (Block Level)
- Step
- Icon
- Descirption
- Settings
- Requirement[0]

And a number of Parameter/Value colums that varies according to maximum number of parameters captured by the algorithm.

- Parameter[i] Name
- Parameter[0] Value

Here is a screenshot of the csv data when it is correctly imported to Microsoft Excel

![sample_output](/docs/img/sample_output.png)

## Documentation
Full details are available [here](docs/README.md).

## License
This project is licensed under the MIT License.
