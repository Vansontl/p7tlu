@echo off
setlocal
cd /d "%~dp0"
echo [INFO] Dang khoi dong lai Workforce WebApp...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\restart-workforce.ps1"
endlocal
