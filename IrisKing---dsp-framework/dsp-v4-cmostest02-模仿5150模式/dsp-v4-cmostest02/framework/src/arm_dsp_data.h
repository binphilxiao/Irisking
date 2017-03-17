#if !defined(__DSP_DATA_H__)
#define __DSP_DATA_H__

#include <QUE.h>

// 基本数据结构
// 指针数据结构
typedef struct dsp_tsk_memory_t
{
	unsigned int dataptr_len;	// 可用存储区长度in byte
	void 	*data_ptr; 			// 可用指针
}dsp_tsk_memory_t;

// 字节型数据结构
typedef struct dsp_byte_data_t		
{
	unsigned int 	data_len;	// 数据长度 in byte
	unsigned char   *data_byte;	// 数据
}dsp_byte_data_t;

// 以下为使用算法v1的注册结果结构
// added at 20090317
// 1、每条注册结果中，增加瞳孔和虹膜的定位信息
// 2、增加对所有的结果数据的chksum，供ARM判断
typedef struct circle_t			// 圆形定位数据
{
	int				row;		// 圆心所在行
	int				col;		// 圆心所在列
	int				radius;		// 圆半径
}circle_t;

#ifdef ALG_V1
// 一条注册结果记录数据结构
typedef struct dsp_algorithm_result_info_t		
{
	int				eye_flag;			// eye, left-1, right-2
	circle_t		pos_pupil;			// 瞳孔定位信息
	circle_t		pos_iris;			// 虹膜定位信息
	dsp_byte_data_t	enroll_feature;		// 一条特征
	dsp_byte_data_t	enroll_img;			// 一幅图像
	dsp_byte_data_t match_feature;		// 一条比对特征
}dsp_algorithm_result_info_t;

// 全部注册结果数据结构
typedef struct dsp_algorithm_result_data_t		
{
	unsigned int result_count;			// 结果条数
	unsigned int result_byte_len;		// total length of result_info in bytes
	unsigned int result_chksum;			// chksum of total result_info
	dsp_algorithm_result_info_t result_info[1];
}dsp_algorithm_result_data_t;

#else
///////////////////////////////////////////////////////
// added at 20101023，包括注册结果结构、CODE、MATCH结果结构
// 以下为使用算法v2的注册结果结构
typedef struct circle_ex_t //: public circle_t
{
	int				row;				// 圆心所在行，原值为float
	int				col;				// 圆心所在列，原值为float
	int				radius;				// 圆半径，原值为float
	int				visible_percent;	// 可视百分比，原值为int
}circle_ex_t;

// 定位信息
typedef struct iris_loc_t
{
	circle_ex_t		pos_pupil;			// 瞳孔的定位信息
	circle_ex_t		pos_iris;			// 虹膜的定位信息
	//The overall percentage of visible part of the annular iris region
	int overallVisiblePercent;
	//Indicator of the focus level of the iris image, ranging from 0 to 100. High value of focusScore means clear iris image and low value of focusScore means defocused iris image.
	// 清晰度
	int focusScore; 
	//Percentage of the visible part of the iris., ranging from 0 to 100. 100 means no occlusion while 65 means 65 percent of the iris are occluded.
	// 邱显超说：很有可能与overallVisiblePercent用的是同样的值
	int percentVisible;
	// Number of valid iris feature bits of the iris.
	int numValidBits;
	// Confidence of the input iris image is obtained from spoof eye. 
	// 0 means the image is obtained from genuine eye, while 100 means the image is a spoof one.
	int spoofValue; 
	// Signal to noise ratio of the iris image.
	// 信噪比, 精度.001
	int SNR;			// 原值为float
	// Saturation level of the iris image.
	// 饱和度，小邱说算法完全没用，这个值没意义, 
	// 精度0.001
	int Saturation; 	// 原值为float
	// Indicator of the how much the image is interlaced. Higher value indicates the iris image is heavier interlaced.
	// 运动模糊(跟隔行扫描有关系)(逐行扫描的话，值会很小)
	// 精度0.001
	int interlaceValue; // 原值为float
	//Indicator of reflection occlusion within the ROI region of the iris image.
	//This parameter is obtained based on the results of iris localization.
	//Higher value indicates more reflection ratio. ranging from 0-100.
	//where 100 means all the region within the limbic circle is occluded by reflections.
	// 光斑点占ROI(感兴趣区域)(基本上是虹膜外切方形区域)的比例
	int  reflectionRatioInROI; 
	//Indicator of reflection occlusion within the entire iris image.
	//This parameter is obtained before iris localization.
	//Higher value indicates more reflection ratio. ranging from 0-100.
	//where 100 means all the region within the limbic circle is occluded by reflections.
	// 光斑点占整个图像的比例
	int  reflectionRatioInImage; 
	// The overall quality of the iris image, can be one of the following levels.
	// 对图像质量的总评价
	// 枚举值为int32_t
	int	qualityLevel;
	//Code of iris localization method, defined as follows:
	//IR_LOC_DEFAULT: Default technique determined by CASIA_GEN algorithm.
	//IR_LOC_CIRCLE : Use circle fitting strategy to localize the iris edges.
	//IR_LOC_SNAKE  : Use edge fitting strategy (e.g. active contour) to localize the iris edges.
	int locMethod;			// 作为结果，将此值填充为开始此次操作的设置值
	//Specify whether to enable spoof eye detection
	//IR_NO_SPOOF_DETECT : Do not perform spoof eye detection
	//IR_DO_SPOOF_DETECT : Perform spoof eye detection
	int ifSpoofDetect;		// 作为结果，将此值填充为开始此次操作的设置值
}iris_loc_t;

