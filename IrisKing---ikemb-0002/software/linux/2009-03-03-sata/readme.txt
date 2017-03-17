VT6421A : PCI-SATA转换卡

VT6421.config：目前版本的内核配置文件。
exports：增加了10.2.1.20:/root/powerpc/nfs挂载目录的文件。

uImage-VT：给5号板的内核，128MB DDR2，4Gb NAND。


目前版本：

512MB内存
系统降频启动
I2C语音模块
RTC
4Gb NAND（yaffs2文件系统）
DM642 PCI驱动（DMA方式读写SDRAM）
ES1946声卡驱动
RTL8201网卡
VT6421A 转换卡
NFS挂载



NFS架设
主机：
1、修改/etc/exports文件。
2、exportfs -r重新mount /etc/exports中分享出来的目录。
3、showmount -e查看主机待挂载文件列表。

嵌入式系统：
mount -o nolock -t nfs 10.2.1.20:/root/powerpc/nfs /mnt/cdrom/