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
#include "irIrisCore.h"

#include "util.h"

extern far QUE_Obj		img_queue;
extern far QUE_Obj		result_queue;

#ifndef _EMULATOR
extern unsigned char irisimage[];
#endif

extern BUF_Handle 	buffPoolHandle;	// TSK_image alloc it and TSK_algorithm free it

extern unsigned char feature[];
extern unsigned char irisimage[];

extern unsigned long		qua_total_time, qua_frame;

PBITMAPFILEHEADER	phdr;	// bitmap file-header
PBITMAPINFOHEADER	pbmi;	// bitmap info-header
RGBQUAD*		    pColors;

void IdenEnrollImg (int* left_result, int* right_result);
//void FakeTestEnrollImg (int* left_result, int* right_result);	// 测试注册结果是否由假眼产生
void SetSoundValue (void);

int savebmp_count=0;

void FeatureIdenTest(void);

void WhenMatching();
void WhenIdenorEnroll(RESULT_MSG result_msg_a);

// modified by yqhe, 20080319
// 增加注册方式，严格注册（原有注册方式）和普通（？快速）注册方式
int EnrollFeature (unsigned char* image, int eye, int score);
int EnrollFeature_Normal (unsigned char* image, int eye, int score);
int EnrollFeature_Fast (unsigned char* image, int eye, int score);

// 算法任务
void tskAlgorithm()
{
	RESULT_MSG		result_msg_a;

	dbg_output1("task algorithm\n");

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

		if (dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_PROGRESS)
			WhenMatching();
		else
			WhenIdenorEnroll(result_msg_a);

    } // end of while(1)

} // end of tskAlgorithm

void WhenIdenorEnroll(RESULT_MSG result_msg_a)
{
	int				nret = -2;
 	Bool			que_empty;
	IMAGE_MSG		img_msg_a;
	int				left_result, right_result;

	// iden or enroll, check the image
	que_empty = QUE_empty(&img_queue);
	if (que_empty!=TRUE)	// 有可用图像
	{
		dbg_output("TSK_alg get queue\n");
		// copy image to own buffer
		img_msg_a = QUE_get(&img_queue);

		result_msg_a->eye_flag 		= img_msg_a->eye_flag;
		result_msg_a->process_flag	= img_msg_a->process_flag;
		result_msg_a->result_left   = TSK_ALGORITHM_RESULT_IDEN_INVALID;
		result_msg_a->result_right  = TSK_ALGORITHM_RESULT_IDEN_INVALID;
		result_msg_a->feature_tag	= img_msg_a->feature_tag;	// 记录_tag

		if (img_msg_a->process_flag==WORKTYPE_IDEN)
		{
			if (((img_msg_a->eye_flag&TSK_ALGORITHM_FLAG_LEFTEYE)!=0)
				&&(img_msg_a->img_saved_score_l>0)
				&&(img_msg_a->img_saved_count_l>=CLEAR_IMG_COUNT))
			{
				nret = IdenUser(img_msg_a->img_ptr_l, TSK_ALGORITHM_FLAG_LEFTEYE);
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
					nret = IdenUser(img_msg_a->img_ptr_r, TSK_ALGORITHM_FLAG_RIGHTEYE);
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
			//FeatureIdenTest();
			//left_result=3;
			//right_result=3;
			//FakeTestEnrollImg(&left_result, &right_result);
			IdenEnrollImg(&left_result, &right_result);
			result_msg_a->result_left  = left_result;
			result_msg_a->result_right = right_result;
		}
		else if (img_msg_a->process_flag==WORKTYPE_FAKETEST_AFTER_ENROLL)
		{
			//FakeTestEnrollImg(&left_result, &right_result);
			result_msg_a->result_left  = left_result;
			result_msg_a->result_right = right_result;
		}

		QUE_put(&result_queue, result_msg_a);

	} // end of has image to process
}

void IdenEnrollImg (int* left_result, int* right_result)
{
	int i;
	int	enroll_count;
	int cur_test_eye;
	int iden_ret;
	unsigned char* iden_image;
	Uint32 single_enroll_result_len = 0;

	dsp_algorithm_result_data_t*  send_enroll_result = NULL;
	dsp_algorithm_result_info_t*  result_info 		 = NULL;

	send_enroll_result  = (dsp_algorithm_result_data_t*)(ENROLL_RESULT_ADDR);
	enroll_count = send_enroll_result->result_count;

	*left_result  = -1;
	*right_result = -1;

	if (dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_LOCAL)
		single_enroll_result_len = ENROLL_RESULT_TOTAL_LEN;
	else if (dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
	{
		if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0)
			single_enroll_result_len = ENROLL_RESULT_MAX_LEN;
		else 
			single_enroll_result_len = ENROLL_RESULT_TOTAL_LEN;
	}

	for (i=0; i<enroll_count; i++)
	{
		iden_image = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
				+ single_enroll_result_len*i + ENROLL_IMAGE_DATA_OFFSET);

		result_info = (dsp_algorithm_result_info_t*)(ENROLL_LEFT_STRUCT_ADDR1 \
								+single_enroll_result_len*i);
		cur_test_eye = result_info->eye_flag;

		if ((cur_test_eye==TSK_ALGORITHM_FLAG_LEFTEYE)
			&&(*left_result>=0))
			continue;

		if ((cur_test_eye==TSK_ALGORITHM_FLAG_RIGHTEYE)
			&&(*right_result>=0))
			break;

		iden_ret = IdenUser (iden_image, cur_test_eye);
		// iden_ret = -1;

		if (iden_ret>=0)
		{
			if (cur_test_eye==TSK_ALGORITHM_FLAG_LEFTEYE)
			{
				*left_result = iden_ret;
			}
			else
			{
				*right_result = iden_ret;
				break;
			}
		}

	} // end of browse all enrolled image
}

