# TestStand Layout Loader

<table style="background-color:#FFF8E6;color:black;border-style:solid;border-color:#E6A700;border-width:thin;border-left-width:thick;">
<tr align= "left"><th>⚠️ Caution</th></tr>
  <tr><td>This tool is at the <b>alpha phase</b>. It means that the code is not a complete solution; that the code may not be fully functional; that the code may not have been tested or validated; and that the code may have bugs and errors. The tool may change drastically once it reaches the beta phase. <b>Use at your own risk.</b></td></tr> 
</table>

## Description

This tool automatically loads the TestStand layout (`layout_*.bin`) assigned to the user. The layout file is specified _indirectly_ in the user attribute. User attribute specifies UI configuration XML file path (using `%EnvTestStandAppData%`), which specifies layout file to load at startup. This solution requires SeqEdit.exe restart.

## Requirements

To use the tool:
- TestStand 2021 (ni-teststand-2021-x86)

## Installation

Run `.\Installer\Install.seq`. Select menu **View»Output** to see installation details. After successful installation, Layout Loader is automatically launch after login.

NOTE: You must also run `.\Installer\SetEnvironmentVariables.bat` (run as administrator) to create environment variables.
