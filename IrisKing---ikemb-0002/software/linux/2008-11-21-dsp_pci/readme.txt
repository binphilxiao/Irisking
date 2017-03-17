PCI-DM642.c：linux内核驱动。
dm642.c：linux系统下用户空间loaddsp的程序。

dm642.config：目前版本的内核配置文件。
uImage.4G.dm642：目前版本的内核文件，4Gb NAND。
uImage.32.dm642：目前版本的内核文件，32MB NAND。

framework.out是测试点亮屏幕的文件，已经加入了跳转语句。
flashboot1.s62是跳转语句的汇编代码。


目前版本：

系统降频启动
PCI网络
I2C语音模块
RTC
4Gb NAND
DM642 PCI驱动
ES1946驱动（未完成）