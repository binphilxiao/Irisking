#include <std.h>
#include <csl.h>
#include <csl_cache.h>

#include "dsp_memory.h"
#include "dsp_typedef.h"
#include "..\..\include\dbg_printf.h"

// coal-safe, added at 20071213
extern MATCH_MSG			match_msg;		// �ȶԲ����õ�����Ϣ
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
            // �Ƿ���Ի�Ӧ������Ϣ
            // ���н��δȡ�ߣ���ȴ����ȡ�ߺ���Ӧ����
            // ����ʶ���ע��������������Ҫ
			nret = ProcessUpdateFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_UPDATE_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_UPDATEOVER_FLAG)
        {
            // �ָ��ɸ���ǰ��ʶ���ע��״̬
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
            // ������ʶ���ע��ȴ�ͼ��״̬��ֹͣ�ȴ�����Ӧ
            // ����ʶ���ע��������������Ҫ����Ӧ
			nret = ProcessIdleFlag();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDLE_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
        }
        else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_ALGORITHM_IDEN_FLAG)
        {
            // ����IDLE״̬������Ӧ
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
            // ����IDEN��IDLE״̬������Ӧ
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
			// �������ȶԲ���״̬
			// ����IDLE״̬������Ӧ
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
			// �������Ĥͼ�����ڱȶ�
			// ����MATCH״̬������Ӧ
			nret = ProcessSendImage();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_SENDIMAGE_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
		}
		else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_MATCH_GENFEATURE_FLAG)
		{
			// ����Ӵ����Ĥͼ����������
			// ����MATCH״̬������Ӧ
			tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_GENFEATURE_ACTIVE;
			nret = ProcessGenFeature();
			if (nret==IRIS_SUCCESS)	// ֻҪִ����������������������Ϊ�ɹ�
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_GENFEATURE_OVER;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
		}
		else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_MATCH_BEGIN_FLAG)
		{
			// ����ʼ�ȶ�
			// ����MATCH״̬������Ӧ
			nret = ProcessMatchBegin();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_BEGIN_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
		}
		else if (tsk_used_reg->tsk_control_reg.tsk_alg_control==TSK_MATCH_END_FLAG)
		{
			// ����ֹͣ/�����ȶ�
			// ����MATCH״̬������Ӧ
			nret = ProcessMatchEnd();
			if (nret==IRIS_SUCCESS)
			{
				tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_MATCH_END_ACTIVE;
				procimg_reg->last_flag = tsk_used_reg->tsk_control_reg.tsk_alg_control;
			}
		}

	if (nret==IRIS_SUCCESS)
	{
	   	// ����
		dsp_used_reg.alg_control_count = tsk_used_reg->tsk_control_reg.tsk_alg_control_count;

		// �����óɹ�����resp_status��ARM����ֵһ��
		tsk_used_reg->tsk_flag_reg.req_tsk_alg_control = tsk_used_reg->tsk_control_reg.tsk_alg_control;
		tsk_used_reg->tsk_flag_reg.tsk_alg_status_count = tsk_used_reg->tsk_control_reg.tsk_alg_control_count;
		tsk_used_reg->tsk_flag_reg.req_tsk_alg_control_count = tsk_used_reg->tsk_control_reg.tsk_alg_control_count;

	}
	return nret;
}

int ProcessUpdateFlag()
{
	// added at 20080415
	// ��tsk_alg��������״̬������Ӧ��������
	if (dsp_used_reg.status_reg.tsk_alg_inuse==TSK_ALGTSK_STATUS_ALGINUSE)
	{
		dbg_output("tsk_alg in use\n");
		return IRIS_ERROR;
	}

	dsp_used_reg.status_reg.tsk_alg_inuse = TSK_ALGTSK_STATUS_UPDATE;

	// û����δȡ�ߵĽ����������Ӧ����
	// modified at 070820, by yqhe
	// 
	//if (tsk_used_reg->alg_result_reg.result_type==TSK_ALGORITHM_RESULT_TYPE_NULL)
	ClearALLResult();
	{
		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
		{
			// ��ǰ����ʶ��ֹͣ
			StopIdentify();
		}
		else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
		{
			// ��ǰ����ע��
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
	// ��tsk_alg��������״̬������Ӧ��������
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
		// û����δȡ�ߵĽ����������Ӧ����
		if ((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_IDEN)!=0)
		{
			// ��ǰ����ʶ��ֹͣ
			StopIdentify();
		}
		else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
		{
			// ��ǰ����ע��
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
		// ԭ����ʶ�𣬻ָ�
		StartIdentify();
		tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDEN_ACTIVE;
	}
	else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
	{
		// ԭ����ע��
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
		// ԭ����ʶ�𣬻ָ�
		StartIdentify();
		tsk_used_reg->tsk_flag_reg.tsk_alg_status = TSK_ALGORITHM_IDEN_ACTIVE;
	}
	else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
	{
		// ԭ����ע��
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
		// ��ǰ����ʶ��ֹͣ
		StopIdentify();
	}
	else if (((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_ENROLL)!=0)
				||((dsp_used_reg.status_reg.tsk_alg_status&TSK_ALGORITHM_STATUS_I_ENROLL)!=0))
	{
		// ��ǰ����ע�ᣬֹͣ
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
	// �豸����IDLE��BEGIN״̬ʱ���Խ���MATCH��ʽ
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_IDLE)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_ALGORITHM_STATUS_BEGIN)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_INIT)
		|| (dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_END))
	{
		// �������ɽ��ܵĴ���ͼ����Ŀ
		tsk_used_reg->tsk_flag_reg.right_data.dataptr_len = BMP_MAX_COUNT;

		// �ȶԽ��̴洢������
		tsk_used_reg->dsp_matchprogress_reg.row = 0;
		tsk_used_reg->dsp_matchprogress_reg.col = 0;

		// ��������ٸ�BMP�ļ��ɹ��ȶ�����
		dsp_used_reg.match_input_count			= 0;

		// �ڲ�״̬������MATCH_INIT
		// ֻҪMATCH_INITһ�Σ��豸��ʼ�մ��ڱȶԲ���״̬��ֱ���ϵ�
		dsp_used_reg.status_reg.tsk_alg_status = TSK_MATCH_INIT;

		return IRIS_SUCCESS;
	}

	return IRIS_ERROR;
}

