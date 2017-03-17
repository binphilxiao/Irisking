#include <std.h>
#include <csl.h>
#include <csl_cache.h>

#include "dsp_memory.h"
#include "dsp_typedef.h"
#include "..\..\include\dbg_printf.h"

// coal-safe, added at 20071213
extern MATCH_MSG			match_msg;		// 比对测试用到的消息
extern far QUE_Obj				match_queue;

int ProcessUpdateFlag();
int ProcessUpdateOverFlag ();

int ProcessUpdateIDFlag();
int ProcessUpdateIDOverFlag ();

int ProcessIdleFlag ();

int ProcessIdenFlag();
int ProcessEnrollFlag();

// coal-safe, added at 20071211
int ProcessMatchInit();
int ProcessSendImage();
int ProcessGenFeature();
int ProcessMatchBegin();
int ProcessMatchEnd();

int FeatureGeneration (Uint32 imgAddr);
int BeginMatching (void);
int EndMatching (void);

int ClearALLResult(void);
int StopIdentify(void);

void CACHE_inv_area(char *ptr, int size);

int ProcessFlag (dsp_procimg_t* procimg_reg)
{
	int  nret;

	nret = IRIS_NOCODE;

        if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_UPDATE_FLAG)
        {
            // 是否可以回应更新信息
            // 如有结果未取走，则等待结果取走后响应更新
            // 如有识别或注册结果，则抛弃不要
			nret = ProcessUpdateFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_UPDATE_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_UPDATEOVER_FLAG)
        {
            // 恢复成更新前的识别或注册状态
			nret = ProcessUpdateOverFlag();
			if (nret==IRIS_SUCCESS)
			{
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_UPDATEID_FLAG)
        {
			nret = ProcessUpdateIDFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_UPDATEID_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_UPDATEIDOVER_FLAG)
        {
			nret = ProcessUpdateIDOverFlag();
			if (nret==IRIS_SUCCESS)
			{
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_IDLE_FLAG)
        {
            // 如正在识别或注册等待图像状态，停止等待，响应
            // 如有识别或注册结果，则抛弃不要，响应
			nret = ProcessIdleFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDLE_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_IDEN_FLAG)
        {
            // 如在IDLE状态，可响应
			nret = ProcessIdenFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDEN_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if ((tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_ENROLL_FLAG)
            ||(tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_ENROLL_I_FLAG))
        {
            // 如在IDEN或IDLE状态，可响应
			nret = ProcessEnrollFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = tsk_used_reg->tsk_control_reg.tsk_alg_control;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
		// coal-safe, added at 20071211
		else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_MATCH_INIT_FLAG)
		{
			// 请求进入比对测试状态
			// 如在IDLE状态，可响应
			tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_INIT_ACTIVE;
			nret = ProcessMatchInit();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_INIT_OVER;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
		}
		else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_MATCH_SENDIMAGE_FLAG)
		{
			// 请求传入虹膜图像用于比对
			// 如在MATCH状态，可响应
			nret = ProcessSendImage();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_SENDIMAGE_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
		}
		else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_MATCH_GENFEATURE_FLAG)
		{
			// 请求从传入虹膜图像生成特征
			// 如在MATCH状态，可响应
			tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_GENFEATURE_ACTIVE;
			nret = ProcessGenFeature();
			if (nret==IRIS_SUCCESS)	// 只要执行了生成特征函数，即认为成功
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_GENFEATURE_OVER;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
		}
		else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_MATCH_BEGIN_FLAG)
		{
			// 请求开始比对
			// 如在MATCH状态，可响应
			nret = ProcessMatchBegin();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_BEGIN_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
		}
		else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_MATCH_END_FLAG)
		{
			// 请求停止/结束比对
			// 如在MATCH状态，可响应
			nret = ProcessMatchEnd();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_END_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
		}

	if (nret==IRIS_SUCCESS)
	{
	   	// 更新
		dsp_used_reg.alg_control_count = tsk_used_reg->tsk_control_reg.tsk_alg_control_count;

		// 如设置成功，则resp_status与ARM控制值一致
		tsk_used_reg->tsk_flag_reg.req_tsk_alg_control = tsk_used_reg->tsk_control_reg.tsk_alg_control;
		tsk_used_reg->tsk_flag_reg.tsk_alg_status_count = tsk_used_reg->tsk_control_reg.tsk_alg_control_count;
		tsk_used_reg->tsk_flag_reg.req_tsk_alg_control_count = tsk_used_reg->tsk_control_reg.tsk_alg_control_count;

	}
	return nret;
}

