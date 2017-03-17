目前版本V3

完成了USB host的修改。

uboot没有修改。
内核有修改。
device tree有修改。


u-boot-333.bin：Core和DDR2都工作在333MHz的uboot。
uImage-usb：当前版本对应的内核。
iris-usb-host.dtb：USB host device tree的烧写文件。
mpc8313erdb_iris-host.dts：USB host device tree的源文件。
usb.config：当前版本对应的config文件。
flakey-usb-key-1.0.tgz：USB的修正文件（慎用）。