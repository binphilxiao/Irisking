RTL8201网卡

RTL8201.config：目前版本的内核配置文件。
u-boot-4G-1Gb-8201.bin：目前版本的u-boot，4Gb NAND。
u-boot-32-1Gb-8201.bin：目前版本的u-boot，32MB NAND。
uImage-4G-1Gb-8201：目前版本的内核文件，4Gb NAND。
uImage-32-1Gb-8201：目前版本的内核文件，32MB NAND。

u-boot-4G-128-8201.bin：128MBDDR，4Gb NAND。
u-boot-32-128-8201.bin：128MBDDR，32MB NAND。

内核文件对于不同大小的DDR均适用。


目前版本：

512MB内存
系统降频启动
I2C语音模块
RTC
4Gb NAND（yaffs2文件系统）
DM642 PCI驱动（DMA方式读写SDRAM）
ES1946声卡驱动
RTL8201网卡