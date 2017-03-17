目前版本V3

完成了两块V3板子SPI互联的实验。

u-boot-spi.bin：GPIO17充当SPI Master的片选输出，即Slave的片选输入。

user-spi.c：用户空间的spi测试程序。


master文件夹：
SPI Master
linux-2.6.20/drivers/spi下的spi_mpc83xx.c和spidev.c，以及uImage。

slave文件夹：
linux-2.6.20/drivers/spi下的spi_mpc83xx.c和spidev.c，以及uImage。
SPI Slave
