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


// 一条注册结果记录数据结构
typedef struct dsp_algorithm_result_info_t		
{
	int				eye_flag;			// eye, left-1, right-2
	dsp_byte_data_t	enroll_feature;		// 一条特征
	dsp_byte_data_t	enroll_img;			// 一幅图像
	dsp_byte_data_t match_feature;		// 一条比对特征
}dsp_algorithm_result_info_t;

// 全部注册结果数据结构
typedef struct dsp_algorithm_result_data_t		
{
	unsigned int result_count;			// 结果条数
	unsigned int result_byte_len;		// total length of result_info in bytes
	dsp_algorithm_result_info_t result_info[1];
}dsp_algorithm_result_data_t;


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

// coal-safe, added at 20071211
// 比对测试进程存储器
// DSP写，ARM读
// 供ARM了解比对当前进程
typedef struct dsp_matchprogress_t
{
	unsigned int row;
	unsigned int col;
}dsp_matchprogress_t;


// for test, added at 20080505
// 传入图像信息存储记录
typedef struct dsp_img_t
{
	unsigned int tag_arm;		// ARM写入的传入图像序号
	unsigned int tag_dsp;		// DSP记录的接受图像序号
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
									// 一般此值设置为300，则图像持续显示时间30秒
	unsigned short adc_play_sound;	// 10, 控制发声的间隔
									// 以上参数单位为采集2帧图像花费的时间
	unsigned short adc_nouse;	
}dsp_distance_ctrl_t;

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

	dsp_matchprogress_t		 dsp_matchprogress_reg; // 比对进程寄存器

	dsp_testimg_t			 dsp_testimg_reg;	// 识别测试用图像存储器

	dsp_distance_ctrl_t		 dsp_distance_ctrl_reg; // 距离发声控制存储器

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