// 单只眼注册特征及相关信息
typedef struct dsp_eye_feature_t
{
	int				eye_flag;
	iris_loc_t		loc;			// 注册模式下的定位信息
	dsp_byte_data_t	enroll_feature;	
	dsp_byte_data_t	enroll_img;	
	dsp_byte_data_t	match_feature; 
}dsp_eye_feature_t;

// header of all type of 结果数据
typedef struct dsp_result_data_header_t
{
	unsigned int 	result_count;
	unsigned int 	result_byte_len;
	unsigned short	result_chksum;
	unsigned short	algorithm_version;	//老算法，此值恒为0
}dsp_result_data_header_t;

// 注册结果所有数据
typedef struct dsp_enroll_result_t
{
	dsp_result_data_header_t	header;
	dsp_eye_feature_t			enroll_result[1];	
}dsp_enroll_result_t;

// 以上为v2注册结果格式

// 以下为测试算法时，对同一幅输入图像，分别用不同的workMode（注册或识别）
// 调用LOC&CODE后得到的结果输出
// code结果格式
typedef struct iris_code_t
{
	int				mode;			// 取值: workMode
	int				loc_result;		// 图像定位返回值
	int				loc_milli_sec; 	// 生成定位信息耗时
	iris_loc_t		loc;			// 定位信息
	int				code_result;	// 生成特征返回值
	int				code_milli_sec;	// 生成特征用时
	dsp_byte_data_t	code;			// 特征
}iris_code_t;

// 特征统计
typedef struct code_stat_t
{
	iris_code_t enroll;			// 注册特征
	iris_code_t rec;			// 识别用特征
}code_stat_t;

// code test result
typedef struct code_result_t
{
	//header.result_count将被忽略，建议DSP将此值置1
	dsp_result_data_header_t	header;
	code_stat_t					code_stat;
}code_result_t;

