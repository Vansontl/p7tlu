@echo off
setlocal
cd /d "%~dp0"
if not exist logs mkdir logs
echo [INFO] Dang khoi dong Workforce WebApp...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\start-workforce.ps1"
endlocal