/*
// 暂不使用快速注册方式
// 根据当前注册策略，分配使用哪个注册函数
// POLICY_FAST_ENROLL--快速注册，不进行两两比对的操作
// POLICY_NORMAL_ENROLL--正常注册，按照以前的注册方式，两两比对
int EnrollFeature (unsigned char* image, int eye, int score)
{
	int nret;

	if ((dsp_used_reg.policy_reg.policy_control&POLICY_FAST_ENROLL)==POLICY_FAST_ENROLL)
		nret = EnrollFeature_Fast(image, eye, score);
	else
		nret = EnrollFeature_Normal(image, eye, score);

	return nret;
}
*/

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

	unsigned char*		enroll_feature_l = NULL;
	unsigned char*		enroll_feature_r = NULL;

	unsigned char*		match_feature_l  = NULL;
	unsigned char*		match_feature_r  = NULL;

	unsigned char*		saved_enroll_img = NULL;

	int	m_FeatureLen;

	int existedNum = 0;

	unsigned int		pos = 0;
	unsigned int*		feature_int32	 = NULL;
	unsigned int		focus_new, occult_new;

	// 注册后得到的特征所在位置
	enroll_feature_l = (unsigned char*)(FEATURE_ENROLL_LEFT);
	enroll_feature_r = (unsigned char*)(FEATURE_ENROLL_RIGHT);

	// 用于比对的特征所在位置
	match_feature_l = (unsigned char*)(FEATURE_MATCH_LEFT);
	match_feature_r = (unsigned char*)(FEATURE_MATCH_RIGHT);

	if (eye==TSK_ALGORITHM_FLAG_LEFTEYE)
	{
		existedNum = tsk_used_reg->alg_result_reg.left_result;

		if (existedNum<dsp_used_reg.policy_reg.iden_count)
		{

		dbg_output1("before enroll left ");
#ifdef _EMULATOR
			nret = IREnrolAdaBoost( image, ImH, ImW, 
						tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
						enroll_feature_l,  &existedNum);
#else

#if 0
	{
		int cur_time;
		cur_time = TSK_time();
		dbg_output("before enroll time %d\n", cur_time);
	}
#endif

		//for (count=0; count<10; count++)
		{
			nret = IREnrolAdaBoost( irisimage, ImH, ImW, 
						tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
						enroll_feature_l,  &existedNum);
		}
#if 0
	{
		int cur_time;
		cur_time = TSK_time();
		dbg_output("after enroll time %d\n", cur_time);
	}
#endif

#endif
		dbg_output1("after enroll left \n");

			if (nret==0)
			{

		feature_int32	= (unsigned int*)(FEATURE_ENROLL_LEFT);

		// set the feature version
		pos = IR_CORE_FEA_LEN*(existedNum-1)+IR_CORE_VER_ADDR;
		feature_int32[pos] = IR_CORE_VERSION;

		// get the new feature's focus value
		pos = IR_CORE_FEA_LEN*(existedNum-1)+IR_CORE_FOCUS_ADDR;
		focus_new = feature_int32[pos];

		// get the new feature's occult value
		pos = IR_CORE_FEA_LEN*(existedNum-1)+IR_CORE_OCCULT_ADDR;
		occult_new = feature_int32[pos];

		dbg_output1("left enroll focus %d, occult %d\n", focus_new, occult_new);

				// 把当前图像COPY到合适的位置 yqhe
				saved_enroll_img = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
						+ ENROLL_RESULT_TOTAL_LEN*(existedNum-1)
						+ ENROLL_IMAGE_DATA_OFFSET);
				memcpy(saved_enroll_img, image, IMG_TEST_SIZE);
				// 记录此图像的质量因子
				dsp_used_reg.policy_reg.enroll_score_l[existedNum-1] = score;

				// 生成旋转比对特征
				if ((dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
					&&((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0))
				{
					IRIm2RotateFeatureAdaBoost(image, ImH, ImW, \
						tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,\
						match_feature_r+(existedNum-1)*IR_RotateFeatureLength, &m_FeatureLen);
				}
			} // end of nret==0
		} // end of need to enroll left eye

	}
	else if (eye==TSK_ALGORITHM_FLAG_RIGHTEYE)
	{
		existedNum = tsk_used_reg->alg_result_reg.right_result;

		if (existedNum<dsp_used_reg.policy_reg.iden_count)
		{


#ifdef _EMULATOR
			nret = IREnrolAdaBoost( image, ImH, ImW, 
			// nret = IREnrol( image, ImH, ImW, 
					tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
					enroll_feature_r,  &existedNum);
#else
			nret = IREnrolAdaBoost( irisimage, ImH, ImW, 
					tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
					enroll_feature_r,  &existedNum);
#endif

			if (nret==0)
			{

		feature_int32	= (unsigned int*)(FEATURE_ENROLL_RIGHT);

		// set the feature version
		pos = IR_CORE_FEA_LEN*(existedNum-1)+IR_CORE_VER_ADDR;
		feature_int32[pos] = IR_CORE_VERSION;

		// get the new feature's focus value
		pos = IR_CORE_FEA_LEN*(existedNum-1)+IR_CORE_FOCUS_ADDR;
		focus_new = feature_int32[pos];

		// get the new feature's occult value
		pos = IR_CORE_FEA_LEN*(existedNum-1)+IR_CORE_OCCULT_ADDR;
		occult_new = feature_int32[pos];

		dbg_output1("right enroll focus %d, occult %d\n", focus_new, occult_new);

				// 把当前图像COPY到合适的位置 yqhe
				saved_enroll_img = (unsigned char*)(ENROLL_RIGHT_STRUCT_ADDR1 \
						+ ENROLL_RESULT_TOTAL_LEN*(existedNum-1)
						+ ENROLL_IMAGE_DATA_OFFSET);
				memcpy(saved_enroll_img, image, IMG_TEST_SIZE);
				// 记录此图像的质量因子
				dsp_used_reg.policy_reg.enroll_score_r[existedNum-1] = score;

				// 生成旋转比对特征
				if ((dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
					&&((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0))
				{
					IRIm2RotateFeatureAdaBoost(image, ImH, ImW, \
						tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,\
						match_feature_l+(existedNum-1)*IR_RotateFeatureLength, &m_FeatureLen);
				}
			} // end of nret==0
		} // end of need to enroll left eye

	}

#if 1
	dbg_output("enroll ret=%d, leftresult %d, rightresult %d\n", 
			nret, 
			tsk_used_reg->alg_result_reg.left_result,
			tsk_used_reg->alg_result_reg.right_result);
#endif

	if (nret==0)
		return existedNum;
	else
		return nret;
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
int IdenUser (unsigned char* image, int eye)
{
	int nret;
	int single_feature_len;
	int total_feature_len;

	int model_number;
	unsigned char* m_pGallery;

	unsigned char* saved_iden_img = NULL;
	unsigned char* match_feature_l = NULL;
	unsigned char* match_feature_r = NULL;

	int	m_FeatureLen;

	dsp_algorithm_iden_feature_t*  feature_gallery = NULL;

	match_feature_l = (unsigned char*)(FEATURE_MATCH_LEFT);
	match_feature_r = (unsigned char*)(FEATURE_MATCH_RIGHT);

	/*
	if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)==0)
		&&((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)==0))
		return 0;
		*/

	if (dsp_used_reg.policy_reg.iden_mode==POLICY_IDENMODE_CLUSTER)
	{
		nret = -1;

		if (eye==TSK_ALGORITHM_FLAG_LEFTEYE)
		{
			// copy图像放在前面，如果旋转特征不能生成
			// 则表明图像质量不合格，不能使用
			if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_IMAGE)!=0)
			{
				nret = 0;

				// 把当前图像COPY到合适的位置 yqhe
				saved_iden_img = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
						+ ENROLL_IMAGE_DATA_OFFSET);
				memcpy(saved_iden_img, image, IMG_TEST_SIZE);

			}

			if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0)
			{

				nret = IRIm2RotateFeatureAdaBoost(image, ImH, ImW, \
					tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,\
					match_feature_l, &m_FeatureLen);

#if _SAVERAW
		if (nret==0)
		{
			//SaveRaw(image, IMG_TEST_SIZE, savebmp_count, eye, nret);
			SaveFeature(match_feature_l, savebmp_count, eye, m_FeatureLen);

			savebmp_count++;

		}

#endif


			}


		} // end of left eye
		else if (eye==TSK_ALGORITHM_FLAG_RIGHTEYE)
		{
			if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_IMAGE)!=0)
			{
				nret = 0;

				// 把当前图像COPY到合适的位置 yqhe
				saved_iden_img = (unsigned char*)(ENROLL_RIGHT_STRUCT_ADDR1 \
						+ ENROLL_IMAGE_DATA_OFFSET);
				memcpy(saved_iden_img, image, IMG_TEST_SIZE);
			}

			if ((dsp_used_reg.policy_reg.data_type&POLICY_DATATYPE_FEATURE)!=0)
			{

				nret = IRIm2RotateFeatureAdaBoost(image, ImH, ImW, \
					tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,\
					match_feature_r, &m_FeatureLen);
			}