// 以下为测试算法时，对一幅输入图像匹配的输出结果
// 单条匹配结果
typedef struct match_result_t
{
	//Index of matched template in the enrolled template list. 
	int feature_id;

	//Match score of each match, ranging from 0 to 1, 
	//and the higher the more confidence of the match.
	// 精度: 0.001
	int matchScore;				// 原值为float

	//Confidence level of each match, ranging from 0 to 1.
	// 精度: 0.001
	int matchConfidence;		// 原值为float

	// The rotation angle of the recognition iris image that 
	//best matching the enrolled template, 
	//ranging from [MAX_NEG_ROTATION_ANGLE, MAX_POS_ROTATION_ANGLE].
	// 精度: 0.001
	int matchAng;				// 原值为float

	// Percent of the area of valid iris image regions possible for iris matching.
	// 精度：.001
	int validROIPercent;		// 原值为float

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

//匹配结果
typedef struct dsp_match_result_t
{
	// header.result_count==总的比对上的注册特征个数
	dsp_result_data_header_t	header;
	match_result_t 				results[1];	// match_result_t数组
}dsp_match_result_t;

#endif
///////////////////////////////////////////////////////
 
#define DEVICE_PARAMCOUNT           20

// 控制存储器
// ARM写，DSP只读
// 长度0x0c，起始地址0x010
typedef struct dsp_tsk_control_t
{
	unsigned short tsk_img_control;	// TSK_image执行形式，目前无用
	unsigned short tsk_img_control_count;
	unsigned short tsk_alg_control;	// TSK_algorith执行形式
	unsigned short tsk_alg_control_count;
	unsigned int tsk_adc_value;		// 红外测距模块测得的距离值，cm为单位
}dsp_tsk_control_t;

// 策略存储器，识别或注册均有
// ARM写，DSP只读
// 长度0x0c，起始地址0x01c
// modified by yqhe, 20080320
// 增加策略的设置内容
// iden_mode and data_type
typedef struct dsp_tsk_policy_t
{
	unsigned short policy_control;	// 策略	
	unsigned short try_count;		// 注册图像数，或识别次数
	unsigned short iden_mode;		// 本地识别or集群识别
	unsigned short data_type;		// 发送何种数据到集群服务器用于比对
	unsigned int policy_flag;		// 无效，注册有效，识别有效
}dsp_tsk_policy_t;

// 回应存储器
// ARM只读，DSP写
// 长度0x18，起始地址0x028
typedef struct dsp_tsk_flag_t
{
	unsigned int tsk_img_resp;		// 对TSK_image控制的回应，目前是距离判断值，可供ARM参考
									// 20080415拆分tsk_alg_resp
	unsigned short tsk_alg_status;	// 当前状态，与以前的tsk_alg_resp完全一致
	unsigned short tsk_alg_status_count;
	unsigned short req_tsk_alg_control; // 响应控制的状态，如果响应了ARM的控制，则与ARM控制值完全一致
	unsigned short req_tsk_alg_control_count; 	
	dsp_tsk_memory_t left_data;		// 对特征或ID更新回应，左、右眼分别对应的地址
	dsp_tsk_memory_t right_data;
}dsp_tsk_flag_t;

// 结果存储器
// ARM只读，DSP写
// 长度0x20，起始地址0x040
typedef struct dsp_algorithm_result_t
{
		unsigned int  result_type;	// 结果类型
		dsp_tsk_policy_t policy;	// 应用策略
		unsigned int  feature_tag;
		int			  left_result;	// 
		int			  right_result;
		void* 		  result_data;
}dsp_algorithm_result_t;

// 发声存储器
// ARM只读，DSP写
// 长度0x08，起始地址0x060
typedef struct dsp_algorithm_sound_t		 
{
	unsigned int sound_value;
	unsigned int sound_count;	
}dsp_algorithm_sound_t;


// 存储设备相关信息，如距离远近，灯的位置等
// 算法可能会使用到这些信息
// 照明灯的位置DSP写入
// 距离值DSP写入

// 设备参数存储器
// 长度0x54，起始地址0x068
typedef struct dsp_algorithm_devparam_t

{
	unsigned int param_count;
	int 		 device_param[DEVICE_PARAMCOUNT];
}dsp_algorithm_devparam_t;

// 看门狗存储器
// ARM只读，DSP写
// 长度0x08，起始地址0x0bc
typedef struct dsp_tsk_watchdog_t
{
	unsigned int tsk_img_watchdog;
	unsigned int tsk_alg_watchdog;		
}dsp_tsk_watchdog_t;

// 图标显示控制存储器
typedef struct dsp_icon_t
{
	unsigned int   req_icon_control;
	unsigned int   req_icon_id;
	unsigned int   dsp_icon_state;
	dsp_tsk_memory_t icon_data;	//data.ptr指向的空间为dsp_bmp_t数组
}dsp_icon_t;

typedef struct dsp_mac_t
{
	unsigned char	mac_val[8];	// 设置为四字节对齐的格式
} dsp_mac_t;

// 为测试时随时可取采集图像添加
// DSP初始化时，将此参数设置为非0
// ARM需要图像时设置对应眼睛值为0
// DSP测试到值为0，则COPY当前采集图像到指定位置
// 并把指定位置的地址写回参数中
typedef struct dsp_copyimg_t
{
	dsp_tsk_memory_t* left_param;
	dsp_tsk_memory_t* right_param;
}dsp_copyimg_t;

///////////////////////////////////////////////////////
// added at 20101023, for algorithm-v2 test
// 图像处理策略, for CODE
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
	// 匹配方法
	int findMode;

	//Decision threshold that should be used in the current iris matching.
	//It can be determined by the user by calling CASIA_Gen_GetSuggestTH function,
	//but CASIA_GEN will use the default threshold when matchTh is set to IR_USE_DEAULT_MATCHTH. 
	// 阈值：精度0.001
	int matchTh;			// 原值为float

	//Range of rotation angle (in degree) to compensate for the head rotation.
	//The angRotate should be in the range [MAX_NEG_ROTATION_ANGLE, MAX_POS_ROTATION_ANGLE]. 
	//For example, angRotate[1]=-10, angRotate[2]= 5.
	//Note when angRotate[0] > angRotate[1] CASIA_GEN will use default rotation angle setting.
	// 旋转角度，精度: 0.001
	int angRotate[2];		// 原值为float

	// Code of iris matching strategy.
	//IR_NONCASCADE_CLASSIFIER: do not use cascaded matching structure;
	//IR_CASCADE_CLASSIFIER: use cascaded matching structure;
	//NOTE: Current only IR_CASCADE_CLASSIFIER are supported.
	int matchStrategy;

	// match的对像是一幅图像时，此策略有效。
	image_strategy_t imageStrategy;
}match_option_t;