// status==TSK_MATCH_END��ʾ��һ�β��Խ���
// ֮����Խ����µ�ͼ����Ϊ��һ�ֲ��ԵĿ�ʼ
int ProcessSendImage()
{
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_INIT)
		||(dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_END))
	{
		
		// ������״̬�£�һ������ͼƬ�Զ�����TSK_MATCH_INIT״̬
		if (dsp_used_reg.status_reg.tsk_alg_status!=TSK_MATCH_INIT)
		{
			dsp_used_reg.status_reg.tsk_alg_status = TSK_MATCH_INIT;
			
			// �ȶԽ��̴洢������
			tsk_used_reg->dsp_matchprogress_reg.row = 0;
			tsk_used_reg->dsp_matchprogress_reg.col = 0;

			dsp_used_reg.match_input_count			= 0;
		}

		// ���ô���ͼ��ĵ�ַ
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
		// �����������������ĺ�����������ɹ��Ļ���
		// ��dsp_used_reg.match_input_count+1
		// ��Ҫ����dsp_used_reg.match_input_count��ֵ���ܳ�������ֵ
		if (dsp_used_reg.match_input_count>=BMP_MAX_COUNT)
			return IRIS_SUCCESS;	// ֱ�ӷ��أ����Ӵ�ͼ����ȡ����

		// ˢ�´���ͼ��
		CACHE_inv_area((void*)BMP_INPUT_IMAGE_ADDR, BMP_MAX_LEN);

		nret = FeatureGeneration(BMP_INPUT_IMAGE_ADDR);
		if (nret==0)	// �ɹ�
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
	// ������ֹͣ����ֹ��ĳ�αȶԺ������þ�������ʼ��һ�ֱȶ�
	if ((dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_INIT)
		||(dsp_used_reg.status_reg.tsk_alg_status == TSK_MATCH_END))
	{
		// �ȶԽ����У�ֻ����ֹͣ����
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
		// ֻ�ڱȶԽ����У���ֹͣ״̬�½��ܴ�����
		dsp_used_reg.status_reg.tsk_alg_status = TSK_MATCH_END;
		EndMatching();
		return IRIS_SUCCESS;
	}
	return IRIS_SUCCESS;
}

// ��ʼ�ȶ�
int  BeginMatching (void)
{
	// �ȶ��У���ֵ��Ϊ�ȶ��˶��ٸ��ı�־
	tsk_used_reg->tsk_flag_reg.left_data.dataptr_len	= 0;
	// ���ý����¼��ַ
	tsk_used_reg->tsk_flag_reg.left_data.data_ptr		= (void*)(BMP_MATCH_RESULT_ADDR);

	// �ȶ��У���ֵ��Ϊ�ȶ��Ƿ����������ı�־
	tsk_used_reg->tsk_flag_reg.right_data.dataptr_len	= 0;
	tsk_used_reg->tsk_flag_reg.right_data.data_ptr		= NULL;

	// �ȶԽ��̴洢������
	tsk_used_reg->dsp_matchprogress_reg.row = 0;
	tsk_used_reg->dsp_matchprogress_reg.col = 0;

	match_msg->process_flag = MATCHTYPE_BEGIN;

	QUE_put(&match_queue, match_msg);

	return 0; 
}

// �����ȶ�
int  EndMatching (void)
{
	// ˢ���������
	CACHE_flush(CACHE_L2ALL, 0, 0);

	return 0;
}