#if _SAVERAW
		if (nret==0)
		{
			//SaveRaw(image, IMG_TEST_SIZE, savebmp_count, eye, nret);
			SaveFeature(match_feature_r, savebmp_count, eye, m_FeatureLen);

			savebmp_count++;

		}

#endif

		} // end of right eye

		return nret;

	}

	if (eye==TSK_ALGORITHM_FLAG_LEFTEYE)
	{
		feature_gallery = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_LEFT_STRUCT_ADDR);

		feature_gallery->iden_feature_data.data_byte = (unsigned char*)(IMG_FEATURE_LEFT_ADDR);
	}
	else if (eye==TSK_ALGORITHM_FLAG_RIGHTEYE)
	{
		feature_gallery = (dsp_algorithm_iden_feature_t*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);

		feature_gallery->iden_feature_data.data_byte = (unsigned char*)(IMG_FEATURE_RIGHT_ADDR);
	}
	else
	{
		return -3;
	}

	single_feature_len = feature_gallery->single_feature_len;
	total_feature_len  = feature_gallery->iden_feature_data.data_len;

	model_number = total_feature_len/single_feature_len;
	if (model_number==0)
		return -2;

	m_pGallery   = feature_gallery->iden_feature_data.data_byte;

#if 0
	{
		int cur_time;
		cur_time = TSK_time();
		dbg_output("before iden time %d\n", cur_time);
	}
