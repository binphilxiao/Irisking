
#include <std.h>
#include <tsk.h>
#include <buf.h>
#include <csl.h>
#include <csl_cache.h>
#include <stdio.h>
#include <string.h>		// add for convert image

#include "..\..\include\dbg_printf.h"

#include "dsp_memory.h"
#include "dsp_typedef.h"
#include "irIrisCore.h"

extern far QUE_Obj		match_queue;
extern PBITMAPFILEHEADER	phdr;	// bitmap file-header
extern PBITMAPINFOHEADER	pbmi;	// bitmap info-header
extern RGBQUAD*		    pColors;

int AlgMatchingProcess (void);

void WhenMatching()
{
 	Bool			que_empty;
	MATCH_MSG		match_msg_a;

	// iden or enroll, check the image
	que_empty = QUE_empty(&match_queue);
	if (que_empty!=TRUE)	// 有比对请求
	{
		dbg_output("TSK_match get queue\n");
		// copy image to own buffer
		match_msg_a = QUE_get(&match_queue);

		if (match_msg_a->process_flag==MATCHTYPE_BEGIN)
		{
			AlgMatchingProcess ();
		}
	} // end of queue not empty

} // end of WhenMatching

int AlgMatchingProcess (void)
{
	unsigned char* 	m_pEnrollFea;
	unsigned char* 	m_pRotateFea;
	unsigned char*  m_pFea1;
	unsigned char*  m_pFea2;
	unsigned char*	m_pResult;

	int row, col;
	int nret;
	int ifbreak = 0;

	m_pEnrollFea = (unsigned char*)(BMP_ENROLL_FEATURE_ADDR);
	m_pRotateFea = (unsigned char*)(BMP_ROTATE_FEATUER_ADDR);
	m_pResult	 = (unsigned char*)(BMP_MATCH_RESULT_ADDR);

	for (row = 0; row<dsp_used_reg.match_input_count; row++)
	{
		m_pFea1 = m_pEnrollFea + row*IR_FeatureLength;
		tsk_used_reg->dsp_matchprogress_reg.row = row+1;

		if (dsp_used_reg.status_reg.tsk_alg_status != TSK_MATCH_PROGRESS)
		{
			ifbreak = 1;
			break;
		}

		for (col=0; col<dsp_used_reg.match_input_count; col++)
		{
			if (col!=row)
			{
				tsk_used_reg->dsp_matchprogress_reg.col = col+1;

				m_pFea2 = m_pRotateFea + col*IR_RotateFeatureLength;
				nret = IRFeatureIdenAdaBoostWithList(m_pFea2,
							IR_RotateFeatureLength,
							NULL, 0,
							m_pFea1, 1,
							NULL, 0);
				if (nret==0)
					*m_pResult = 0;
				else
					*m_pResult = 1;

				m_pResult++;
				tsk_used_reg->tsk_flag_reg.left_data.dataptr_len++;
			}
		} // end of col
	} // row 

	// 正常比对结束
	if (ifbreak==0)
	{
		tsk_used_reg->tsk_flag_reg.right_data.dataptr_len	= 1;
		dsp_used_reg.status_reg.tsk_alg_status 				= TSK_MATCH_END;
		tsk_used_reg->tsk_flag_reg.tsk_alg_status 			= TSK_MATCH_END_ACTIVE;
		CACHE_flush(CACHE_L2ALL, 0, 0);
	}

	return 0;
}



// only accept 8bits bmp file now
int  DetectBmpInfo (Uint32 imgAddr)
{
	Uint16* bfType;
	
	bfType = (Uint16*)imgAddr;
	if (*bfType != 0x4d42)
		return -1;	// without 'bm' flag

	{
		unsigned char* ptrsrc = (unsigned char*)(imgAddr+2);
		unsigned char* ptrdst = (unsigned char*)imgAddr;

		memmove(ptrdst, ptrsrc, BMP_TOTALHEAD_LEN-4);
	}

	phdr = (PBITMAPFILEHEADER)(imgAddr);

	pbmi = (PBITMAPINFOHEADER)(imgAddr + sizeof(BITMAPFILEHEADER) + 2);

	if ((pbmi->biPlanes!=1)
		||(pbmi->biBitCount!=8)
		||(pbmi->biCompression!=BI_RGB))
		return -2;	// it's not a 8bits file

	return 0;
}

// 从传入图像产生特征
// 需要产生两组特征，1024和1260长度的，分别放在不同的位置
// 两组特征都能够成功获得，返回获取特征成功
// 传入的数据格式为带BMP文件头的格式
int  FeatureGeneration (Uint32 imgAddr)
{
	int nret;
	int width, height, off;
	int	index;
	int m_FeatureLen;
	int existedNum = 0;
	// int img_score = 0;
	unsigned char*	m_pImage;
	unsigned char* 	m_pEnrollFea;
	unsigned char* 	m_pRotateFea;
	Int32* getInfo;


	getInfo = (Int32*)imgAddr;
	width	= *getInfo;
	getInfo++;
	height  = *getInfo;

	off 	= sizeof(int)*2;

	index 	= dsp_used_reg.match_input_count;
	dbg_output("get %d image format width=%d, height=%d\n", index, width, height);

	m_pEnrollFea = (unsigned char*)(BMP_ENROLL_FEATURE_ADDR + (IR_FeatureLength*index));
	m_pRotateFea = (unsigned char*)(BMP_ROTATE_FEATUER_ADDR + (IR_RotateFeatureLength*index));

	m_pImage = (unsigned char*)(imgAddr+off);
/*
	nret = IRJudgeImageQuality(m_pImage,
                    height, width, 
                    NULL, 
                    0, 
                    WORKTYPE_ENROLL, 
                    &img_score);
	dbg_output("Quality ret %d, score = %d\n", nret, img_score);
	if (nret!=0)
		return nret;*/

	nret = IREnrolAdaBoost( m_pImage, height, width, 
					NULL, 0, m_pEnrollFea, &existedNum);

	dbg_output("Enrol ret %d\n", nret);
	if (nret!=0)
		return nret;

	nret = IRIm2RotateFeatureAdaBoost(m_pImage, height, width, \
					NULL, 0, m_pRotateFea, &m_FeatureLen);

	dbg_output("Roate ret %d\n", nret);

	return nret;
}

