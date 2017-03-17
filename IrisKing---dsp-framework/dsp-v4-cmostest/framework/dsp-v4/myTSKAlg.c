#include <std.h>
#include <tsk.h>
#include <buf.h>
#include <csl.h>
#include <csl_cache.h>
#include <stdio.h>
#include <string.h>		// add for convert image

#include "..\..\include\dbg_printf.h"

/*
#include <csl.h>
#include <csl_dat.h>
#include <csl_cache.h>
*/

#define _EMULATOR	1

#include "dsp_memory.h"
#include "dsp_typedef.h"


#include "..\..\include\CASIA_Gen.h"

//#include "util.h"

extern far QUE_Obj		img_queue;
extern far QUE_Obj		result_queue;

#if !_EMULATOR
extern unsigned char irisimage[];
extern unsigned char feature[];
#endif

extern unsigned char*  img_ptr_l;
extern unsigned char*  img_ptr_r;

PBITMAPFILEHEADER	phdr;	// bitmap file-header
PBITMAPINFOHEADER	pbmi;	// bitmap info-header
RGBQUAD*		    pColors;

IrisImageInfo		left_imginfo[IR_EnrollTime];	// added at 20101011
IrisImageInfo		right_imginfo[IR_EnrollTime];	// added at 20101011
MatchInput			match_inparam;
pMatchOutput 		pmatch_outparam;


void IdenEnrollImg (int* left_result, int* right_result);
int  IdenEnrollFeature (unsigned char* image, int eye);			// 在刚产生的注册结果中识别
																// 防止注册结果与实际使用人不吻合

// modified at 20091111，识别后是否COPY识别图像
// 缺省COPY，注册后验证图像是否曾经注册过不COPY
int IdenUser (unsigned char* image, int eye, Bool ifCopyImg);

void SetSoundValue (void);

void WhenIdenorEnroll(void);

int EnrollFeature (unsigned char* image, int eye, int score);

// added at 20101023
int CodeImg(unsigned char* image, void* param, int param_type);
int MatchImg(IMAGE_MSG img_msg);

void WhenMatching()
{
}

RESULT_MSG		result_msg_a;
IMAGE_MSG		img_msg_a;

// 算法任务
void tskAlgorithm()
{
	dbg_output("task algorithm\n");

	result_msg_a = MEM_alloc(0, sizeof(RESULT_MSG_OBJ), 0);
	if (result_msg_a == MEM_ILLEGAL)
	{
		SYS_abort("Memroy allocation failed\n");
	}

	//TSK_sleep(1);

    while(1)
    {

        // 累加看门狗存储器
        tsk_used_reg->tsk_watchdog_reg.tsk_alg_watchdog++;

		//if (dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_PROGRESS)
		//	WhenMatching();
		//else
			WhenIdenorEnroll();

    } // end of while(1)

} // end of tskAlgorithm

