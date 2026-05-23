@echo off
cd /d "%~dp0"

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0sec.ps1"

echo.
echo Evidence collection finished.
echo Output folder:
echo %USERPROFILE%\Downloads\output
echo.
pause