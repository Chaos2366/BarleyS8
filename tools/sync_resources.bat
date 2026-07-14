@echo off
setlocal

if "%~1"=="" (
    echo Usage:
    echo sync_resources.bat "D:\pvz\BarleyS8-Runtime"
    exit /b 1
)

set "SOURCE=%~dp0..\mod_resources"
set "TARGET=%~1"

echo Copying resources...
echo Source: %SOURCE%
echo Target: %TARGET%

robocopy "%SOURCE%" "%TARGET%" /E

if errorlevel 8 (
    echo Resource copy failed.
    exit /b %errorlevel%
)

echo Resources copied successfully.
exit /b 0