void WhenIdenorEnroll(void)
{
	int				nret = -2;
 	Bool			que_empty;
	int				left_result, right_result;

	// iden or enroll, check the image
	que_empty = QUE_empty(&img_queue);
	if (que_empty!=TRUE)	// 有可用图像
	{
		// copy image to own buffer
		img_msg_a = QUE_get(&img_queue);

		result_msg_a->eye_flag 		= img_msg_a->eye_flag;
		result_msg_a->process_flag	= img_msg_a->process_flag;
		result_msg_a->result_left   = TSK_ALGORITHM_RESULT_IDEN_INVALID;
		result_msg_a->result_right  = TSK_ALGORITHM_RESULT_IDEN_INVALID;
		result_msg_a->feature_tag	= img_msg_a->feature_tag;	// 记录_tag
		dbg_output("worktype=%d\n", img_msg_a->process_flag);

		if (img_msg_a->process_flag==WORKTYPE_IDEN)
		{
			if (((img_msg_a->eye_flag&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)
				&&(img_msg_a->img_saved_score_l>0)
				&&(img_msg_a->img_saved_count_l>=CLEAR_IMG_COUNT))
			{
				nret = IdenUser(img_msg_a->img_ptr_l, TSK_ALGORITHM_FLAG_LEFTEYE, TRUE);
				result_msg_a->result_left = nret;
			}

			if (((dsp_used_reg.policy_reg.policy_control&POLICY_MASK)==POLICY_EITHER_ACTIVE)
				&&(result_msg_a->result_left>=0))
			{
			}
			else
			{

				if (((img_msg_a->eye_flag&TSK_ALGORITHM_FLAG_RIGHTEYE)!=0)
					&&(img_msg_a->img_saved_score_r>0)
					&&(img_msg_a->img_saved_count_r>=CLEAR_IMG_COUNT))
				{
					nret = IdenUser(img_msg_a->img_ptr_r, TSK_ALGORITHM_FLAG_RIGHTEYE, TRUE);
					result_msg_a->result_right = nret;
				}
			}

		}
		else if (img_msg_a->process_flag==WORKTYPE_ENROLL)
		{
			if (((img_msg_a->eye_flag&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)
				&&(img_msg_a->img_saved_score_l>0)
				&&(img_msg_a->img_saved_count_l>=CLEAR_IMG_COUNT))
			{
				nret = EnrollFeature(img_msg_a->img_ptr_l, 
									 TSK_ALGORITHM_FLAG_LEFTEYE, 
									 img_msg_a->img_saved_score_l);
				result_msg_a->result_left = nret;
			}

			if (((img_msg_a->eye_flag&TSK_ALGORITHM_FLAG_RIGHTEYE)!=0)
				&&(img_msg_a->img_saved_score_r>0)
				&&(img_msg_a->img_saved_count_r>=CLEAR_IMG_COUNT))
			{
				nret = EnrollFeature(img_msg_a->img_ptr_r, 
									 TSK_ALGORITHM_FLAG_RIGHTEYE,
									 img_msg_a->img_saved_score_r);
				result_msg_a->result_right = nret;
			}
		}
		else if (img_msg_a->process_flag==WORKTYPE_IDEN_AFTER_ENROLL)
		{
			left_result  = 0;
			right_result = 0;

			IdenEnrollImg(&left_result, &right_result);
			result_msg_a->result_left  = left_result;
			result_msg_a->result_right = right_result;

		} // end of iden after enroll
		else if (img_msg_a->process_flag==WORKTYPE_GRABIDEN_AFTER_ENROLL)
		{
			if (((img_msg_a->eye_flag&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)
				&&(img_msg_a->img_saved_score_l>0)
				&&(img_msg_a->img_saved_count_l>=CLEAR_IMG_COUNT))
			{
				nret = IdenEnrollFeature(img_msg_a->img_ptr_l, TSK_ALGORITHM_FLAG_LEFTEYE);
				result_msg_a->result_left = nret;
			}

			if (((img_msg_a->eye_flag&TSK_ALGORITHM_FLAG_RIGHTEYE)!=0)
				&&(img_msg_a->img_saved_score_r>0)
				&&(img_msg_a->img_saved_count_r>=CLEAR_IMG_COUNT))
			{
				nret = IdenEnrollFeature(img_msg_a->img_ptr_r, TSK_ALGORITHM_FLAG_RIGHTEYE);
				result_msg_a->result_right = nret;
			}

		} // end of grab iden after enroll
		else if (img_msg_a->process_flag==WORKTYPE_CODE)
		{
			nret = CodeImg(img_msg_a->img_ptr_l, 
							(void*)img_msg_a->img_ptr_r,
							img_msg_a->data_type_l);
			result_msg_a->result_left = nret;
		}
		else if (img_msg_a->process_flag==WORKTYPE_MATCH)
		{
			nret = MatchImg(img_msg_a);
			result_msg_a->result_left = nret;
		}

		QUE_put(&result_queue, result_msg_a);

	} // end of has image to process
}

void IdenEnrollImg (int* left_result, int* right_result)
{
	int i;
	int	left_count, right_count;
	int cur_test_eye;
	int iden_ret;
	unsigned char* iden_image;
	Uint32 single_enroll_result_len = 0;

	// 左右眼已注册个数
	left_count = dsp_used_reg.result_reg.count[LEFT_EYE-1];
	right_count = dsp_used_reg.result_reg.count[RIGHT_EYE-1];

	*left_result  = -1;
	*right_result = -1;

	single_enroll_result_len = ENROLL_RESULT_MAX_LEN;

	cur_test_eye = TSK_ALGORITHM_FLAG_LEFTEYE;

	i = 0;
	iden_ret = -1;

	while ((i<left_count)&&(iden_ret<0))
	{
		iden_image = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
				+ single_enroll_result_len*i + ENROLL_IMAGE_DATA_OFFSET);

		iden_ret = IdenUser (iden_image, cur_test_eye, FALSE);

		if (iden_ret>=0)
			break;

		i++;
	}

	if (iden_ret>=0)
		*left_result = iden_ret;

	cur_test_eye = TSK_ALGORITHM_FLAG_RIGHTEYE;
	i = 0;
	iden_ret = -1;

	while ((i<right_count)&&(iden_ret<0))
	{
		iden_image = (unsigned char*)(ENROLL_RIGHT_STRUCT_ADDR1 \
				+ single_enroll_result_len*i + ENROLL_IMAGE_DATA_OFFSET);

		iden_ret = IdenUser (iden_image, cur_test_eye, FALSE);

		if (iden_ret>=0)
			break;

		i++;
	}

	if (iden_ret>=0)
		*right_result = iden_ret;
}

// 得到一幅图像后，开始注册
// 1.如果成功，表明与以前的注册结果兼容，则保留这幅图像
// 2.如果失败，原因是图像质量不好，则舍弃这幅图像
// 3.如果失败，原因是与以前的注册结果不兼容，则舍弃所有图像
// 4.注册图像个数到达要求的个数后，停止注册，注册成功
// 5.如需要注册后判别此人是否曾经注册过，则用注册图像识别，看结果
// 6.结果写到结果存储器中
// 7.注意注册策略
//int EnrollFeature_Normal (unsigned char* image, int eye, int score)
int EnrollFeature (unsigned char* image, int eye, int score)
{
	int nret;
	int	m_FeatureLen;
	int existedNum = 0;
	int count, copy_count;
	int need_copy	= 0;

	unsigned char		new_feature[IR_FeatureLength];
	unsigned char*		enroll_feature	= NULL;
	unsigned char*		match_feature	= NULL;
	unsigned char*		saved_enroll_img= NULL;

	unsigned int*		feature_int32	 = NULL;
	unsigned int		focus_new, occult_new;
	unsigned int		focus_old, occult_old;
	Uint32				start_img_addr;
	Uint32				pos = 0;

	char msg[1024];
	pIrisImageInfo		p_imginfo;			// this single image info
	pIrisImageInfo		p_enroll_imginfo;	// all enrolled image info

	LgUns	start_time, end_time;
	int indexBest;
	double avgScore;

	int nret2;
	unsigned char*		m_pGallery;


	if (eye==TSK_ALGORITHM_FLAG_LEFTEYE)
	{
		// 注册后得到的特征所在位置
		enroll_feature = (unsigned char*)(FEATURE_ENROLL_LEFT);
		// 用于比对的特征所在位置
		match_feature = (unsigned char*)(FEATURE_MATCH_LEFT);

		// 当前已经注册个数
		existedNum = dsp_used_reg.result_reg.count[eye-1];

		// 注册特征起始位置 
		feature_int32	= (unsigned int*)(FEATURE_ENROLL_LEFT);

		start_img_addr = ENROLL_LEFT_STRUCT_ADDR1;
		p_enroll_imginfo = left_imginfo;
		p_imginfo = &left_imginfo[existedNum];

		m_pGallery		= (unsigned char*)FEATURE_ENROLL_LEFT;

	}
	else if (eye==TSK_ALGORITHM_FLAG_RIGHTEYE)
	{
		// 注册后得到的特征所在位置
		enroll_feature = (unsigned char*)(FEATURE_ENROLL_RIGHT);
		// 用于比对的特征所在位置
		match_feature = (unsigned char*)(FEATURE_MATCH_RIGHT);

		// 当前已经注册个数
		existedNum = dsp_used_reg.result_reg.count[eye-1];

		// 注册特征起始位置 
		feature_int32	= (unsigned int*)(FEATURE_ENROLL_RIGHT);

		start_img_addr = ENROLL_RIGHT_STRUCT_ADDR1;
		p_enroll_imginfo = right_imginfo;
		p_imginfo = &right_imginfo[existedNum];

		m_pGallery		= (unsigned char*)FEATURE_ENROLL_RIGHT;
	}
	else
		return -2;

	dbg_output("Enr eye=%d, exist=%d\n", eye, existedNum);
	// added at 20101011
	// put Gen_Loc and gen_code here
	// 把当前图像COPY到合适的位置 yqhe
	memcpy(p_imginfo->imageData, image, IMG_TEST_SIZE);

	//puts("CASIA_Gen_Loc");
	p_imginfo->locMethod = IR_LOC_DEFAULT;
	p_imginfo->ifSpoofDetect = IR_NO_SPOOF_DETECT;
	p_imginfo->processStatus = IR_STATUS_BEGIN;

	start_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();
	nret = CASIA_Gen_Loc(p_imginfo, IR_WORK_MODE_ENR);
	//TSK_sleep(100);
	//nret = 2003;
	end_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();

/*	sprintf(msg, "CASIA_Gen_Loc (Enr) : time=%d, ret=%d, focus %d, visible %d, spoof %d, SNR %f, qlev %d", 
						end_time-start_time, nret, p_imginfo->focusScore, 
						p_imginfo->percentVisible,
						p_imginfo->spoofValue, 
						p_imginfo->SNR,
						p_imginfo->QualityLevel);
	puts(msg);
*/
	if ((nret!=0)||(p_imginfo->interlaceValue>9.0))
		return existedNum;		// image quality is bad

	nret = CASIA_Gen_Code(p_imginfo, 1, &indexBest);
	if (nret!=0)
		return existedNum;		// image quality is bad

	// modified at 20081127
	// need to keepy the best three image
	if (existedNum<(dsp_used_reg.policy_reg.iden_count+1))
	{
		for (count=0; count<existedNum+1; count++)
			p_enroll_imginfo[count].processStatus = IR_STATUS_LOC;

		nret = CASIA_Gen_Enroll(p_enroll_imginfo, existedNum+1, &indexBest, &avgScore);
		sprintf(msg, "Enroll : (eye=%d) ret=%d, best=%d, qlev=%d, lace=%f, avgScore=%lf, existNum=%d",
					eye, nret, indexBest, p_imginfo->QualityLevel, p_imginfo->interlaceValue, avgScore, existedNum);
		puts(msg);

		if (nret==IR_ENROLL_ERR)
		{
		nret2 = CASIA_Gen_Match(p_imginfo->irisRecTemplate, 
						m_pGallery, existedNum, match_inparam, pmatch_outparam);

		sprintf(msg, "CASIA_Gen_Match : ret=%d", nret2);
		puts(msg);

		for (count=0; count<pmatch_outparam->matchNum; count++)
		{
			sprintf(msg, "CASIA_Gen_Match : index=%d, matchLevel=%d, matchScore=%d", 
						pmatch_outparam->matchIndex[count],
						pmatch_outparam->matchLevel[count],
						pmatch_outparam->matchScore[count]);
			puts(msg);
		}
		}

	/*
#if _EMULATOR
		nret = IREnrolAdaBoost( image, ImH, ImW, 
					tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
					enroll_feature,  &existedNum);
#else
		// 使用例子图像
		nret = IREnrolAdaBoost( irisimage, ImH, ImW, 
					tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
					enroll_feature_l,  &existedNum);
#endif
*/
		//nret = -1;
	} // 需要注册

	// if the last image is better than the old enrolled image
	// if yes, use this image to replace the old one
	// alwayse put the best image at begin

	// first, used focus value to estimate the quality of the image
	// and then, used the occult value
	if (nret==0)
	{
		existedNum++;
		focus_new = p_enroll_imginfo[existedNum].focusScore;
		occult_new = p_enroll_imginfo[existedNum].irisVisiblePercent;

	/*
		// set the feature version
		pos = IR_CORE_FEA_LEN*(existedNum-1)+IR_CORE_VER_ADDR;
		feature_int32[pos] = IR_CORE_VERSION;

		// get the new feature's focus value
		pos = IR_CORE_FEA_LEN*(existedNum-1)+IR_CORE_FOCUS_ADDR;
		focus_new = feature_int32[pos];

		// get the new feature's occult value
		pos = IR_CORE_FEA_LEN*(existedNum-1)+IR_CORE_OCCULT_ADDR;
		occult_new = feature_int32[pos];
		* /

		// save the new enrolled feature
		memcpy( new_feature, 
				enroll_feature + (existedNum-1) * IR_FeatureLength,
				IR_FeatureLength);

		if (existedNum<=3)
		{
			count = existedNum-1;

			saved_enroll_img = (unsigned char*)( start_img_addr\
				+ ENROLL_RESULT_MAX_LEN*count
				+ ENROLL_IMAGE_DATA_OFFSET);
			memcpy(saved_enroll_img, image, IMG_TEST_SIZE);

			memcpy(enroll_feature+count*IR_FeatureLength,
					new_feature,
					IR_FeatureLength);

					/ *
				if ((dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
					&&((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0))
				{
				
					IRIm2RotateFeatureAdaBoost(image, ImH, ImW, \
						tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,\
						match_feature+count*IR_RotateFeatureLength, &m_FeatureLen);
				}
				* /

		}*/

		for (count=0; count<(existedNum-1); count++)
		{
			need_copy = 0;

			focus_old = p_enroll_imginfo[count].focusScore;
			occult_old = p_enroll_imginfo[count].irisVisiblePercent;

			//pos = IR_CORE_FEA_LEN*count+IR_CORE_FOCUS_ADDR;
			//focus_old = feature_int32[pos];

			if (focus_new>focus_old)
			{
				need_copy = 1;
			}
			else if (focus_new==focus_old)
			{
				// get the occult value
				//pos = IR_CORE_FEA_LEN*count+IR_CORE_OCCULT_ADDR;
				//occult_old = feature_int32[pos];
				if (occult_new>occult_old)
				{
					need_copy = 1;
				}
			} // end of test if need copy

			if (need_copy>0)
			{
				dbg_output("need copy img=%d\n", count);
				for (copy_count=(existedNum-2); copy_count>=count; copy_count--)
				{
					// 如果已经是最后就不需要COPY
					// 直接用新的replace即可
					if (copy_count<dsp_used_reg.policy_reg.iden_count)
					{
						memcpy( enroll_feature+(copy_count+1)*IR_FeatureLength,
								enroll_feature+copy_count*IR_FeatureLength,
								IR_FeatureLength);

						saved_enroll_img = (unsigned char*)( start_img_addr\
								+ ENROLL_RESULT_MAX_LEN*(copy_count+1)
								+ ENROLL_IMAGE_DATA_OFFSET);

						// copy 图像
						memcpy(saved_enroll_img, 
								saved_enroll_img - ENROLL_RESULT_MAX_LEN, 
								IMG_TEST_SIZE);

					}
				} // end of move old feature

				// 特征copy到合适位置
				memcpy(enroll_feature+count*IR_FeatureLength,
						new_feature,
						IR_FeatureLength);

						/*
				// 生成旋转比对特征，放到合适的位置
				if ((dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
					&&((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0))
				{
					IRIm2RotateFeatureAdaBoost(image, ImH, ImW, \
						tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,\
						match_feature+count*IR_RotateFeatureLength, &m_FeatureLen);
				}
				*/

				// 把当前图像COPY到合适的位置 yqhe
				saved_enroll_img = (unsigned char*)( start_img_addr\
					+ ENROLL_RESULT_MAX_LEN*count
					+ ENROLL_IMAGE_DATA_OFFSET);
				memcpy(saved_enroll_img, image, IMG_TEST_SIZE);

				break;
			} // end of need copy
		} // test if new one better than the old images

		if (existedNum>MAX_ENROLLCOUNT)
			existedNum = MAX_ENROLLCOUNT;

	} // end of nret==0
	else
	{
		if (nret==IR_ENROLL_ERR)
			existedNum = TSK_ALGORITHM_RESULT_ENROLL_NOMATCH;
	}

	dbg_output("enr ret=%d\n", existedNum);
	return existedNum;
}


int CalcCurFeatureNum ()
{
	int left_num  = 0;
	int right_num = 0;
	int single_feature_len;
	int total_feature_len;

	dsp_algorithm_iden_feature_t*  feature_gallery = NULL;

	// 注册状态，不管是否有特征，均可发声
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_ENROLL)
		||(dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_I_ENROLL))
		return 1;

	feature_gallery = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);

	single_feature_len = feature_gallery->single_feature_len;
	total_feature_len  = feature_gallery->iden_feature_data.data_len;

	left_num = total_feature_len/single_feature_len;

	feature_gallery = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);

	single_feature_len = feature_gallery->single_feature_len;
	total_feature_len  = feature_gallery->iden_feature_data.data_len;

	right_num = total_feature_len/single_feature_len;

	// 识别状态，只有有特征的情况下才可以发声
	return (left_num+right_num);
}

