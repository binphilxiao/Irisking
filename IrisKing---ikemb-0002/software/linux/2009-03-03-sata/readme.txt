VT6421A : PCI-SATAת����

VT6421.config��Ŀǰ�汾���ں������ļ���
exports��������10.2.1.20:/root/powerpc/nfs����Ŀ¼���ļ���

uImage-VT����5�Ű���ںˣ�128MB DDR2��4Gb NAND��


Ŀǰ�汾��

512MB�ڴ�
ϵͳ��Ƶ����
I2C����ģ��
RTC
4Gb NAND��yaffs2�ļ�ϵͳ��
DM642 PCI������DMA��ʽ��дSDRAM��
ES1946��������
RTL8201����
VT6421A ת����
NFS����



NFS����
������
1���޸�/etc/exports�ļ���
2��exportfs -r����mount /etc/exports�з��������Ŀ¼��
3��showmount -e�鿴�����������ļ��б�

Ƕ��ʽϵͳ��
mount -o nolock -t nfs 10.2.1.20:/root/powerpc/nfs /mnt/cdrom/