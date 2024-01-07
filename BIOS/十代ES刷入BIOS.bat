@echo off
setlocal
cd /d %~dp0
call mcr.bat
if exist N960Kx-latestMC.FD.new (
    FPTW64.exe -f N960Kx-latestMC.FD.new -bios
    FPTW64.exe -greset
) else (
   echo fail
)
pause