// 得到一幅图像后，开始注册
// 1.如成功，则后续处理
// 2.如失败，因为没有发现同类(-1)，则记失败一次
// 2.如失败，因为图像质量不好，不记失败
int IdenUser (unsigned char* image, int eye, Bool ifCopyImg)
{
	int nret;
	int single_feature_len;
	int total_feature_len;

	int model_number;
	unsigned char* m_pGallery;

	unsigned char* saved_iden_img = NULL;
	unsigned char* match_feature = NULL;

	int	m_FeatureLen;
	Uint32	img_addr;

	char msg[1024];
	pIrisImageInfo		p_imginfo;

	LgUns	start_time, end_time;
	int indexBest;
	int count;

	dsp_algorithm_iden_feature_t*  feature_gallery = NULL;

	if (eye==TSK_ALGORITHM_FLAG_LEFTEYE)
	{
		match_feature = (unsigned char*)(FEATURE_MATCH_LEFT);

		/*
		img_addr 	  = ENROLL_LEFT_STRUCT_ADDR1 
							//+ ENROLL_RESULT_MAX_LEN*(MAXCOPY_ENROLLCOUNT-1)
							+ ENROLL_IMAGE_DATA_OFFSET;
							*/
		p_imginfo		= &left_imginfo[0];
		//img_addr		= left_imginfo[0].imageData;

		feature_gallery = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);

		feature_gallery->iden_feature_data.data_byte = (unsigned char*)(IMG_FEATURE_LEFT_ADDR);

	}
	else if (eye==TSK_ALGORITHM_FLAG_RIGHTEYE)
	{
		match_feature = (unsigned char*)(FEATURE_MATCH_RIGHT);
		/*
		img_addr 	  = ENROLL_RIGHT_STRUCT_ADDR1
							// + ENROLL_RESULT_MAX_LEN*(MAXCOPY_ENROLLCOUNT-1)
							+ ENROLL_IMAGE_DATA_OFFSET;
							*/
		p_imginfo		= &right_imginfo[0];
		//img_addr		= right_imginfo[0].imageData;

		feature_gallery = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);

		feature_gallery->iden_feature_data.data_byte = (unsigned char*)(IMG_FEATURE_RIGHT_ADDR);
	}
	else
		return -3;
	
	// added at 20101011
	// put Gen_Loc and gen_code here
	// 把当前图像COPY到合适的位置 yqhe
	memcpy(p_imginfo->imageData, image, IMG_TEST_SIZE);

	//puts("CASIA_Gen_Loc");
	p_imginfo->locMethod = IR_LOC_DEFAULT;
	p_imginfo->ifSpoofDetect = IR_NO_SPOOF_DETECT;
	p_imginfo->processStatus = IR_STATUS_BEGIN;

	start_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();
	nret = CASIA_Gen_Loc(p_imginfo, IR_WORK_MODE_REC);
	//TSK_sleep(100);
	//nret = 2003;
	end_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();

	if (nret!=0)
		return -2;		// image quality is bad

	//return -2;
	nret = CASIA_Gen_Code(p_imginfo, 1, &indexBest);

