 #include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ������ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
main()
{
/*
unsigned int len;
 //�����ļ�����
FILE *fin = fopen("arm","rb");
fseek(fin, 0, SEEK_END);
len = ftell(fin);
unsigned char data[len];
//��ȡ�����ļ����ݵ�data
fseek(fin, 0, SEEK_SET);
fread(data, 1, len, fin);
fclose(fin);
*/

    unsigned int veri_buf = 0x27364840;                         //tx
	//unsigned int veri_buf = 0xFFFFFFFF;                       //rx
    int fh = open("/dev/spi-0", O_RDWR);

    if (fh == -1)
        {
        printf("Device open failure!\n");
        return ;
        }

    //read(fh, &veri_buf, 4);
    write(fh, &veri_buf, 4);
    //write(fh, data, 20);

    close(fh);
}
