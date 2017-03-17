#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>


//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 主函数 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
main()
{
    unsigned int veri_buf = 0x03283C40;                         //26位韦根数据
    int fh = open("/proc/char_wig/wiegand", O_RDWR);
    if (fh == -1)
        {
        printf("Device open failure!\n");
        return ;
        }

    write(fh, &veri_buf, 4);
    close(fh);
}
