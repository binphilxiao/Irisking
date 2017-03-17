#include <stdio.h>
#include <linux/types.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <assert.h>
#include <string.h>

main()
{
	u_int8_t i,j;
	int32_t ret;
	int32_t fh = open("/dev/fpga-0", O_RDWR);
    	if (fh == -1)
       {
        	printf(" fpga-0 Device write open failure!\n");
        	return ;
       }
	ioctl(fh, 5);
	ioctl(fh, 7);
	ioctl(fh, 9);
	ioctl(fh, 11);
	ioctl(fh, 13);
	ioctl(fh, 15);
	ioctl(fh, 17);
	ioctl(fh, 19);
	close(fh);
}