int ProcessUpdateFlag()
{
	// added at 20080415
	// 如tsk_alg处于运行状态，不响应特征更新
	if (dsp_used_reg.status_reg.tsk_alg_inuse==TSK_ALGTSK_STATUS_ALGINUSE)
	{
		dbg_output("tsk_alg in use\n");
		return IRIS_ERROR;
	}

	dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_UPDATE;

	// 没有尚未取走的结果，可以响应更新
	// modified at 070820, by yqhe
	// 
	//if (tsk_used_reg->alg_result_reg.result_type==TSK_ALGORITHM_RESULT_TYPE_NULL)
	ClearALLResult();
	{
		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
		{
			// 当前正在识别，停止
			StopIdentify();
		}
		else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
		{
			// 当前正在注册
			StopEnroll();
		}

		tsk_used_reg->tsk_flag_reg.left_data.dataptr_len = IMG_FEATURE_STRUCT_TOTALSIZE;
		tsk_used_reg->tsk_flag_reg.left_data.data_ptr = (void*)(IMG_FEATURE_LEFT_STRUCT_ADDR);

		tsk_used_reg->tsk_flag_reg.right_data.dataptr_len = IMG_FEATURE_STRUCT_TOTALSIZE;
		tsk_used_reg->tsk_flag_reg.right_data.data_ptr = (void*)(IMG_FEATURE_RIGHT_STRUCT_ADDR);

		dsp_used_reg.status_reg.tsk_alg_status |= TSK_ALGORITHM_STATUS_UPDATE;

		dbg_output("enter feature update %d\n", tsk_used_reg->tsk_control_reg.tsk_alg_control_count);
		return IRIS_SUCCESS;

	}

	// return IRIS_ERROR;
}

int ProcessUpdateIDFlag()
{
	// added at 20080415
	// 如tsk_alg处于运行状态，不响应特征更新
	if (dsp_used_reg.status_reg.tsk_alg_inuse==TSK_ALGTSK_STATUS_ALGINUSE)
	{
		dbg_output("tsk_alg in use\n");
		return IRIS_ERROR;
	}

	dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_UPDATE;
	// modified at 070820, by yqhe
	// if (tsk_used_reg->alg_result_reg.result_type==TSK_ALGORITHM_RESULT_TYPE_NULL)
	ClearALLResult();
	{
		// 没有尚未取走的结果，可以响应更新
		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
		{
			// 当前正在识别，停止
			StopIdentify();
		}
		else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
		{
			// 当前正在注册
			StopEnroll();
		}

		tsk_used_reg->tsk_flag_reg.left_data.dataptr_len = IMG_FEATURE_COUNT*sizeof(int);
		tsk_used_reg->tsk_flag_reg.left_data.data_ptr = (void*)(IMG_FEATUREID_LEFT_ADDR);

		tsk_used_reg->tsk_flag_reg.right_data.dataptr_len = IMG_FEATURE_COUNT*sizeof(int);
		tsk_used_reg->tsk_flag_reg.right_data.data_ptr = (void*)(IMG_FEATUREID_RIGHT_ADDR);

		dsp_used_reg.status_reg.tsk_alg_status |= TSK_ALGORITHM_STATUS_UPDATEID;

		dbg_output("enter feature id list update\n");
		return IRIS_SUCCESS;

	}

	// return IRIS_ERROR;
}

