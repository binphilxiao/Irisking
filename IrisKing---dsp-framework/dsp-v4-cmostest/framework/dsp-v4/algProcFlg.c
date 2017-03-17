#include <std.h>
#include <csl.h>
#include <csl_cache.h>

#include "dsp_memory.h"
#include "dsp_typedef.h"
#include "..\..\include\dbg_printf.h"

// coal-safe, added at 20071213
extern MATCH_MSG			match_msg;		// 比对测试用到的消息
extern far QUE_Obj			match_queue;

int ProcessUpdateFlag();
int ProcessUpdateOverFlag ();

int ProcessIdleFlag ();

int ProcessIdenFlag();
int ProcessEnrollFlag();

int ClearALLResult(void);
int StopIdentify(void);

void CACHE_inv_area(char *ptr, int size);

// added at 20101023
// for algorithm-v2, code and match function test
int ProcessCodeFlag();
int ProcessMatchFlag();

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
            // 如在IDLE状态，可响应IDEN
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
            // 如在IDEN或IDLE状态，可响应ENROLL
			nret = ProcessEnrollFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = tsk_used_reg->tsk_control_reg.tsk_alg_control;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_CODE_FLAG)
        {
            // 如在IDLE状态，可响应CODE
			nret = ProcessCodeFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_CODE_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_MATCH_FLAG)
        {
            // 如在IDLE状态，可响应MATCH
			nret = ProcessMatchFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_MATCH_ACTIVE;
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
		//tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_INIT_OVER;
	}

	return nret;
}

int ProcessUpdateFlag()
{
	// added at 20080415
	// 如tsk_alg处于运行状态，不响应特征更新
	if ((dsp_used_reg.status_reg.tsk_alg_inuse==TSK_ALGTSK_STATUS_ALGINUSE)
			&&(dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDLE==0))
	{
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

	return IRIS_SUCCESS;
}

int ProcessIdenFlag()
{
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_IDLE)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_BEGIN))
	{
		dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_IDEN;

		StartIdentify();

		return IRIS_SUCCESS;
	}
	else
		return IRIS_ERROR;
}

int ProcessEnrollFlag()
{
	unsigned short dsp_status;

	dsp_status = dsp_used_reg.status_reg.tsk_alg_status & TSK_ALGORITHM_STATUS_MASK;
	if (( dsp_status == TSK_ALGORITHM_STATUS_IDLE)
		||(dsp_status == TSK_ALGORITHM_STATUS_IDEN)
		|| (dsp_status == TSK_ALGORITHM_STATUS_BEGIN)
		|| (dsp_status == TSK_ALGORITHM_STATUS_G_IDEN))
	{
		if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_ENROLL_FLAG)
			dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_ENROLL;
		else
			dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_I_ENROLL;

		StartEnroll();

		return IRIS_SUCCESS;
	}
	else if ((dsp_status == TSK_ALGORITHM_STATUS_ENROLL)
				||(dsp_status == TSK_ALGORITHM_STATUS_I_ENROLL))
	{
		// 当前正在注册，停止
		StopEnroll();

		if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_ENROLL_FLAG)
			dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_ENROLL;
		else
			dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_I_ENROLL;

		StartEnroll();

		return IRIS_SUCCESS;
	}
	else
		return IRIS_ERROR;
}


// added at 20101023
// for algorithm-v2, code and match function test
int ProcessCodeFlag()
{
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_IDLE)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_BEGIN))
	{
		dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_CODE;

		return IRIS_SUCCESS;
	}
	else
		return IRIS_ERROR;
}

int ProcessMatchFlag()
{
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_IDLE)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_BEGIN))
	{
		dsp_used_reg.status_reg.tsk_alg_status = TSK_ALGORITHM_STATUS_MATCH;

		return IRIS_SUCCESS;
	}
	else
		return IRIS_ERROR;
}

