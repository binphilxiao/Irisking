#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>

#define WIG_IN1     1
#define WIG_IN2     2
#define WIG_IN3     3

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ö÷º¯Êý @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
main()
{
    unsigned int veri_buf;
    int fh = open("/proc/char_wig/wiegand", O_RDWR);
    if (fh == -1)
        {
        printf("Device open failure!\n");
        return ;
        }

    ioctl(fh,WIG_IN1);
    read(fh, &veri_buf, 4);
    printf("wig data = %x\n",veri_buf);
    close(fh);
}
