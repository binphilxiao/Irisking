#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>

#define I2C_SLAVE	0x0703

main()
{
unsigned int len;
 
 //输入文件长度
FILE *fin = fopen("arm","rb");
fseek(fin, 0, SEEK_END);
len = ftell(fin);
unsigned char data[len];
unsigned char out[len];
//读取输入文件数据到data
fseek(fin, 0, SEEK_SET);
fread(data, 1, len, fin);
fclose(fin);

//I2C地址
int addr = 0x50;
//内核写
int fh = open("/dev/i2c-1", O_RDWR);
    if (fh == -1)
        {
        printf("Device write open failure!\n");
        return ;
        }
//给内核传递当前I2C器件的地址
ioctl(fh, I2C_SLAVE, addr);
write(fh, data,len);
close(fh);

//内核读
int fhh = open("/dev/i2c-1", O_RDWR);
    if (fhh == -1)
        {
        printf("Device read open failure!\n");
        return ;
        }
//给内核传递当前I2C器件的地址
ioctl(fhh, I2C_SLAVE, addr);
read(fhh, out, len);
close(fhh);

//读出写入的数据
FILE *fout = fopen("iicout", "wb");
fwrite(out, 1, len, fout);
fclose(fout);
}
