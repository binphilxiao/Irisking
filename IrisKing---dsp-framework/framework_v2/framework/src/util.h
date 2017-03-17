
#if !defined(__DSP_UTIL_H__)
#define __DSP_UTIL_H__

#if defined(_DEBUG)
	#define _SAVERAW	1	// �Ƿ񱣴�ͼ����Ϣ��0 - ������
#else
	#define _SAVERAW	0	// �Ƿ񱣴�ͼ����Ϣ��0 - ������
#endif

int SaveFeature (unsigned char* feature, int index, int eye, int feature_len);

int SaveBmp (unsigned char* bmpdata, int size, int i);

#if _SAVERAW
int SaveRaw (unsigned char* bmpdata, int size, int i, int eye, int ret);	// left=0, right=1
#endif

// �ӹ̶�λ�ö�ȡ�̶���С��ͼ�����ڲ���
int ReadBmp (unsigned char* bmpdata, int i);

#endif //!__DSP_UTIL_H__