#endif

#ifdef _EMULATOR
	// nret = IRIdenWithList ( image, ImH, ImW, 
	nret = IRIdenAdaBoostWithList ( image, ImH, ImW, 
						   tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
						   // &device_param, 1,
						   m_pGallery,  model_number,
						   //feature, 3, 
						   NULL, 0);
#else

	// nret = IRIdenWithList ( irisimage, ImH, ImW, 
	nret = IRIdenAdaBoostWithList ( irisimage, ImH, ImW, 
						   tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
						   // &device_param, 1,
						   m_pGallery,  model_number,
						   // enroll_feature, 1, 
						   NULL, 0);
#endif

#if 0
	{
		int cur_time;
		cur_time = TSK_time();
		dbg_output("iden result = %d, time %d\n", nret, cur_time);
	}
#endif

	return nret;
}


// 调用质量判断函数，判断该图可否使用
int SelectImage(unsigned char* orgImage, int worktype,
				unsigned int* saved_score, unsigned char* destImage)
{

    int	img_quality=-2, img_score=0;
	int nret = -1;
	int index;

	dbg_output1("before judge quality ");
#ifdef _EMULATOR
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
	dbg_output1("after judge quality qua=%d score=%d \n", img_quality, img_score);				

	if ((img_quality==-103)&&(img_score==14))
	{
		dbg_output1("here\n");
	}

	// 记录质量判断的值，作为提示依据
	index = 0 - img_quality;

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

		dbg_output("imgquality=%d, score %d\n", img_quality, img_score);

		if (img_score>(*saved_score))
		{
			memcpy(destImage, orgImage, SrcImSize);
			// ConvertBitmap(destImage, ImW, ImH);
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
		dbg_output("SND_KEEP\n");
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
		dbg_output("SND_SLOW\n");
		tsk_used_reg->alg_sound_reg.sound_value = SND_SLOW;
	}
	else
	{
		// dbg_output("SND_NULL %d\n", max_index);
		//tsk_used_reg->alg_sound_reg.sound_value = JUDGE_TOOSMALL;
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


//===================================
//up-down image data for dib
int ConvertBitmap(unsigned char* lpdib, int imgWidth, int imgHeight)
{
	long	i,wbytes;
	unsigned char	lpbuf[ImW];
	unsigned char*	lptop;
	unsigned char*  lpbottom;

	if(!lpdib)
		return 0;

	//inverse dib (top to bottom)
	wbytes=imgWidth;

	if (wbytes>ImW)
		return 0;

	lptop=lpdib;
	lpbottom=lpdib+(imgHeight-1)*wbytes;
	for(i=0;i<imgHeight/2;i++) {
		memcpy(lpbuf,lptop,wbytes);
		memcpy(lptop,lpbottom,wbytes);
		memcpy(lpbottom,lpbuf,wbytes);
		lptop+=wbytes;
		lpbottom-=wbytes;
	}

	return 1;
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
	phdr->bfSize = (DWORD) (BMPFILEHEADER_SIZE + 
					pbmi->biSize + pbmi->biClrUsed 
					* sizeof(RGBQUAD) + pbmi->biSizeImage); 
	phdr->bfReserved1 = 0; 
	phdr->bfReserved2 = 0; 

	// Compute the offset to the array of color indices. 
	phdr->bfOffBits = (DWORD) BMPFILEHEADER_SIZE + 
					pbmi->biSize + pbmi->biClrUsed 
					* sizeof (RGBQUAD); 

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
	return ;
}


Uint16 get_checksum(Uint16 *buf, int size)
{  
#if 0
	Uint32 cksum = 0; 

	// clear the last word of buf 
//	buf_end = (Uint16*)(buf+(size/2)-1);
//	*buf_end = 0;

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

	return ~(Uint16)(cksum);
#endif

#if 1
	return 0;
#endif
}

/*

// Detect Fack eye
// 根据左、右眼标识取虹膜图像用于判断
void FakeTestEnrollImg (int* left_result, int* right_result)
{
	int i;
	int	nret;
	unsigned char	*test_image1, *test_image2, *test_image3;


	i = 0;
	if (*left_result>0)
	{
		*left_result  = -1;
		test_image1 = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
				+ ENROLL_RESULT_TOTAL_LEN*i	+ ENROLL_IMAGE_DATA_OFFSET);
		i++;
		test_image2 = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
				+ ENROLL_RESULT_TOTAL_LEN*i	+ ENROLL_IMAGE_DATA_OFFSET);
		i++;
		test_image3 = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
				+ ENROLL_RESULT_TOTAL_LEN*i	+ ENROLL_IMAGE_DATA_OFFSET);

		i++;

		nret = FakeDetect(test_image1,test_image2, test_image3);

		dbg_output("left eye fake detect result %d\n", nret);

		*left_result  = nret;
	}


	if (*right_result>0)
	{
		*right_result = -1;
		test_image1 = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
				+ ENROLL_RESULT_TOTAL_LEN*i	+ ENROLL_IMAGE_DATA_OFFSET);
		i++;
		test_image2 = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
				+ ENROLL_RESULT_TOTAL_LEN*i	+ ENROLL_IMAGE_DATA_OFFSET);
		i++;
		test_image3 = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
				+ ENROLL_RESULT_TOTAL_LEN*i	+ ENROLL_IMAGE_DATA_OFFSET);

		nret = FakeDetect(test_image1,test_image2, test_image3);

		dbg_output("right eye fake detect result %d\n", nret);

		*right_result = nret;
	}
}
*/

/*
int IRIm2RotateFeatureAdaBoost( unsigned char* m_pImage, int imageH, int imageW, 
			int* devicePara, int deveiceParaNum,
			unsigned char* m_pRotateFea,  int *m_FeatureLen);

int IRFeatureIdenAdaBoostWithList ( unsigned char* m_pFeature, int iFeatureLen, 
						   int* devicePara, int deveiceParaNum,
						   unsigned char* m_pGallery,  int NumModel, 
						   int* pFeatureIDList, int curListLen);
*/
// detect bmp format

// 用于测试特征-特征比对函数
// 注册结束后，三幅左眼特征和三幅右眼特征之间互相比对
void FeatureIdenTest(void)
{
	unsigned char* 	m_pRotateFea;
	unsigned char*  m_pImage;
	unsigned char*  m_pFea1;
	unsigned char*  m_pFea2;
	int				index = 0;
	int				nret;
	int				m_FeatureLen;
	int				l, n;
	int				boostret[IR_TestImage];
	int 			cur_time;

	unsigned char*		enroll_feature_ = NULL;

	enroll_feature_ = (unsigned char*)(FEATURE_ENROLL_LEFT);

	m_pRotateFea = (unsigned char*)MEM_alloc(0, sizeof(IR_RotateFeatureLength*IR_TestImage), 4);

	if (m_pRotateFea == MEM_ILLEGAL)
	{
		SYS_abort("Memroy allocation failed\n");
		return;
	}

	CACHE_flush(CACHE_L2ALL, 0, 0);

	for (index=0; index<IR_TestImage; index++)
	{
		m_pImage = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 \
				+ ENROLL_RESULT_TOTAL_LEN*index	+ ENROLL_IMAGE_DATA_OFFSET);

		m_pFea1  = 	(unsigned char*)(m_pRotateFea+(IR_RotateFeatureLength*index));

		nret = IRIm2RotateFeatureAdaBoost(m_pImage, ImH, ImW, \
					tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,\
					m_pFea1, &m_FeatureLen);

		dbg_output("RotateFeature i=%d, ret=%d, len=%d\n", index, nret, m_FeatureLen);

	}

#if 0
	// 测试100次特征提取花费时间，大约14600ms左右
	{
		cur_time = TSK_time();
	}

	for (index=0; index<100; index++)
	{
		m_pImage = (unsigned char*)(ENROLL_LEFT_STRUCT_ADDR1 + ENROLL_IMAGE_DATA_OFFSET);

		m_pFea1  = 	(unsigned char*)(m_pRotateFea);

		nret = IRIm2RotateFeatureAdaBoost(m_pImage, ImH, ImW, \
					tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,\
					m_pFea1, &m_FeatureLen);
	}


	{
		cur_time = TSK_time()-cur_time;
		dbg_output("rotateiden get feature time %d\n", cur_time);
	}
#endif


#if 0
	// 测试比对10000次花费时间
	{
		cur_time = TSK_time();
	}


	for (index=0; index<10000; index++)
	{

	m_pFea1  = 	(unsigned char*)(m_pRotateFea);
	m_pFea2  = (unsigned char*)(m_pRotateFea+(IR_RotateFeatureLength));
				boostret[1] = IRFeatureIdenAdaBoostWithList(m_pFea1,
							IR_RotateFeatureLength,
							tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
							m_pFea2, 1,
							NULL, 0);
	}


	{
		cur_time = TSK_time()-cur_time;
		dbg_output("rotateiden time %d\n", cur_time);
	}
#endif

#if 1
	{
		cur_time = TSK_time();
	}

	for (l=0; l<IR_TestImage; l++)
	{
		m_pFea1  = 	(unsigned char*)(m_pRotateFea+(IR_RotateFeatureLength*l));

		for (n=0; n<IR_TestImage; n++)
		{
			m_pFea2  = (unsigned char*)(enroll_feature_+(IR_FeatureLength*n));
			boostret[n] = IRFeatureIdenAdaBoostWithList(m_pFea1,
							IR_RotateFeatureLength,
							tsk_used_reg->alg_devparam_reg.device_param, DEVICE_PARAMCOUNT,
							m_pFea2, 1,
							NULL, 0);
		}

		dbg_output("[ ");

		for (n=0; n<IR_TestImage; n++)
			dbg_output("%02d ", boostret[n]);
		dbg_output("]\n");


	}

	{
		cur_time = TSK_time()-cur_time;
		dbg_output("rotateiden time %d\n", cur_time);
	}
#endif

	MEM_free(0, m_pRotateFea, sizeof(IR_RotateFeatureLength*IR_TestImage));
	return;
}
// FakeDetect(unsigned char * m_pImage1,unsigned char * m_pImage2,unsigned char * m_pImage3)



