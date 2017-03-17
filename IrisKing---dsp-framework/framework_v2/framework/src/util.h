
#if !defined(__DSP_UTIL_H__)
#define __DSP_UTIL_H__

#if defined(_DEBUG)
	#define _SAVERAW	1	// 是否保存图像信息，0 - 不保存
#else
	#define _SAVERAW	0	// 是否保存图像信息，0 - 不保存
#endif

int SaveFeature (unsigned char* feature, int index, int eye, int feature_len);

int SaveBmp (unsigned char* bmpdata, int size, int i);

#if _SAVERAW
int SaveRaw (unsigned char* bmpdata, int size, int i, int eye, int ret);	// left=0, right=1
#endif

// 从固定位置读取固定大小的图像，用于测试
int ReadBmp (unsigned char* bmpdata, int i);

#endif //!__DSP_UTIL_H__