//	sprintf(msg, "CASIA_Gen_Code : ret=%d", nret);
//	puts(msg);

	if (nret!=0)
		return -2;		// image quality is bad

	if (dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
	{
		// copy图像放在前面，如果旋转特征不能生成
		// 则表明图像质量不合格，不能使用
		// moidified at 20090909, there need to save image under the cluser idenmode
		// if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_IMAGE)!=0)
		/*
		{
			nret = 0;

			// 把当前图像COPY到合适的位置 yqhe
			saved_iden_img = (unsigned char*)(img_addr);
			memcpy(saved_iden_img, image, IMG_TEST_SIZE);

		}
		*/

		/*
		if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0)
		{

			nret = IRIm2RotateFeatureAdaBoost(image, ImH, ImW, \
					tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,\
					match_feature, &m_FeatureLen);
		}
		*/

		return nret;

	}

	single_feature_len = feature_gallery->single_feature_len;
	total_feature_len  = feature_gallery->iden_feature_data.data_len;

	model_number = total_feature_len/single_feature_len;
	if (model_number==0)
		return -7;

	m_pGallery   = feature_gallery->iden_feature_data.data_byte;

	nret = CASIA_Gen_Match(p_imginfo->irisRecTemplate, 
						m_pGallery, model_number, match_inparam, pmatch_outparam);

	sprintf(msg, "CASIA_Gen_Match : ret=%d", nret);
	puts(msg);

	for (count=0; count<pmatch_outparam->matchNum; count++)
	{
		sprintf(msg, "CASIA_Gen_Match : index=%d, matchLevel=%d, matchScore=%d", 
						pmatch_outparam->matchIndex[count],
						pmatch_outparam->matchLevel[count],
						pmatch_outparam->matchScore[count]);
		puts(msg);
	}

	//if ((nret==IR_FUN_SUCCESS)&&(pmatch_outparam->matchNum>=1))
	if (nret>=IR_FUN_SUCCESS)
	{
		nret = pmatch_outparam->matchIndex[0];
	}
	else
		nret = -1;

	// added at 20090902, yqhe
	// save all iden image
	// modified at 20091111, yqhe
	// when in enroll mode, do not copy the iden image
	if (ifCopyImg==TRUE)
	{
		saved_iden_img = (unsigned char*)(img_addr);
		memcpy(saved_iden_img, image, IMG_TEST_SIZE);
	}

	//dbg_output("eye %d, ret %d\n", eye, nret);

	return nret;
}

// 在刚产生的注册结果中识别
// image —— 注册结果图像
// eye   —— 哪只眼睛
// 返回值：
// -1	 —— 没有匹配上
// -2	 —— 质量不合格
int  IdenEnrollFeature (unsigned char* image, int eye)
{
	unsigned char*		enroll_feature	 = NULL;
	int					nret = -2;
	int					enroll_count=0;
	int					indexBest;
	int					count;
	char msg[1024];
	pIrisImageInfo		p_imginfo;

	// calc how many enroll feature
	if (eye == TSK_ALGORITHM_FLAG_LEFTEYE)
	{
		p_imginfo		= &left_imginfo[0];
		enroll_feature  = (unsigned char*)(FEATURE_ENROLL_LEFT);
		enroll_count	= dsp_used_reg.result_reg.count[eye-1];
	}
	else if (eye == TSK_ALGORITHM_FLAG_RIGHTEYE)
	{
		p_imginfo		= &right_imginfo[0];
		enroll_feature  = (unsigned char*)(FEATURE_ENROLL_RIGHT);
		enroll_count	= dsp_used_reg.result_reg.count[eye-1];
	}

	/*
	if (enroll_count>=dsp_used_reg.policy_reg.iden_count)
	{
		nret = IRIdenAdaBoostWithList ( image, ImH, ImW, 
						   tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
						   enroll_feature,  enroll_count,
						   NULL, 0);

	}
	*/
	// added at 20101011
	// put Gen_Loc and gen_code here
	// 把当前图像COPY到合适的位置 yqhe
	memcpy(p_imginfo->imageData, image, IMG_TEST_SIZE);

	//puts("CASIA_Gen_Loc");
	p_imginfo->locMethod = IR_LOC_DEFAULT;
	p_imginfo->ifSpoofDetect = IR_NO_SPOOF_DETECT;
	p_imginfo->processStatus = IR_STATUS_BEGIN;

	nret = CASIA_Gen_Loc(p_imginfo, IR_WORK_MODE_REC);

	if (nret!=0)
		return -2;		// image quality is bad

	nret = CASIA_Gen_Code(p_imginfo, 1, &indexBest);

	if (nret!=0)
		return -2;		// image quality is bad

	nret = CASIA_Gen_Match(p_imginfo->irisRecTemplate, 
						enroll_feature, enroll_count, match_inparam, pmatch_outparam);

	sprintf(msg, "CASIA_Gen_Match (G_I): ret=%d", nret);
	puts(msg);

	for (count=0; count<pmatch_outparam->matchNum; count++)
	{
		sprintf(msg, "CASIA_Gen_Match : index=%d, matchLevel=%d, matchScore=%d", 
						pmatch_outparam->matchIndex[count],
						pmatch_outparam->matchLevel[count],
						pmatch_outparam->matchScore[count]);
		puts(msg);
	}

	if (nret!=0)
		return -1;		// image quality is bad
	else 
		return nret;
}


