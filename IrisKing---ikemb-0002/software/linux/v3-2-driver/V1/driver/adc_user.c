#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>


//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Ö÷º¯Êý @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
main()
{
    unsigned char veri_buf;
    FILE *fwr;

    int fh = open("/proc/char_adc/ADC", O_RDWR);
    if (fh == -1)
        {
        printf("Device open failure!\n");
        return ;
        }

    read(fh, &veri_buf, 1);
    printf("adc = %d\n", veri_buf);
    printf("analog = %f\n", veri_buf*5/256);
    close(fh);
}
