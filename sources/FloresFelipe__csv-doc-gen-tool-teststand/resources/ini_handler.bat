@echo off

set ACTION=%1

if /I "%ACTION%"=="install" (
    echo INSTALL: Creating folders and copying INI file...
    mkdir "%teststandpublic64%\Components\Tools\CSVDocGen\support\ToolMenusToUninstall"
    xcopy "%teststandpublic64%\Setup\ToolMenusToInstall\CSV_DocGen_Menu.ini" "%teststandpublic64%\Components\Tools\CSVDocGen\support\ToolMenusToUninstall\" /Y /H
) else if /I "%ACTION%"=="uninstall" (
    echo UNINSTALL: Copying contents back to Setup...
    mkdir "%teststandpublic64%\Setup\ToolMenusToUninstall"
    xcopy "%teststandpublic64%\Components\Tools\CSVDocGen\support\ToolMenusToUninstall\*" "%teststandpublic64%\Setup\ToolMenusToUninstall" /E /H /Y

    echo Deleting ToolMenusToUninstall folder...
    rmdir "%teststandpublic64%\Components\Tools\CSVDocGen\support\ToolMenusToUninstall" /S /Q
) else (
    echo Invalid action. Use "install" or "uninstall".
)