// 调用质量判断函数，判断该图可否使用
int SelectImage(unsigned char* orgImage, int worktype,
				unsigned int* saved_score, unsigned char* destImage)
{

    int	img_quality=-2, img_score=0;
	int nret = -1;
	int index;

#if _EMULATOR
    img_quality = IRJudgeImageQuality(orgImage,
                    ImH, ImW, 
                    tsk_used_reg->alg_devparam_reg.device_param, 
                    DEVICE_PARAMCOUNT, 
                    worktype, 
                    &img_score);

#else
	img_quality = IRJudgeImageQuality(irisimage,
                    ImH, ImW, 
                    tsk_used_reg->alg_devparam_reg.device_param, 
                    DEVICE_PARAMCOUNT, 
                    worktype, 
                    &img_score);
#endif	

	// 记录质量判断的值，作为提示依据
	index = 0 - img_quality;
	//dbg_output("quality=%d\n", img_score);

	if ((index>=IMG_QUALITY_TYPECOUNT)
		||(index<0))
	{
		index = JUDGE_FAINT;
	}
	
	dsp_used_reg.quality_value[index]++;
	dsp_used_reg.quality_count++;

    if (img_quality==0)
	{
		nret = 0;	// 有通过质量判断的图像

		if (img_score>(*saved_score))
		{
			memcpy(destImage, orgImage, SrcImSize);
			*saved_score = img_score;

		}
	}

	return nret;
}


void SetSoundValue (void)
{
    int index;
	int sound_interval;
    int max_index = 0;
    int maxvalue  = 0;

	sound_interval = TSK_time() - dsp_used_reg.sound_reg.last_sound_time;
	if (sound_interval<SOUND_ALGPLAY_INTERVAL)
	{
		dsp_used_reg.quality_count = 0;

    	for (index=0; index<JUDGE_RETURN; index++)
	   	{
       		dsp_used_reg.quality_value[index]=0;
		}
		return;	// 不发声，直接返回
	}

    for (index=0; index<JUDGE_RETURN; index++)
    {
        if (dsp_used_reg.quality_value[index]>maxvalue)
        {
            maxvalue = dsp_used_reg.quality_value[index];
            max_index = index;
        }
    }

	if (max_index==JUDGE_FINE)
	{
		tsk_used_reg->alg_sound_reg.sound_value = SND_KEEP;
	}
	else if (max_index==JUDGE_HIGH)
	{
		tsk_used_reg->alg_sound_reg.sound_value = SND_DOWN;
	}
	else if (max_index==JUDGE_LOW)
	{
		tsk_used_reg->alg_sound_reg.sound_value = SND_UP;
	}
	else if (max_index==JUDGE_LEFT)
	{
		tsk_used_reg->alg_sound_reg.sound_value = SND_RIGHT;
	}
	else if (max_index==JUDGE_RIGHT)
	{
		tsk_used_reg->alg_sound_reg.sound_value = SND_LEFT;
	}
	else if (max_index==JUDGE_BLUR)
	{
		tsk_used_reg->alg_sound_reg.sound_value = SND_SLOW;
	}
	else
	{
		// delete sound
		tsk_used_reg->alg_sound_reg.sound_value = SND_NULL;
	}

	if ((tsk_used_reg->alg_sound_reg.sound_value!=SND_NULL)
		&&(CalcCurFeatureNum()>0))
	{
		tsk_used_reg->alg_sound_reg.sound_count++;
		dsp_used_reg.sound_reg.last_sound_value = tsk_used_reg->alg_sound_reg.sound_value;
		dsp_used_reg.sound_reg.last_sound_time 	= TSK_time();
	}

	dsp_used_reg.quality_count = 0;

    for (index=0; index<JUDGE_RETURN; index++)
    {
        dsp_used_reg.quality_value[index]=0;
	}
}


// fill the bmp file header
int FillBmpHeader (Uint32 head_addr, int imgWidht, int imgHeight)
{
	int i;
	Uint16* bfType;

	phdr = (PBITMAPFILEHEADER)(head_addr);

	pbmi = (PBITMAPINFOHEADER)(head_addr + sizeof(BITMAPFILEHEADER));
	pbmi->biSize		= sizeof(BITMAPINFOHEADER);
	pbmi->biBitCount	= 8;
	pbmi->biWidth		= imgWidht;
	pbmi->biHeight	 	= imgHeight;
	pbmi->biCompression = BI_RGB;
	pbmi->biClrUsed		= RGBQUAD_NUM;
	pbmi->biPlanes		= 1;
	pbmi->biSizeImage	= pbmi->biWidth * pbmi->biHeight;
	pbmi->biXPelsPerMeter = 0;
	pbmi->biYPelsPerMeter = 0;
	pbmi->biClrImportant  = 0;


	pColors = (RGBQUAD*)(head_addr + sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER));

	for (i=0; i<RGBQUAD_NUM; i++)
	{
		pColors[i].rgbBlue	= i ;
		pColors[i].rgbGreen	= i ;
		pColors[i].rgbRed	= i ;
		pColors[i].rgbReserved = 0 ;
	}

	// fill bitmap file-header

	// Compute the size of the entire file. 
	// 为强制图像数据也为四字节对齐，HEADER之后加两个字节才是图像数据的开始位置
	phdr->bfSize = (DWORD) (BMPFILEHEADER_SIZE + 
					pbmi->biSize + pbmi->biClrUsed 
					* sizeof(RGBQUAD) + pbmi->biSizeImage + sizeof(Uint16)); 
	phdr->bfReserved1 = 0; 
	phdr->bfReserved2 = 0; 

	// Compute the offset to the array of color indices. 
	phdr->bfOffBits = (DWORD) BMPFILEHEADER_SIZE + 
					pbmi->biSize + pbmi->biClrUsed 
					* sizeof (RGBQUAD) + sizeof(Uint16); 

	{
		void* ptrsrc;

		ptrsrc = (void*)head_addr;
		memmove((unsigned char*)ptrsrc+2, ptrsrc, BMP_TOTALHEAD_LEN-4);
	}

	bfType = (Uint16*)head_addr;
	*bfType = 0x4d42;

	return 0;

}


void fill_checksum(Uint16 *buf, int size)
{  
#if 0
	Uint32 cksum = 0; 
	Uint16 *buf_end; 

	// clear the last word of buf 
	buf_end = (Uint16*)(buf+(size/2)-1);
	*buf_end = 0;

	for(; size > 1; size -= sizeof(Uint16))
	{
		cksum += *buf++;
		if (cksum & 0x80000000)
			cksum = (cksum >> 16) + (cksum & 0x0000ffff);
	}  

	if(size > 0)
		cksum += *(unsigned char *)buf;

	cksum = (cksum >> 16) + (cksum & 0x0000ffff);  
	cksum += (cksum >> 16);

	// 按照RFC，此处应为: return (uint16_t)(cksum == 0x0000ffff? cksum: ~cksum);
	// 0是不能作为checksum的返回值的，0在RFC中被认为没有计算checksum

	*buf_end = ~(Uint16)(cksum);

#endif
	return ;
}

