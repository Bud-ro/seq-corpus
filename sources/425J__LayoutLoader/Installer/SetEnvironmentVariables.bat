@ECHO OFF

SET "EnvTestStandPublic=%~dp0Public"
SETX EnvTestStandPublic "%~dp0Public" /m 1>NUL
SET "EnvTestStandAppData=%~dp0CommonAppData"
SETX EnvTestStandAppData "%~dp0CommonAppData" /m 1>NUL
SET "EnvTestStandLocalAppData=%~dp0LocalAppData"
SETX EnvTestStandLocalAppData "%~dp0LocalAppData" /m 1>NUL

ECHO EnvTestStandPublic: [93m%EnvTestStandPublic%[0m
ECHO EnvTestStandAppData: [93m%EnvTestStandAppData%[0m
ECHO EnvTestStandLocalAppData: [93m%EnvTestStandLocalAppData%[0m