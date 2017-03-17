目前版本V3

完成了i2c RTC和铁电存储器的驱动修改。



i2c.config：当前版本的内核配置文件。

i2c-mpc.c：内核c文件。

iic.c：用户空间下的iic读写函数。

iic.png：铁电存储器的读写流程示意图。

u-boot-env.bin：支持ramdisk和nfs启动、挂载nand的u-boot。

uImage-i2c：当前内核文件。