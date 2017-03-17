#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>

void delay(int time)
{
int i;
for(i=0; i<time;i++)
  ;
}

main()
{
int i = 0;
char tmp;
char mid[13];

FILE *fp1 = fopen("audio.bin","rb");
while(!feof(fp1))
{
	fread(&tmp,1,1,fp1);
	mid[i] = tmp;
	i++;
}
fclose(fp1);

FILE *fp2 = fopen("../dev/i2c-0", "r+");
fwrite(mid,13,1,fp2);
fclose(fp2);
}
