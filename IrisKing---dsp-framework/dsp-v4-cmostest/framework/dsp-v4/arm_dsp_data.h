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

// ����Ϊʹ���㷨v1��ע�����ṹ
// added at 20090317
// 1��ÿ��ע�����У�����ͫ�׺ͺ�Ĥ�Ķ�λ��Ϣ
// 2�����Ӷ����еĽ�����ݵ�chksum����ARM�ж�
typedef struct circle_t			// Բ�ζ�λ����
{
	int				row;		// Բ��������
	int				col;		// Բ��������
	int				radius;		// Բ�뾶
}circle_t;

#ifdef ALG_V1
// һ��ע������¼���ݽṹ
typedef struct dsp_algorithm_result_info_t		
{
	int				eye_flag;			// eye, left-1, right-2
	circle_t		pos_pupil;			// ͫ�׶�λ��Ϣ
	circle_t		pos_iris;			// ��Ĥ��λ��Ϣ
	dsp_byte_data_t	enroll_feature;		// һ������
	dsp_byte_data_t	enroll_img;			// һ��ͼ��
	dsp_byte_data_t match_feature;		// һ���ȶ�����
}dsp_algorithm_result_info_t;

// ȫ��ע�������ݽṹ
typedef struct dsp_algorithm_result_data_t		
{
	unsigned int result_count;			// �������
	unsigned int result_byte_len;		// total length of result_info in bytes
	unsigned int result_chksum;			// chksum of total result_info
	dsp_algorithm_result_info_t result_info[1];
}dsp_algorithm_result_data_t;

#else
///////////////////////////////////////////////////////
// added at 20101023������ע�����ṹ��CODE��MATCH����ṹ
// ����Ϊʹ���㷨v2��ע�����ṹ
typedef struct circle_ex_t //: public circle_t
{
	int				row;				// Բ�������У�ԭֵΪfloat
	int				col;				// Բ�������У�ԭֵΪfloat
	int				radius;				// Բ�뾶��ԭֵΪfloat
	int				visible_percent;	// ���Ӱٷֱȣ�ԭֵΪint
}circle_ex_t;

// ��λ��Ϣ
typedef struct iris_loc_t
{
	circle_ex_t		pos_pupil;			// ͫ�׵Ķ�λ��Ϣ
	circle_ex_t		pos_iris;			// ��Ĥ�Ķ�λ��Ϣ
	//The overall percentage of visible part of the annular iris region
	int overallVisiblePercent;
	//Indicator of the focus level of the iris image, ranging from 0 to 100. High value of focusScore means clear iris image and low value of focusScore means defocused iris image.
	// ������
	int focusScore; 
	//Percentage of the visible part of the iris., ranging from 0 to 100. 100 means no occlusion while 65 means 65 percent of the iris are occluded.
	// ���Գ�˵�����п�����overallVisiblePercent�õ���ͬ����ֵ
	int percentVisible;
	// Number of valid iris feature bits of the iris.
	int numValidBits;
	// Confidence of the input iris image is obtained from spoof eye. 
	// 0 means the image is obtained from genuine eye, while 100 means the image is a spoof one.
	int spoofValue; 
	// Signal to noise ratio of the iris image.
	// �����, ����.001
	int SNR;			// ԭֵΪfloat
	// Saturation level of the iris image.
	// ���Ͷȣ�С��˵�㷨��ȫû�ã����ֵû����, 
	// ����0.001
	int Saturation; 	// ԭֵΪfloat
	// Indicator of the how much the image is interlaced. Higher value indicates the iris image is heavier interlaced.
	// �˶�ģ��(������ɨ���й�ϵ)(����ɨ��Ļ���ֵ���С)
	// ����0.001
	int interlaceValue; // ԭֵΪfloat
	//Indicator of reflection occlusion within the ROI region of the iris image.
	//This parameter is obtained based on the results of iris localization.
	//Higher value indicates more reflection ratio. ranging from 0-100.
	//where 100 means all the region within the limbic circle is occluded by reflections.
	// ��ߵ�ռROI(����Ȥ����)(�������Ǻ�Ĥ���з�������)�ı���
	int  reflectionRatioInROI; 
	//Indicator of reflection occlusion within the entire iris image.
	//This parameter is obtained before iris localization.
	//Higher value indicates more reflection ratio. ranging from 0-100.
	//where 100 means all the region within the limbic circle is occluded by reflections.
	// ��ߵ�ռ����ͼ��ı���
	int  reflectionRatioInImage; 
	// The overall quality of the iris image, can be one of the following levels.
	// ��ͼ��������������
	// ö��ֵΪint32_t
	int	qualityLevel;
	//Code of iris localization method, defined as follows:
	//IR_LOC_DEFAULT: Default technique determined by CASIA_GEN algorithm.
	//IR_LOC_CIRCLE : Use circle fitting strategy to localize the iris edges.
	//IR_LOC_SNAKE  : Use edge fitting strategy (e.g. active contour) to localize the iris edges.
	int locMethod;			// ��Ϊ���������ֵ���Ϊ��ʼ�˴β���������ֵ
	//Specify whether to enable spoof eye detection
	//IR_NO_SPOOF_DETECT : Do not perform spoof eye detection
	//IR_DO_SPOOF_DETECT : Perform spoof eye detection
	int ifSpoofDetect;		// ��Ϊ���������ֵ���Ϊ��ʼ�˴β���������ֵ
}iris_loc_t;

