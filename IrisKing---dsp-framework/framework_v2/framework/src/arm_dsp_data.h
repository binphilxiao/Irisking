#if !defined(__DSP_DATA_H__)
#define __DSP_DATA_H__

#include <QUE.h>

// �������ݽṹ
// ָ�����ݽṹ
typedef struct dsp_tsk_memory_t
{
	unsigned int dataptr_len;	// ���ô洢������in byte
	void 	*data_ptr; 			// ����ָ��
}dsp_tsk_memory_t;

// �ֽ������ݽṹ
typedef struct dsp_byte_data_t		
{
	unsigned int 	data_len;	// ���ݳ��� in byte
	unsigned char   *data_byte;	// ����
}dsp_byte_data_t;


// һ��ע������¼���ݽṹ
typedef struct dsp_algorithm_result_info_t		
{
	int				eye_flag;			// eye, left-1, right-2
	dsp_byte_data_t	enroll_feature;		// һ������
	dsp_byte_data_t	enroll_img;			// һ��ͼ��
	dsp_byte_data_t match_feature;		// һ���ȶ�����
}dsp_algorithm_result_info_t;

// ȫ��ע�������ݽṹ
typedef struct dsp_algorithm_result_data_t		
{
	unsigned int result_count;			// �������
	unsigned int result_byte_len;		// total length of result_info in bytes
	dsp_algorithm_result_info_t result_info[1];
}dsp_algorithm_result_data_t;


#define DEVICE_PARAMCOUNT           20

// ���ƴ洢��
// ARMд��DSPֻ��
// ����0x0c����ʼ��ַ0x010
typedef struct dsp_tsk_control_t
{
	unsigned short tsk_img_control;	// TSK_imageִ����ʽ��Ŀǰ����
	unsigned short tsk_img_control_count;
	unsigned short tsk_alg_control;	// TSK_algorithִ����ʽ
	unsigned short tsk_alg_control_count;
	unsigned int tsk_adc_value;		// ������ģ���õľ���ֵ��cmΪ��λ
}dsp_tsk_control_t;

// ���Դ洢����ʶ���ע�����
// ARMд��DSPֻ��
// ����0x0c����ʼ��ַ0x01c
// modified by yqhe, 20080320
// ���Ӳ��Ե���������
// iden_mode and data_type
typedef struct dsp_tsk_policy_t
{
	unsigned short policy_control;	// ����	
	unsigned short try_count;		// ע��ͼ��������ʶ�����
	unsigned short iden_mode;		// ����ʶ��or��Ⱥʶ��
	unsigned short data_type;		// ���ͺ������ݵ���Ⱥ���������ڱȶ�
	unsigned int policy_flag;		// ��Ч��ע����Ч��ʶ����Ч
}dsp_tsk_policy_t;

// ��Ӧ�洢��
// ARMֻ����DSPд
// ����0x18����ʼ��ַ0x028
typedef struct dsp_tsk_flag_t
{
	unsigned int tsk_img_resp;		// ��TSK_image���ƵĻ�Ӧ��Ŀǰ�Ǿ����ж�ֵ���ɹ�ARM�ο�
									// 20080415���tsk_alg_resp
	unsigned short tsk_alg_status;	// ��ǰ״̬������ǰ��tsk_alg_resp��ȫһ��
	unsigned short tsk_alg_status_count;
	unsigned short req_tsk_alg_control; // ��Ӧ���Ƶ�״̬�������Ӧ��ARM�Ŀ��ƣ�����ARM����ֵ��ȫһ��
	unsigned short req_tsk_alg_control_count; 	
	dsp_tsk_memory_t left_data;		// ��������ID���»�Ӧ�������۷ֱ��Ӧ�ĵ�ַ
	dsp_tsk_memory_t right_data;
}dsp_tsk_flag_t;

// ����洢��
// ARMֻ����DSPд
// ����0x20����ʼ��ַ0x040
typedef struct dsp_algorithm_result_t
{
		unsigned int  result_type;	// �������
		dsp_tsk_policy_t policy;	// Ӧ�ò���
		unsigned int  feature_tag;
		int			  left_result;	// 
		int			  right_result;
		void* 		  result_data;
}dsp_algorithm_result_t;

// �����洢��
// ARMֻ����DSPд
// ����0x08����ʼ��ַ0x060
typedef struct dsp_algorithm_sound_t		 
{
	unsigned int sound_value;
	unsigned int sound_count;	
}dsp_algorithm_sound_t;


// �洢�豸�����Ϣ�������Զ�����Ƶ�λ�õ�
// �㷨���ܻ�ʹ�õ���Щ��Ϣ
// �����Ƶ�λ��DSPд��
// ����ֵDSPд��

// �豸�����洢��
// ����0x54����ʼ��ַ0x068
typedef struct dsp_algorithm_devparam_t

{
	unsigned int param_count;
	int 		 device_param[DEVICE_PARAMCOUNT];
}dsp_algorithm_devparam_t;

// ���Ź��洢��
// ARMֻ����DSPд
// ����0x08����ʼ��ַ0x0bc
typedef struct dsp_tsk_watchdog_t
{
	unsigned int tsk_img_watchdog;
	unsigned int tsk_alg_watchdog;		
}dsp_tsk_watchdog_t;