///////////////////////////////////////////////////////

// for test, added at 20080505
// 传入图像信息存储记录
// modified at 20101023, for algorithm-v2 test
// algorithm-v2 test data(image or feature) can set in left_eye
// and test param can only set in right_eye
// if right_eye has no param, then use the default test param
typedef struct dsp_img_t
{
	unsigned int tag_arm;		// ARM写入的传入图像序号
	unsigned int tag_dsp;		// DSP记录的接受图像序号
	unsigned int type;			// added at 20101023
								// 0 - img_data pointed to image data. 
								// width(4 bytes)+height(4 bytes) followed with raw image data
								// 1 - img_data pointed to one feature data
								// 2 - img_data pointed to loc or match param (can only set in right_eye)
	dsp_tsk_memory_t img_data;	// 传入图像大小及存储空间地址
}dsp_img_t;


// 识别测试传入图像存储器
typedef struct dsp_testimg_t
{
	dsp_img_t left_eye;			// left eye image info
	dsp_img_t right_eye;		// right eye image info
}dsp_testimg_t;


// arm control the distance
// added at 20080606
// 距离发声控制存储器
// dsp init this reg and then ARM write, dsp read
typedef struct dsp_distance_ctrl_t 
{									// 原来的设置值
	unsigned short adc_noperson;	// 40
	unsigned short adc_toofar;		// 28
	unsigned short adc_ok;			// 23
	unsigned short adc_tooclose;	// 0
									// 以上参数单位为cm	
	unsigned short adc_smooth;		// 5, 消除距离测试毛刺
	unsigned short adc_noperson_disp; // 50, 发现设备前无人后，持续显示图像的控制，
									// 一般若此值设置为300，则图像持续显示时间30秒
	unsigned short adc_play_sound;	// 10, 控制发声的间隔
									// 以上参数单位为采集2帧图像花费的时间
	unsigned short adc_nouse;	
}dsp_distance_ctrl_t;


typedef struct dsp_buildtime_t
{
	char	datetime[0x20];	// DSP版本编译日期
} dsp_buildtime_t;

typedef struct switch_control_t		// added by yqhe, 20100817
{									// for some switch controls, such as CCD
    unsigned int ctrls;
} switch_control_t;

// 片内存储区域中，ARM与DSP数据交互使用的存储器
typedef struct dsp_tsk_totalreg_t
{
	dsp_tsk_control_t	tsk_control_reg;		// 控制存储器，长度0x0c，起始地址0x010
	        									// ARM写，DSP只读

	dsp_tsk_policy_t	tsk_policy_reg;			// 策略存储器，长度0x08，起始地址0x01c
												// ARM写，DSP只读


	dsp_tsk_flag_t		tsk_flag_reg;			// 回应存储器，长度0x18，起始地址0x024
												// ARM只读，DSP写

	dsp_algorithm_result_t   alg_result_reg;	// 结果存储器，长度0x20，起始地址0x03c
												// ARM只读，DSP写


	dsp_algorithm_sound_t    alg_sound_reg;		// 发声控制存储器，长度0x08，起始地址0x05c
												// ARM只读，DSP写

	dsp_algorithm_devparam_t alg_devparam_reg;	// 设备参数存储器，长度0x54，起始地址0x064

    dsp_tsk_watchdog_t		 tsk_watchdog_reg;  // 看门狗，累加

	dsp_icon_t				 img_icon_reg;		// 图标显示

	dsp_mac_t				 dsp_mac_reg;		// MAC 寄存器

	dsp_copyimg_t			 dsp_copyimg_reg;	// 图像COPY寄存器

	dsp_testimg_t			 dsp_testimg_reg;	// 识别测试用图像存储器

	dsp_distance_ctrl_t		 dsp_distance_ctrl_reg; // 距离发声控制存储器

	dsp_buildtime_t			 dsp_buildtime_reg;		// DSP编译时间，初始化时设置

	switch_control_t		 switch_control_reg;	// added by yqhe, 20100817, switch controls

}dsp_tsk_totalreg_t;


// 识别特征列表数据结构
typedef struct dsp_algorithm_iden_feature_t
{
	unsigned int single_feature_len;
	unsigned int feature_tag;
	dsp_byte_data_t	iden_feature_data;
}dsp_algorithm_iden_feature_t;


// 图标存储数据结构
// 此结构的大小必须为8的整数倍，mask后面可能会存在一些无用字节。
typedef struct dsp_bmp_t
{
	int				width;				// 图像的宽度(像素)，必须为8的倍数
	int 			height;				// 图像的高度(像素)
}dsp_bmp_t;	


#endif //!__DSP_DATA_H__