Uint16 get_checksum(Uint16 *buf, int size)
{  
	Uint32 cksum = 0; 

#if 1
	for(; size > 1; size -= sizeof(Uint16))
	{
		cksum += *buf++;
		if (cksum & 0x80000000)
			cksum = (cksum >> 16) + (cksum & 0x0000ffff);
	}  

	if(size > 0)
		cksum += *(unsigned char *)buf;

	cksum = (cksum >> 16) + (cksum & 0x0000ffff);  
	cksum += (cksum >> 16);

	// 按照RFC，此处应为: return (uint16_t)(cksum == 0x0000ffff? cksum: ~cksum);
	// 0是不能作为checksum的返回值的，0在RFC中被认为没有计算checksum
	//*buf_end = ~(Uint16)(cksum);

#endif
	return ~(Uint16)(cksum);
}

#define MAX_MATCHCOUNT	100

void dsp_newalg_data_init(void)
{
	int imgcount;
	Uint32 img_base_addr, enrfea_base_addr, recfea_base_addr;

	img_base_addr 	= ENROLL_LEFT_STRUCT_ADDR1 + ENROLL_IMAGE_DATA_OFFSET;
	enrfea_base_addr= FEATURE_ENROLL_LEFT;
	recfea_base_addr= FEATURE_MATCH_LEFT;

	for (imgcount=0; imgcount<IR_EnrollTime; imgcount++)
	{
		left_imginfo[imgcount].focusScore = 0;
		left_imginfo[imgcount].ifSpoofDetect = 0;
		left_imginfo[imgcount].interlaceValue = 0.0;
		left_imginfo[imgcount].irisCol = 0.0;
		left_imginfo[imgcount].irisPos = 0;
		left_imginfo[imgcount].irisRadius = 0.0;
		left_imginfo[imgcount].irisRow = 0.0;
		left_imginfo[imgcount].irisVisiblePercent = 0;
		left_imginfo[imgcount].locMethod = 0;
		left_imginfo[imgcount].numValidBits = 0;
		left_imginfo[imgcount].overallVisiblePercent = 0;
		left_imginfo[imgcount].percentVisible = 0;
		left_imginfo[imgcount].processStatus = 0;
		left_imginfo[imgcount].pupilCol = 0.0;
		left_imginfo[imgcount].pupilPos = 0;
		left_imginfo[imgcount].pupilRadius = 0.0;
		left_imginfo[imgcount].pupilRow = 0.0;
		left_imginfo[imgcount].pupilVisiblePercent = 0;
		left_imginfo[imgcount].QualityLevel = 0;
		left_imginfo[imgcount].reflectionRatioInImage = 0;
		left_imginfo[imgcount].reflectionRatioInROI = 0;
		left_imginfo[imgcount].Saturation = 0.0;
		left_imginfo[imgcount].SNR = 0.0;
		left_imginfo[imgcount].spoofValue = 0;
 
		left_imginfo[imgcount].imageH = ImH;
		left_imginfo[imgcount].imageW = ImW;

		left_imginfo[imgcount].imageData = (unsigned char*)(img_base_addr);
		left_imginfo[imgcount].locImage = (unsigned char*)(LOCIMG_ADDR);
		img_base_addr += ENROLL_RESULT_MAX_LEN;


		// enroll template using left feature memory
		left_imginfo[imgcount].irisEnrTemplate = (unsigned char*)(enrfea_base_addr);
		enrfea_base_addr += IR_FeatureLength;

		left_imginfo[imgcount].irisRecTemplate = (unsigned char*)(recfea_base_addr);
		recfea_base_addr += IR_RotateFeatureLength;

	}

	img_base_addr 	= ENROLL_RIGHT_STRUCT_ADDR1 + ENROLL_IMAGE_DATA_OFFSET;
	enrfea_base_addr= FEATURE_ENROLL_RIGHT;
	recfea_base_addr= FEATURE_MATCH_RIGHT;

	for (imgcount=0; imgcount<IR_EnrollTime; imgcount++)
	{
		right_imginfo[imgcount].focusScore = 0;
		right_imginfo[imgcount].ifSpoofDetect = 0;
		right_imginfo[imgcount].interlaceValue = 0.0;
		right_imginfo[imgcount].irisCol = 0.0;
		right_imginfo[imgcount].irisPos = 0;
		right_imginfo[imgcount].irisRadius = 0.0;
		right_imginfo[imgcount].irisRow = 0.0;
		right_imginfo[imgcount].irisVisiblePercent = 0;
		right_imginfo[imgcount].locMethod = 0;
		right_imginfo[imgcount].numValidBits = 0;
		right_imginfo[imgcount].overallVisiblePercent = 0;
		right_imginfo[imgcount].percentVisible = 0;
		right_imginfo[imgcount].processStatus = 0;
		right_imginfo[imgcount].pupilCol = 0.0;
		right_imginfo[imgcount].pupilPos = 0;
		right_imginfo[imgcount].pupilRadius = 0.0;
		right_imginfo[imgcount].pupilRow = 0.0;
		right_imginfo[imgcount].pupilVisiblePercent = 0;
		right_imginfo[imgcount].QualityLevel = 0;
		right_imginfo[imgcount].reflectionRatioInImage = 0;
		right_imginfo[imgcount].reflectionRatioInROI = 0;
		right_imginfo[imgcount].Saturation = 0.0;
		right_imginfo[imgcount].SNR = 0.0;
		right_imginfo[imgcount].spoofValue = 0;
 
		right_imginfo[imgcount].imageH = ImH;
		right_imginfo[imgcount].imageW = ImW;

		right_imginfo[imgcount].imageData = (unsigned char*)(img_base_addr);
		right_imginfo[imgcount].locImage = (unsigned char*)(LOCIMG_ADDR);
		img_base_addr += ENROLL_RESULT_MAX_LEN;

		// enroll template using left feature memory
		right_imginfo[imgcount].irisEnrTemplate = (unsigned char*)(enrfea_base_addr);
		enrfea_base_addr += IR_FeatureLength;

		right_imginfo[imgcount].irisRecTemplate = (unsigned char*)(recfea_base_addr);
		recfea_base_addr += IR_RotateFeatureLength;

	}

	match_inparam.findMode = IR_FIND_MODE_EXHAUST;
	match_inparam.matchTh  = IR_USE_DEAULT_MATCHTH;
	match_inparam.matchStrategy = IR_CASCADE_CLASSIFIER;
	match_inparam.angRotate[0]  = -3;
	match_inparam.angRotate[1]	= 3;

	pmatch_outparam = (pMatchOutput)malloc(sizeof(MatchOutput));
	pmatch_outparam->matchIndex = (long*)malloc(sizeof(long)*MAX_MATCHCOUNT);
	pmatch_outparam->matchScore = (float*)malloc(sizeof(float)*MAX_MATCHCOUNT);
	pmatch_outparam->matchConfidence = (float*)malloc(sizeof(float)*MAX_MATCHCOUNT);
	pmatch_outparam->matchAng = (float*)malloc(sizeof(float)*MAX_MATCHCOUNT);
	pmatch_outparam->validROIPercent = (float*)malloc(sizeof(float)*MAX_MATCHCOUNT);
	pmatch_outparam->matchLevel = (int*)malloc(sizeof(int)*MAX_MATCHCOUNT);
	pmatch_outparam->matchedBits = (int*)malloc(sizeof(int)*MAX_MATCHCOUNT);
	pmatch_outparam->validMatchBits = (int*)malloc(sizeof(int)*MAX_MATCHCOUNT);
	
}


