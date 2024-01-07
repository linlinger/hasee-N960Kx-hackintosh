@echo off
setlocal
cd /d %~dp0

if exist N960Kx-latestMC.FD (
    FPTW64.exe -f N960Kx-latestMC.FD -bios
    FPTW64.exe -greset
) else (
    echo fail
)
pause