// ��ֻ��ע�������������Ϣ
typedef struct dsp_eye_feature_t
{
	int				eye_flag;
	iris_loc_t		loc;			// ע��ģʽ�µĶ�λ��Ϣ
	dsp_byte_data_t	enroll_feature;	
	dsp_byte_data_t	enroll_img;	
	dsp_byte_data_t	match_feature; 
}dsp_eye_feature_t;

// header of all type of �������
typedef struct dsp_result_data_header_t
{
	unsigned int 	result_count;
	unsigned int 	result_byte_len;
	unsigned short	result_chksum;
	unsigned short	algorithm_version;	//���㷨����ֵ��Ϊ0
}dsp_result_data_header_t;

// ע������������
typedef struct dsp_enroll_result_t
{
	dsp_result_data_header_t	header;
	dsp_eye_feature_t			enroll_result[1];	
}dsp_enroll_result_t;

// ����Ϊv2ע������ʽ

// ����Ϊ�����㷨ʱ����ͬһ������ͼ�񣬷ֱ��ò�ͬ��workMode��ע���ʶ��
// ����LOC&CODE��õ��Ľ�����
// code�����ʽ
typedef struct iris_code_t
{
	int				mode;			// ȡֵ: workMode
	int				loc_result;		// ͼ��λ����ֵ
	int				loc_milli_sec; 	// ���ɶ�λ��Ϣ��ʱ
	iris_loc_t		loc;			// ��λ��Ϣ
	int				code_result;	// ������������ֵ
	int				code_milli_sec;	// ����������ʱ
	dsp_byte_data_t	code;			// ����
}iris_code_t;

// ����ͳ��
typedef struct code_stat_t
{
	iris_code_t enroll;			// ע������
	iris_code_t rec;			// ʶ��������
}code_stat_t;

// code test result
typedef struct code_result_t
{
	//header.result_count�������ԣ�����DSP����ֵ��1
	dsp_result_data_header_t	header;
	code_stat_t					code_stat;
}code_result_t;

// ����Ϊ�����㷨ʱ����һ������ͼ��ƥ���������
// ����ƥ����
typedef struct match_result_t
{
	//Index of matched template in the enrolled template list. 
	int feature_id;

	//Match score of each match, ranging from 0 to 1, 
	//and the higher the more confidence of the match.
	// ����: 0.001
	int matchScore;				// ԭֵΪfloat

	//Confidence level of each match, ranging from 0 to 1.
	// ����: 0.001
	int matchConfidence;		// ԭֵΪfloat

	// The rotation angle of the recognition iris image that 
	//best matching the enrolled template, 
	//ranging from [MAX_NEG_ROTATION_ANGLE, MAX_POS_ROTATION_ANGLE].
	// ����: 0.001
	int matchAng;				// ԭֵΪfloat

	// Percent of the area of valid iris image regions possible for iris matching.
	// ���ȣ�.001
	int validROIPercent;		// ԭֵΪfloat

	// Quality Level of current match, ranging from poor - excellent
	//	IR_MATCH_LEVEL_POOR     
	//	IR_MATCH_LEVEL_FAIR     
	//	IR_MATCH_LEVEL_GOOD     
	//	IR_MATCH_LEVEL_EXCELLENT
	// NOTE: currently only IR_MATCH_LEVEL_GOOD and IR_MATCH_LEVEL_EXCELLENT 
	// will be returned.
	int matchLevel;

	// Number of matched bits.
	int matchedBits;

	// The total number of valid bits involving iris matching.
	int validMatchBits;
}match_result_t;