// added at 20101023
void copy_loc_result (iris_code_t* single_iris_code, pIrisImageInfo p_imginfo)
{
	single_iris_code->loc.pos_pupil.col		= (int)(p_imginfo->pupilCol);
	single_iris_code->loc.pos_pupil.row 	= (int)(p_imginfo->pupilRow);
	single_iris_code->loc.pos_pupil.radius 	= (int)(p_imginfo->pupilRadius);
	single_iris_code->loc.pos_pupil.visible_percent
											= (int)p_imginfo->pupilVisiblePercent;
	single_iris_code->loc.pos_iris.col  	= (int)(p_imginfo->irisCol);
	single_iris_code->loc.pos_iris.row  	= (int)(p_imginfo->irisRow);
	single_iris_code->loc.pos_iris.radius  	= (int)(p_imginfo->irisRadius);
	single_iris_code->loc.pos_iris.visible_percent
											= (int)p_imginfo->irisVisiblePercent;

	single_iris_code->loc.overallVisiblePercent = (int)p_imginfo->overallVisiblePercent;
	single_iris_code->loc.focusScore		= p_imginfo->focusScore;
	single_iris_code->loc.percentVisible	= p_imginfo->percentVisible;
	single_iris_code->loc.numValidBits		= p_imginfo->numValidBits;
	single_iris_code->loc.spoofValue		= p_imginfo->spoofValue;
	single_iris_code->loc.SNR				= (int)(p_imginfo->SNR*1000);
	single_iris_code->loc.Saturation		= (int)(p_imginfo->Saturation*1000);
	single_iris_code->loc.interlaceValue	= (int)(p_imginfo->interlaceValue*1000);
	single_iris_code->loc.reflectionRatioInROI	= p_imginfo->reflectionRatioInROI;
	single_iris_code->loc.reflectionRatioInImage= p_imginfo->reflectionRatioInImage;
	single_iris_code->loc.qualityLevel		= p_imginfo->QualityLevel;
	single_iris_code->loc.locMethod			= p_imginfo->locMethod;
	single_iris_code->loc.ifSpoofDetect		= p_imginfo->ifSpoofDetect;
}

// get input image and param from ARM, after function, set all reslut format
int CodeImg(unsigned char* image, void* param, int param_type)
{
	char 	msg[1024];
	int		nret;
	LgUns	start_time, end_time;
	int 	indexBest;
	pIrisImageInfo		p_imginfo;			// this single image info

	// code strategy reg
	image_strategy_t	*loc_strategy;

	// result put position
	Uint32 				addr, addr_end;
	dsp_result_data_header_t *header = NULL;
	iris_code_t			*single_iris_code = NULL;
	unsigned char*		dest_data;

	if (image==NULL)
		return IRIS_ERROR;

	addr = ENROLL_RESULT_ADDR;
	addr_align(&addr, 0);

	// code result reg
	tsk_used_reg->alg_result_reg.result_data  = (void*)addr;
	header = (dsp_result_data_header_t*)addr;

	addr += sizeof(dsp_result_data_header_t);

	header->result_count		= 1;
	header->result_byte_len 	= 0;	// change the byte len after success
	header->algorithm_version 	= CUR_ALG_VERSION;

	p_imginfo = &left_imginfo[IR_EnrollTime-1];

	puts("CASIA_Gen_Loc (Enroll) :");

	p_imginfo->locMethod 	 = IR_LOC_DEFAULT;
	p_imginfo->ifSpoofDetect = IR_NO_SPOOF_DETECT;
	p_imginfo->processStatus = IR_STATUS_BEGIN;
	// 把当前图像COPY到合适的位置 yqhe
	memcpy(p_imginfo->imageData, image+sizeof(int)*2, IMG_TEST_SIZE);

	// if has input loc strategy
	if ((param_type==DATATYPE_PARAM)&&(param!=NULL))
	{
		loc_strategy = (image_strategy_t*)param;
		p_imginfo->locMethod	= loc_strategy->locMethod;
		p_imginfo->ifSpoofDetect= loc_strategy->ifSpoofDetect;
	}
	
	// test LOC function
	start_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();
	nret = CASIA_Gen_Loc(p_imginfo, IR_WORK_MODE_ENR);
	end_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();

	addr_end = addr;
	single_iris_code = (iris_code_t*)(addr_end); // enroll_code_result

	single_iris_code->mode			= IR_WORK_MODE_ENR;
	single_iris_code->loc_result	= nret;
	single_iris_code->loc_milli_sec = end_time - start_time;
	copy_loc_result(single_iris_code, p_imginfo);

	sprintf(msg, "CASIA_Gen_Loc (Enr) : time=%d, ret=%d, focus %d, visible %d, spoof %d, SNR %f, qlev %d", 
						end_time-start_time, nret, p_imginfo->focusScore, 
						p_imginfo->percentVisible,
						p_imginfo->spoofValue, 
						p_imginfo->SNR,
						p_imginfo->QualityLevel);
	puts(msg);

	//addr_end += sizeof(iris_code_t)- sizeof(unsigned char);
	addr_end += sizeof(iris_loc_t) + sizeof(int)*5 + sizeof(unsigned int);
	if (nret!=IR_FUN_SUCCESS)
	{
		single_iris_code->code.data_len = 0;
		single_iris_code->code.data_byte= NULL;

		header->result_byte_len	= addr_end - addr;
		header->result_chksum	= get_checksum((Uint16 *)addr, header->result_byte_len);
		return IRIS_ERROR;
	}
	
	// test CODE function
	start_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();
	nret = CASIA_Gen_Code(p_imginfo, 1, &indexBest);
	end_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();

	single_iris_code->code_result	= nret;
	single_iris_code->code_milli_sec= end_time - start_time;

	if (nret!=IR_FUN_SUCCESS)
	{
		sprintf(msg, "CASIA_Gen_Code (Enr) : time=%d, ret=%d", 
			(end_time-start_time), nret);
		puts(msg);
		single_iris_code->code.data_len = 0;
	}
	else
	{
		single_iris_code->code.data_len = IR_FeatureLength;
		dest_data= (unsigned char*)(addr_end); 
		memcpy(dest_data, p_imginfo->irisEnrTemplate, single_iris_code->code.data_len);
		sprintf(msg, "CASIA_Gen_Code (Enr) : time=%d, ret=%d, [%02x %02x %02x %02x],  [%02x %02x %02x %02x]", 
			(end_time-start_time), nret, dest_data[0], dest_data[1], dest_data[2], dest_data[3],
			dest_data[508], dest_data[509], dest_data[510], dest_data[511]);
		puts(msg);
	}

	addr_end += single_iris_code->code.data_len;

	header->result_byte_len = addr_end - addr;
	header->result_chksum	= get_checksum((Uint16 *)addr, header->result_byte_len);


	puts("CASIA_Gen_Loc (Rec) :");
	// IR_WORK_MODE_REC again
	p_imginfo->processStatus = IR_STATUS_BEGIN;
	// test LOC function
	start_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();
	nret = CASIA_Gen_Loc(p_imginfo, IR_WORK_MODE_REC);
	end_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();

	single_iris_code = (iris_code_t*)(addr_end); // mode

	single_iris_code->mode			= IR_WORK_MODE_REC;
	single_iris_code->loc_result	= nret;
	single_iris_code->loc_milli_sec = end_time - start_time;
	copy_loc_result(single_iris_code, p_imginfo);

	sprintf(msg, "CASIA_Gen_Loc (Rec) : time=%d, ret=%d, focus %d, visible %d, spoof %d, SNR %f, qlev %d", 
						end_time-start_time, nret, p_imginfo->focusScore, 
						p_imginfo->percentVisible,
						p_imginfo->spoofValue, 
						p_imginfo->SNR,
						p_imginfo->QualityLevel);
	puts(msg);

	addr_end += sizeof(iris_loc_t) + sizeof(int)*5 + sizeof(unsigned int);
	if (nret!=IR_FUN_SUCCESS)
	{
		single_iris_code->code.data_len = 0;
		single_iris_code->code.data_byte= NULL;

		header->result_byte_len	= addr_end - addr;
		header->result_chksum	= get_checksum((Uint16 *)addr, header->result_byte_len);
		return IRIS_ERROR;
	}

	// test CODE function
	start_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();
	nret = CASIA_Gen_Code(p_imginfo, 1, &indexBest);
	end_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();

	single_iris_code->code_result	= nret;
	single_iris_code->code_milli_sec= end_time - start_time;
	single_iris_code->code.data_len = IR_RotateFeatureLength;

	if (nret!=IR_FUN_SUCCESS)
	{
		sprintf(msg, "CASIA_Gen_Code (Rec) : time=%d, ret=%d, ", 
			(end_time-start_time), nret);
		puts(msg);

		single_iris_code->code.data_len = 0;
	}
	else
	{
		single_iris_code->code.data_len = IR_RotateFeatureLength;
		dest_data= (unsigned char*)(addr_end); 
		memcpy(dest_data, p_imginfo->irisRecTemplate, single_iris_code->code.data_len);
		sprintf(msg, "CASIA_Gen_Code (Rec) : time=%d, ret=%d, [%02x %02x %02x %02x],  [%02x %02x %02x %02x]", 
			(end_time-start_time), nret, dest_data[0], dest_data[1], dest_data[2], dest_data[3],
			dest_data[1020], dest_data[1021], dest_data[1022], dest_data[1023]);
		puts(msg);
	}

	addr_end += single_iris_code->code.data_len;

	header->result_byte_len = addr_end - addr;
	header->result_chksum	= get_checksum((Uint16 *)addr, header->result_byte_len);

	return IRIS_SUCCESS;
}