int ProcessUpdateOverFlag ()
{
	void*  	lp_feature;
	Uint32	data_len;
	CACHE_invalidate(CACHE_L1DALL, 0, 0);

	lp_feature 	= (void*)(IMG_FEATURE_LEFT_STRUCT_ADDR);

	data_len	= IMG_FEATURE_COUNT*IR_FeatureLength*2;

	//CACHE_invL2(lp_feature, data_len, CACHE_NOWAIT);
	CACHE_inv_area(lp_feature, data_len);

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
	{
		// 原先在识别，恢复
		StartIdentify();
		tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDEN_ACTIVE;
	}
	else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
	{
		// 原先在注册
		StartEnroll();
		tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_ENROLL_ACTIVE;
	}
	else
		tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDLE_ACTIVE;

	dsp_used_reg.status_reg.tsk_alg_status &= ~ TSK_ALGORITHM_STATUS_UPDATE;

	CACHE_wait();

	dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_IDLE;

	return IRIS_SUCCESS;
}

int ProcessUpdateIDOverFlag ()
{
	void*  	lp_feature;
	Uint32	data_len;

	CACHE_invalidate(CACHE_L1DALL, 0, 0);

	lp_feature 	= (void*)(IMG_FEATUREID_LEFT_ADDR);

	data_len	= IMG_FEATURE_COUNT*sizeof(int)*2;

	//CACHE_invL2(lp_feature, data_len, CACHE_NOWAIT);
	CACHE_inv_area(lp_feature, data_len);

	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
	{
		// 原先在识别，恢复
		StartIdentify();
		tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDEN_ACTIVE;
	}
	else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
	{
		// 原先在注册
		StartEnroll();
		tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_ENROLL_ACTIVE;
	}
	else
		tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDLE_ACTIVE;

	dsp_used_reg.status_reg.tsk_alg_status &= ~ TSK_ALGORITHM_STATUS_UPDATEID;

	CACHE_wait();

	dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_IDLE;

	return IRIS_SUCCESS;
}

int ProcessIdleFlag ()
{
	if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
	{
		// 当前正在识别，停止
		StopIdentify();
	}
	else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
	{
		// 当前正在注册，停止
		StopEnroll();
	}

	dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_IDLE;
	dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_IDLE;

	dbg_output("enter idle %d\n", tsk_used_reg->tsk_control_reg.tsk_alg_control_count);

	return IRIS_SUCCESS;
}

int ProcessIdenFlag()
{
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_IDLE)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_BEGIN))
	{
		dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_IDEN;

		StartIdentify();

		dbg_output("enter identify %d\n", tsk_used_reg->tsk_control_reg.tsk_alg_control_count);
		return IRIS_SUCCESS;
	}
	else
		return IRIS_ERROR;
}

int ProcessEnrollFlag()
{
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_IDLE)
		||(dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_IDEN)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_BEGIN))
	{
		if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_ENROLL_FLAG)
			dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_ENROLL;
		else
			dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_I_ENROLL;

		StartEnroll();

		dbg_output("enter enroll %d\n", tsk_used_reg->tsk_control_reg.tsk_alg_control_count);
		return IRIS_SUCCESS;
	}
	else
		return IRIS_ERROR;
}


// coal-safe, added at 20071211
int ProcessMatchInit()
{
	// 设备处于IDLE或BEGIN状态时可以进入MATCH方式
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_IDLE)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_BEGIN)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_INIT)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_END))
	{
		// 设置最多可接受的传入图像数目
		tsk_used_reg->tsk_flag_reg.right_data.dataptr_len = BMP_MAX_COUNT;

		// 比对进程存储器清零
		tsk_used_reg->dsp_matchprogress_reg.row = 0;
		tsk_used_reg->dsp_matchprogress_reg.col = 0;

		// 共输入多少个BMP文件可供比对清零
		dsp_used_reg.match_input_count			= 0;

		// 内部状态，进入MATCH_INIT
		// 只要MATCH_INIT一次，设备就始终处于比对测试状态，直至断电
		dsp_used_reg.status_reg.tsk_alg_status = TSK_MATCH_INIT;

		return IRIS_SUCCESS;
	}

	return IRIS_ERROR;
}

