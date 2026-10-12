REM Use this script to restart SeqEdit.exe with different UI configuration.
REM Scipt arguments:
REM    Argument 1 - TestStand LocalAppData (e.g. C:\Users\<USER>\AppData\Local\National Instruments\<TESTSTAND>)
REM    Argument 2 - UI configuration file to load
REM    Argument 3 - TestStand environment file
REM
REM Use the following expression to run this script (assign UI configuration file path to Locals.NewUIConfig):
REM    "\"" + RunState.Engine.GetTestStandPath(TestStandPath_LocalAppData) + "\" \"" + Locals.NewUIConfig + "\" \"" + RunState.Engine.GetEnvironmentPath() + "\""

@ECHO OFF
SETLOCAL

SET TestStandLocalAppData=%~1
SET NewUIConfigFilePath=%~2
SET TSEnvironment=%~3
SET CurrentLayoutPath=%TestStandLocalAppData%\layout_current.bin 
SET UIConfigFilePath=%TestStandLocalAppData%\SeqEdit.xml

ECHO Close [92mSeqEdit.exe[0m.
START "Close SeqEdit.exe" "%TestStandBin%\UseExistingSeqEdit.exe" /quit

TIMEOUT 3

ECHO:
ECHO Set new UI configuration.
ECHO Delete [93m%CurrentLayoutPath%[0mand replace [93m%UIConfigFilePath%[0m with [93m%NewUIConfigFilePath%[0m.
IF EXIST "%TestStandLocalAppData%\CurrentUIConfigFilePath.log" DEL "%TestStandLocalAppData%\CurrentUIConfigFilePath.log"
IF EXIST "%CurrentLayoutPath%" DEL "%CurrentLayoutPath%"
IF EXIST "%UIConfigFilePath%" DEL "%UIConfigFilePath%"
COPY "%NewUIConfigFilePath%" "%UIConfigFilePath%" 1>NUL
ECHO %NewUIConfigFilePath% > "%TestStandLocalAppData%\CurrentUIConfigFilePath.log"

ECHO:
ECHO Restart [92mSeqEdit.exe[0m.
START "Start SeqEdit.exe" "%TestStandBin%\SeqEdit.exe" /env "%TSEnvironment%"