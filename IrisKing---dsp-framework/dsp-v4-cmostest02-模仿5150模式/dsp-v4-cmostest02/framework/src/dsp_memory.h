#if !defined(__DSP_MEMORY_H__)
#define __DSP_MEMORY_H__

// memory scheme
#include "dsp_typedef.h"

#define EXCHANGE_MEM			0x2fd00	// the begin addr of exchanged data
										// can be used 0x400~0x500
                                        // these data are used to exchange info between ARM and DSP
                                        // dsp_tsk_totalreg_t
										// 0x500~0x600 for other use

#define DSP_SDRAM_BASE_ADDR				0x8012c020 //0x80140000
#define DSP_SDRAM_ALLOC_LEN				0x01f00000	// 测试时，使用0x00e00000, 最小用0x00b80000
#define DSP_SDRAM_TOTAL_LEN				0x04000000
#define DSP_SDRAM_TOP_ADDR				0x84000000

// 注册特征时占用的空间
#define FEATURE_ENROLL_LEFT		(DSP_SDRAM_BASE_ADDR + DSP_SDRAM_ALLOC_LEN)
#define FEATURE_ENROLL_RIGHT	(FEATURE_ENROLL_LEFT + IR_EnrollFeatureLen)	// +0xc00
// 比对特征占用的空间
#define FEATURE_MATCH_LEFT		(FEATURE_ENROLL_RIGHT+ IR_EnrollFeatureLen)	// +0xc00
#define FEATURE_MATCH_RIGHT		(FEATURE_MATCH_LEFT  + IR_RotateFeatureLen)	// +0xec4

#define LOCIMG_ADDR				(FEATURE_MATCH_RIGHT+IR_RotateFeatureLen)


// 注册图像在TSK_image中放在图像可用的最后的位置
// bmp file head total length
#define BMP_TOTALHEAD_LEN			(4 + sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER) + RGBQUAD_NUM*sizeof(RGBQUAD))
/*
#define ENROLL_RESULT_TOTAL_LEN		(0x4b40c + BMP_TOTALHEAD_LEN + 4)	// (4+(4+1024)+(4+bmphead+0x4b000))=0x4b40c + bmphead
																		// add match feature data_len (4)

#define ENROLL_RESULT_MAX_LEN		(ENROLL_RESULT_TOTAL_LEN + IR_RotateFeatureLength)
*/

#define ICON_MAX_COUNT				4		// 最多可保存图标数量
#define ICON_TMP_SIZE				0x8000	// 一幅图标最大可占内存大小

extern LgUns ENROLL_RESULT_ADDR;			// enroll result start address
extern LgUns ENROLL_LEFT_STRUCT_ADDR1;		// first left enroll result (if has)
extern LgUns ENROLL_RIGHT_STRUCT_ADDR1;		// first right enroll result (if has)

extern LgUns ENROLL_RESULT_TOTAL_LEN;		// single enroll result size without rec_feature
extern LgUns ENROLL_RESULT_MAX_LEN;			// single enroll result size with rec_feature

extern LgUns ENROLL_FEATURE_STRUCT_OFFSET;	// 注册特征结构的起始偏移，在dsp_eye_feature_t中enroll_feature的偏移
extern LgUns ENROLL_FEATURE_DATA_OFFSET;	// 注册特征数据的起始偏移，在dsp_eye_feature_t中enroll_feature.data_byte的偏移
extern LgUns ENROLL_IMAGE_STRUCT_OFFSET;	// 注册图像结构的起始偏移，在dsp_eye_feature_t中enroll_img的偏移
extern LgUns ENROLL_BMPHEAD_DATA_OFFSET;	// 注册图像BMP头的起始偏移
extern LgUns ENROLL_IMAGE_DATA_OFFSET;		// 注册图像数据的起始偏移

extern LgUns IMG_ICON_START_ADDR;			// 图标保存起始位置
extern LgUns IMG_ICON_MASK_START_ADDR;		// 图标掩码保存起始位置

extern LgUns IMG_FEATURE_COUNT;			// every eye enrolled feature max count
extern LgUns IMG_FEATURE_STRUCT_TOTALSIZE;
extern LgUns IMG_FEATURE_LEFT_STRUCT_ADDR;	// left eye enrolled feature struct start address
extern LgUns IMG_FEATURE_LEFT_ADDR;		// left eye enrolled feature data start address
extern LgUns IMG_FEATURE_RIGHT_STRUCT_ADDR;// right eye enrolled feature struct start address
extern LgUns IMG_FEATURE_RIGHT_ADDR;		// right eye enrolled feature data start address

extern unsigned char*  img_ptr_l;
extern unsigned char*  img_ptr_r;

#endif //!__DSP_MEMEORY_H__

