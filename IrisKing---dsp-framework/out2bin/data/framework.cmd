framework.out
-map .\data\framework.map
-a
/*-image*/
-zero
-memwidth 8
-boot
-bootorg 0x90000000

ROMS
{
FLASH: org = 0x90000000,romwidth = 8, files = {.\data\framework.hex}
}