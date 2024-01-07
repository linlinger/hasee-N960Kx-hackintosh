echo -off
set BIOS_ES_ROM N960Kx-latestMC.FD.new
set BIOS_ROM N960Kx-latestMC.FD
set FLASH_TOOL Fpt.efi

for %i run (0 32)
    fs%i%:
        if exist %BIOS_ROM% then
            goto break
        endif
        cls
endfor
exit

:break
if exist %BIOS_ES_ROM% then
    goto flashes
endif

:flash:
%FLASH_TOOL% -f %BIOS_ROM% -bios
%FLASH_TOOL% -greset

:flashes:
%FLASH_TOOL% -f %BIOS_ES_ROM% -bios
%FLASH_TOOL% -greset

# Copy: https://github.com/lalakii
# By lalaki.cn