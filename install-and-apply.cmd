@echo off
powershell.exe -NoProfile -ExecutionPolicy RemoteSigned -File "%~dp0install-and-apply.ps1"
pause
