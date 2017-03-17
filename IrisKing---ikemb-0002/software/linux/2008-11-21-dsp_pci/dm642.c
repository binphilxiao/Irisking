#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>


#define FILE_INIT_NAME "dsp_init.bin"
#define FILE_NAME "dsp.bin"
#define KERNEL_FILE_NAME "../proc/pcidev/DM642"

#define HSR 0
#define HDCR 1
#define DSPP 2
#define DSP_RESET 3
#define DSP_START 4
#define SDRAM_INIT 5

const unsigned long bootloader[]={ 0x0021d02a, 0x0040346a, 0x00000362, 0x00008000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 
                                                      0x72cec3d7, 0xc750d060, 0xdb543e36, 0xd13c899c, 0x65ef90cd, 0x20a5cdd9, 0xa03e6647, 0xe1cf38b0};

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 重启DSP @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
void reset_dsp()
{
printf("Stop dsp\n");
int fh = open(KERNEL_FILE_NAME, O_RDWR);
if(fh == -1)
    {
    printf("Device open failure!\n");
    return;
    }
ioctl(fh, DSP_RESET);
close(fh);
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 启动DSP @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
void start_dsp()
{
printf("Start dsp\n");
int fh = open(KERNEL_FILE_NAME, O_RDWR);
if(fh == -1)
    {
    printf("Device open failure!\n");
    return;
    }
ioctl(fh, DSP_START);
close(fh);
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ SDRAM初始化 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
void sdram_init()
{
int fff = open(KERNEL_FILE_NAME, O_RDWR);
if(fff == -1)
    {
    printf("%s open falied!\n",KERNEL_FILE_NAME);
    return;
    }
ioctl(fff, SDRAM_INIT);
close(fff);
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 大小头转换 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
unsigned int shift_endian(unsigned int data)
{
unsigned char i;
unsigned char mid;
unsigned int ret = 0;
for(i=0;i<4;i++)
    {
    mid = data>>(8*i);
    ret += mid<<(24-8*i);
    }
return ret;
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 装载DSP @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
void loaddsp(char *string)
{
unsigned int len, i;

//待传输文件长度len
FILE *fp = fopen(string, "rb");
if (!fp)
    {
    printf("%s open failed\n",string);
    return;
    }
fseek(fp, 0 ,SEEK_END);
len = ftell(fp);
printf("\nlen = %d\n",len);
fclose(fp);

reset_dsp();
sleep(1);
printf("--------------------loading dm642 program   %s---------------------\n",string);

//写入内核空间的数据
unsigned int sec_buf[len/4];
//内核空间读出的数据
unsigned int veri_buf[len/4];
unsigned int entry;
unsigned int seccount = 0;
unsigned int load_size, load_pointer;
unsigned int temp,tem;

//打开待传输文件内容
FILE *fp1 = fopen(string, "rb");
//打开内核文件
int fff = open(KERNEL_FILE_NAME, O_RDWR);
if(fff == -1)
    {
    printf("%s open falied!\n",KERNEL_FILE_NAME);
    return;
    }

//初始化SDRAM
ioctl(fff, SDRAM_INIT);

//读取程序载入点
fseek(fp1, 0 ,SEEK_SET);
fread(&entry, 4, 1, fp1);
entry = shift_endian(entry);

//传输数据
while(ftell(fp1) < len)
{
printf("position=0x%05x, ",ftell(fp1));
fread(&load_size, 4, 1, fp1);
fread(&load_pointer, 4, 1, fp1);
load_size = shift_endian(load_size);
if(load_size != 0)
    load_pointer = shift_endian(load_pointer);
printf("section %02d: addr=0x%08x, size=0x%x\n", seccount, load_pointer, load_size);

//不够4字节的补齐
if ((load_size % 4) != 0)
    load_size += 4 - (load_size % 4);

//读取数据
fread(sec_buf, 1, load_size, fp1);
//大小头转换
for(i=0;i<load_size/4;i++)
    sec_buf[i] = shift_endian(sec_buf[i]);
//写入PCI
ioctl(fff, DSPP, load_pointer);
write(fff, sec_buf, load_size);

//校验写入PCI的数据
read(fff, veri_buf, load_size);
for(i=0;i<load_size/4;i++)
    if (veri_buf[i] != sec_buf[i])
        {
        printf("pci load error at offset %08x, pci_val = %08x, should = %08x\n", load_pointer + 4*i, veri_buf[i], sec_buf[i]);
        close(fff);
        fclose(fp1);
        return;
        }
seccount++;
}
printf("program entry is 0x%x\n",entry);

ioctl(fff, DSPP, 0);
write(fff, bootloader, sizeof(bootloader));

ioctl(fff, DSPP, 20);
read(fff, &temp, sizeof(temp));
temp = shift_endian(temp);
ioctl(fff, DSPP, 24);
read(fff, &tem, sizeof(tem));
tem = shift_endian(tem);

//设置跳转地址
temp = (temp & 0xff80007f) | ( ((entry & 0x0000ffff) << 7) & 0x7fff80);
tem  = (tem  & 0xff80007f) | ( ((entry & 0xffff0000) >> 9) & 0x7fff80);
temp = shift_endian(temp);
tem = shift_endian(tem);

ioctl(fff, DSPP, 20);
write(fff, &temp, sizeof(temp));
ioctl(fff, DSPP, 24);
write(fff, &tem, sizeof(tem));

//关闭内核文件
close(fff);
//关闭待传输文件
fclose(fp1);

start_dsp();
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 测试SDRAM @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
void test_sdram()
{
unsigned int i, k;

reset_dsp();
sleep(1);
printf("-------------------- test dm642 sdram ---------------------\n");

//写入内核空间的数据

unsigned int sec_buf[0x40000];
//内核空间读出的数据
unsigned int veri_buf[0x40000];

//打开待传输文件内容
FILE *fp1 = fopen("uImage", "rb");
if (!fp1)
    {
    printf("uImage open failed\n");
    return;
    }
//打开内核文件
int fff = open(KERNEL_FILE_NAME, O_RDWR);
if(fff == -1)
    {
    printf("%s open falied!\n",KERNEL_FILE_NAME);
    return;
    }

//初始化SDRAM
ioctl(fff, SDRAM_INIT);

//读取数据到sec_buf[]
fseek(fp1, 0 ,SEEK_SET);
fread(sec_buf, 1, 0x100000, fp1);

//大小头转换
for(i=0;i<0x40000;i++)
    sec_buf[i] = shift_endian(sec_buf[i]);

//以1MB为单位，测试SDRAM
//for(;;)
printf("begins\n");
for(i=0;i<64;i++)
    {
/*
    printf("mem-%02d      ",i);
    if(i%8 == 7)
        printf("\n");
*/
    //写入PCI
    ioctl(fff, DSPP, 0x80000000+i*0x100000);
    write(fff, sec_buf, 0x100000);
/*
    //校验写入PCI的数据
    read(fff, veri_buf, 0x100000);
    for(k=0;k<0x40000;k++)
        {
        if (veri_buf[i] != sec_buf[i])
            {
            printf("pci load error at offset %08x, pci_val = %02x, should = %02x\n", 0x80000000+i*0x100000 + 4*k, veri_buf[k], sec_buf[k]);
            close(fff);
            fclose(fp1);
            return;
            }
        }
    sleep(1);
*/
    }
printf("ends\n");
return;
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 主函数 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
main()
{
/*
char *dsp_bin_init = FILE_INIT_NAME;
loaddsp(dsp_bin_init);

char *dsp_bin = FILE_NAME;
loaddsp(dsp_bin);
*/

test_sdram();

}
