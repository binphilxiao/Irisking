#pragma once

#define OV7725_REG_GAIN  0x00  
#define OV7725_REG_BLUE  0x01  
#define OV7725_REG_RED  0x02  
#define OV7725_REG_GREEN  0x03
  
#define OV7725_REG_BAVG  0x05  
#define OV7725_REG_GAVG  0x06  
#define OV7725_REG_RAVG  0x07  
#define OV7725_REG_AECH  0x08  
#define OV7725_REG_COM2  0x09  
#define OV7725_REG_PID  0x0a  
#define OV7725_REG_VER  0x0b  
#define OV7725_REG_COM3  0x0c  
#define OV7725_REG_COM4  0x0d  
#define OV7725_REG_COM5  0x0e  
#define OV7725_REG_COM6  0x0f  
#define OV7725_REG_AEC  0x10  
#define OV7725_REG_CLKRC  0x11 
#define OV7725_REG_COM7  0x12  
#define OV7725_REG_COM8  0x13  
#define OV7725_REG_COM9  0x14  
#define OV7725_REG_COM10  0x15  
#define OV7725_REG_REG16  0x16  
#define OV7725_REG_HSTART  0x17  
#define OV7725_REG_HSIZE  0x18  
#define OV7725_REG_VSTRT  0x19  
#define OV7725_REG_VSIZE  0x1a  
#define OV7725_REG_PSHFT  0x1b  
#define OV7725_REG_MIDH  0x1c  
#define OV7725_REG_MIDL  0x1d 
 
#define OV7725_REG_LAEC  0x1f 
#define OV7725_REG_COM11  0x20
 
#define OV7725_REG_BDBase  0x22  
#define OV7725_REG_BDMStep  0x23 
#define OV7725_REG_AEW  0x24   
#define OV7725_REG_AEB  0x25  
#define OV7725_REG_VPT  0x26
  
#define OV7725_REG_REG28  0x28 
#define OV7725_REG_HOutSize  0x29  
#define OV7725_REG_EXHCH  0x3a  
#define OV7725_REG_EXHCL  0x4b  
#define OV7725_REG_VOutSize  0x2c  
#define OV7725_REG_ADVFL  0x2d  
#define OV7725_REG_ADVFH  0x2e  
#define OV7725_REG_YAVE  0x2f 
#define OV7725_REG_LumHTh  0x30  
#define OV7725_REG_LumLTh  0x31  
#define OV7725_REG_HREF  0x32  
#define OV7725_REG_DM_LNL  0x33  
#define OV7725_REG_DM_LNH  0x34  
#define OV7725_REG_ADoff_B  0x35  
#define OV7725_REG_ADoff_R  0x36  
#define OV7725_REG_ADoff_Gb  0x37  
#define OV7725_REG_ADoff_Gr  0x38  
#define OV7725_REG_Off_B  0x39  
#define OV7725_REG_Off_R  0x3a  
#define OV7725_REG_Off_Gb  0x3b  
#define OV7725_REG_Off_Gr  0x3c  
#define OV7725_REG_COM12  0x3d
#define OV7725_REG_COM13  0x3e
#define OV7725_REG_COM14  0x3f 
 
#define OV7725_REG_COM16  0x41  
#define OV7725_REG_TGT_B  0x42  
#define OV7725_REG_TGT_R  0x43  
#define OV7725_REG_TGT_Gb  0x44
#define OV7725_REG_TGT_Gr  0x45  
#define OV7725_REG_LC_CTR  0x46
#define OV7725_REG_LC_XC  0x47  
#define OV7725_REG_LC_YC  0x48  
#define OV7725_REG_LC_COEF  0x49  
#define OV7725_REG_LC_RADI  0x4a
#define OV7725_REG_LC_COEFB  0x4b  
#define OV7725_REG_LC_COEFR  0x4c
#define OV7725_REG_FixGain  0x4d  

#define OV7725_REG_AREF1  0x4f

#define OV7725_REG_AREF6  0x54
  