//ƥ����
typedef struct dsp_match_result_t
{
	// header.result_count==�ܵıȶ��ϵ�ע����������
	dsp_result_data_header_t	header;
	match_result_t 				results[1];	// match_result_t����
}dsp_match_result_t;

#endif
///////////////////////////////////////////////////////
 
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

///////////////////////////////////////////////////////
// added at 20101023, for algorithm-v2 test
// ͼ�������, for CODE
typedef struct image_strategy_t
{
	//Code of iris localization method, defined as follows:
	//IR_LOC_DEFAULT: Default technique determined by CASIA_GEN algorithm.
	//IR_LOC_CIRCLE : Use circle fitting strategy to localize the iris edges.
	//IR_LOC_SNAKE  : Use edge fitting strategy (e.g. active contour) to localize the iris edges.
	int locMethod;

	//Specify whether to enable spoof eye detection
	//IR_NO_SPOOF_DETECT : Do not perform spoof eye detection
	//IR_DO_SPOOF_DETECT : Perform spoof eye detection
	int ifSpoofDetect;
}image_strategy_t;

// for MATCH
typedef struct match_option_t
{
	// findMode indicates the find mode during iris template matching. 
	//IR_FIND_MODE_EXHAUST: Do an exhaustive search and return the Best match found in the entire list.
	//IR_FIND_MODE_FIRSTMATCH: Return with the very first match once found. 
	// ƥ�䷽��
	int findMode;

	//Decision threshold that should be used in the current iris matching.
	//It can be determined by the user by calling CASIA_Gen_GetSuggestTH function,
	//but CASIA_GEN will use the default threshold when matchTh is set to IR_USE_DEAULT_MATCHTH. 
	// ��ֵ������0.001
	int matchTh;			// ԭֵΪfloat

	//Range of rotation angle (in degree) to compensate for the head rotation.
	//The angRotate should be in the range [MAX_NEG_ROTATION_ANGLE, MAX_POS_ROTATION_ANGLE]. 
	//For example, angRotate[1]=-10, angRotate[2]= 5.
	//Note when angRotate[0] > angRotate[1] CASIA_GEN will use default rotation angle setting.
	// ��ת�Ƕȣ�����: 0.001
	int angRotate[2];		// ԭֵΪfloat

	// Code of iris matching strategy.
	//IR_NONCASCADE_CLASSIFIER: do not use cascaded matching structure;
	//IR_CASCADE_CLASSIFIER: use cascaded matching structure;
	//NOTE: Current only IR_CASCADE_CLASSIFIER are supported.
	int matchStrategy;

	// match�Ķ�����һ��ͼ��ʱ���˲�����Ч��
	image_strategy_t imageStrategy;
}match_option_t;

///////////////////////////////////////////////////////

// for test, added at 20080505
// ����ͼ����Ϣ�洢��¼
// modified at 20101023, for algorithm-v2 test
// algorithm-v2 test data(image or feature) can set in left_eye
// and test param can only set in right_eye
// if right_eye has no param, then use the default test param
typedef struct dsp_img_t
{
	unsigned int tag_arm;		// ARMд��Ĵ���ͼ�����
	unsigned int tag_dsp;		// DSP��¼�Ľ���ͼ�����
	unsigned int type;			// added at 20101023
								// 0 - img_data pointed to image data. 
								// width(4 bytes)+height(4 bytes) followed with raw image data
								// 1 - img_data pointed to one feature data
								// 2 - img_data pointed to loc or match param (can only set in right_eye)
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
									// һ������ֵ����Ϊ300����ͼ�������ʾʱ��30��
	unsigned short adc_play_sound;	// 10, ���Ʒ����ļ��
									// ���ϲ�����λΪ�ɼ�2֡ͼ�񻨷ѵ�ʱ��
	unsigned short adc_nouse;	
}dsp_distance_ctrl_t;


typedef struct dsp_buildtime_t
{
	char	datetime[0x20];	// DSP�汾��������
} dsp_buildtime_t;

typedef struct switch_control_t		// added by yqhe, 20100817
{									// for some switch controls, such as CCD
    unsigned int ctrls;
} switch_control_t;

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

	dsp_testimg_t			 dsp_testimg_reg;	// ʶ�������ͼ��洢��

	dsp_distance_ctrl_t		 dsp_distance_ctrl_reg; // ���뷢�����ƴ洢��

	dsp_buildtime_t			 dsp_buildtime_reg;		// DSP����ʱ�䣬��ʼ��ʱ����

	switch_control_t		 switch_control_reg;	// added by yqhe, 20100817, switch controls

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