int MatchImg(IMAGE_MSG img_msg)
{
	char 	msg[1024];
	int		nret;
	LgUns	start_time, end_time;
	int 	indexBest;
	pIrisImageInfo		p_imginfo;			// this single image info

	int single_feature_len;
	int total_feature_len;

	int model_number;
	unsigned char* m_pGallery;
	dsp_algorithm_iden_feature_t*  feature_gallery = NULL;

	int					count;
	Uint32 				addr, addr_end;
	Uint32 				off;
	match_option_t		*match_option;
	dsp_result_data_header_t *header = NULL;
	match_result_t		*single_match;

	if (img_msg->img_ptr_l==NULL)
		return IRIS_ERROR;

	p_imginfo = &left_imginfo[IR_EnrollTime-1];

	addr = ENROLL_RESULT_ADDR;
	addr_align(&addr, 0);

	// code result reg
	tsk_used_reg->alg_result_reg.result_data  = (void*)addr;
	header = (dsp_result_data_header_t*)addr;

	addr_end = addr + sizeof(dsp_result_data_header_t);

	header->result_count		= 0;
	header->result_byte_len 	= 0;	// change the byte len after success
	header->result_chksum		= 0;
	header->algorithm_version 	= CUR_ALG_VERSION;

	puts("CASIA_Gen_Loc (Match) :");

	p_imginfo->locMethod 	 = IR_LOC_DEFAULT;
	p_imginfo->ifSpoofDetect = IR_NO_SPOOF_DETECT;
	p_imginfo->processStatus = IR_STATUS_BEGIN;

	match_inparam.findMode = IR_FIND_MODE_EXHAUST;
	match_inparam.matchTh  = IR_USE_DEAULT_MATCHTH;
	match_inparam.matchStrategy = IR_CASCADE_CLASSIFIER;
	match_inparam.angRotate[0]  = -3;
	match_inparam.angRotate[1]	= 3;

	// if has input match strategy
	if ((img_msg->data_type_r==DATATYPE_PARAM)&&(img_msg->img_ptr_r!=NULL))
	{
		match_option = (match_option_t*)img_msg->img_ptr_r;
		p_imginfo->locMethod	= match_option->imageStrategy.locMethod;
		p_imginfo->ifSpoofDetect= match_option->imageStrategy.ifSpoofDetect;

		match_inparam.findMode = match_option->findMode;
		match_inparam.matchTh  = match_option->matchTh;
		match_inparam.matchStrategy = match_option->matchStrategy;
		match_inparam.angRotate[0]  = (float)match_option->angRotate[0]/1000;
		match_inparam.angRotate[1]	= (float)match_option->angRotate[1]/1000;
	}

	if (img_msg->data_type_l==DATATYPE_IMG)
	{
		// 把当前图像COPY到合适的位置 yqhe
		memcpy(p_imginfo->imageData, img_msg->img_ptr_l, IMG_TEST_SIZE);

		// test LOC function
		start_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();
		nret = CASIA_Gen_Loc(p_imginfo, IR_WORK_MODE_REC);
		end_time = (CLK_getltime() * (CLK_getprd())) / CLK_countspms();

		if (nret!=IR_FUN_SUCCESS)
		{
			return IRIS_ERROR;
		}
	
		// get input image feature	
		nret = CASIA_Gen_Code(p_imginfo, 1, &indexBest);
		if (nret!=IR_FUN_SUCCESS)
		{
			return IRIS_ERROR;
		}
	}
	else
	{
		memcpy(p_imginfo->irisRecTemplate, img_msg->img_ptr_l, IR_RotateFeatureLength);
	}

	// get match feature
	feature_gallery = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);

	single_feature_len = feature_gallery->single_feature_len;
	total_feature_len  = feature_gallery->iden_feature_data.data_len;

	model_number = total_feature_len/single_feature_len;
	if (model_number==0)
		return -7;

	m_pGallery   = feature_gallery->iden_feature_data.data_byte;

	nret = CASIA_Gen_Match(p_imginfo->irisRecTemplate, 
						m_pGallery, model_number, match_inparam, pmatch_outparam);

	if (nret!=IR_FUN_SUCCESS)
	{
		return IRIS_ERROR;
	}

	header->result_count = pmatch_outparam->matchNum;

	off = sizeof(match_result_t);

	for (count=0; count<header->result_count; count++)
	{
		single_match = (match_result_t*)addr_end;
		single_match->feature_id = (int)pmatch_outparam->matchIndex[count];
		single_match->matchScore = (int)(pmatch_outparam->matchScore[count]*1000);
		single_match->matchConfidence= (int)(pmatch_outparam->matchConfidence[count]*1000);
		single_match->matchAng= (int)(pmatch_outparam->matchAng[count]*1000);
		single_match->validROIPercent= (int)(pmatch_outparam->validROIPercent[count]*1000);
		single_match->matchLevel= pmatch_outparam->matchLevel[count];
		single_match->matchedBits= pmatch_outparam->matchedBits[count];
		single_match->validMatchBits= pmatch_outparam->validMatchBits[count];
		addr_end += off;
	}

	header->result_byte_len = addr_end - addr;
	header->result_chksum	= get_checksum((Uint16 *)addr, header->result_byte_len);

	return IRIS_SUCCESS;
}