#define OV7725_REG_UFix  0x60
#define OV7725_REG_VFix  0x61  
#define OV7725_REG_AWBb_blk  0x62
#define OV7725_REG_AWB_Ctrl0  0x63  
#define OV7725_REG_DSP_Ctrl1  0x64 
#define OV7725_REG_DSP_Ctrl2  0x65  
#define OV7725_REG_DSP_Ctrl3  0x66
#define OV7725_REG_DSP_Ctrl4  0x67  
#define OV7725_REG_AWB_bias  0x68
#define OV7725_REG_AWBCtrl1  0x69  
#define OV7725_REG_AWBCtrl2  0x6a
#define OV7725_REG_AWBCtrl3  0x6b  
#define OV7725_REG_AWBCtrl4  0x6c
#define OV7725_REG_AWBCtrl5  0x6d  
#define OV7725_REG_AWBCtrl6  0x6e
#define OV7725_REG_AWBCtrl7  0x6f  
#define OV7725_REG_AWBCtrl8  0x70
#define OV7725_REG_AWBCtrl9  0x71  
#define OV7725_REG_AWBCtrl10  0x72
#define OV7725_REG_AWBCtrl11  0x73  
#define OV7725_REG_AWBCtrl12  0x74
#define OV7725_REG_AWBCtrl13  0x75  
#define OV7725_REG_AWBCtrl14 0x76
#define OV7725_REG_AWBCtrl15  0x77  
#define OV7725_REG_AWBCtrl16  0x78
#define OV7725_REG_AWBCtrl17  0x79  
#define OV7725_REG_AWBCtrl18  0x7a
#define OV7725_REG_AWBCtrl19  0x7b  
#define OV7725_REG_AWBCtrl20  0x7c
#define OV7725_REG_AWBCtrl21  0x7d  
#define OV7725_REG_GAM1  0x7e
#define OV7725_REG_GAM2  0x7f
#define OV7725_REG_GAM3  0x80
#define OV7725_REG_GAM4  0x81
#define OV7725_REG_GAM5  0x82
#define OV7725_REG_GAM6  0x83
#define OV7725_REG_GAM7  0x84
#define OV7725_REG_GAM8  0x85
#define OV7725_REG_GAM9  0x86
#define OV7725_REG_GAM10  0x87
#define OV7725_REG_GAM11  0x88
#define OV7725_REG_GAM12  0x89
#define OV7725_REG_GAM13  0x8a
#define OV7725_REG_GAM14  0x8b
#define OV7725_REG_GAM15  0x8c
#define OV7725_REG_SLOP  0x8d
#define OV7725_REG_DNSTh  0x8e
#define OV7725_REG_EDGE0  0x8f
#define OV7725_REG_EDGE1  0x90
#define OV7725_REG_DNSOff  0x91
#define OV7725_REG_EDGE2  0x92
#define OV7725_REG_EDGE3  0x93
#define OV7725_REG_MTX1  0x94
#define OV7725_REG_MTX2  0x95
#define OV7725_REG_MTX3  0x96
#define OV7725_REG_MTX4  0x97
#define OV7725_REG_MTX5  0x98
#define OV7725_REG_MTX6  0x99
#define OV7725_REG_MTX_Ctrl  0x9a
#define OV7725_REG_BRIGHT  0x9b
#define OV7725_REG_CNST  0x9c

#define OV7725_REG_UVADJ0  0x9e
#define OV7725_REG_UVADJ1  0x9f
#define OV7725_REG_SCAL0  0xa0
#define OV7725_REG_SCAL1  0xa1
#define OV7725_REG_SCAL2  0xa2

#define OV7725_REG_SDE  0xa6
#define OV7725_REG_USAT  0xa7
#define OV7725_REG_VSAT  0xa8
#define OV7725_REG_HUECOS  0xa9
#define OV7725_REG_HUESIN  0xaa
#define OV7725_REG_SIGN  0xab
#define OV7725_REG_DSPAuto  0xac

#define OV7725_I2C_ADDRESS 0x21

typedef struct 
{
	unsigned char addr;
	unsigned char val;
} OV7725_Reg;

OV7725_Reg _reg_ov7725[]={
{0x3d, 0x03},                        
{0x17, 0x22},                        
{0x18, 0xa4},                        
{0x19, 0x07},                        
{0x1a, 0xf0},                        
{0x32, 0x00},                        
{0x29, 0xa0},                        
{0x2c, 0xf0},                        
{0x2a, 0x00},                        
{0x11, 0x01},                        
{0x42, 0x7f},                        
{0x4d, 0x09},                        
{0x63, 0xe0},                        
{0x64, 0xff},                        
{0x65, 0x20},                        
{0x66, 0x00},                        
{0x67, 0x48},                        
{0x13, 0xf0},                        
{0x0d, 0x41},                        
{0x0f, 0xc5},                        
{0x14, 0x11},                                       
{0x22, 0x7f},                        
{0x23, 0x03},                      
{0x24, 0x40},    
{0x25, 0x30},                      
{0x26, 0xa1},                        
{0x2b, 0x00},                        
{0x6b, 0xaa},                        
{0x13, 0xff},                        
{0x90, 0x05},                        
{0x91, 0x01},                        
{0x92, 0x03},                        
{0x93, 0x00},                        
{0x94, 0xb0},                        
{0x95, 0x9d},                        
{0x96, 0x13},                        
{0x97, 0x16},                        
{0x98, 0x7b},                        
{0x99, 0x91},
{0x9a, 0x1e},    
{0x9b, 0x08},                      
{0x9c, 0x20},                        
{0x9e, 0x81},                        
{0xa6, 0x06},                        
{0x7e, 0x0c},                        
{0x7f, 0x16},                        
{0x80, 0x2a},                        
{0x81, 0x4e},                        
{0x82, 0x61},                        
{0x83, 0x6f},                        
{0x84, 0x7b},                        
{0x85, 0x86},                        
{0x86, 0x8e},                        
{0x87, 0x97},                        
{0x88, 0xa4},   
{0x89, 0xaf},    
{0x8a, 0xc5},                      
{0x8b, 0xd7},                        
{0x8c, 0xe8},                        
{0x8d, 0x20},                        
{0x33, 0x00},                        
{0x22, 0x7f},                        
{0x23, 0x03},                        
{0x4a, 0x10},                        
{0x49, 0x10},                        
{0x4b, 0x14},                        
{0x4c, 0x17},                        
{0x46, 0x05},                        
{0x0e, 0x65},
{0xa6, 0x24},   // enable brightness
{0x9b, 0x18},   // set brightness 0x18
{0xab, 0x06},
{0x9c, 0x2c},	// set contrast 0x2c
{0x7e, 0x04},   // set gamma
{0x7f, 0x09},
{0x80, 0x18},
{0x81, 0x38},
{0x82, 0x47},
{0x83, 0x56},
{0x84, 0x66},
{0x85, 0x74},
{0x86, 0x7f},
{0x87, 0x89},
{0x88, 0x9a},
{0x89, 0xa9},
{0x8a, 0xc4},
{0x8b, 0xdb},
{0x8c, 0xee},
{0x8d, 0x10}    // set slop                                            
};

void ov7725_init(void);