// status==TSK_MATCH_END表示上一次测试结束
// 之后可以接收新的图像，作为新一轮测试的开始
int ProcessSendImage()
{
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_INIT)
		||(dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_END))
	{
		
		// 在允许状态下，一旦接收图片自动进入TSK_MATCH_INIT状态
		if (dsp_used_reg.status_reg.tsk_alg_status!=TSK_MATCH_INIT)
		{
			dsp_used_reg.status_reg.tsk_alg_status = TSK_MATCH_INIT;
			
			// 比对进程存储器清零
			tsk_used_reg->dsp_matchprogress_reg.row = 0;
			tsk_used_reg->dsp_matchprogress_reg.col = 0;

			dsp_used_reg.match_input_count			= 0;
		}

		// 设置传入图像的地址
		tsk_used_reg->tsk_flag_reg.left_data.dataptr_len	= BMP_MAX_LEN;
		tsk_used_reg->tsk_flag_reg.left_data.data_ptr		= (void*)(BMP_INPUT_IMAGE_ADDR);

		tsk_used_reg->tsk_flag_reg.right_data.dataptr_len	= 0;
		tsk_used_reg->tsk_flag_reg.right_data.data_ptr		= NULL;


		return IRIS_SUCCESS;
	}

	return IRIS_ERROR;
}

int ProcessGenFeature()
{
	int nret;

	if (dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_INIT)
	{
		// 调用两个生成特征的函数，如果都成功的话，
		// 则dsp_used_reg.match_input_count+1
		// 需要控制dsp_used_reg.match_input_count的值不能超过限制值
		if (dsp_used_reg.match_input_count>=BMP_MAX_COUNT)
			return IRIS_SUCCESS;	// 直接返回，不从此图像提取特征

		// 刷新传入图像
		CACHE_inv_area((void*)BMP_INPUT_IMAGE_ADDR, BMP_MAX_LEN);

		nret = FeatureGeneration(BMP_INPUT_IMAGE_ADDR);
		if (nret==0)	// 成功
		{
			tsk_used_reg->tsk_flag_reg.right_data.dataptr_len = 1;
			dsp_used_reg.match_input_count++;
		}
		return IRIS_SUCCESS;
	}

	return IRIS_ERROR;
}

int ProcessMatchBegin()
{
	// 允许在停止（中止）某次比对后，重新用旧特征开始新一轮比对
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_INIT)
		||(dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_END))
	{
		// 比对进行中，只接受停止命令
		dsp_used_reg.status_reg.tsk_alg_status = TSK_MATCH_PROGRESS;
		BeginMatching();
		return IRIS_SUCCESS;
	}

	return IRIS_ERROR;
}

int ProcessMatchEnd()
{
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_PROGRESS)
		||(dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_END))
	{
		// 只在比对进行中，和停止状态下接受此命令
		dsp_used_reg.status_reg.tsk_alg_status = TSK_MATCH_END;
		EndMatching();
		return IRIS_SUCCESS;
	}
	return IRIS_SUCCESS;
}

// 开始比对
int  BeginMatching (void)
{
	// 比对中，此值作为比对了多少个的标志
	tsk_used_reg->tsk_flag_reg.left_data.dataptr_len	= 0;
	// 设置结果记录地址
	tsk_used_reg->tsk_flag_reg.left_data.data_ptr		= (void*)(BMP_MATCH_RESULT_ADDR);

	// 比对中，此值作为比对是否正常结束的标志
	tsk_used_reg->tsk_flag_reg.right_data.dataptr_len	= 0;
	tsk_used_reg->tsk_flag_reg.right_data.data_ptr		= NULL;

	// 比对进程存储器清零
	tsk_used_reg->dsp_matchprogress_reg.row = 0;
	tsk_used_reg->dsp_matchprogress_reg.col = 0;

	match_msg->process_flag = MATCHTYPE_BEGIN;

	QUE_put(&match_queue, match_msg);

	return 0; 
}

// 结束比对
int  EndMatching (void)
{
	// 刷新输出数据
	CACHE_flush(CACHE_L2ALL, 0, 0);

	return 0;
}