// ͼ����ʾ���ƴ洢��
typedef struct dsp_icon_t
{
	unsigned int   req_icon_control;
	unsigned int   req_icon_id;
	unsigned int   dsp_icon_state;
	dsp_tsk_memory_t icon_data;	//data.ptrָ��Ŀռ�Ϊdsp_bmp_t����
}dsp_icon_t;

typedef struct dsp_mac_t
{
	unsigned char	mac_val[8];	// ����Ϊ���ֽڶ���ĸ�ʽ
} dsp_mac_t;

// Ϊ����ʱ��ʱ��ȡ�ɼ�ͼ�����
// DSP��ʼ��ʱ�����˲�������Ϊ��0
// ARM��Ҫͼ��ʱ���ö�Ӧ�۾�ֵΪ0
// DSP���Ե�ֵΪ0����COPY��ǰ�ɼ�ͼ��ָ��λ��
// ����ָ��λ�õĵ�ַд�ز�����
typedef struct dsp_copyimg_t
{
	dsp_tsk_memory_t* left_param;
	dsp_tsk_memory_t* right_param;
}dsp_copyimg_t;

// coal-safe, added at 20071211
// �ȶԲ��Խ��̴洢��
// DSPд��ARM��
// ��ARM�˽�ȶԵ�ǰ����
typedef struct dsp_matchprogress_t
{
	unsigned int row;
	unsigned int col;
}dsp_matchprogress_t;


// for test, added at 20080505
// ����ͼ����Ϣ�洢��¼
typedef struct dsp_img_t
{
	unsigned int tag_arm;		// ARMд��Ĵ���ͼ�����
	unsigned int tag_dsp;		// DSP��¼�Ľ���ͼ�����
	dsp_tsk_memory_t img_data;	// ����ͼ���С���洢�ռ��ַ
}dsp_img_t;

// ʶ����Դ���ͼ��洢��
typedef struct dsp_testimg_t
{
	dsp_img_t left_eye;			// left eye image info
	dsp_img_t right_eye;		// right eye image info
}dsp_testimg_t;

// arm control the distance
// added at 20080606
// ���뷢�����ƴ洢��
// dsp init this reg and then ARM write, dsp read
typedef struct dsp_distance_ctrl_t 
{									// ԭ��������ֵ
	unsigned short adc_noperson;	// 40
	unsigned short adc_toofar;		// 28
	unsigned short adc_ok;			// 23
	unsigned short adc_tooclose;	// 0
									// ���ϲ�����λΪcm	
	unsigned short adc_smooth;		// 5, �����������ë��
	unsigned short adc_noperson_disp; // 50, �����豸ǰ���˺󣬳�����ʾͼ��Ŀ��ƣ�
									// һ���ֵ����Ϊ300����ͼ�������ʾʱ��30��
	unsigned short adc_play_sound;	// 10, ���Ʒ����ļ��
									// ���ϲ�����λΪ�ɼ�2֡ͼ�񻨷ѵ�ʱ��
	unsigned short adc_nouse;	
}dsp_distance_ctrl_t;

// Ƭ�ڴ洢�����У�ARM��DSP���ݽ���ʹ�õĴ洢��
typedef struct dsp_tsk_totalreg_t
{
	dsp_tsk_control_t	tsk_control_reg;		// ���ƴ洢��������0x0c����ʼ��ַ0x010
	        									// ARMд��DSPֻ��

	dsp_tsk_policy_t	tsk_policy_reg;			// ���Դ洢��������0x08����ʼ��ַ0x01c
												// ARMд��DSPֻ��


	dsp_tsk_flag_t		tsk_flag_reg;			// ��Ӧ�洢��������0x18����ʼ��ַ0x024
												// ARMֻ����DSPд

	dsp_algorithm_result_t   alg_result_reg;	// ����洢��������0x20����ʼ��ַ0x03c
												// ARMֻ����DSPд


	dsp_algorithm_sound_t    alg_sound_reg;		// �������ƴ洢��������0x08����ʼ��ַ0x05c
												// ARMֻ����DSPд

	dsp_algorithm_devparam_t alg_devparam_reg;	// �豸�����洢��������0x54����ʼ��ַ0x064

    dsp_tsk_watchdog_t		 tsk_watchdog_reg;  // ���Ź����ۼ�

	dsp_icon_t				 img_icon_reg;		// ͼ����ʾ

	dsp_mac_t				 dsp_mac_reg;		// MAC �Ĵ���

	dsp_copyimg_t			 dsp_copyimg_reg;	// ͼ��COPY�Ĵ���

	dsp_matchprogress_t		 dsp_matchprogress_reg; // �ȶԽ��̼Ĵ���

	dsp_testimg_t			 dsp_testimg_reg;	// ʶ�������ͼ��洢��

	dsp_distance_ctrl_t		 dsp_distance_ctrl_reg; // ���뷢�����ƴ洢��

}dsp_tsk_totalreg_t;


// ʶ�������б����ݽṹ
typedef struct dsp_algorithm_iden_feature_t
{
	unsigned int single_feature_len;
	unsigned int feature_tag;
	dsp_byte_data_t	iden_feature_data;
}dsp_algorithm_iden_feature_t;


// ͼ��洢���ݽṹ
// �˽ṹ�Ĵ�С����Ϊ8����������mask������ܻ����һЩ�����ֽڡ�
typedef struct dsp_bmp_t
{
	int				width;				// ͼ��Ŀ��(����)������Ϊ8�ı���
	int 			height;				// ͼ��ĸ߶�(����)
}dsp_bmp_t;	


#endif //!__DSP_DATA_H__
