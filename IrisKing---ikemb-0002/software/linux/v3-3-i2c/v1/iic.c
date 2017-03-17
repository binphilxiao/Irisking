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
 
 //�����ļ�����
FILE *fin = fopen("arm","rb");
fseek(fin, 0, SEEK_END);
len = ftell(fin);
unsigned char data[len];
unsigned char out[len];
//��ȡ�����ļ����ݵ�data
fseek(fin, 0, SEEK_SET);
fread(data, 1, len, fin);
fclose(fin);

//I2C��ַ
int addr = 0x50;
//�ں�д
int fh = open("/dev/i2c-1", O_RDWR);
    if (fh == -1)
        {
        printf("Device write open failure!\n");
        return ;
        }
//���ں˴��ݵ�ǰI2C�����ĵ�ַ
ioctl(fh, I2C_SLAVE, addr);
write(fh, data,len);
close(fh);

//�ں˶�
int fhh = open("/dev/i2c-1", O_RDWR);
    if (fhh == -1)
        {
        printf("Device read open failure!\n");
        return ;
        }
//���ں˴��ݵ�ǰI2C�����ĵ�ַ
ioctl(fhh, I2C_SLAVE, addr);
read(fhh, out, len);
close(fhh);

//����д�������
FILE *fout = fopen("iicout", "wb");
fwrite(out, 1, len, fout);
fclose(fout);
}
