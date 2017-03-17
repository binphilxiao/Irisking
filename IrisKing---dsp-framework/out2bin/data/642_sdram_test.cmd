framework.out
-map .\data\642_sdram_test.map
-a
/*-image*/
-zero
-memwidth 8
-boot
-bootorg 0x90000000

ROMS
{
FLASH: org = 0x90000000,romwidth = 8, files = {.\data\642_sdram_test.hex}
}