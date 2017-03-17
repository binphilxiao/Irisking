#if !defined(__DSP_MEMORY_H__)
#define __DSP_MEMORY_H__

// memory scheme
#include "dsp_typedef.h"

#define EXCHANGE_MEM			0x2fd00	// the begin addr of exchanged data
										// can be used 0x400~0x500
                                        // these data are used to exchange info between ARM and DSP
                                        // dsp_tsk_totalreg_t
										// 0x500~0x600 for other use

#define DSP_SDRAM_BASE_ADDR				0x80140000
#define DSP_SDRAM_ALLOC_LEN				0x00b80000	// 测试时，使用0x00e00000, 最小用0x00b80000
#define DSP_SDRAM_TOTAL_LEN				0x04000000
#define DSP_SDRAM_TOP_ADDR				(DSP_SDRAM_BASE_ADDR+DSP_SDRAM_TOTAL_LEN)

// 注册特征时占用的空间
#define FEATURE_ENROLL_LEFT		(DSP_SDRAM_BASE_ADDR + DSP_SDRAM_ALLOC_LEN)
#define FEATURE_ENROLL_RIGHT	(FEATURE_ENROLL_LEFT + IR_EnrollFeatureLen)	// +0xc00
// 比对特征占用的空间
#define FEATURE_MATCH_LEFT		(FEATURE_ENROLL_RIGHT+ IR_EnrollFeatureLen)	// +0xc00
#define FEATURE_MATCH_RIGHT		(FEATURE_MATCH_LEFT  + IR_RotateFeatureLen)	// +0xec4

// 注册图像在TSK_image中放在图像可用的最后的位置
// bmp file head total length
#define BMP_TOTALHEAD_LEN			(4 + sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER) + RGBQUAD_NUM*sizeof(RGBQUAD))

#define ENROLL_RESULT_TOTAL_LEN		(0x4b40c + BMP_TOTALHEAD_LEN + 4)	// (4+(4+1024)+(4+bmphead+0x4b000))=0x4b40c + bmphead
																		// add match feature data_len (4)

#define ENROLL_RESULT_MAX_LEN		(ENROLL_RESULT_TOTAL_LEN + IR_RotateFeatureLength)

/*
// image imgdata offset
#define ENROLL_RESULT_INFO_LEN		0x40c	// (4+(4+1024)+(4))
// image struct offset
// hcj. should be (ENROLL_RESULT_INFO_LEN - 4) = 0x408
#define ENROLL_RESULT_ENROLL_POS	0x408
*/

// address of struct dsp_algorithm_result_data_t
#define ENROLL_RESULT_ADDR			(FEATURE_MATCH_RIGHT+IR_RotateFeatureLen)

// address of struct dsp_algorithm_result_info_t, first enroll result
#define ENROLL_LEFT_STRUCT_ADDR1	(ENROLL_RESULT_ADDR + 8) // 8 = sizeof(result_count) + sizeof(result_byte_len)
#define ENROLL_RIGHT_STRUCT_ADDR1	(ENROLL_LEFT_STRUCT_ADDR1 + ENROLL_RESULT_MAX_LEN*MAXCOPY_ENROLLTIME)

// offset of struct dsp_byte_data_t of feature
#define ENROLL_FEATURE_STRUCT_OFFSET 4 // 4 = sizeof(eye_flag)

// offset of struct dsp_byte_data_t of image
#define ENROLL_IMAGE_STRUCT_OFFSET   0x408 // 0x408 = 8 + IR_FeatureLength

// enroll feature data offset
// addr = ENROLL_LEFT_STRUCT_ADDR1+ENROLL_FEATURE_DATA_OFFSET
#define ENROLL_FEATURE_DATA_OFFSET	8	// 8 = sizeof(eye_flag) + sizeof(data_len)

// addr = ENROLL_LEFT_STRUCT_ADDR1+ENROLL_BMPHEAD_DATA_OFFSET
#define ENROLL_BMPHEAD_DATA_OFFSET  0x40c // (ENROLL_FEATURE_DATA_OFFSET+IR_FeatureLength+4) // 4 = sizeof(data_len) 2 = bfType

#define ENROLL_IMAGE_DATA_OFFSET	(ENROLL_BMPHEAD_DATA_OFFSET+BMP_TOTALHEAD_LEN-2)

// 
#define IMG_FEATURE_COUNT				20000		// max every eye 23932
#define IMG_FEATURE_STRUCT_TOTALSIZE	(0x0c+IMG_FEATURE_COUNT*IR_FeatureLength)

// 0x0c = single_feature_len + feature_tag + dsp_byte_data_t.data_len

// 0x81490000 // 812AD800+(0x4b40c*6) = + 0x1C3848 = 0x81481048
#define IMG_FEATURE_LEFT_STRUCT_ADDR	(ENROLL_RESULT_ADDR + ENROLL_RESULT_MAX_LEN*6 + 8) 
#define IMG_FEATURE_LEFT_ADDR			(IMG_FEATURE_LEFT_STRUCT_ADDR+0x0c)

#define IMG_FEATURE_RIGHT_STRUCT_ADDR	(IMG_FEATURE_LEFT_ADDR+IMG_FEATURE_COUNT*IR_FeatureLength)
#define IMG_FEATURE_RIGHT_ADDR  		(IMG_FEATURE_RIGHT_STRUCT_ADDR+0x0c)

#define IMG_FEATUREID_LEFT_STRUCT_ADDR	(IMG_FEATURE_RIGHT_ADDR+IMG_FEATURE_COUNT*IR_FeatureLength)
#define IMG_FEATUREID_LEFT_ADDR			(IMG_FEATUREID_LEFT_STRUCT_ADDR+0x08)

#define IMG_FEATUREID_RIGHT_STRUCT_ADDR (IMG_FEATUREID_LEFT_ADDR+IMG_FEATURE_COUNT*sizeof(int))
#define IMG_FEATUREID_RIGHT_ADDR		(IMG_FEATUREID_RIGHT_STRUCT_ADDR+0x08)

#define IMG_ICON_START_ADDR				(IMG_FEATUREID_RIGHT_ADDR+IMG_FEATURE_COUNT*sizeof(int))

#define ICON_TMP_SIZE					0x8000
#define IMG_ICON_MASK_START_ADDR		(IMG_ICON_START_ADDR+ICON_TMP_SIZE*4)

// coal-safe, added at 20071211
// 比对时，传入图像可占用最大空间
#define BMP_MAX_LEN						(0xC0000 + BMP_TOTALHEAD_LEN)	// 1024*768
// 最多比对图像数目
#define BMP_MAX_COUNT					5000

// 注册1024字节特征的起始地址
#define BMP_ENROLL_FEATURE_ADDR			(DSP_SDRAM_BASE_ADDR+DSP_SDRAM_ALLOC_LEN)
// 注册1260字节特征的起始地址
#define BMP_ROTATE_FEATUER_ADDR			(BMP_ENROLL_FEATURE_ADDR + BMP_MAX_COUNT*IR_FeatureLength)
// 比对结果起始地址
#define BMP_MATCH_RESULT_ADDR			(BMP_ROTATE_FEATUER_ADDR + BMP_MAX_COUNT*IR_RotateFeatureLength)
// 传入图像起始地址（与比对结果一致）
#define BMP_INPUT_IMAGE_ADDR			BMP_MATCH_RESULT_ADDR

#endif //!__DSP_MEMEORY_H__

