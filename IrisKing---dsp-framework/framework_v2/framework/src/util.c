#include <std.h>
#include <csl.h>
#include <stdio.h>

#include "util.h"
#include "dsp_typedef.h"

//#define SAVE_PATH 	"D:\\SVN EMB\\develop\\dsp"
#define SAVE_PATH	"D:\\"

int SaveBmp (unsigned char* bmpdata, int size, int i)
{
#if defined(_DEBUG)

	FILE* fp;
	char  filename[64];

	dbg_output("save bmp file size %d\n", size);

	sprintf(filename, "%s\\testdsp-%d.bmp", SAVE_PATH, i);
	
	fp = fopen(filename, "wb");   

	if (fp==NULL)
		return -1;

	fwrite(bmpdata, 1, size, fp );

	fclose(fp);

#endif
	return 0;

}


int SaveRaw (unsigned char* bmpdata, int size, int i, int eye, int ret)
{
#if _SAVERAW

	FILE* fp;
	char  filename[64];
	unsigned char	bmp_header[1080];

	FillBmpHeader ((Uint32)bmp_header, 640, 480);

	dbg_output("save bmp file size %d\n", size);

	if (eye==TSK_ALGORITHM_FLAG_LEFTEYE)
		sprintf(filename, "%s\\left-testdsp-%d_ret%d.bmp", SAVE_PATH, i, ret);
	else
		sprintf(filename, "%s\\right-testdsp-%d_ret%d.bmp", SAVE_PATH, i, ret);
	
	fp = fopen(filename, "wb");   

	if (fp==NULL)
		return -1;

	fwrite(bmp_header, 1, 1080, fp);
	fwrite(bmpdata, 1, size, fp );

	fclose(fp);

#endif

	return 0;

}

int SaveFeature (unsigned char* feature, int index, int eye, int feature_len)
{
#if defined(_DEBUG)

	FILE* fp;
	char  filename[64];
	char  ch[16];
	int	  off, i;

	sprintf(filename, "%s\\%d-fea.txt", SAVE_PATH, index);
	
	fp = fopen(filename, "w");   

	if (fp==NULL)
		return -1;

	memset(ch, 0x20, sizeof(ch));	// 全部写空格
	sprintf(ch, "%d", eye);
	ch[strlen(ch)]	 = 0x20;
    ch[sizeof(ch)-3] = '\r';
    ch[sizeof(ch)-2] = '\n';
	ch[sizeof(ch)-1] = '\0';
	fputs(ch, fp);

	off = 0;

	for (i=0; i<feature_len; i++)
//	for (i=0; i<1260; i++)
	{
		sprintf(ch, "0x%02x, ", *(feature+off));
		fputs(ch, fp);
		off++;
	}

	fclose(fp);

#endif
	return 0;

}

// bmpfilename.foramt("%s//%03d.bmp", bmpfilepath, i);
// 读出的数据放在bmpdata中，size表示BMP数据大小
// 固定数据大小为640*480
int ReadBmp (unsigned char* bmpdata, int i)
{
#if defined(_DEBUG)

	FILE* fp;
	size_t   count = 640*480;
	long	 offset = 1078;
	char filename[256];

	sprintf(filename, "D:\\Irisking\\bmpdata\\%03d.bmp", i);

	fp = fopen(filename, "rb");

	if (fp==NULL)
		return -1;

	fseek( fp, offset, SEEK_SET);
	fread( bmpdata, 1, count, fp );

	fclose(fp);

#endif

	return 0;
}

