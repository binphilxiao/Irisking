;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Nov 01 16:09:33 2010                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=near --mem_model:data=far --quiet --silicon_version=6400 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64xx                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : Optimized w/Profiling Info                           *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("SSHSH512.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$5, DW_AT_type(*DW$T$3)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$5

	.sect	".const"
	.align	8
_iv$1:
	.field		0x6a09e667,32
	.field		0,32			; _iv$1[0]._hi @ 0
	.field		0xf3bcc908,32
	.field		0,32			; _iv$1[0]._lo @ 64
	.field		0xbb67ae85,32
	.field		0,32			; _iv$1[1]._hi @ 128
	.field		0x84caa73b,32
	.field		0,32			; _iv$1[1]._lo @ 192
	.field		0x3c6ef372,32
	.field		0,32			; _iv$1[2]._hi @ 256
	.field		0xfe94f82b,32
	.field		0,32			; _iv$1[2]._lo @ 320
	.field		0xa54ff53a,32
	.field		0,32			; _iv$1[3]._hi @ 384
	.field		0x5f1d36f1,32
	.field		0,32			; _iv$1[3]._lo @ 448
	.field		0x510e527f,32
	.field		0,32			; _iv$1[4]._hi @ 512
	.field		0xade682d1,32
	.field		0,32			; _iv$1[4]._lo @ 576
	.field		0x9b05688c,32
	.field		0,32			; _iv$1[5]._hi @ 640
	.field		0x2b3e6c1f,32
	.field		0,32			; _iv$1[5]._lo @ 704
	.field		0x1f83d9ab,32
	.field		0,32			; _iv$1[6]._hi @ 768
	.field		0xfb41bd6b,32
	.field		0,32			; _iv$1[6]._lo @ 832
	.field		0x5be0cd19,32
	.field		0,32			; _iv$1[7]._hi @ 896
	.field		0x137e2179,32
	.field		0,32			; _iv$1[7]._lo @ 960

	.sect	".const"
	.align	8
_k$2:
	.field		0x428a2f98,32
	.field		0,32			; _k$2[0]._hi @ 0
	.field		0xd728ae22,32
	.field		0,32			; _k$2[0]._lo @ 64
	.field		0x71374491,32
	.field		0,32			; _k$2[1]._hi @ 128
	.field		0x23ef65cd,32
	.field		0,32			; _k$2[1]._lo @ 192
	.field		0xb5c0fbcf,32
	.field		0,32			; _k$2[2]._hi @ 256
	.field		0xec4d3b2f,32
	.field		0,32			; _k$2[2]._lo @ 320
	.field		0xe9b5dba5,32
	.field		0,32			; _k$2[3]._hi @ 384
	.field		0x8189dbbc,32
	.field		0,32			; _k$2[3]._lo @ 448
	.field		0x3956c25b,32
	.field		0,32			; _k$2[4]._hi @ 512
	.field		0xf348b538,32
	.field		0,32			; _k$2[4]._lo @ 576
	.field		0x59f111f1,32
	.field		0,32			; _k$2[5]._hi @ 640
	.field		0xb605d019,32
	.field		0,32			; _k$2[5]._lo @ 704
	.field		0x923f82a4,32
	.field		0,32			; _k$2[6]._hi @ 768
	.field		0xaf194f9b,32
	.field		0,32			; _k$2[6]._lo @ 832
	.field		0xab1c5ed5,32
	.field		0,32			; _k$2[7]._hi @ 896
	.field		0xda6d8118,32
	.field		0,32			; _k$2[7]._lo @ 960
	.field		0xd807aa98,32
	.field		0,32			; _k$2[8]._hi @ 1024
	.field		0xa3030242,32
	.field		0,32			; _k$2[8]._lo @ 1088
	.field		0x12835b01,32
	.field		0,32			; _k$2[9]._hi @ 1152
	.field		0x45706fbe,32
	.field		0,32			; _k$2[9]._lo @ 1216
	.field		0x243185be,32
	.field		0,32			; _k$2[10]._hi @ 1280
	.field		0x4ee4b28c,32
	.field		0,32			; _k$2[10]._lo @ 1344
	.field		0x550c7dc3,32
	.field		0,32			; _k$2[11]._hi @ 1408
	.field		0xd5ffb4e2,32
	.field		0,32			; _k$2[11]._lo @ 1472
	.field		0x72be5d74,32
	.field		0,32			; _k$2[12]._hi @ 1536
	.field		0xf27b896f,32
	.field		0,32			; _k$2[12]._lo @ 1600
	.field		0x80deb1fe,32
	.field		0,32			; _k$2[13]._hi @ 1664
	.field		0x3b1696b1,32
	.field		0,32			; _k$2[13]._lo @ 1728
	.field		0x9bdc06a7,32
	.field		0,32			; _k$2[14]._hi @ 1792
	.field		0x25c71235,32
	.field		0,32			; _k$2[14]._lo @ 1856
	.field		0xc19bf174,32
	.field		0,32			; _k$2[15]._hi @ 1920
	.field		0xcf692694,32
	.field		0,32			; _k$2[15]._lo @ 1984
	.field		0xe49b69c1,32
	.field		0,32			; _k$2[16]._hi @ 2048
	.field		0x9ef14ad2,32
	.field		0,32			; _k$2[16]._lo @ 2112
	.field		0xefbe4786,32
	.field		0,32			; _k$2[17]._hi @ 2176
	.field		0x384f25e3,32
	.field		0,32			; _k$2[17]._lo @ 2240
	.field		0xfc19dc6,32
	.field		0,32			; _k$2[18]._hi @ 2304
	.field		0x8b8cd5b5,32
	.field		0,32			; _k$2[18]._lo @ 2368
	.field		0x240ca1cc,32
	.field		0,32			; _k$2[19]._hi @ 2432
	.field		0x77ac9c65,32
	.field		0,32			; _k$2[19]._lo @ 2496
	.field		0x2de92c6f,32
	.field		0,32			; _k$2[20]._hi @ 2560
	.field		0x592b0275,32
	.field		0,32			; _k$2[20]._lo @ 2624
	.field		0x4a7484aa,32
	.field		0,32			; _k$2[21]._hi @ 2688
	.field		0x6ea6e483,32
	.field		0,32			; _k$2[21]._lo @ 2752
	.field		0x5cb0a9dc,32
	.field		0,32			; _k$2[22]._hi @ 2816
	.field		0xbd41fbd4,32
	.field		0,32			; _k$2[22]._lo @ 2880
	.field		0x76f988da,32
	.field		0,32			; _k$2[23]._hi @ 2944
	.field		0x831153b5,32
	.field		0,32			; _k$2[23]._lo @ 3008
	.field		0x983e5152,32
	.field		0,32			; _k$2[24]._hi @ 3072
	.field		0xee66dfab,32
	.field		0,32			; _k$2[24]._lo @ 3136
	.field		0xa831c66d,32
	.field		0,32			; _k$2[25]._hi @ 3200
	.field		0x2db43210,32
	.field		0,32			; _k$2[25]._lo @ 3264
	.field		0xb00327c8,32
	.field		0,32			; _k$2[26]._hi @ 3328
	.field		0x98fb213f,32
	.field		0,32			; _k$2[26]._lo @ 3392
	.field		0xbf597fc7,32
	.field		0,32			; _k$2[27]._hi @ 3456
	.field		0xbeef0ee4,32
	.field		0,32			; _k$2[27]._lo @ 3520
	.field		0xc6e00bf3,32
	.field		0,32			; _k$2[28]._hi @ 3584
	.field		0x3da88fc2,32
	.field		0,32			; _k$2[28]._lo @ 3648
	.field		0xd5a79147,32
	.field		0,32			; _k$2[29]._hi @ 3712
	.field		0x930aa725,32
	.field		0,32			; _k$2[29]._lo @ 3776
	.field		0x6ca6351,32
	.field		0,32			; _k$2[30]._hi @ 3840
	.field		0xe003826f,32
	.field		0,32			; _k$2[30]._lo @ 3904
	.field		0x14292967,32
	.field		0,32			; _k$2[31]._hi @ 3968
	.field		0xa0e6e70,32
	.field		0,32			; _k$2[31]._lo @ 4032
	.field		0x27b70a85,32
	.field		0,32			; _k$2[32]._hi @ 4096
	.field		0x46d22ffc,32
	.field		0,32			; _k$2[32]._lo @ 4160
	.field		0x2e1b2138,32
	.field		0,32			; _k$2[33]._hi @ 4224
	.field		0x5c26c926,32
	.field		0,32			; _k$2[33]._lo @ 4288
	.field		0x4d2c6dfc,32
	.field		0,32			; _k$2[34]._hi @ 4352
	.field		0x5ac42aed,32
	.field		0,32			; _k$2[34]._lo @ 4416
	.field		0x53380d13,32
	.field		0,32			; _k$2[35]._hi @ 4480
	.field		0x9d95b3df,32
	.field		0,32			; _k$2[35]._lo @ 4544
	.field		0x650a7354,32
	.field		0,32			; _k$2[36]._hi @ 4608
	.field		0x8baf63de,32
	.field		0,32			; _k$2[36]._lo @ 4672
	.field		0x766a0abb,32
	.field		0,32			; _k$2[37]._hi @ 4736
	.field		0x3c77b2a8,32
	.field		0,32			; _k$2[37]._lo @ 4800
	.field		0x81c2c92e,32
	.field		0,32			; _k$2[38]._hi @ 4864
	.field		0x47edaee6,32
	.field		0,32			; _k$2[38]._lo @ 4928
	.field		0x92722c85,32
	.field		0,32			; _k$2[39]._hi @ 4992
	.field		0x1482353b,32
	.field		0,32			; _k$2[39]._lo @ 5056
	.field		0xa2bfe8a1,32
	.field		0,32			; _k$2[40]._hi @ 5120
	.field		0x4cf10364,32
	.field		0,32			; _k$2[40]._lo @ 5184
	.field		0xa81a664b,32
	.field		0,32			; _k$2[41]._hi @ 5248
	.field		0xbc423001,32
	.field		0,32			; _k$2[41]._lo @ 5312
	.field		0xc24b8b70,32
	.field		0,32			; _k$2[42]._hi @ 5376
	.field		0xd0f89791,32
	.field		0,32			; _k$2[42]._lo @ 5440
	.field		0xc76c51a3,32
	.field		0,32			; _k$2[43]._hi @ 5504
	.field		0x654be30,32
	.field		0,32			; _k$2[43]._lo @ 5568
	.field		0xd192e819,32
	.field		0,32			; _k$2[44]._hi @ 5632
	.field		0xd6ef5218,32
	.field		0,32			; _k$2[44]._lo @ 5696
	.field		0xd6990624,32
	.field		0,32			; _k$2[45]._hi @ 5760
	.field		0x5565a910,32
	.field		0,32			; _k$2[45]._lo @ 5824
	.field		0xf40e3585,32
	.field		0,32			; _k$2[46]._hi @ 5888
	.field		0x5771202a,32
	.field		0,32			; _k$2[46]._lo @ 5952
	.field		0x106aa070,32
	.field		0,32			; _k$2[47]._hi @ 6016
	.field		0x32bbd1b8,32
	.field		0,32			; _k$2[47]._lo @ 6080
	.field		0x19a4c116,32
	.field		0,32			; _k$2[48]._hi @ 6144
	.field		0xb8d2d0c8,32
	.field		0,32			; _k$2[48]._lo @ 6208
	.field		0x1e376c08,32
	.field		0,32			; _k$2[49]._hi @ 6272
	.field		0x5141ab53,32
	.field		0,32			; _k$2[49]._lo @ 6336
	.field		0x2748774c,32
	.field		0,32			; _k$2[50]._hi @ 6400
	.field		0xdf8eeb99,32
	.field		0,32			; _k$2[50]._lo @ 6464
	.field		0x34b0bcb5,32
	.field		0,32			; _k$2[51]._hi @ 6528
	.field		0xe19b48a8,32
	.field		0,32			; _k$2[51]._lo @ 6592
	.field		0x391c0cb3,32
	.field		0,32			; _k$2[52]._hi @ 6656
	.field		0xc5c95a63,32
	.field		0,32			; _k$2[52]._lo @ 6720
	.field		0x4ed8aa4a,32
	.field		0,32			; _k$2[53]._hi @ 6784
	.field		0xe3418acb,32
	.field		0,32			; _k$2[53]._lo @ 6848
	.field		0x5b9cca4f,32
	.field		0,32			; _k$2[54]._hi @ 6912
	.field		0x7763e373,32
	.field		0,32			; _k$2[54]._lo @ 6976
	.field		0x682e6ff3,32
	.field		0,32			; _k$2[55]._hi @ 7040
	.field		0xd6b2b8a3,32
	.field		0,32			; _k$2[55]._lo @ 7104
	.field		0x748f82ee,32
	.field		0,32			; _k$2[56]._hi @ 7168
	.field		0x5defb2fc,32
	.field		0,32			; _k$2[56]._lo @ 7232
	.field		0x78a5636f,32
	.field		0,32			; _k$2[57]._hi @ 7296
	.field		0x43172f60,32
	.field		0,32			; _k$2[57]._lo @ 7360
	.field		0x84c87814,32
	.field		0,32			; _k$2[58]._hi @ 7424
	.field		0xa1f0ab72,32
	.field		0,32			; _k$2[58]._lo @ 7488
	.field		0x8cc70208,32
	.field		0,32			; _k$2[59]._hi @ 7552
	.field		0x1a6439ec,32
	.field		0,32			; _k$2[59]._lo @ 7616
	.field		0x90befffa,32
	.field		0,32			; _k$2[60]._hi @ 7680
	.field		0x23631e28,32
	.field		0,32			; _k$2[60]._lo @ 7744
	.field		0xa4506ceb,32
	.field		0,32			; _k$2[61]._hi @ 7808
	.field		0xde82bde9,32
	.field		0,32			; _k$2[61]._lo @ 7872
	.field		0xbef9a3f7,32
	.field		0,32			; _k$2[62]._hi @ 7936
	.field		0xb2c67915,32
	.field		0,32			; _k$2[62]._lo @ 8000
	.field		0xc67178f2,32
	.field		0,32			; _k$2[63]._hi @ 8064
	.field		0xe372532b,32
	.field		0,32			; _k$2[63]._lo @ 8128
	.field		0xca273ece,32
	.field		0,32			; _k$2[64]._hi @ 8192
	.field		0xea26619c,32
	.field		0,32			; _k$2[64]._lo @ 8256
	.field		0xd186b8c7,32
	.field		0,32			; _k$2[65]._hi @ 8320
	.field		0x21c0c207,32
	.field		0,32			; _k$2[65]._lo @ 8384
	.field		0xeada7dd6,32
	.field		0,32			; _k$2[66]._hi @ 8448
	.field		0xcde0eb1e,32
	.field		0,32			; _k$2[66]._lo @ 8512
	.field		0xf57d4f7f,32
	.field		0,32			; _k$2[67]._hi @ 8576
	.field		0xee6ed178,32
	.field		0,32			; _k$2[67]._lo @ 8640
	.field		0x6f067aa,32
	.field		0,32			; _k$2[68]._hi @ 8704
	.field		0x72176fba,32
	.field		0,32			; _k$2[68]._lo @ 8768
	.field		0xa637dc5,32
	.field		0,32			; _k$2[69]._hi @ 8832
	.field		0xa2c898a6,32
	.field		0,32			; _k$2[69]._lo @ 8896
	.field		0x113f9804,32
	.field		0,32			; _k$2[70]._hi @ 8960
	.field		0xbef90dae,32
	.field		0,32			; _k$2[70]._lo @ 9024
	.field		0x1b710b35,32
	.field		0,32			; _k$2[71]._hi @ 9088
	.field		0x131c471b,32
	.field		0,32			; _k$2[71]._lo @ 9152
	.field		0x28db77f5,32
	.field		0,32			; _k$2[72]._hi @ 9216
	.field		0x23047d84,32
	.field		0,32			; _k$2[72]._lo @ 9280
	.field		0x32caab7b,32
	.field		0,32			; _k$2[73]._hi @ 9344
	.field		0x40c72493,32
	.field		0,32			; _k$2[73]._lo @ 9408
	.field		0x3c9ebe0a,32
	.field		0,32			; _k$2[74]._hi @ 9472
	.field		0x15c9bebc,32
	.field		0,32			; _k$2[74]._lo @ 9536
	.field		0x431d67c4,32
	.field		0,32			; _k$2[75]._hi @ 9600
	.field		0x9c100d4c,32
	.field		0,32			; _k$2[75]._lo @ 9664
	.field		0x4cc5d4be,32
	.field		0,32			; _k$2[76]._hi @ 9728
	.field		0xcb3e42b6,32
	.field		0,32			; _k$2[76]._lo @ 9792
	.field		0x597f299c,32
	.field		0,32			; _k$2[77]._hi @ 9856
	.field		0xfc657e2a,32
	.field		0,32			; _k$2[77]._lo @ 9920
	.field		0x5fcb6fab,32
	.field		0,32			; _k$2[78]._hi @ 9984
	.field		0x3ad6faec,32
	.field		0,32			; _k$2[78]._lo @ 10048
	.field		0x6c44198c,32
	.field		0,32			; _k$2[79]._hi @ 10112
	.field		0x4a475817,32
	.field		0,32			; _k$2[79]._lo @ 10176

;	D:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI2282 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI2284 
	.sect	".text"
	.global	_SHA512_Init

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Init"), DW_AT_symbol_name("_SHA512_Init")
	.dwattr DW$9, DW_AT_low_pc(_SHA512_Init)
	.dwattr DW$9, DW_AT_high_pc(0x00)
	.dwattr DW$9, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$9, DW_AT_begin_line(0xaa)
	.dwattr DW$9, DW_AT_begin_column(0x06)
	.dwattr DW$9, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$9, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH512.C",170,35

;******************************************************************************
;* FUNCTION NAME: _SHA512_Init                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,B4,B5,B6,B7,B8               *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,B3,B4,B5,B6,B7,B8,DP,SP      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_SHA512_Init:
;** --------------------------------------------------------------------------*
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$10, DW_AT_type(*DW$T$34)
	.dwattr DW$10, DW_AT_location[DW_OP_reg4]
;**  	-----------------------    U$10 = (struct $$fake0 *)s;
;**  	-----------------------    L$1 = 8;
;**  	-----------------------    U$7 = &iv[0];
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 61	-----------------------    *U$10++{16} = *U$7++{16};  // [2]
;** 60	-----------------------    if ( --L$1 ) goto g2;  // [2]
;** 173	-----------------------    (*s).blkused = C$2 = 0;
           MVC     .S2     CSR,B8
           AND     .L2     -2,B8,B4

           MVC     .S2     B4,CSR            ; interrupts off
||         MVKL    .S1     _iv$1,A6
||         MVK     .L1     6,A0

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 60
;*      Loop opening brace source line   : 61
;*      Loop closing brace source line   : 61
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        1     
;*      .D units                     3*       3*    
;*      .M units                     0        0     
;*      .X cross paths               0        2     
;*      .T address paths             3*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 2
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 3
;*----------------------------------------------------------------------------*
L1:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L2,A0             ; |60| (P) <0,4> 

           MV      .L2X    A4,B4
||         MVKH    .S1     _iv$1,A6

	.dwpsn	"SSHSH512.C",60,0

           MV      .L1     A4,A7             ; |170| 
||         MVK     .S1     0x2,A1            ; init prolog collapse predicate
||         SUB     .D2     B4,16,B7          ; undo prolog elim. side-effects
||         MV      .D1     A6,A3             ; |61| (P) <0,0>  ^ 

;** --------------------------------------------------------------------------*
L2:    ; PIPED LOOP KERNEL
DW$L$_SHA512_Init$3$B:
	.dwpsn	"SSHSH512.C",61,0

           SUB     .D2     B7,16,B6          ; |61| <0,7> 
||         MV      .L2X    A4,B4             ; |61| <0,7> Define a twin register
|| [ A0]   BDEC    .S1     L2,A0             ; |60| <1,4> 
||         LDDW    .D1T1   *A3,A5:A4         ; |61| <2,1> 

   [!A1]   STDW    .D2T1   A5:A4,*+B6(8)     ; |61| <0,8> 
||         ADD     .D1     A3,16,A6          ; |61| <2,2>  ^ 

   [ A1]   SUB     .L1     A1,1,A1           ; <0,9> 
|| [!A1]   STDW    .D2T2   B5:B4,*B6         ; |61| <0,9> 
||         ADDK    .S2     16,B7             ; |61| <1,6> 
||         MV      .L2X    A5,B5             ; |61| <1,6> Define a twin register
||         LDDW    .D1T1   *+A3(8),A5:A4     ; |61| <2,3> 
||         MV      .S1     A6,A3             ; |61| <3,0>  ^ 

DW$L$_SHA512_Init$3$E:
;** --------------------------------------------------------------------------*
L3:    ; PIPED LOOP EPILOG
;** 175	-----------------------    C$1 = (unsigned (* const)[4])s+260;
;** 175	-----------------------    *C$1 = C$2;
;** 175	-----------------------    *(C$1+4) = 0.0;
;** 175	-----------------------    C$1[3] = C$2;
;**  	-----------------------    return;

           MVK     .S1     260,A6            ; |175| 
||         MV      .L2X    A4,B4             ; |61| (E) <1,7> Define a twin register
||         LDDW    .D1T1   *A3,A5:A4         ; |61| (E) <3,1> 
||         SUB     .D2     B7,16,B6          ; |61| (E) <1,7> 

           ADD     .L1     A6,A7,A8          ; |175| 
||         ADD     .D1     A3,16,A6          ; |61| (E) <3,2>  ^ 
||         STDW    .D2T1   A5:A4,*+B6(8)     ; |61| (E) <1,8> 

           ADD     .L1     4,A8,A3           ; |175| 
||         ADDK    .S2     16,B7             ; |61| (E) <2,6> 
||         MV      .L2X    A5,B5             ; |61| (E) <2,6> Define a twin register
||         LDDW    .D1T1   *+A3(8),A5:A4     ; |61| (E) <3,3> 
||         STDW    .D2T2   B5:B4,*B6         ; |61| (E) <1,9> 

           MV      .L2X    A4,B4             ; |61| (E) <2,7> Define a twin register
||         SUB     .D2     B7,16,B6          ; |61| (E) <2,7> 

           STDW    .D2T1   A5:A4,*+B6(8)     ; |61| (E) <2,8> 

           ADDK    .S2     16,B7             ; |61| (E) <3,6> 
||         MV      .L2X    A5,B5             ; |61| (E) <3,6> Define a twin register
||         STDW    .D2T2   B5:B4,*B6         ; |61| (E) <2,9> 

           MVC     .S2     B8,CSR            ; interrupts on
||         MV      .L2X    A4,B4             ; |61| (E) <3,7> Define a twin register
||         SUB     .D2     B7,16,B6          ; |61| (E) <3,7> 

           RET     .S2     B3                ; |176| 
||         STDW    .D2T2   B5:B4,*B6         ; |61| (E) <3,9> 

           ZERO    .L1     A5                ; |173| 
||         MVK     .S1     64,A4             ; |173| 
||         STDW    .D2T1   A5:A4,*+B6(8)     ; |61| (E) <3,8> 

           STW     .D1T1   A5,*A8            ; |175| 
           STW     .D1T1   A5,*+A8(12)       ; |175| 

           ZERO    .L1     A5:A4             ; |175| 
||         STW     .D1T1   A5,*+A7[A4]       ; |173| 

	.dwpsn	"SSHSH512.C",176,1
           STDW    .D1T1   A5:A4,*A3         ; |175| 
           ; BRANCH OCCURS {B3}              ; |176| 

DW$11	.dwtag  DW_TAG_loop
	.dwattr DW$11, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSH512.asm:L2:1:1288598973")
	.dwattr DW$11, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$11, DW_AT_begin_line(0x3c)
	.dwattr DW$11, DW_AT_end_line(0x3d)
DW$12	.dwtag  DW_TAG_loop_range
	.dwattr DW$12, DW_AT_low_pc(DW$L$_SHA512_Init$3$B)
	.dwattr DW$12, DW_AT_high_pc(DW$L$_SHA512_Init$3$E)
	.dwendtag DW$11

	.dwattr DW$9, DW_AT_end_file("SSHSH512.C")
	.dwattr DW$9, DW_AT_end_line(0xb0)
	.dwattr DW$9, DW_AT_end_column(0x01)
	.dwendtag DW$9

	.sect	".text"

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Block"), DW_AT_symbol_name("_SHA512_Block")
	.dwattr DW$13, DW_AT_low_pc(_SHA512_Block)
	.dwattr DW$13, DW_AT_high_pc(0x00)
	.dwattr DW$13, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$13, DW_AT_begin_line(0x40)
	.dwattr DW$13, DW_AT_begin_column(0x0d)
	.dwattr DW$13, DW_AT_frame_base[DW_OP_breg31 1496]
	.dwattr DW$13, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH512.C",64,58
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("k"), DW_AT_symbol_name("_k$2")
	.dwattr DW$14, DW_AT_type(*DW$T$64)
	.dwattr DW$14, DW_AT_location[DW_OP_addr _k$2]

;******************************************************************************
;* FUNCTION NAME: _SHA512_Block                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 1452 Auto + 44 Save = 1496 byte             *
;******************************************************************************
_SHA512_Block:
;** --------------------------------------------------------------------------*
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$15, DW_AT_type(*DW$T$34)
	.dwattr DW$15, DW_AT_location[DW_OP_reg4]
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$16, DW_AT_type(*DW$T$37)
	.dwattr DW$16, DW_AT_location[DW_OP_reg20]
;**  	-----------------------    U$6 = block;
;** 112	-----------------------    L$1 = 16;
;**  	-----------------------    U$11 = (struct $$fake0 *)&w;
;**  	-----------------------    #pragma MUST_ITERATE(16, 16, 16)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 113	-----------------------    *U$11++{16} = *U$6++{16};
;** 112	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    U$11 = &w[16];

           ADDK    .S2     -1496,SP          ; |64| 
||         MV      .L1X    SP,A31            ; |64| 

           STW     .D2T2   B10,*+SP(1480)
           STW     .D2T2   B3,*+SP(1476)

           STW     .D2T2   B11,*+SP(1484)
||         MVC     .S2     CSR,B8

           STW     .D2T1   A4,*+SP(1288)     ; |64| 
||         AND     .L2     -2,B8,B4
||         MV      .L1X    B4,A3             ; |64| 

           MVC     .S2     B4,CSR            ; interrupts off
||         STW     .D2T1   A15,*+SP(1496)
||         MVK     .S1     14,A0             ; |112| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 112
;*      Loop opening brace source line   : 113
;*      Loop closing brace source line   : 113
;*      Known Minimum Trip Count         : 16                    
;*      Known Maximum Trip Count         : 16                    
;*      Known Max Trip Count Factor      : 16
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        1     
;*      .D units                     3*       3*    
;*      .M units                     0        0     
;*      .X cross paths               0        2     
;*      .T address paths             3*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 3  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 2
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 3
;*----------------------------------------------------------------------------*
L4:    ; PIPED LOOP PROLOG

           STDW    .D1T1   A11:A10,*-A31(40)
||         STW     .D2T2   B13,*+SP(1492)
|| [ A0]   BDEC    .S1     L5,A0             ; |112| (P) <0,4> 

           STDW    .D1T1   A13:A12,*-A31(32)
||         STW     .D2T2   B12,*+SP(1488)
||         ADD     .L2     8,SP,B4

	.dwpsn	"SSHSH512.C",112,0

           MVK     .L1     0x2,A1            ; init prolog collapse predicate
||         STW     .D1T1   A14,*-A31(24)
||         SUB     .D2     B4,16,B7          ; undo prolog elim. side-effects
||         MV      .S1     A3,A6             ; |113| (P) <0,0>  ^ 

;** --------------------------------------------------------------------------*
L5:    ; PIPED LOOP KERNEL
DW$L$_SHA512_Block$3$B:
	.dwpsn	"SSHSH512.C",113,0

           SUB     .D2     B7,16,B6          ; |113| <0,7> 
||         MV      .L2X    A4,B4             ; |113| <0,7> Define a twin register
|| [ A0]   BDEC    .S1     L5,A0             ; |112| <1,4> 
||         LDDW    .D1T1   *A6,A5:A4         ; |113| <2,1> 

   [!A1]   STDW    .D2T1   A5:A4,*+B6(8)     ; |113| <0,8> 
||         ADD     .D1     A6,16,A3          ; |113| <2,2>  ^ 

   [ A1]   SUB     .L1     A1,1,A1           ; <0,9> 
|| [!A1]   STDW    .D2T2   B5:B4,*B6         ; |113| <0,9> 
||         ADDK    .S2     16,B7             ; |113| <1,6> 
||         MV      .L2X    A5,B5             ; |113| <1,6> Define a twin register
||         LDDW    .D1T1   *+A6(8),A5:A4     ; |113| <2,3> 
||         MV      .S1     A3,A6             ; |113| <3,0>  ^ 

DW$L$_SHA512_Block$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 115
;*      Loop opening brace source line   : 115
;*      Loop closing brace source line   : 122
;*      Known Minimum Trip Count         : 64                    
;*      Known Maximum Trip Count         : 64                    
;*      Known Max Trip Count Factor      : 64
;*      Loop Carried Dependency Bound(^) : 32
;*      Unpartitioned Resource Bound     : 19
;*      Partitioned Resource Bound(*)    : 19
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     8       10     
;*      .S units                    17       15     
;*      .D units                     6        6     
;*      .M units                     0        0     
;*      .X cross paths              16       16     
;*      .T address paths             6        6     
;*      Long read paths             10       12     
;*      Long write paths            10       12     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)         34       34     (.L or .S or .D unit)
;*      Bound(.L .S .LS)            13       13     
;*      Bound(.L .S .D .LS .LSD)    22*      22*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 32 Did not find schedule
;*         ii = 33 Did not find schedule
;*         ii = 34 Did not find schedule
;*         ii = 35 Did not find schedule
;*         ii = 36 Did not find schedule
;*         ii = 38 Did not find schedule
;*         ii = 40 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L6:    ; PIPED LOOP EPILOG AND PROLOG
;**  	-----------------------    U$19 = &((unsigned long *)w)[3];
;**  	-----------------------    U$25 = &w[1];
;**  	-----------------------    U$43 = (unsigned long *)U$11-24;
;**  	-----------------------    U$48 = &U$11[-2];
;**  	-----------------------    U$67 = &U$11[-7];
;**  	-----------------------    U$70 = (unsigned long *)U$11-104;
;**  	-----------------------    U$102 = &((unsigned long *)w)[1];
;** 115	-----------------------    L$2 = 64;
;**  	-----------------------    U$108 = (struct $$fake0 *)&w;
;**  	-----------------------    #pragma MUST_ITERATE(64, 64, 64)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g4:
;** 120	-----------------------    C$105 = *(unsigned long *)U$48;
;** 120	-----------------------    C$104 = *U$43;
;** 120	-----------------------    C$106 = *U$19;
;** 120	-----------------------    C$107 = (*U$25++{16}).hi;
;** 120	-----------------------    C$103 = (C$106>>7|C$107<<25)^(C$106>>8|C$107<<24)^(C$106>>1|C$107<<31);
;** 120	-----------------------    C$102 = ((C$104>>6|C$105<<26)^(C$105>>29|C$104<<3)^(C$104>>19|C$105<<13))+C$103;
;** 120	-----------------------    C$101 = *U$70;
;** 120	-----------------------    C$100 = C$101+C$102;
;** 120	-----------------------    CSU$p$hi = *(unsigned long *)U$67+(unsigned long)(C$100 < C$101)+(unsigned long)(C$102 < C$103)+(C$107>>7^(C$107>>1|C$106<<31)^(C$107>>8|C$106<<24))+(C$105>>6^(C$105>>19|C$104<<13)^(C$104>>29|C$105<<3));
;** 121	-----------------------    (*U$11).lo = *U$102+C$100;
;** 121	-----------------------    A$108 = (*U$108++{16}).hi+(unsigned long)((*U$11).lo < *U$102)+CSU$p$hi;
;** 121	-----------------------    (*U$11++{16}).hi = A$108;
;** 115	-----------------------    U$19 += 2;
;** 115	-----------------------    U$43 += 2;
;** 115	-----------------------    U$48 += 16;
;** 115	-----------------------    U$67 += 16;
;** 115	-----------------------    U$70 += 2;
;** 115	-----------------------    U$102 += 2;
;** 115	-----------------------    if ( --L$2 ) goto g4;
;** 124	-----------------------    CSU$a$hi = U$121 = (*(struct $$fake0 *)(struct $$fake0 (* const)[8])s).hi;

           MVK     .S2     112,B31
||         MVK     .S1     104,A7
||         MV      .L2X    A4,B4             ; |113| (E) <1,7> Define a twin register
||         LDDW    .D1T1   *A6,A5:A4         ; |113| (E) <3,1> 
||         SUB     .D2     B7,16,B6          ; |113| (E) <1,7> 

           ADD     .L2     8,SP,B24
||         MVK     .S1     32,A31
||         ADD     .D1     A6,16,A3          ; |113| (E) <3,2>  ^ 
||         STDW    .D2T1   A5:A4,*+B6(8)     ; |113| (E) <1,8> 

           MVK     .S1     0x40,A2           ; |115| 
||         ADDK    .S2     16,B7             ; |113| (E) <2,6> 
||         MV      .L2X    A5,B5             ; |113| (E) <2,6> Define a twin register
||         LDDW    .D1T1   *+A6(8),A5:A4     ; |113| (E) <3,3> 
||         STDW    .D2T2   B5:B4,*B6         ; |113| (E) <1,9> 

           MV      .L2X    A4,B4             ; |113| (E) <2,7> Define a twin register
||         SUB     .D2     B7,16,B6          ; |113| (E) <2,7> 

           STDW    .D2T1   A5:A4,*+B6(8)     ; |113| (E) <2,8> 

           ADDK    .S2     16,B7             ; |113| (E) <3,6> 
||         MV      .L2X    A5,B5             ; |113| (E) <3,6> Define a twin register
||         STDW    .D2T2   B5:B4,*B6         ; |113| (E) <2,9> 

           MVC     .S2     B8,CSR            ; interrupts on
||         MV      .L2X    A4,B4             ; |113| (E) <3,7> Define a twin register
||         SUB     .D2     B7,16,B6          ; |113| (E) <3,7> 

           MVK     .S2     264,B5
||         STDW    .D2T2   B5:B4,*B6         ; |113| (E) <3,9> 

           MVC     .S2     CSR,B30
||         ADDAD   .D2     SP,4,B4
||         ADD     .L2     B5,SP,B23

           SUB     .L2     B23,B31,B26
||         SUB     .D2     B23,24,B28
||         AND     .S2     -2,B30,B29

           STDW    .D2T1   A5:A4,*+B6(8)     ; |113| (E) <3,8> 
||         SUB     .L1X    B23,A31,A29
||         MVC     .S2     B29,CSR           ; interrupts off

           ADD     .D2     SP,24,B27
||         SUB     .L1X    B23,A7,A9

	.dwpsn	"SSHSH512.C",115,0

           ADD     .D2     SP,16,B25
||         MV      .L1X    B4,A28            ; Register A/B partition copy

;** --------------------------------------------------------------------------*
L7:    ; PIPED LOOP KERNEL
DW$L$_SHA512_Block$5$B:

           LDDW    .D1T1   *A29++(16),A17:A16 ; |120| <0,0>  ^ 
||         LDDW    .D2T2   *B27++(16),B7:B6  ; |120| <0,0> 

           LDDW    .D2T2   *B28++(16),B9:B8  ; |120| <0,1>  ^ 
||         LDDW    .D1T1   *A28++(16),A27:A26 ; |120| <0,1>  ^ 

           NOP             3

           SHL     .S2     B7:B6,25,B17:B16  ; |120| <0,5> 
||         SHL     .S1     A17:A16,13,A21:A20 ; |120| <0,5> 

           SHRU    .S1     A27:A26,1,A19:A18 ; |120| <0,6> 
||         SHRU    .S2     B9:B8,19,B21:B20  ; |120| <0,6> 

           SHL     .S1     A17:A16,26,A5:A4  ; |120| <0,7>  ^ 
||         SHL     .S2     B7:B6,31,B5:B4    ; |120| <0,7> 
||         OR      .L2X    A21,B21,B29       ; |120| <0,7> 

           SHL     .S2     B7:B6,24,B19:B18  ; |120| <0,8> 
||         SHRU    .S1     A17:A16,29,A7:A6  ; |120| <0,8>  ^ 
||         OR      .L2X    B4,A18,B21        ; |120| <0,8> 

           SHL     .S2     B9:B8,3,B5:B4     ; |120| <0,9>  ^ 
||         SHRU    .S1     A27:A26,8,A21:A20 ; |120| <0,9>  ^ 
||         OR      .L1X    B5,A19,A22        ; |120| <0,9> 
||         OR      .L2X    A20,B20,B20       ; |120| <0,9> 

           SHRU    .S1     A27:A26,7,A19:A18 ; |120| <0,10> 
||         OR      .L1X    B19,A21,A6        ; |120| <0,10> 
||         OR      .L2X    B4,A6,B4          ; |120| <0,10>  ^ 

           SHRU    .S2     B9:B8,6,B19:B18   ; |120| <0,11> 
||         OR      .L1X    B16,A18,A18       ; |120| <0,11> 
||         OR      .L2X    B18,A20,B16       ; |120| <0,11>  ^ 

           OR      .L1X    B5,A7,A4          ; |120| <0,12>  ^ 
||         OR      .L2X    A4,B18,B5         ; |120| <0,12>  ^ 

           LDDW    .D1T1   *A9++(16),A23:A22 ; |120| <0,13> 
||         OR      .L2X    A5,B19,B5         ; |120| <0,13> 
||         OR      .L1X    B17,A19,A5        ; |120| <0,13> 
||         XOR     .S2     B4,B5,B4          ; |120| <0,13>  ^ 

           XOR     .L1     A6,A5,A4          ; |120| <0,14> 
||         XOR     .S1X    B16,A18,A5        ; |120| <0,14>  ^ 
||         XOR     .L2     B20,B4,B4         ; |120| <0,14>  ^ 
||         XOR     .S2X    A4,B5,B5          ; |120| <0,14>  ^ 

           LDDW    .D2T2   *B25++(16),B5:B4  ; |121| <0,15> 
||         XOR     .L1     A22,A4,A19        ; |120| <0,15> 
||         XOR     .S1X    B21,A5,A18        ; |120| <0,15>  ^ 
||         XOR     .L2     B29,B5,B5         ; |120| <0,15>  ^ 

           ADDU    .L1X    B4,A19:A18,A21:A20 ; |120| <0,16>  ^ 
           ADD     .L1X    B5,A21,A21        ; |120| <0,17>  ^ 
           ADDU    .L1     A22,A21:A20,A25:A24 ; |120| <0,18>  ^ 

           SHL     .S1     A27:A26,31,A7:A6  ; |120| <0,19> 
||         ADD     .L1     A23,A25,A25       ; |120| <0,19>  ^ 

           EXTU    .S1     A23,24,24,A23     ; |120| <0,20> 
||         ADDU    .L1X    B4,A25:A24,A5:A4  ; |121| <0,20>  ^ 

           LDDW    .D2T2   *B26++(16),B5:B4  ; |120| <0,21> 
||         EXTU    .S1     A19,24,24,A19     ; |120| <0,21> 
||         ADD     .L1X    B5,A5,A5          ; |121| <0,21>  ^ 

           EXTU    .S1     A21,24,24,A21     ; |120| <0,22> 
||         STDW    .D2T1   A5:A4,*+B23(8)    ; |121| <0,22>  ^ 

           SHRU    .S2     B7:B6,8,B5:B4     ; |120| <0,23> 
||         SHL     .S1     A27:A26,24,A5:A4  ; |120| <0,23> 
||         CMPEQ   .L1     A21,A19,A1        ; |120| <0,23> 
||         LDDW    .D2T2   *+B23(8),B7:B6    ; |121| <0,23>  ^ 

           SHRU    .S2     B7:B6,1,B17:B16   ; |120| <0,24> 
|| [!A1]   CMPLTU  .L1     A21,A19,A8        ; |120| <0,24> 
||         EXTU    .S1     A25,24,24,A19     ; |120| <0,24> 
||         LDDW    .D2T2   *-B25(16),B17:B16 ; |121| <0,24>  ^ 

           SHL     .S1     A17:A16,3,A5:A4   ; |120| <0,25> 
||         SHRU    .S2     B7:B6,7,B7:B6     ; |120| <0,25> 
||         OR      .D1X    A5,B5,A21         ; |120| <0,25> 
||         OR      .L2X    A4,B4,B20         ; |120| <0,25> 
||         CMPEQ   .L1     A19,A23,A0        ; |120| <0,25> 

           SHRU    .S1     A17:A16,6,A7:A6   ; |120| <0,26> 
||         SHRU    .S2     B9:B8,29,B17:B16  ; |120| <0,26> 
||         OR      .D1X    A6,B16,A19        ; |120| <0,26> 
||         OR      .L2X    A7,B17,B18        ; |120| <0,26> 
|| [!A0]   CMPLTU  .L1     A19,A23,A3        ; |120| <0,26> 

           SHL     .S2     B9:B8,13,B19:B18  ; |120| <0,27> 
||         SHRU    .S1     A17:A16,19,A23:A22 ; |120| <0,27> 
||         OR      .L2X    A5,B17,B8         ; |120| <0,27> 
||         XOR     .D2     B18,B7,B9         ; |120| <0,27> 
||         XOR     .D1X    A19,B6,A5         ; |120| <0,27> 
|| [ A0]   CMPLTU  .L1     A24,A22,A3        ; |120| <0,27> 

           OR      .L2X    A4,B16,B7         ; |120| <0,28> 
||         XOR     .S1X    B20,A5,A16        ; |120| <0,28> 
|| [ A1]   CMPLTU  .L1     A20,A18,A8        ; |120| <0,28> 
||         MV      .D1     A3,A4             ; |120| <0,28> 
||         EXTU    .S2     B7,24,24,B20      ; |121| <0,28>  ^ 

           OR      .L2X    B18,A22,B9        ; |120| <0,29> 
||         XOR     .L1X    A21,B9,A17        ; |120| <0,29> 
||         MV      .D1     A8,A18            ; |120| <0,29> 
||         SHR     .S1     A4,31,A5          ; |120| <0,29> 
||         EXTU    .S2     B17,24,24,B17     ; |121| <0,29>  ^ 

           LDDW    .D2T2   *B24++(16),B9:B8  ; |121| <0,30> 
||         OR      .S2X    B19,A23,B4        ; |120| <0,30> 
||         SHR     .S1     A18,31,A19        ; |120| <0,30> 
||         ADDU    .L1X    B4,A5:A4,A5:A4    ; |120| <0,30> 
||         CMPEQ   .L2     B20,B17,B0        ; |121| <0,30>  ^ 

           XOR     .S2X    B4,A7,B4          ; |120| <0,31> 
||         ADD     .S1X    B5,A5,A7          ; |120| <0,31> 
||         ADDU    .L1     A4,A19:A18,A5:A4  ; |120| <0,31> 
|| [ B0]   CMPLTU  .L2     B6,B16,B22        ; |121| <0,31>  ^ 

   [ A2]   SUB     .S1     A2,1,A2           ; |115| <0,32> 
||         XOR     .S2X    B9,A6,B5          ; |120| <0,32> 
||         ADD     .D1     A7,A5,A6          ; |120| <0,32> 
||         ADDU    .L1     A4,A17:A16,A5:A4  ; |120| <0,32> 
|| [!B0]   CMPLTU  .L2     B20,B17,B22       ; |121| <0,32>  ^ 

   [ A2]   B       .S1     L7                ; |115| <0,33> 
||         XOR     .L2     B7,B5,B4          ; |120| <0,33> 
||         XOR     .S2     B8,B4,B5          ; |120| <0,33> 
||         ADD     .L1     A6,A5,A5          ; |120| <0,33> 
||         MV      .D2     B22,B6            ; |121| <0,33>  ^ 

           ADDU    .L2X    A4,B5:B4,B5:B4    ; |120| <0,34> 
||         SHR     .S2     B6,31,B7          ; |121| <0,34>  ^ 

           ADD     .S2X    A5,B5,B5          ; |120| <0,35> 
||         ADDU    .L2     B8,B7:B6,B7:B6    ; |121| <0,35>  ^ 

           ADD     .S2     B9,B7,B6          ; |121| <0,36>  ^ 
||         ADDU    .L2     B6,B5:B4,B5:B4    ; |121| <0,36>  ^ 

           ADD     .L2     B6,B5,B5          ; |121| <0,37>  ^ 
           STDW    .D2T2   B5:B4,*B23++(16)  ; |121| <0,38>  ^ 
	.dwpsn	"SSHSH512.C",122,0
           NOP             1
DW$L$_SHA512_Block$5$E:
;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;** 124	-----------------------    CSU$a$lo = (*(struct $$fake0 *)(struct $$fake0 (* const)[8])s).lo;
;** 124	-----------------------    CSU$b$hi = *((struct $$fake0 *)(struct $$fake0 (* const)[8])s+16);
;** 124	-----------------------    K$129 = (unsigned long * const)s+24;
;** 124	-----------------------    CSU$b$lo = *K$129;
;** 124	-----------------------    K$133 = (struct $$fake0 *)(struct $$fake0 (* const)[8])s+32;
;** 124	-----------------------    CSU$c$hi = *(unsigned long *)K$133;
;** 124	-----------------------    CSU$c$lo = *((unsigned long * const)s+40);
;** 124	-----------------------    CSU$d$hi = ((unsigned long *)K$133)[2];
;** 124	-----------------------    CSU$d$lo = *((unsigned long * const)s+56);
;** 125	-----------------------    CSU$e$hi = ((unsigned long *)K$133)[4];
;** 125	-----------------------    CSU$e$lo = *((unsigned long * const)s+72);
;** 125	-----------------------    K$156 = (struct $$fake0 *)(struct $$fake0 (* const)[8])s+80;
;** 125	-----------------------    CSU$f$hi = *(unsigned long *)K$156;
;** 125	-----------------------    CSU$f$lo = *((unsigned long * const)s+88);
;** 125	-----------------------    CSU$g$hi = ((unsigned long *)K$156)[2];
;** 125	-----------------------    CSU$g$lo = *((unsigned long * const)s+104);
;** 125	-----------------------    CSU$h$hi = ((unsigned long *)K$156)[4];
;** 125	-----------------------    CSU$h$lo = *((unsigned long * const)s+120);
;**  	-----------------------    K$185 = 0xffffffffffuL;
;**  	-----------------------    U$244 = CSU$b$lo&CSU$c$lo;
;**  	-----------------------    U$278 = CSU$b$hi&CSU$c$hi;
;**  	-----------------------    U$295 = &((unsigned long *)w)[3];
;**  	-----------------------    C$99 = &k[0];
;**  	-----------------------    U$830 = &C$99[6];
;** 127	-----------------------    L$3 = 10;
;**  	-----------------------    U$181 = C$99;
;**  	-----------------------    U$11 = (struct $$fake0 *)&w;
;**  	-----------------------    #pragma MUST_ITERATE(10, 10, 10)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           LDW     .D2T1   *+SP(1288),A3
           ADDAD   .D2     SP,4,B31
           STW     .D2T2   B31,*+SP(1352)
           ADD     .L1X    8,SP,A30
           STW     .D2T1   A30,*+SP(1356)
           ADDAD   .D1     A3,10,A8          ; |125| 

           MV      .L2X    A3,B4
||         STW     .D2T1   A8,*+SP(1304)     ; |125| 

           ADD     .D2     B4,24,B23         ; |124| 
           LDDW    .D2T2   *+B4(40),B7:B6    ; |124| 
           LDDW    .D2T1   *+B4(16),A19:A18  ; |124| 

           LDDW    .D2T2   *+B4(88),B21:B20  ; |125| 
||         LDDW    .D1T1   *A3,A5:A4         ; |124| 

           LDDW    .D2T2   *+B4(72),B17:B16  ; |125| 

           LDDW    .D2T2   *+B4(104),B19:B18 ; |125| 
||         ADDAD   .D1     A3,4,A6           ; |124| 

           STW     .D2T1   A6,*+SP(1300)     ; |125| 
||         MV      .L1     A8,A3             ; |124| 
||         MV      .L2X    A3,B22

           LDDW    .D1T1   *A3,A9:A8         ; |125| 
||         LDDW    .D2T2   *B23,B25:B24      ; |124| 

           STW     .D2T1   A5,*+SP(1312)     ; |125| 
           STW     .D2T1   A5,*+SP(1344)     ; |124| 
           STW     .D2T1   A4,*+SP(1308)     ; |125| 
           STW     .D2T1   A4,*+SP(1348)     ; |124| 

           STW     .D2T2   B6,*+SP(1296)     ; |124| 
||         MVKL    .S2     _k$2,B26

           STW     .D2T2   B25,*+SP(1328)    ; |125| 
||         MVKH    .S2     _k$2,B26

           STW     .D2T1   A9,*+SP(1320)     ; |125| 

           STW     .D2T1   A8,*+SP(1316)     ; |125| 
||         MV      .L1X    B26,A31

           STW     .D2T1   A31,*+SP(1340)
           LDDW    .D2T2   *+B22(8),B9:B8    ; |124| 

           STW     .D2T2   B23,*+SP(1292)    ; |124| 
||         MV      .L1     A6,A16            ; |125| 

           LDDW    .D1T1   *+A16(32),A9:A8   ; |125| 
||         STW     .D2T2   B24,*+SP(1324)    ; |125| 

           LDDW    .D2T2   *+B22(120),B5:B4  ; |125| 
||         AND     .L2     B6,B24,B29

           STW     .D2T2   B29,*+SP(1372)
||         LDDW    .D1T1   *+A3(16),A5:A4    ; |125| 

           LDDW    .D1T2   *+A3(32),B7:B6    ; |125| 
||         ADDAD   .D2     B26,12,B24
||         AND     .L2     B7,B25,B25
||         MV      .L1X    B7,A15            ; |124| 

           STW     .D2T2   B24,*+SP(1368)
||         LDDW    .D1T1   *A16,A7:A6        ; |124| 

           STW     .D2T1   A9,*+SP(1336)     ; |125| 
           STW     .D2T1   A8,*+SP(1332)     ; |125| 
           STW     .D2T1   A4,*+SP(1360)
           STW     .D2T1   A5,*+SP(1364)
           STW     .D2T2   B7,*+SP(1380)

           STW     .D2T2   B6,*+SP(1376)
||         AND     .L1     A6,A18,A10
||         MVK     .S1     0xa,A0            ; |127| 

	.dwpsn	"SSHSH512.C",127,0

           LDDW    .D1T2   *+A16(16),B23:B22 ; |124| 
||         AND     .L1     A7,A19,A3
||         LDDW    .D2T1   *+B22(56),A9:A8   ; |124| 
||         MV      .S1X    B25,A14           ; Define a twin register
||         MVC     .S2     B30,CSR           ; interrupts on

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Too many instructions (limit = 250)
;*----------------------------------------------------------------------------*
L9:    
DW$L$_SHA512_Block$8$B:
;**	-----------------------g6:
;** 144	-----------------------    C$98 = CSU$e$lo&CSU$f$lo^(CSU$e$lo^K$185)&CSU$g$lo;
;** 144	-----------------------    C$97 = ((CSU$e$hi>>9|CSU$e$lo<<23)^(CSU$e$lo>>18|CSU$e$hi<<14)^(CSU$e$lo>>14|CSU$e$hi<<18))+C$98;
;** 144	-----------------------    C$96 = (*U$181).lo;
;** 144	-----------------------    C$95 = C$96+C$97;
;** 144	-----------------------    C$94 = (*U$11).lo;
;** 144	-----------------------    C$93 = C$94+C$95;
;** 144	-----------------------    CSU$r$lo = CSU$h$lo+C$93;
;** 144	-----------------------    CSU$r$hi = (unsigned long)(CSU$r$lo < CSU$h$lo)+(*U$11).hi+(unsigned long)(C$93 < C$94)+(*U$181).hi+(unsigned long)(C$95 < C$96)+(unsigned long)(C$97 < C$98)+((CSU$e$hi^K$185)&CSU$g$hi^CSU$e$hi&CSU$f$hi)+((CSU$e$lo>>9|CSU$e$hi<<23)^(CSU$e$hi>>14|CSU$e$lo<<18)^(CSU$e$hi>>18|CSU$e$lo<<14))+CSU$h$hi;
;** 144	-----------------------    C$92 = CSU$d$lo+CSU$r$lo;
;** 144	-----------------------    CSU$d$hi += (unsigned long)(C$92 < CSU$d$lo)+CSU$r$hi;
;** 144	-----------------------    CSU$d$lo = C$92;
;** 144	-----------------------    C$91 = (CSU$a$hi>>7|CSU$a$lo<<25)^(CSU$a$hi>>2|CSU$a$lo<<30)^(CSU$a$lo>>28|CSU$a$hi<<4);
;** 144	-----------------------    C$81 = CSU$a$lo&CSU$b$lo;
;** 144	-----------------------    C$90 = (CSU$a$lo&CSU$c$lo^U$244^C$81)+C$91;
;** 144	-----------------------    CSU$h$lo = CSU$r$lo+C$90;
;** 144	-----------------------    C$83 = CSU$a$hi&CSU$b$hi;
;** 144	-----------------------    CSU$h$hi = (unsigned long)(CSU$h$lo < CSU$r$lo)+(unsigned long)(C$90 < C$91)+((CSU$a$lo>>7|CSU$a$hi<<25)^(CSU$a$hi>>28|CSU$a$lo<<4)^(CSU$a$lo>>2|CSU$a$hi<<30))+(CSU$a$hi&CSU$c$hi^U$278^C$83)+CSU$r$hi;
;** 145	-----------------------    C$89 = CSU$d$lo&CSU$e$lo^(CSU$d$lo^K$185)&CSU$f$lo;
;** 145	-----------------------    C$88 = ((CSU$d$hi>>9|CSU$d$lo<<23)^(CSU$d$lo>>18|CSU$d$hi<<14)^(CSU$d$lo>>14|CSU$d$hi<<18))+C$89;
;** 145	-----------------------    C$87 = *((const unsigned long *)U$830-72);
;** 145	-----------------------    C$86 = C$87+C$88;
;** 145	-----------------------    C$85 = *U$295;
;** 145	-----------------------    C$84 = C$85+C$86;
;** 145	-----------------------    CSU$r$lo = CSU$g$lo+C$84;
;** 145	-----------------------    CSU$r$hi = (unsigned long)(CSU$r$lo < CSU$g$lo)+((unsigned long *)U$11)[2]+(unsigned long)(C$84 < C$85)+((const unsigned long *)U$181)[2]+(unsigned long)(C$86 < C$87)+(unsigned long)(C$88 < C$89)+((CSU$d$hi^K$185)&CSU$f$hi^CSU$d$hi&CSU$e$hi)+((CSU$d$lo>>9|CSU$d$hi<<23)^(CSU$d$hi>>14|CSU$d$lo<<18)^(CSU$d$hi>>18|CSU$d$lo<<14))+CSU$g$hi;
;** 145	-----------------------    C$72 = CSU$h$hi&CSU$a$hi;
;** 145	-----------------------    C$82 = (CSU$h$hi>>7|CSU$h$lo<<25)^(CSU$h$hi>>2|CSU$h$lo<<30)^(CSU$h$lo>>28|CSU$h$hi<<4);
;** 145	-----------------------    C$70 = CSU$h$lo&CSU$a$lo;
;** 145	-----------------------    C$79 = (CSU$h$lo&CSU$b$lo^C$81^C$70)+C$82;
;** 145	-----------------------    CSU$q$hi = (unsigned long)(C$79 < C$82)+((CSU$h$lo>>7|CSU$h$hi<<25)^(CSU$h$hi>>28|CSU$h$lo<<4)^(CSU$h$lo>>2|CSU$h$hi<<30))+(CSU$h$hi&CSU$b$hi^C$83^C$72);
;** 145	-----------------------    C$80 = CSU$c$lo+CSU$r$lo;
;** 145	-----------------------    CSU$c$hi += (unsigned long)(C$80 < CSU$c$lo)+CSU$r$hi;
;** 145	-----------------------    CSU$c$lo = C$80;
;** 145	-----------------------    CSU$g$lo = CSU$r$lo+C$79;
;** 146	-----------------------    C$78 = CSU$c$lo&CSU$d$lo^(CSU$c$lo^K$185)&CSU$e$lo;
;** 146	-----------------------    C$77 = ((CSU$c$hi>>9|CSU$c$lo<<23)^(CSU$c$lo>>18|CSU$c$hi<<14)^(CSU$c$lo>>14|CSU$c$hi<<18))+C$78;
;** 146	-----------------------    C$76 = *((const unsigned long *)U$181+40);
;** 146	-----------------------    C$75 = C$76+C$77;
;** 146	-----------------------    C$74 = ((unsigned long *)U$11)[5];
;** 146	-----------------------    C$73 = C$74+C$75;
;** 146	-----------------------    CSU$r$lo = CSU$f$lo+C$73;
;** 146	-----------------------    CSU$r$hi = (unsigned long)(CSU$r$lo < CSU$f$lo)+((unsigned long *)U$11)[4]+(unsigned long)(C$73 < C$74)+((const unsigned long *)U$830)[-8]+(unsigned long)(C$75 < C$76)+(unsigned long)(C$77 < C$78)+((CSU$c$hi^K$185)&CSU$e$hi^CSU$c$hi&CSU$d$hi)+((CSU$c$lo>>9|CSU$c$hi<<23)^(CSU$c$hi>>14|CSU$c$lo<<18)^(CSU$c$hi>>18|CSU$c$lo<<14))+CSU$f$hi;
;** 146	-----------------------    C$36 = (unsigned long)(CSU$g$lo < CSU$r$lo)+CSU$r$hi+CSU$q$hi;
;** 146	-----------------------    C$61 = C$36&CSU$h$hi;
;** 146	-----------------------    C$71 = (C$36>>7|CSU$g$lo<<25)^(C$36>>2|CSU$g$lo<<30)^(CSU$g$lo>>28|C$36<<4);
;** 146	-----------------------    C$59 = CSU$g$lo&CSU$h$lo;
;** 146	-----------------------    C$68 = (CSU$g$lo&CSU$a$lo^C$70^C$59)+C$71;
;** 146	-----------------------    CSU$q$hi = (unsigned long)(C$68 < C$71)+((CSU$g$lo>>7|C$36<<25)^(C$36>>28|CSU$g$lo<<4)^(CSU$g$lo>>2|C$36<<30))+(C$36&CSU$a$hi^C$72^C$61);
;** 146	-----------------------    C$69 = CSU$b$lo+CSU$r$lo;
;** 146	-----------------------    CSU$b$hi += (unsigned long)(C$69 < CSU$b$lo)+CSU$r$hi;
;** 146	-----------------------    CSU$b$lo = C$69;
;** 146	-----------------------    CSU$f$lo = CSU$r$lo+C$68;
;** 147	-----------------------    C$67 = CSU$b$lo&CSU$c$lo^(CSU$b$lo^K$185)&CSU$d$lo;
;** 147	-----------------------    C$66 = ((CSU$b$hi>>9|CSU$b$lo<<23)^(CSU$b$lo>>18|CSU$b$hi<<14)^(CSU$b$lo>>14|CSU$b$hi<<18))+C$67;
;** 147	-----------------------    C$65 = *((const unsigned long *)U$830-40);
;** 147	-----------------------    C$64 = C$65+C$66;
;** 147	-----------------------    C$63 = U$295[4];
;** 147	-----------------------    C$62 = C$63+C$64;
;** 147	-----------------------    CSU$r$lo = CSU$e$lo+C$62;
;** 147	-----------------------    CSU$r$hi = (unsigned long)(CSU$r$lo < CSU$e$lo)+((unsigned long *)U$11)[6]+(unsigned long)(C$62 < C$63)+((const unsigned long *)U$830)[-6]+(unsigned long)(C$64 < C$65)+(unsigned long)(C$66 < C$67)+((CSU$b$hi^K$185)&CSU$d$hi^CSU$b$hi&CSU$c$hi)+((CSU$b$lo>>9|CSU$b$hi<<23)^(CSU$b$hi>>14|CSU$b$lo<<18)^(CSU$b$hi>>18|CSU$b$lo<<14))+CSU$e$hi;
;** 147	-----------------------    C$24 = (unsigned long)(CSU$f$lo < CSU$r$lo)+CSU$r$hi+CSU$q$hi;
;** 147	-----------------------    C$50 = C$24&C$36;
;** 147	-----------------------    C$60 = (C$24>>7|CSU$f$lo<<25)^(C$24>>2|CSU$f$lo<<30)^(CSU$f$lo>>28|C$24<<4);
;** 147	-----------------------    C$48 = CSU$f$lo&CSU$g$lo;
;** 147	-----------------------    C$57 = (CSU$f$lo&CSU$h$lo^C$59^C$48)+C$60;
;** 147	-----------------------    CSU$q$hi = (unsigned long)(C$57 < C$60)+((CSU$f$lo>>7|C$24<<25)^(C$24>>28|CSU$f$lo<<4)^(CSU$f$lo>>2|C$24<<30))+(C$24&CSU$h$hi^C$61^C$50);
;** 147	-----------------------    C$58 = CSU$a$lo+CSU$r$lo;
;** 147	-----------------------    CSU$a$hi += (unsigned long)(C$58 < CSU$a$lo)+CSU$r$hi;
;** 147	-----------------------    CSU$a$lo = C$58;
;** 147	-----------------------    CSU$e$lo = CSU$r$lo+C$57;
;** 148	-----------------------    C$56 = CSU$a$lo&CSU$b$lo^(CSU$a$lo^K$185)&CSU$c$lo;
;** 148	-----------------------    C$55 = ((CSU$a$hi>>9|CSU$a$lo<<23)^(CSU$a$lo>>18|CSU$a$hi<<14)^(CSU$a$lo>>14|CSU$a$hi<<18))+C$56;
;** 148	-----------------------    C$54 = *((const unsigned long *)U$830-24);
;** 148	-----------------------    C$53 = C$54+C$55;
;** 148	-----------------------    C$52 = U$295[6];
;** 148	-----------------------    C$51 = C$52+C$53;
;** 148	-----------------------    CSU$r$lo = CSU$d$lo+C$51;
;** 148	-----------------------    CSU$r$hi = (unsigned long)(CSU$r$lo < CSU$d$lo)+((unsigned long *)U$11)[8]+(unsigned long)(C$51 < C$52)+((const unsigned long *)U$830)[-4]+(unsigned long)(C$53 < C$54)+(unsigned long)(C$55 < C$56)+((CSU$a$hi^K$185)&CSU$c$hi^CSU$a$hi&CSU$b$hi)+((CSU$a$lo>>9|CSU$a$hi<<23)^(CSU$a$hi>>14|CSU$a$lo<<18)^(CSU$a$hi>>18|CSU$a$lo<<14))+CSU$d$hi;
;** 148	-----------------------    C$14 = (unsigned long)(CSU$e$lo < CSU$r$lo)+CSU$r$hi+CSU$q$hi;
;** 148	-----------------------    C$39 = C$14&C$24;
;** 148	-----------------------    C$49 = (C$14>>7|CSU$e$lo<<25)^(C$14>>2|CSU$e$lo<<30)^(CSU$e$lo>>28|C$14<<4);
;** 148	-----------------------    C$37 = CSU$e$lo&CSU$f$lo;
;** 148	-----------------------    C$46 = (CSU$e$lo&CSU$g$lo^C$48^C$37)+C$49;
;** 148	-----------------------    CSU$q$hi = (unsigned long)(C$46 < C$49)+((CSU$e$lo>>7|C$14<<25)^(C$14>>28|CSU$e$lo<<4)^(CSU$e$lo>>2|C$14<<30))+(C$14&C$36^C$50^C$39);
;** 148	-----------------------    C$47 = CSU$h$lo+CSU$r$lo;
;** 148	-----------------------    CSU$h$hi += (unsigned long)(C$47 < CSU$h$lo)+CSU$r$hi;
;** 148	-----------------------    CSU$h$lo = C$47;
;** 148	-----------------------    CSU$d$lo = CSU$r$lo+C$46;
;** 148	-----------------------    CSU$d$hi = (unsigned long)(CSU$d$lo < CSU$r$lo)+CSU$r$hi+CSU$q$hi;
;** 149	-----------------------    C$45 = CSU$h$lo&CSU$a$lo^(CSU$h$lo^K$185)&CSU$b$lo;
;** 149	-----------------------    C$44 = ((CSU$h$hi>>9|CSU$h$lo<<23)^(CSU$h$lo>>18|CSU$h$hi<<14)^(CSU$h$lo>>14|CSU$h$hi<<18))+C$45;
;** 149	-----------------------    C$43 = *((const unsigned long *)U$830-8);
;** 149	-----------------------    C$42 = C$43+C$44;
;** 149	-----------------------    C$41 = U$295[8];
;** 149	-----------------------    C$40 = C$41+C$42;
;** 149	-----------------------    CSU$r$lo = CSU$c$lo+C$40;
;** 149	-----------------------    CSU$r$hi = (unsigned long)(CSU$r$lo < CSU$c$lo)+((unsigned long *)U$11)[10]+(unsigned long)(C$40 < C$41)+((const unsigned long *)U$830)[-2]+(unsigned long)(C$42 < C$43)+(unsigned long)(C$44 < C$45)+((CSU$h$hi^K$185)&CSU$b$hi^CSU$h$hi&CSU$a$hi)+((CSU$h$lo>>9|CSU$h$hi<<23)^(CSU$h$hi>>14|CSU$h$lo<<18)^(CSU$h$hi>>18|CSU$h$lo<<14))+CSU$c$hi;
;** 149	-----------------------    C$27 = CSU$d$hi&C$14;
;** 149	-----------------------    C$38 = (CSU$d$hi>>7|CSU$d$lo<<25)^(CSU$d$hi>>2|CSU$d$lo<<30)^(CSU$d$lo>>28|CSU$d$hi<<4);
;** 149	-----------------------    C$25 = CSU$d$lo&CSU$e$lo;
;** 149	-----------------------    C$34 = (CSU$d$lo&CSU$f$lo^C$37^C$25)+C$38;
;** 149	-----------------------    CSU$q$hi = (unsigned long)(C$34 < C$38)+((CSU$d$lo>>7|CSU$d$hi<<25)^(CSU$d$hi>>28|CSU$d$lo<<4)^(CSU$d$lo>>2|CSU$d$hi<<30))+(CSU$d$hi&C$24^C$39^C$27);
;** 149	-----------------------    C$35 = CSU$g$lo+CSU$r$lo;
;** 149	-----------------------    CSU$g$hi = (unsigned long)(C$35 < CSU$g$lo)+CSU$r$hi+C$36;
;** 149	-----------------------    CSU$g$lo = C$35;
;** 149	-----------------------    CSU$c$lo = CSU$r$lo+C$34;
;** 149	-----------------------    CSU$c$hi = (unsigned long)(CSU$c$lo < CSU$r$lo)+CSU$r$hi+CSU$q$hi;
;** 150	-----------------------    C$33 = CSU$g$lo&CSU$h$lo^(CSU$g$lo^K$185)&CSU$a$lo;
;** 150	-----------------------    C$32 = ((CSU$g$hi>>9|CSU$g$lo<<23)^(CSU$g$lo>>18|CSU$g$hi<<14)^(CSU$g$lo>>14|CSU$g$hi<<18))+C$33;
;** 150	-----------------------    C$31 = *((const unsigned long *)U$830+8);
;** 150	-----------------------    C$30 = C$31+C$32;
;** 150	-----------------------    C$29 = U$295[10];
;** 150	-----------------------    C$28 = C$29+C$30;
;** 150	-----------------------    CSU$r$lo = CSU$b$lo+C$28;
;** 150	-----------------------    CSU$r$hi = (unsigned long)(CSU$r$lo < CSU$b$lo)+((unsigned long *)U$11)[12]+(unsigned long)(C$28 < C$29)+*(const unsigned long *)U$830+(unsigned long)(C$30 < C$31)+(unsigned long)(C$32 < C$33)+((CSU$g$hi^K$185)&CSU$a$hi^CSU$g$hi&CSU$h$hi)+((CSU$g$lo>>9|CSU$g$hi<<23)^(CSU$g$hi>>14|CSU$g$lo<<18)^(CSU$g$hi>>18|CSU$g$lo<<14))+CSU$b$hi;
;** 150	-----------------------    C$15 = CSU$c$hi&CSU$d$hi;
;** 150	-----------------------    C$26 = (CSU$c$hi>>7|CSU$c$lo<<25)^(CSU$c$hi>>2|CSU$c$lo<<30)^(CSU$c$lo>>28|CSU$c$hi<<4);
;** 150	-----------------------    C$9 = CSU$c$lo&CSU$d$lo;
;** 150	-----------------------    C$22 = (CSU$c$lo&CSU$e$lo^C$25^C$9)+C$26;
;** 150	-----------------------    CSU$q$hi = (unsigned long)(C$22 < C$26)+((CSU$c$lo>>7|CSU$c$hi<<25)^(CSU$c$hi>>28|CSU$c$lo<<4)^(CSU$c$lo>>2|CSU$c$hi<<30))+(CSU$c$hi&C$14^C$27^C$15);
;** 150	-----------------------    C$23 = CSU$f$lo+CSU$r$lo;
;** 150	-----------------------    CSU$f$hi = (unsigned long)(C$23 < CSU$f$lo)+CSU$r$hi+C$24;
;** 150	-----------------------    CSU$f$lo = C$23;
;** 150	-----------------------    CSU$b$lo = CSU$r$lo+C$22;
;** 150	-----------------------    CSU$b$hi = (unsigned long)(CSU$b$lo < CSU$r$lo)+CSU$r$hi+CSU$q$hi;
;** 151	-----------------------    C$21 = CSU$f$lo&CSU$g$lo^(CSU$f$lo^K$185)&CSU$h$lo;
;** 151	-----------------------    C$20 = ((CSU$f$hi>>9|CSU$f$lo<<23)^(CSU$f$lo>>18|CSU$f$hi<<14)^(CSU$f$lo>>14|CSU$f$hi<<18))+C$21;
;** 151	-----------------------    C$19 = *((const unsigned long *)U$181+120);
;** 151	-----------------------    C$18 = C$19+C$20;
;** 151	-----------------------    C$17 = ((unsigned long *)U$11)[15];
;** 151	-----------------------    C$16 = C$17+C$18;
;** 151	-----------------------    CSU$r$lo = CSU$a$lo+C$16;
;** 151	-----------------------    CSU$r$hi = (unsigned long)(CSU$r$lo < CSU$a$lo)+((unsigned long *)U$11)[14]+(unsigned long)(C$16 < C$17)+((const unsigned long *)U$830)[2]+(unsigned long)(C$18 < C$19)+(unsigned long)(C$20 < C$21)+((CSU$f$hi^K$185)&CSU$h$hi^CSU$f$hi&CSU$g$hi)+((CSU$f$lo>>9|CSU$f$hi<<23)^(CSU$f$hi>>14|CSU$f$lo<<18)^(CSU$f$hi>>18|CSU$f$lo<<14))+CSU$a$hi;
;** 151	-----------------------    U$278 = CSU$b$hi&CSU$c$hi;
;** 151	-----------------------    C$11 = (CSU$b$hi>>7|CSU$b$lo<<25)^(CSU$b$hi>>2|CSU$b$lo<<30)^(CSU$b$lo>>28|CSU$b$hi<<4);
;** 151	-----------------------    C$10 = CSU$b$lo&CSU$d$lo;
;** 151	-----------------------    C$12 = CSU$b$lo&CSU$c$lo;
;** 151	-----------------------    CSU$q$hi = (unsigned long)((C$9^C$12^C$10)+C$11 < C$11)+((CSU$b$lo>>7|CSU$b$hi<<25)^(CSU$b$hi>>28|CSU$b$lo<<4)^(CSU$b$lo>>2|CSU$b$hi<<30))+(CSU$b$hi&CSU$d$hi^C$15^U$278);
;** 151	-----------------------    C$13 = CSU$e$lo+CSU$r$lo;
;** 151	-----------------------    CSU$e$hi = (unsigned long)(C$13 < CSU$e$lo)+CSU$r$hi+C$14;
;** 151	-----------------------    CSU$e$lo = C$13;
;** 151	-----------------------    U$244 = C$12;
;** 151	-----------------------    CSU$a$lo = (C$9^U$244^C$10)+C$11+CSU$r$lo;
;** 151	-----------------------    CSU$a$hi = (unsigned long)(CSU$a$lo < CSU$r$lo)+CSU$r$hi+CSU$q$hi;
;** 127	-----------------------    U$11 += 128;
;** 127	-----------------------    U$181 += 128;
;** 127	-----------------------    U$295 += 16;
;** 127	-----------------------    U$830 += 128;
;** 127	-----------------------    if ( --L$3 ) goto g6;
;** 157	-----------------------    (*(struct $$fake0 *)(struct $$fake0 (* const)[8])s).lo = (*(struct $$fake0 *)(struct $$fake0 (* const)[8])s).lo+CSU$a$lo;

           LDW     .D2T1   *+SP(1332),A22    ; |144| 
||         SHL     .S2     B17:B16,23,B7:B6  ; |144| 
||         MVK     .L1     0xffffffff,A4
||         AND     .L2     B20,B16,B1        ; |144| 
||         MVK     .S1     0xffffffff,A28
||         SUB     .D1     A0,1,A0           ; |127| 

           LDW     .D2T1   *+SP(1336),A23    ; |144| 
||         SHRU    .S2     B17:B16,18,B25:B24 ; |144| 
||         XOR     .L1X    A4,B16,A20        ; |144| 
||         AND     .L2     B21,B17,B0        ; |144| 

           LDW     .D2T1   *+SP(1340),A26    ; |144| 
           SHRU    .S2     B17:B16,14,B27:B26 ; |144| 

           LDW     .D2T1   *+SP(1356),A27    ; |144| 
||         MVK     .S2     0xff,B31
||         AND     .L2X    B18,A20,B2        ; |144| 

           XOR     .L2     B31,B17,B30       ; |144| 
||         XOR     .D2     B2,B1,B28         ; |144| 
||         MVK     .S2     0xff,B1

           SHL     .S1     A23:A22,14,A17:A16 ; |144| 

           SHRU    .S1     A23:A22,9,A5:A4   ; |144| 
||         OR      .L1X    A16,B24,A16       ; |144| 

           OR      .L1X    B6,A4,A21         ; |144| 
||         OR      .L2X    A17,B25,B6        ; |144| 

           OR      .L1X    B7,A5,A31         ; |144| 
||         SHL     .S1     A23:A22,18,A5:A4  ; |144| 
||         XOR     .D1     A16,A21,A20       ; |144| 

           OR      .L1X    A4,B26,A4         ; |144| 
||         LDDW    .D1T1   *+A26(8),A17:A16  ; |144| 
||         AND     .L2     B19,B30,B26       ; |144| 

           XOR     .L1X    B6,A31,A24        ; |144| 
||         XOR     .S1     A4,A20,A21        ; |144| 
||         OR      .L2X    A5,B27,B24        ; |144| 
||         LDDW    .D1T1   *+A27(8),A5:A4    ; |144| 
||         XOR     .S2     B26,B0,B29        ; |144| 

           LDW     .D2T1   *+SP(1316),A31    ; |144| 

           XOR     .L2X    B24,A24,B6        ; |144| 
||         SHRU    .S1     A23:A22,14,A25:A24 ; |144| 

           ADDU    .L2X    A21,B29:B28,B27:B26 ; |144| 
||         LDDW    .D1T1   *A27,A21:A20      ; |144| 

           ADD     .L2     B6,B27,B27        ; |144| 
||         EXTU    .S1     A17,24,24,A30     ; |144| 

           ADDU    .L2X    A16,B27:B26,B7:B6 ; |144| 
||         EXTU    .S1     A5,24,24,A29      ; |144| 
||         EXTU    .S2     B27,24,24,B27     ; |144| 

           ADD     .L2X    A17,B7,B7         ; |144| 
||         XOR     .L1     A28,A22,A17       ; |144| 

           ADDU    .L2X    A4,B7:B6,B3:B2    ; |144| 
||         EXTU    .S2     B7,24,24,B25      ; |144| 

           ADD     .L2X    A5,B3,B3          ; |144| 
||         LDW     .D2T1   *+SP(1336),A5

           EXTU    .S2     B3,24,24,B30      ; |144| 
||         CMPEQ   .L1X    B25,A30,A2        ; |144| 

   [ A2]   CMPLTU  .L1X    B6,A16,A16        ; |144| 
           CMPEQ   .L1X    B30,A29,A1        ; |144| 
   [ A1]   CMPLTU  .L1X    B2,A4,A4          ; |144| 

   [!A1]   CMPLTU  .L1X    B30,A29,A4        ; |144| 
||         LDW     .D2T1   *+SP(1336),A1     ; |144| 
||         SHL     .S1     A23:A22,23,A29:A28 ; |144| 
||         SHRU    .S2     B17:B16,9,B31:B30 ; |144| 

   [!A2]   CMPLTU  .L1X    B25,A30,A16       ; |144| 
||         ADDU    .L2     B4,B3:B2,B25:B24  ; |144| 
||         LDW     .D2T1   *+SP(1320),A2     ; |144| 

           ADD     .L2     B5,B25,B25        ; |144| 
||         LDW     .D2T1   *+SP(1332),A30    ; |144| 
||         EXTU    .S2     B5,24,24,B5       ; |144| 

           EXTU    .S2     B25,24,24,B7      ; |144| 
||         SHRU    .S1     A23:A22,18,A27:A26 ; |144| 
||         LDDW    .D1T1   *A26,A23:A22      ; |144| 

           CMPEQ   .L2     B7,B5,B0          ; |144| 

   [ B0]   CMPLTU  .L2     B24,B4,B5         ; |144| 
||         EXTU    .S2     B29,24,24,B4      ; |144| 
||         OR      .D2X    A28,B30,B29       ; |144| 

   [!B0]   CMPLTU  .L2     B7,B5,B5          ; |144| 
||         AND     .L1     A2,A1,A1          ; |144| 
||         LDW     .D2T1   *+SP(1360),A2     ; |144| 
||         SHL     .S2     B17:B16,18,B7:B6  ; |144| 

           AND     .L1     A31,A30,A31       ; |144| 
||         XOR     .D1X    B1,A5,A30         ; |144| 
||         SHR     .S1     A4,31,A5          ; |144| 
||         SHR     .S2     B5,31,B2          ; |144| 
||         CMPEQ   .L2     B27,B4,B0         ; |144| 
||         OR      .D2X    A29,B31,B1        ; |144| 

           ADDU    .L1X    B5,A21:A20,A21:A20 ; |144| 
|| [!B0]   CMPLTU  .L2     B27,B4,B4         ; |144| 
||         MVK     .S2     0xff,B30

           ADDU    .L1     A20,A5:A4,A5:A4   ; |144| 
||         OR      .S1X    B6,A24,A29        ; |144| 
|| [ B0]   CMPLTU  .L2     B26,B28,B4        ; |144| 
||         SHL     .S2     B17:B16,14,B27:B26 ; |144| 

           ADDU    .L1     A4,A23:A22,A21:A20 ; |144| 
||         ADD     .S1X    B2,A21,A4         ; |144| 
||         LDW     .D2T1   *+SP(1364),A22    ; |144| 
||         MV      .S2     B4,B6             ; |144| 
||         ADDU    .L2X    A8,B25:B24,B5:B4  ; |144| 

           AND     .L1     A2,A17,A24        ; |144| 
||         SHR     .S1     A16,31,A17        ; |144| 
||         OR      .D1X    B7,A25,A23        ; |144| 
||         SHR     .S2     B6,31,B7          ; |144| 
||         OR      .L2X    B27,A27,B27       ; |144| 
||         LDW     .D2T2   *+SP(1368),B2     ; |145| 

           ADDU    .L1     A20,A17:A16,A5:A4 ; |144| 
||         ADD     .S1     A4,A5,A16         ; |144| 
||         OR      .D1X    B26,A26,A20       ; |144| 
||         LDW     .D2T1   *+SP(1348),A26    ; |144| 

           ADD     .L1     A16,A21,A16       ; |144| 
||         EXTU    .S1     A9,24,24,A2       ; |144| 
||         ADD     .D1X    A9,B5,A9          ; |144| 
||         XOR     .L2X    A29,B29,B5        ; |144| 

           ADD     .L1     A16,A5,A17        ; |144| 
||         ADDU    .L2X    A4,B7:B6,B7:B6    ; |144| 
||         XOR     .D1     A31,A24,A4        ; |144| 
||         STW     .D2T1   A9,*+SP(1384)     ; |144| 
||         EXTU    .S1     A9,24,24,A9       ; |144| 

           AND     .L1     A22,A30,A21       ; |144| 
||         XOR     .L2X    A23,B1,B28        ; |144| 
||         MVK     .S1     0xffffffff,A25
||         LDW     .D2T1   *+SP(1348),A24    ; |144| 

           XOR     .S1     A1,A21,A5         ; |144| 
||         ADD     .L2X    A17,B7,B26        ; |144| 
||         XOR     .S2     B27,B28,B7        ; |144| 
||         CMPEQ   .L1     A9,A2,A1          ; |144| 
||         LDW     .D2T1   *+SP(1356),A31    ; |145| 

           ADDU    .L1X    B6,A5:A4,A5:A4    ; |144| 
||         XOR     .L2X    A20,B5,B6         ; |144| 
||         LDW     .D2T2   *+SP(1384),B5     ; |144| 

           ADD     .S1X    B26,A5,A5         ; |144| 
|| [!A1]   CMPLTU  .L1     A9,A2,A8          ; |144| 
||         LDW     .D2T1   *+SP(1344),A9     ; |145| 

           ADDU    .L2X    A4,B7:B6,B27:B26  ; |144| 
||         LDW     .D2T2   *+SP(1380),B7     ; |144| 
|| [ A1]   CMPLTU  .L1X    B4,A8,A8          ; |144| 

           LDW     .D2T2   *+SP(1376),B6     ; |144| 
||         ADD     .L2X    A5,B27,B31        ; |144| 
||         MV      .L1     A8,A28            ; |144| 

           SHR     .S1     A28,31,A27        ; |144| 
||         LDW     .D2T1   *+SP(1348),A8     ; |145| 

           SHRU    .S2     B5:B4,18,B1:B0    ; |145| 
||         LDW     .D2T1   *+SP(1324),A4     ; |145| 

           SHL     .S2     B5:B4,23,B29:B28  ; |145| 
||         LDW     .D2T1   *+SP(1328),A5     ; |145| 

           LDW     .D2T1   *+SP(1340),A1     ; |145| 

           ADDU    .L2     B26,B7:B6,B7:B6   ; |144| 
||         XOR     .S2X    A25,B4,B26        ; |145| 
||         LDW     .D2T1   *+SP(1344),A25    ; |144| 

           AND     .L2     B20,B26,B11       ; |145| 
||         XOR     .S2     B30,B5,B26        ; |145| 
||         AND     .D2     B16,B4,B30        ; |145| 
||         SHRU    .S1     A9:A8,7,A9:A8     ; |144| 

           MV      .L1X    B6,A13            ; |144| 
||         ADD     .L2     B31,B7,B6         ; |144| 
||         ADD     .S2     B31,B7,B7         ; |144| 
||         AND     .D2     B17,B5,B31        ; |145| 

           AND     .L2     B21,B26,B10       ; |145| 
||         XOR     .S2     B11,B30,B30       ; |145| 
||         AND     .L1X    A4,B8,A22         ; |144| 

           MV      .L1X    B6,A12            ; |145| 
||         MV      .L2X    A13,B6            ; |145| 
||         XOR     .S2     B10,B31,B31       ; |145| 

           ADDU    .L2X    A28,B7:B6,B7:B6   ; |144| 
||         SHRU    .S1     A25:A24,2,A25:A24 ; |144| 
||         AND     .L1X    A5,B9,A23         ; |144| 

           ADD     .S2X    A27,B7,B7         ; |144| 
||         ADDU    .L2     B6,B23:B22,B23:B22 ; |144| 
||         LDW     .D2T1   *+SP(1344),A27    ; |144| 

           ADD     .L2     B7,B23,B23        ; |144| 
||         LDDW    .D2T2   *-B2(72),B7:B6    ; |145| 
||         SHRU    .S2     B5:B4,14,B3:B2    ; |145| 

           SHL     .S2     B23:B22,18,B27:B26 ; |145| 
           SHRU    .S2     B23:B22,9,B11:B10 ; |145| 
           OR      .L2     B27,B3,B27        ; |145| 
           SHL     .S1     A27:A26,4,A27:A26 ; |144| 
           MV      .L1X    B6,A29            ; |145| 

           MV      .L1X    B7,A17            ; |145| 
||         SHL     .S2     B23:B22,14,B7:B6  ; |145| 

           OR      .L2     B26,B2,B28        ; |145| 
||         OR      .S2     B6,B0,B26         ; |145| 
||         OR      .D2     B28,B10,B6        ; |145| 

           OR      .L2     B29,B11,B0        ; |145| 
||         LDW     .D2T2   *+SP(1352),B29    ; |145| 
||         XOR     .S2     B26,B6,B6         ; |145| 

           OR      .L2     B7,B1,B2          ; |145| 
||         XOR     .S2     B28,B6,B7         ; |145| 

           XOR     .L2     B2,B0,B26         ; |145| 
||         MV      .S2X    A29,B2            ; |145| 

           XOR     .D2     B27,B26,B1        ; |145| 
||         ADDU    .L2     B7,B31:B30,B27:B26 ; |145| 
||         SHL     .S2     B9:B8,30,B7:B6    ; |144| 

           ADD     .L2     B1,B27,B27        ; |145| 

           LDDW    .D2T2   *B29,B11:B10      ; |145| 
||         ADDU    .L2     B2,B27:B26,B29:B28 ; |145| 
||         MV      .L1X    B6,A21            ; |144| 
||         SHL     .S2     B9:B8,25,B3:B2    ; |144| 

           ADD     .L2X    A17,B29,B29       ; |145| 

           OR      .L1X    B7,A25,A25        ; |144| 
||         EXTU    .S2     B27,24,24,B27     ; |145| 

           OR      .L1X    B3,A9,A9          ; |144| 
||         EXTU    .S2     B19,24,24,B3      ; |145| 
||         OR      .L2X    B2,A8,B2          ; |144| 

           XOR     .L1     A25,A9,A9         ; |144| 
||         MV      .S1X    B5,A25            ; |144| 

           ADDU    .L2     B10,B29:B28,B1:B0 ; |145| 

           ADD     .L2     B11,B1,B6         ; |145| 
||         ADD     .D2     B11,B1,B1         ; |145| 
||         EXTU    .S2     B11,24,24,B11     ; |145| 

           MV      .L1X    B0,A20            ; |144| 
||         ADDU    .L2     B18,B1:B0,B1:B0   ; |145| 

           STW     .D2T2   B0,*+SP(1388)     ; |145| 
||         ADD     .L2     B19,B1,B13        ; |145| 
||         ADD     .S2     B19,B1,B19        ; |145| 
||         MV      .L1X    B6,A16            ; |145| 

           LDW     .D2T2   *+SP(1296),B0     ; |145| 
||         MV      .L2X    A15,B6            ; |145| 

           AND     .L2     B6,B9,B12         ; |144| 
||         SHRU    .S2     B9:B8,28,B7:B6    ; |144| 

           NOP             1

           MV      .L2X    A16,B6            ; |144| 
||         MV      .L1X    B6,A30            ; |144| 

           EXTU    .S2     B6,24,24,B6       ; |145| 
||         OR      .S1     A26,A30,A8        ; |144| 
||         XOR     .L1X    A14,B12,A28       ; |144| 

           XOR     .S1     A23,A28,A2        ; |144| 
||         MV      .L1X    B7,A16            ; |145| 
||         LDW     .D2T2   *+SP(1372),B19    ; |144| 
||         MV      .S2     B19,B0            ; |144| 
||         AND     .L2     B0,B8,B1          ; |144| 

           MVK     .S1     0xffffffff,A31
||         LDDW    .D1T1   *+A31(16),A27:A26 ; |145| 
||         OR      .L1     A27,A16,A21       ; |144| 
||         MV      .L2X    A21,B7            ; |145| 

           XOR     .L1     A21,A9,A9         ; |144| 
||         MV      .S1X    B4,A24            ; |144| Define a twin register
||         OR      .L2X    B7,A24,B7         ; |144| 

           XOR     .L2     B7,B2,B7          ; |144| 
           NOP             1

           EXTU    .S2     B0,24,24,B19      ; |145| 
||         CMPEQ   .L2     B6,B11,B1         ; |145| 
||         XOR     .D2     B19,B1,B12        ; |144| 
||         XOR     .L1X    A8,B7,A8          ; |144| 

           CMPEQ   .L2     B19,B3,B0         ; |145| 

           MV      .S2X    A17,B6            ; |145| 
|| [ B0]   LDW     .D2T2   *+SP(1388),B19    ; |145| 
||         XOR     .L1X    A22,B12,A16       ; |144| 
|| [!B1]   CMPLTU  .L2     B6,B11,B10        ; |145| 

           EXTU    .S1     A9,24,24,A9       ; |144| 
||         ADDU    .L1     A16,A9:A8,A17:A16 ; |144| 
|| [!B0]   CMPLTU  .L2     B19,B3,B19        ; |145| 
||         EXTU    .S2     B6,24,24,B2       ; |145| 

           EXTU    .S2     B29,24,24,B1      ; |145| 
||         XOR     .S1X    A31,B22,A2        ; |145| 
||         ADD     .L1     A2,A17,A17        ; |144| 
|| [ B1]   CMPLTU  .L2X    A20,B10,B10       ; |145| 

           ADDU    .L1X    B24,A17:A16,A21:A20 ; |144| 
||         SHL     .S2     B23:B22,23,B7:B6  ; |145| 

           STW     .D2T1   A20,*+SP(1380)    ; |145| 
||         SHR     .S2     B10,31,B11        ; |145| 

           SHRU    .S1     A25:A24,9,A21:A20 ; |145| 
||         EXTU    .S2     B31,24,24,B18     ; |145| 
|| [ B0]   CMPLTU  .L2     B19,B18,B19       ; |145| 
||         MV      .D2X    A21,B12           ; |145| 

           CMPEQ   .L2     B1,B2,B0          ; |145| 
||         SHR     .S2     B19,31,B31        ; |145| 
||         OR      .L1X    B6,A20,A28        ; |145| 
||         ADD     .D2     B25,B12,B12       ; |144| 

           LDDW    .D1T1   *+A1(16),A27:A26  ; |145| 
||         ADDU    .L1X    B19,A27:A26,A25:A24 ; |145| 
|| [!B0]   CMPLTU  .L2     B1,B2,B28         ; |145| 

           LDW     .D2T2   *+SP(1296),B31    ; |145| 
||         CMPEQ   .L2     B27,B18,B2        ; |145| 
||         ADD     .L1X    B31,A25,A25       ; |145| 

           SHL     .S2     B5:B4,18,B19:B18  ; |145| 
|| [!B2]   CMPLTU  .L2     B27,B18,B26       ; |145| 
||         OR      .L1X    B7,A21,A30        ; |145| 
||         LDW     .D2T1   *+SP(1332),A1     ; |145| 

   [ B0]   CMPLTU  .L2X    B28,A29,B28       ; |145| 
||         MVK     .S2     0xff,B7

           SHRU    .S2     B23:B22,14,B11:B10 ; |145| 
||         ADDU    .L2X    A24,B11:B10,B1:B0 ; |145| 
||         XOR     .D2     B7,B23,B29        ; |145| 

           OR      .S2     B18,B10,B6        ; |145| 
||         ADD     .D2X    A25,B1,B27        ; |145| 
|| [ B2]   CMPLTU  .L2     B26,B30,B26       ; |145| 

           LDW     .D2T1   *+SP(1320),A26    ; |145| 
||         MV      .S2X    A15,B0            ; |145| 
||         ADDU    .L1X    B0,A27:A26,A21:A20 ; |145| 
||         MV      .L2     B13,B7            ; |145| 

           LDW     .D2T2   *+SP(1388),B6     ; |145| 
||         XOR     .L1X    B6,A28,A11        ; |145| 
||         MV      .L2     B26,B18           ; |145| 
||         EXTU    .S2     B0,24,24,B30      ; |145| 

           LDW     .D2T1   *+SP(1336),A27    ; |145| 
||         ADD     .L1X    B27,A21,A31       ; |145| 
||         SHRU    .S2     B23:B22,18,B1:B0  ; |145| 
||         OR      .L2     B19,B11,B19       ; |145| 

           LDW     .D2T1   *+SP(1316),A24    ; |144| 
           AND     .L1X    A1,B22,A29        ; |145| 

           LDW     .D2T1   *+SP(1344),A25    ; |145| 
||         MV      .L1X    B12,A1            ; |145| 

           SHL     .S2     B5:B4,14,B7:B6    ; |145| 
||         ADDU    .L2     B31,B7:B6,B27:B26 ; |145| 

           EXTU    .S1     A5,24,24,A15      ; |146| 
||         ADD     .L2X    A15,B27,B27       ; |145| 
||         OR      .S2     B6,B0,B6          ; |145| 
||         AND     .L1X    A27,B23,A28       ; |145| 
||         OR      .D2     B7,B1,B7          ; |145| 

           EXTU    .S2     B27,24,24,B27     ; |145| 
||         STW     .D2T2   B27,*+SP(1392)    ; |145| 
||         AND     .L1X    A26,B29,A27       ; |145| 

           LDW     .D2T1   *+SP(1348),A28    ; |144| 
||         CMPEQ   .L2     B27,B30,B0        ; |145| 
||         EXTU    .S1     A17,24,24,A11     ; |144| 
||         XOR     .L1X    B6,A11,A26        ; |145| 
||         SHR     .S2     B28,31,B29        ; |145| 
||         XOR     .D1     A28,A27,A21       ; |145| 

           EXTU    .S1     A1,24,24,A30      ; |144| 
||         SHR     .S2     B18,31,B19        ; |145| 
||         XOR     .D1X    B19,A30,A2        ; |145| 
||         AND     .L1     A24,A2,A20        ; |145| 
|| [ B0]   LDW     .D2T2   *+SP(1296),B6     ; |145| 
||         ADDU    .L2X    A20,B29:B28,B29:B28 ; |145| 

           LDW     .D2T1   *+SP(1348),A24    ; |145| 
||         CMPEQ   .L1     A11,A9,A2         ; |144| 
||         XOR     .S1X    B7,A2,A27         ; |145| 
||         ADDU    .L2     B28,B19:B18,B3:B2 ; |145| 
||         ADD     .S2X    A31,B29,B31       ; |145| 
||         XOR     .D1     A29,A20,A20       ; |145| 

           LDW     .D2T1   *+SP(1392),A1     ; |145| 
|| [ A2]   CMPLTU  .L1     A16,A8,A16        ; |144| 
||         SHRU    .S2     B9:B8,7,B19:B18   ; |144| 
|| [!B0]   CMPLTU  .L2     B27,B30,B27       ; |145| 

           ADDU    .L1X    B2,A21:A20,A21:A20 ; |145| 
||         LDW     .D2T1   *+SP(1344),A29    ; |145| 
||         MVK     .S2     0xff,B28

   [!A2]   CMPLTU  .L1     A11,A9,A16        ; |144| 
||         LDW     .D2T1   *+SP(1344),A31    ; |145| 

           LDW     .D2T1   *+SP(1348),A28    ; |145| 
||         AND     .S1     A6,A28,A26        ; |144| 
||         SHL     .S2     B9:B8,4,B7:B6     ; |144| 
|| [ B0]   CMPLTU  .L2     B26,B6,B27        ; |145| 
||         ADDU    .L1     A20,A27:A26,A9:A8 ; |145| 

           SHRU    .S1     A25:A24,28,A25:A24 ; |144| 
||         LDW     .D2T1   *+SP(1360),A20    ; |144| 
||         SHR     .S2     B27,31,B1         ; |145| 

           EXTU    .S2     B25,24,24,B31     ; |144| 
||         ADD     .L2     B31,B3,B7         ; |145| 
||         OR      .L1X    B7,A25,A17        ; |144| 
||         STW     .D2T1   A1,*+SP(1400)     ; |145| 

           LDW     .D2T1   *+SP(1348),A25    ; |144| 
||         OR      .L2X    B6,A24,B6         ; |144| 

           CMPEQ   .L1X    A30,B31,A1        ; |144| 
||         STW     .D2T2   B26,*+SP(1396)    ; |145| 

           LDW     .D2T1   *+SP(1348),A30    ; |145| 
|| [!A1]   CMPLTU  .L1X    A30,B31,A11       ; |144| 
||         SHL     .S1     A29:A28,25,A29:A28 ; |144| 

           LDW     .D2T1   *+SP(1364),A21    ; |144| 
||         ADD     .L1X    B7,A21,A27        ; |145| 

           ADD     .L1     A27,A9,A2         ; |145| 
           MV      .S1     A31,A27           ; |144| 
           LDW     .D2T1   *+SP(1400),A9     ; |144| 
           LDW     .D2T2   *+SP(1396),B2     ; |146| 

           OR      .D1X    A29,B19,A25       ; |144| 
||         AND     .S1     A18,A25,A8        ; |144| 
||         ADDU    .L1     A8,A21:A20,A21:A20 ; |145| 

           MV      .D1     A31,A16           ; |144| 
||         MV      .L2X    A16,B18           ; |144| 
||         OR      .L1X    A28,B18,A30       ; |144| 
||         SHL     .S1     A31:A30,30,A29:A28 ; |144| 
||         STW     .D2T1   A8,*+SP(1372)     ; |144| 

   [ A1]   LDW     .D2T1   *+SP(1380),A16    ; |144| 
||         AND     .S1     A7,A16,A2         ; |144| 
||         ADD     .L1     A2,A21,A21        ; |145| 
||         AND     .D1     A19,A27,A8        ; |144| 
||         SHR     .S2     B18,31,B19        ; |144| 

           STW     .D2T1   A8,*+SP(1376)     ; |145| 
||         XOR     .L1     A17,A25,A24       ; |144| 
||         XOR     .S1X    B6,A30,A27        ; |144| 

           LDW     .D2T1   *+SP(1396),A8     ; |144| 
           LDW     .D2T1   *+SP(1396),A30    ; |146| 
           LDW     .D2T1   *+SP(1400),A31    ; |146| 

           SHRU    .S2     B9:B8,2,B25:B24   ; |144| 
||         XOR     .D1     A10,A26,A2        ; |144| 
||         LDW     .D2T1   *+SP(1376),A3
||         XOR     .S1     A3,A2,A1          ; |144| 
|| [ A1]   CMPLTU  .L1X    A16,B24,A11       ; |144| 

           ADDU    .L1X    B27,A21:A20,A17:A16 ; |145| 
||         OR      .L2X    A29,B25,B7        ; |144| 

           SHL     .S1     A9:A8,23,A7:A6    ; |146| 
||         ADDU    .L1     A16,A7:A6,A9:A8   ; |145| 
||         ADD     .D1X    B1,A17,A25        ; |145| 
||         OR      .L2X    A28,B24,B6        ; |144| 

           STW     .D2T1   A9,*+SP(1364)     ; |146| 
||         MV      .L1     A30,A26
||         XOR     .L2X    B6,A27,B6         ; |144| 

           STW     .D2T1   A8,*+SP(1360)     ; |146| 
||         MV      .L2X    A31,B25

           LDW     .D2T1   *+SP(1400),A9     ; |146| 
||         XOR     .L2X    B7,A24,B7         ; |144| 
||         XOR     .L1     A3,A1,A3          ; |144| 
||         MV      .S2     B25,B31           ; |144| 

           LDW     .D2T1   *+SP(1396),A8     ; |146| 
||         MV      .L2X    A11,B26           ; |144| 

           LDW     .D2T1   *+SP(1364),A17    ; |146| 
||         ADDU    .L2     B26,B19:B18,B19:B18 ; |144| 
||         SHR     .S2     B26,31,B29        ; |144| 

           XOR     .S2     B28,B25,B18       ; |146| 
||         LDW     .D2T1   *+SP(1360),A16    ; |146| 
||         ADDU    .L2     B18,B7:B6,B7:B6   ; |144| 

           AND     .D2     B5,B31,B18        ; |146| 
||         ADD     .L2     B29,B19,B19       ; |144| 
||         AND     .S2     B17,B18,B30       ; |146| 

           AND     .S2     B4,B2,B19         ; |146| 
||         ADD     .L2     B19,B7,B26        ; |144| 
||         XOR     .D2     B30,B18,B3        ; |146| 

           SHRU    .S1     A9:A8,18,A29:A28  ; |146| 
||         MV      .L2X    A12,B7            ; |146| 

           LDW     .D2T1   *+SP(1340),A25    ; |146| 
||         MVK     .S1     0xffffffff,A17
||         ADD     .L1     A25,A17,A8        ; |145| 

           STW     .D2T1   A8,*+SP(1364)     ; |146| 
||         SHRU    .S1     A31:A30,14,A27:A26 ; |146| 
||         XOR     .L1     A17,A26,A30       ; |146| 

           LDW     .D2T1   *+SP(1364),A9     ; |146| 

           LDW     .D2T1   *+SP(1360),A8     ; |146| 
||         AND     .L2X    B16,A30,B24       ; |146| 

           LDW     .D2T1   *+SP(1364),A17    ; |146| 
||         XOR     .L2     B24,B19,B2        ; |146| 

           LDW     .D2T1   *+SP(1372),A31
           NOP             2

           SHL     .S1     A9:A8,14,A25:A24  ; |146| 
||         LDDW    .D1T1   *+A25(40),A9:A8   ; |146| 

           LDW     .D2T1   *+SP(1356),A29    ; |146| 
||         OR      .D1     A25,A29,A28       ; |146| 
||         SHRU    .S1     A17:A16,9,A11:A10 ; |146| 
||         OR      .L1     A24,A28,A24       ; |146| 

           SHL     .S1     A17:A16,18,A31:A30 ; |146| 
||         XOR     .D1     A31,A2,A2         ; |144| 
||         OR      .L1     A6,A10,A6         ; |146| 

           LDW     .D2T1   *+SP(1380),A24    ; |146| 
||         MV      .L2X    A13,B6            ; |146| 
||         ADDU    .L1X    B6,A3:A2,A3:A2    ; |144| 
||         OR      .D1     A30,A26,A1        ; |146| 
||         XOR     .S1     A24,A6,A6         ; |146| 

           OR      .D1     A31,A27,A26       ; |146| 
||         OR      .S1     A7,A11,A7         ; |146| 
||         XOR     .L1     A1,A6,A6          ; |146| 

           ADD     .S1X    B26,A3,A30        ; |144| 
||         ADDU    .L2X    A2,B7:B6,B25:B24  ; |144| 
||         XOR     .L1     A28,A7,A7         ; |146| 

           MV      .S1X    B12,A1            ; |146| 
||         LDDW    .D1T1   *+A29(40),A7:A6   ; |146| 
||         XOR     .L1     A26,A7,A3         ; |146| 
||         ADDU    .L2X    A6,B3:B2,B7:B6    ; |146| 

           MV      .L1X    B12,A25           ; |146| 
||         ADD     .L2X    A30,B25,B25       ; |144| 

           LDW     .D2T1   *+SP(1380),A1     ; |145| 
||         AND     .L1X    B9,A1,A3          ; |145| 
||         MV      .D1     A24,A31           ; |145| 
||         SHL     .S1     A25:A24,30,A27:A26 ; |145| 
||         SHRU    .S2     B25:B24,7,B1:B0   ; |145| 
||         ADD     .L2X    A3,B7,B7          ; |146| 

           MV      .L1X    B12,A30           ; |146| 
||         STW     .D2T1   A3,*+SP(1296)     ; |145| 
||         SHL     .S1     A25:A24,25,A29:A28 ; |145| 
||         SHRU    .S2     B25:B24,2,B31:B30 ; |145| 
||         ADDU    .L2X    A8,B7:B6,B19:B18  ; |146| 

           EXTU    .S2     B7,24,24,B7       ; |146| 
||         OR      .L1X    A28,B0,A28        ; |145| 
||         SHRU    .S1     A25:A24,28,A25:A24 ; |145| 
||         ADD     .L2X    A9,B19,B19        ; |146| 

           EXTU    .S2     B21,24,24,B31     ; |146| 
||         OR      .L1X    A27,B31,A2        ; |145| 
||         ADDU    .L2X    A6,B19:B18,B29:B28 ; |146| 

           SHL     .S2     B25:B24,4,B1:B0   ; |145| 
||         EXTU    .S1     A7,24,24,A31      ; |146| 
||         AND     .D1     A4,A31,A29        ; |145| 
||         ADD     .L2X    A7,B29,B29        ; |146| 
||         OR      .L1X    A29,B1,A27        ; |145| 

           LDW     .D2T1   *+SP(1296),A27    ; |146| 
||         OR      .S2X    B0,A24,B10        ; |145| 
||         AND     .D1     A5,A30,A7         ; |145| 
||         XOR     .S1     A22,A29,A22       ; |145| 
||         ADDU    .L2     B20,B29:B28,B27:B26 ; |146| 
||         XOR     .L1     A2,A27,A3         ; |145| 

           AND     .S2X    B8,A1,B21         ; |145| 
||         OR      .L1X    A26,B30,A26       ; |145| 
||         LDW     .D2T1   *+SP(1388),A30    ; |145| 
||         ADD     .L2     B21,B27,B27       ; |146| 

           XOR     .L2X    B21,A22,B1        ; |145| 
||         EXTU    .S2     B29,24,24,B29     ; |146| 
||         XOR     .S1     A26,A28,A29       ; |145| 
||         OR      .L1X    B1,A25,A25        ; |145| 

           XOR     .S1     A23,A7,A3         ; |145| 
||         EXTU    .S2     B27,24,24,B30     ; |146| 
||         XOR     .D1X    B10,A29,A10       ; |145| 
||         XOR     .L1     A25,A3,A11        ; |145| 

           EXTU    .S2     B19,24,24,B19     ; |146| 
||         CMPEQ   .L2     B30,B31,B0        ; |146| 

           CMPEQ   .L2X    B29,A31,B1        ; |146| 
||         ADDU    .L1X    B1,A11:A10,A3:A2  ; |145| 
||         XOR     .S1     A27,A3,A7         ; |145| 

           LDW     .D2T1   *+SP(1356),A7     ; |146| 
|| [ B0]   CMPLTU  .L2     B26,B20,B20       ; |146| 
||         EXTU    .S1     A11,24,24,A31     ; |145| 
|| [!B1]   CMPLTU  .L1X    B29,A31,A6        ; |146| 
||         ADD     .D1     A7,A3,A3          ; |145| 

           EXTU    .S1     A9,24,24,A30      ; |146| 
||         EXTU    .S2     B3,24,24,B31      ; |146| 
||         MV      .D2X    A4,B30            ; |146| 
|| [!B0]   CMPLTU  .L2     B30,B31,B20       ; |146| 
||         ADDU    .L1     A30,A3:A2,A23:A22 ; |145| 

           MV      .L1X    B12,A23           ; |146| 
||         SHR     .S2     B20,31,B29        ; |146| 
||         EXTU    .S1     A3,24,24,A3       ; |145| 
||         STW     .D2T1   A23,*+SP(1408)    ; |145| 

   [ B1]   CMPLTU  .L1X    B28,A6,A6         ; |146| 
||         CMPEQ   .L2X    B19,A30,B0        ; |146| 
||         LDW     .D2T1   *+SP(1408),A26    ; |146| 

           MV      .S1     A1,A22            ; |146| 
||         CMPEQ   .L2     B7,B31,B1         ; |146| 
||         MV      .D1     A17,A30           ; |146| 
|| [!B0]   CMPLTU  .L1X    B19,A30,A8        ; |146| 
||         STW     .D2T1   A22,*+SP(1404)    ; |145| 

           ADDU    .L2     B30,B27:B26,B19:B18 ; |146| 
|| [ B0]   CMPLTU  .L1X    B18,A8,A8         ; |146| 
||         LDW     .D2T2   *+SP(1368),B28    ; |145| 
||         LDDW    .D1T1   *+A7(32),A25:A24  ; |146| 
||         SHL     .S1     A23:A22,4,A29:A28 ; |145| 

   [ B1]   CMPLTU  .L2     B6,B2,B2          ; |146| 
||         AND     .L1X    A18,B24,A7        ; |145| 

           MVK     .L1     0xffffffff,A7
||         SHRU    .S2     B25:B24,28,B31:B30 ; |145| 
|| [!B1]   CMPLTU  .L2     B7,B31,B2         ; |146| 
||         STW     .D2T1   A7,*+SP(1416)     ; |145| 

           LDW     .D2T1   *+SP(1400),A23    ; |145| 
||         SHRU    .S1     A23:A22,7,A27:A26 ; |145| 
||         ADD     .L1X    B13,A26,A22       ; |145| 

           OR      .L1X    A28,B30,A28       ; |145| 
||         STW     .D2T1   A22,*+SP(1408)    ; |145| 

           SHL     .S2     B25:B24,30,B31:B30 ; |145| 
||         OR      .L1X    A29,B31,A29       ; |145| 
||         LDW     .D2T1   *+SP(1396),A22    ; |145| 

           NOP             1
           LDW     .D2T1   *+SP(1408),A9     ; |145| 
           NOP             1
           LDDW    .D2T2   *-B28(64),B7:B6   ; |146| 

           MV      .L1X    B12,A23           ; |146| 
||         MV      .D1     A1,A22            ; |146| 
||         SHRU    .S1     A23:A22,9,A13:A12 ; |146| 

           CMPEQ   .L1     A3,A31,A1         ; |145| 
||         SHRU    .S1     A23:A22,2,A23:A22 ; |145| 

           AND     .D1X    B23,A30,A9        ; |146| 
||         LDW     .D2T1   *+SP(1332),A3     ; |145| 
|| [!A1]   CMPLTU  .L1     A3,A31,A10        ; |145| 
||         EXTU    .S1     A9,24,24,A11      ; |146| 

           LDW     .D2T1   *+SP(1400),A23    ; |146| 
||         MV      .L2X    A23,B11           ; |145| 
||         ADDU    .L1X    B20,A25:A24,A31:A30 ; |146| 

           STW     .D2T1   A22,*+SP(1412)    ; |145| 
||         MV      .D1     A16,A31           ; |145| 
||         MVK     .S2     0xff,B29
||         ADD     .S1X    B29,A31,A14       ; |146| 
|| [ A1]   CMPLTU  .L1     A2,A10,A10        ; |145| 

           LDW     .D2T1   *+SP(1396),A22    ; |146| 
||         MV      .L1X    B11,A1            ; |145| 

           MV      .L1     A16,A9
||         STW     .D2T1   A9,*+SP(1328)     ; |146| 
||         AND     .L2X    B22,A31,B20       ; |146| 

           ADD     .L1X    A5,B19,A9         ; |146| 
||         XOR     .S1     A7,A9,A5          ; |146| 

           AND     .D1X    A19,B25,A3        ; |145| 
||         AND     .S1     A3,A5,A9          ; |146| 
||         STW     .D2T1   A9,*+SP(1324)     ; |145| 
||         MV      .L1     A9,A7             ; |145| 

           EXTU    .S1     A7,24,24,A5       ; |146| 

           LDW     .D2T1   *+SP(1336),A9     ; |146| 
||         XOR     .L2X    B20,A9,B10        ; |146| 
||         SHL     .S1     A23:A22,18,A25:A24 ; |146| 

           SHL     .S1     A23:A22,14,A23:A22 ; |146| 
||         MV      .L2X    A3,B1             ; |145| 

           SHR     .S1     A6,31,A7          ; |146| 

           MV      .D1     A17,A22
||         MV      .L2X    A22,B3            ; |145| 
||         ADDU    .L1     A30,A7:A6,A31:A30 ; |146| 
||         SHRU    .S1     A17:A16,14,A3:A2  ; |146| 

           LDW     .D2T1   *+SP(1348),A31    ; |146| 
||         ADD     .L1     A14,A31,A23       ; |146| 
||         MV      .L2X    A23,B0            ; |145| 
||         MV      .S1     A17,A7            ; |146| 
||         MV      .D1     A16,A6            ; |146| 

           MV      .L1X    B3,A22            ; |145| 
||         SHL     .S2     B25:B24,25,B29:B28 ; |145| 
||         XOR     .L2X    B29,A22,B19       ; |146| 
||         OR      .D1     A25,A3,A25        ; |146| 
||         SHRU    .S1     A7:A6,18,A7:A6    ; |146| 

           ADDU    .L2X    A30,B7:B6,B7:B6   ; |146| 
||         LDW     .D2T2   *+SP(1328),B31    ; |146| 
||         OR      .L1X    B31,A1,A3         ; |145| 
||         SHR     .S2     B2,31,B3          ; |146| 

           SHR     .S1     A8,31,A9          ; |146| 
||         LDW     .D2T2   *+SP(1412),B19    ; |146| 
||         AND     .L2X    A9,B19,B20        ; |146| 
||         MV      .L1X    B0,A1             ; |145| 

           ADDU    .L1X    B6,A9:A8,A7:A6    ; |146| 
||         OR      .S1     A22,A6,A9         ; |146| 
||         ADD     .L2X    A23,B7,B7         ; |146| 
||         OR      .D1     A1,A7,A30         ; |146| 

           LDW     .D2T1   *+SP(1344),A17    ; |145| 
||         SHL     .S1     A17:A16,23,A23:A22 ; |146| 
||         AND     .D1X    A31,B24,A8        ; |145| 
||         CMPEQ   .L1     A5,A15,A1         ; |146| 
||         SHR     .S2X    A10,31,B0         ; |145| 

           LDW     .D2T1   *+SP(1324),A2     ; |146| 
||         OR      .L1X    B28,A26,A23       ; |145| 
||         OR      .S1     A23,A13,A24       ; |146| 
||         OR      .D1     A24,A2,A26        ; |146| 

           MVK     .S2     0xff,B31
||         OR      .S1     A22,A12,A22       ; |146| 
||         STW     .D2T1   A8,*+SP(1328)     ; |145| 
||         XOR     .D1     A25,A24,A24       ; |146| 
|| [!A1]   CMPLTU  .L1     A5,A15,A4         ; |146| 
||         XOR     .L2     B31,B20,B11       ; |146| 

           ADDU    .L2X    A6,B3:B2,B7:B6    ; |146| 
||         XOR     .L1     A26,A22,A22       ; |146| 
||         LDW     .D2T1   *+SP(1416),A16    ; |145| 
||         ADD     .S1X    B7,A7,A24         ; |146| 
||         XOR     .D1     A30,A24,A7        ; |146| 

           ADDU    .L2     B6,B11:B10,B29:B28 ; |146| 
||         LDW     .D2T1   *+SP(1328),A26    ; |146| 
||         XOR     .L1     A9,A22,A6         ; |146| 
||         XOR     .S1     A28,A23,A31       ; |145| 
||         OR      .D1X    B29,A27,A27       ; |145| 

           OR      .S2     B30,B19,B7        ; |145| 
||         LDW     .D2T1   *+SP(1372),A17    ; |145| 
||         AND     .L1X    A17,B25,A5        ; |145| 
||         ADD     .L2X    A24,B7,B6         ; |146| 

           LDW     .D2T1   *+SP(1316),A22    ; |146| 
||         ADDU    .L1X    B28,A7:A6,A7:A6   ; |146| 
||         ADD     .L2     B6,B29,B6         ; |146| 

           LDW     .D2T1   *+SP(1320),A23    ; |146| 
||         MV      .L2X    A5,B2             ; |145| 
||         MV      .L1X    B1,A30            ; |145| 

           STW     .D2T1   A2,*+SP(1412)     ; |146| 
||         ADD     .L1X    B6,A7,A9          ; |146| 

           LDW     .D2T1   *+SP(1376),A2     ; |145| 
|| [ A1]   CMPLTU  .L1X    B18,A4,A4         ; |146| 

           SHR     .S1     A4,31,A17         ; |146| 
||         MVK     .D1     0xffffffff,A16
||         XOR     .L1     A17,A16,A8        ; |145| 
||         LDW     .D2T1   *+SP(1412),A7     ; |146| 

           LDW     .D2T2   *+SP(1368),B19    ; |147| 

           XOR     .D1X    B7,A31,A8         ; |145| 
||         XOR     .S1     A26,A8,A22        ; |145| 
||         ADDU    .L1     A6,A23:A22,A25:A24 ; |146| 
||         LDW     .D2T2   *+SP(1352),B1     ; |147| 

           LDW     .D2T1   *+SP(1412),A27    ; |146| 
||         XOR     .L1     A29,A27,A31       ; |145| 
||         MV      .S1X    B2,A6             ; |145| 
||         ADD     .D1     A9,A25,A25        ; |146| 

           LDW     .D2T1   *+SP(1404),A2     ; |147| 
||         XOR     .L1     A2,A30,A5         ; |145| 
||         MV      .S1X    B18,A26
||         XOR     .D1     A3,A31,A9         ; |145| 

           LDW     .D2T1   *+SP(1396),A16    ; |146| 
||         ADDU    .L1     A4,A25:A24,A5:A4  ; |146| 
||         XOR     .S1     A6,A5,A23         ; |145| 
||         XOR     .D1     A16,A26,A28       ; |147| 

           ADDU    .L1     A10,A9:A8,A9:A8   ; |145| 
||         STW     .D2T2   B18,*+SP(1416)    ; |146| 

           LDW     .D2T1   *+SP(1412),A28    ; |145| 
||         ADD     .L1X    B0,A9,A29         ; |145| 
||         AND     .L2X    B4,A28,B20        ; |147| 

           SHRU    .S1     A27:A26,18,A19:A18 ; |147| 
||         ADD     .D1     A17,A5,A26        ; |146| 
||         ADDU    .L1     A4,A19:A18,A5:A4  ; |146| 

           MV      .L1     A27,A5            ; |147| 
||         STW     .D2T1   A5,*+SP(1320)     ; |147| 
||         MV      .S1     A27,A30           ; |147| 
||         MV      .D1X    B18,A17           ; |146| 

           AND     .S1     A16,A17,A2        ; |147| 
||         LDW     .D2T1   *+SP(1320),A27    ; |147| 
||         AND     .L1X    B8,A2,A1          ; |146| 

           EXTU    .S2     B13,24,24,B31     ; |146| 
||         MV      .L1X    B18,A4            ; |147| 
||         STW     .D2T1   A4,*+SP(1316)     ; |147| 
||         XOR     .L2X    B31,A30,B6        ; |147| 

           CMPEQ   .L2X    A11,B31,B0        ; |146| 
||         LDW     .D2T1   *+SP(1400),A17    ; |145| 
||         AND     .S2     B5,B6,B6          ; |147| 

   [ B0]   LDW     .D2T1   *+SP(1388),A6     ; |145| 
|| [!B0]   CMPLTU  .L1X    A11,B31,A3        ; |146| 
||         EXTU    .S2     B5,24,24,B5       ; |148| 

   [ B0]   LDW     .D2T1   *+SP(1404),A3     ; |145| 

           SHRU    .S1     A5:A4,14,A27:A26  ; |147| 
||         ADD     .L1     A26,A27,A4        ; |146| 

           STW     .D2T1   A4,*+SP(1320)     ; |147| 
           LDW     .D2T1   *+SP(1320),A5     ; |147| 
           LDW     .D2T1   *+SP(1316),A4     ; |147| 
           LDW     .D2T1   *+SP(1320),A9     ; |146| 
   [ B0]   CMPLTU  .L1     A3,A6,A3          ; |146| 
           MV      .S1X    B18,A6            ; |146| 
           SHL     .S1     A7:A6,23,A7:A6    ; |147| 

           LDW     .D2T1   *+SP(1316),A8     ; |146| 
||         SHL     .S1     A5:A4,14,A23:A22  ; |147| 
||         ADDU    .L1     A8,A23:A22,A5:A4  ; |145| 

           NOP             1
           ADD     .L1     A29,A5,A5         ; |145| 
           OR      .S1     A22,A18,A22       ; |147| 
           OR      .D1     A23,A19,A16       ; |147| 
           SHRU    .S1     A9:A8,9,A31:A30   ; |147| 

           LDW     .D2T1   *+SP(1404),A17    ; |147| 
||         OR      .D1     A6,A30,A18        ; |147| 
||         SHL     .S1     A9:A8,18,A29:A28  ; |147| 
||         AND     .L1     A17,A28,A9        ; |147| 

           LDW     .D2T1   *+SP(1380),A22    ; |147| 
||         XOR     .D1     A22,A18,A18       ; |147| 
||         ADDU    .L1     A3,A21:A20,A7:A6  ; |146| 
||         OR      .S1     A7,A31,A20        ; |147| 

           OR      .D1     A29,A27,A19       ; |147| 
||         OR      .S1     A28,A26,A21       ; |147| 
||         XOR     .L1     A16,A20,A20       ; |147| 

           LDW     .D2T1   *+SP(1408),A21    ; |146| 
||         ADDU    .L1     A6,A5:A4,A5:A4    ; |146| 
||         XOR     .D1     A19,A20,A23       ; |147| 
||         XOR     .S1     A21,A18,A18       ; |147| 

           XOR     .D1X    B20,A2,A8         ; |147| 
||         MV      .L1     A5,A6             ; |146| 
||         SHR     .S1     A3,31,A30         ; |146| 
||         LDW     .D2T1   *+SP(1404),A20    ; |146| 

           MV      .S1X    B12,A29           ; |146| 
||         ADD     .L1     A30,A7,A3         ; |146| 
||         STW     .D2T1   A4,*+SP(1372)     ; |146| 

           LDDW    .D2T2   *-B19(40),B7:B6   ; |147| 
||         XOR     .L1X    B6,A9,A9          ; |147| 

           LDDW    .D2T2   *+B1(32),B19:B18  ; |147| 
||         ADDU    .L1     A18,A9:A8,A19:A18 ; |147| 

           ADD     .S1     A23,A19,A19       ; |147| 
||         MV      .L1     A21,A5            ; |146| 

           MV      .L1     A20,A4            ; |146| 
           SHL     .S1     A5:A4,30,A13:A12  ; |146| 

           EXTU    .S2     B7,24,24,B29      ; |147| 
||         SHRU    .S1     A5:A4,28,A3:A2    ; |146| 
||         ADD     .L1     A3,A6,A4          ; |146| 

           EXTU    .S2     B19,24,24,B20     ; |147| 
||         MV      .L1     A4,A5             ; |146| 

           LDW     .D2T1   *+SP(1372),A4     ; |146| 
||         MV      .L2X    A4,B13            ; |146| 

           NOP             4
           SHL     .S1     A5:A4,4,A11:A10   ; |146| 

           LDW     .D2T1   *+SP(1408),A22    ; |147| 
||         XOR     .D1X    B21,A1,A17        ; |146| 
||         AND     .L1     A22,A17,A4        ; |146| 
||         SHRU    .S1     A5:A4,7,A27:A26   ; |146| 

           OR      .L1     A11,A3,A3         ; |146| 
||         LDW     .D2T2   *+SP(1368),B21    ; |147| 

           LDW     .D2T1   *+SP(1372),A4     ; |146| 
||         MV      .L2X    A4,B28            ; |146| 

           STW     .D2T1   A3,*+SP(1420)     ; |146| 
           MV      .L1X    B28,A28           ; |146| 
           MV      .L1     A22,A16           ; |146| 

           AND     .S1X    B9,A22,A14        ; |146| 
||         XOR     .D1     A28,A17,A15       ; |146| 

           AND     .L1     A29,A16,A4        ; |146| 
||         MV      .D1     A16,A5            ; |146| 
||         SHRU    .S1     A5:A4,2,A31:A30   ; |146| 

           ADDU    .L1X    B6,A19:A18,A21:A20 ; |147| 
||         SHL     .S1     A21:A20,25,A29:A28 ; |146| 
||         OR      .D1     A13,A31,A1        ; |146| 

           LDW     .D2T1   *+SP(1404),A4     ; |146| 
||         MV      .L2X    A4,B30            ; |146| 
||         OR      .S1     A12,A30,A28       ; |146| 
||         OR      .L1     A28,A26,A26       ; |146| 
||         ADD     .D1X    B7,A21,A21        ; |147| 

           ADDU    .L1X    B18,A21:A20,A7:A6 ; |147| 
||         OR      .S1     A29,A27,A29       ; |146| 
||         XOR     .D1     A28,A26,A28       ; |146| 

           EXTU    .S2     B17,24,24,B19     ; |147| 
||         ADD     .L1X    B19,A7,A7         ; |147| 

           EXTU    .S1     A7,24,24,A27      ; |147| 
           NOP             1

           MV      .L1X    B13,A5            ; |146| 
||         LDW     .D2T1   *+SP(1372),A4     ; |146| 
||         CMPEQ   .L2X    A27,B20,B1        ; |147| 
||         SHRU    .S1     A5:A4,7,A23:A22   ; |146| 

           NOP             4

           LDW     .D2T1   *+SP(1408),A5     ; |146| 
||         SHL     .S1     A5:A4,25,A31:A30  ; |146| 

           LDW     .D2T1   *+SP(1404),A4     ; |146| 
||         OR      .L1     A30,A22,A22       ; |146| 

           NOP             4

           SHL     .S1     A5:A4,4,A3:A2     ; |146| 
||         ADDU    .L1X    B16,A7:A6,A5:A4   ; |147| 
||         OR      .D1     A10,A2,A7         ; |146| 

           MV      .L1X    B13,A5            ; |146| 
||         STW     .D2T1   A5,*+SP(1424)     ; |146| 

           LDW     .D2T1   *+SP(1372),A4     ; |146| 
||         MV      .L2X    A4,B31            ; |146| 

           LDW     .D2T1   *+SP(1424),A10    ; |146| 
           NOP             3

           LDW     .D2T1   *+SP(1296),A1     ; |147| 
||         XOR     .L1     A1,A29,A4         ; |146| 
||         SHRU    .S1     A5:A4,28,A17:A16  ; |146| 

           ADD     .L1X    B17,A10,A5        ; |147| 
||         STW     .D2T1   A4,*+SP(1428)     ; |146| 

           OR      .D1     A2,A16,A21        ; |146| 
||         EXTU    .S1     A21,24,24,A27     ; |147| 
|| [!B1]   CMPLTU  .L2X    A27,B20,B17       ; |147| 
||         STW     .D2T1   A5,*+SP(1424)     ; |146| 
||         ADD     .L1X    B17,A10,A29       ; |147| 

           LDW     .D2T1   *+SP(1420),A5     ; |146| 
||         EXTU    .S1     A29,24,24,A26     ; |147| 
||         MVK     .S2     0xff,B1
|| [ B1]   CMPLTU  .L2X    A6,B18,B17        ; |147| 
||         XOR     .L1     A21,A22,A21       ; |146| 

           LDW     .D2T1   *+SP(1408),A29    ; |146| 
||         EXTU    .S1     A19,24,24,A16     ; |147| 

           XOR     .L1     A1,A14,A10        ; |146| 
||         CMPEQ   .L2X    A26,B19,B0        ; |147| 

           MV      .S2     B17,B16           ; |147| 
|| [ B0]   CMPLTU  .L2     B31,B16,B19       ; |147| 

           MV      .L1X    B13,A26           ; |147| 
|| [!B0]   CMPLTU  .L2X    A26,B19,B19       ; |147| 
||         SHR     .S2     B16,31,B17        ; |147| 

           XOR     .L1     A5,A4,A4          ; |146| Define a twin register
||         SHR     .S2     B19,31,B20        ; |147| 

           LDW     .D2T1   *+SP(1404),A28    ; |146| 
||         MV      .D1X    B30,A7            ; |146| 
||         XOR     .S1     A7,A28,A4         ; |146| 
||         MV      .L1     A4,A5             ; |147| 

           NOP             1
           XOR     .L1     A7,A10,A1         ; |146| 
           STW     .D2T1   A4,*+SP(1432)     ; |146| 
           EXTU    .S1     A5,24,24,A7       ; |146| 

           LDW     .D2T1   *+SP(1372),A4     ; |146| 
||         OR      .D1     A31,A23,A5        ; |146| 
||         ADDU    .L1     A15,A5:A4,A29:A28 ; |146| 
||         SHRU    .S1     A29:A28,2,A11:A10 ; |146| 

           EXTU    .S1     A9,24,24,A17      ; |147| 
||         OR      .D1     A3,A17,A31        ; |146| 
||         ADD     .L1     A1,A29,A29        ; |146| 

           EXTU    .S1     A29,24,24,A23     ; |146| 
           CMPEQ   .L1     A23,A7,A3         ; |146| 
           MV      .L1     A3,A1             ; |147| 

           LDW     .D2T1   *+SP(1372),A29    ; |146| 
||         ADDU    .L1X    B26,A29:A28,A3:A2 ; |146| 
||         MV      .L2X    A3,B7             ; |147| 

           MV      .D1X    B13,A5            ; |146| 
||         XOR     .S1     A31,A5,A23        ; |146| 
|| [!A1]   CMPLTU  .L1     A23,A7,A3         ; |146| 
||         STW     .D2T1   A3,*+SP(1440)     ; |146| 

           SHL     .S1     A5:A4,30,A13:A12  ; |146| 
||         CMPEQ   .L1     A16,A17,A1        ; |147| 
||         LDW     .D2T1   *+SP(1440),A6     ; |146| 

           CMPEQ   .L1X    A27,B29,A2        ; |147| 
||         OR      .D1     A12,A10,A7        ; |146| 
||         OR      .S1     A13,A11,A19       ; |146| 
||         STW     .D2T1   A2,*+SP(1436)     ; |146| 

           LDW     .D2T1   *+SP(1348),A27    ; |146| 
||         XOR     .L1     A7,A21,A30        ; |146| 
|| [!A2]   CMPLTU  .L2X    A27,B29,B18       ; |147| 

           MV      .L1X    B7,A2             ; |147| 
||         LDW     .D2T1   *+SP(1344),A31    ; |147| 
|| [ A2]   CMPLTU  .L2X    A20,B6,B18        ; |147| 

   [ A2]   LDW     .D2T1   *+SP(1432),A3     ; |147| 

           LDW     .D2T1   *+SP(1356),A17    ; |146| 
|| [!A1]   CMPLTU  .L1     A16,A17,A6        ; |147| 
||         ADD     .S1X    B27,A6,A9         ; |146| 

   [ A1]   CMPLTU  .L1     A18,A8,A6         ; |147| 
||         STW     .D2T1   A9,*+SP(1440)     ; |146| 

           AND     .L1     A27,A29,A20       ; |146| 
||         LDW     .D2T1   *+SP(1412),A9     ; |147| 

           XOR     .S1     A19,A23,A31       ; |146| 
||         AND     .L1     A31,A26,A16       ; |146| 
||         LDW     .D2T1   *+SP(1416),A8     ; |147| 

   [ A2]   CMPLTU  .L1     A28,A3,A3         ; |146| 
||         LDW     .D2T1   *+SP(1440),A27    ; |147| 

           MVK     .S1     0xffffffff,A17
||         LDDW    .D2T2   *-B21(48),B7:B6   ; |147| 
||         MV      .L1     A3,A1             ; |146| 
||         LDDW    .D1T1   *+A17(48),A5:A4   ; |147| 

           LDW     .D2T1   *+SP(1316),A23
           LDW     .D2T1   *+SP(1360),A3     ; |147| 

           LDW     .D2T1   *+SP(1372),A2     ; |147| 
||         SHRU    .S1     A9:A8,9,A19:A18   ; |147| 

           EXTU    .S1     A27,24,24,A12     ; |147| 

           SHR     .S2     B18,31,B19        ; |147| 
||         LDW     .D2T1   *+SP(1412),A5     ; |146| 
||         ADDU    .L1X    B19,A5:A4,A9:A8   ; |147| 
||         SHL     .S1     A9:A8,18,A27:A26  ; |147| 

           EXTU    .S2     B9,24,24,B20      ; |147| 
||         ADD     .S1X    B20,A9,A14        ; |147| 
||         XOR     .L1     A17,A23,A21       ; |147| 
||         LDW     .D2T1   *+SP(1416),A4     ; |146| 

           LDW     .D2T1   *+SP(1328),A8     ; |146| 
||         AND     .L1     A3,A23,A7         ; |147| 
||         ADDU    .L2X    A8,B17:B16,B17:B16 ; |147| 

           AND     .L1X    B24,A2,A3         ; |146| 
||         AND     .S2X    B22,A21,B16       ; |147| Define a twin register
||         ADDU    .L2     B16,B7:B6,B7:B6   ; |147| 
||         LDW     .D2T1   *+SP(1364),A17    ; |146| 

           MVK     .D2     0xffffffff,B2
||         MV      .L1X    B2,A2             ; |146| 
||         ADDU    .L2     B6,B19:B18,B19:B18 ; |147| 
||         ADD     .S2X    A14,B17,B29       ; |147| 

           SHR     .S1     A6,31,A7          ; |147| 
||         LDW     .D2T2   *+SP(1396),B29    ; |147| 
||         ADD     .S2     B29,B7,B16        ; |147| 
||         XOR     .L1     A2,A16,A16        ; |146| 
||         XOR     .L2X    A7,B16,B6         ; |147| 

           MV      .L1     A23,A4            ; |147| 
||         LDW     .D2T1   *+SP(1320),A5     ; |147| 
||         ADD     .L2     B16,B19,B16       ; |147| 
||         SHL     .S1     A5:A4,14,A29:A28  ; |147| 

           NOP             3
           XOR     .L1     A8,A20,A13        ; |146| 

           SHRU    .S1     A5:A4,18,A11:A10  ; |147| 
||         MV      .L1     A5,A8             ; |146| 

           MV      .D1X    B13,A17           ; |146| 
||         SHL     .S1     A5:A4,23,A21:A20  ; |147| 
||         AND     .L1     A17,A8,A15        ; |147| 

           LDW     .D2T1   *+SP(1424),A5     ; |146| 
||         MV      .L1X    B31,A4            ; |146| 
||         SHRU    .S1     A5:A4,14,A23:A22  ; |147| 
||         EXTU    .S2     B27,24,24,B1      ; |147| 
||         XOR     .L2X    B1,A8,B21         ; |147| 
||         OR      .D1     A20,A18,A18       ; |147| 

           AND     .D2     B23,B21,B17       ; |147| 

           OR      .L1     A26,A22,A20       ; |147| 
||         CMPEQ   .L2X    A12,B1,B0         ; |147| 
||         OR      .S1     A21,A19,A19       ; |147| 
||         OR      .D1     A27,A23,A21       ; |147| 
||         MVK     .S2     0xff,B21

           XOR     .L1     A20,A18,A18       ; |147| 
||         XOR     .L2X    A15,B17,B7        ; |147| 
|| [ B0]   LDW     .D2T1   *+SP(1436),A22    ; |146| 
||         OR      .S1     A29,A11,A26       ; |147| 
||         OR      .D1     A28,A10,A23       ; |147| 

           LDW     .D2T1   *+SP(1336),A21    ; |147| 
||         XOR     .D1     A21,A19,A17       ; |147| 
||         AND     .L1X    B25,A17,A2        ; |146| 
||         SHR     .S1     A1,31,A28         ; |146| 

           ADDU    .L1X    B8,A5:A4,A9:A8    ; |147| 
           ADDU    .L1X    B18,A7:A6,A5:A4   ; |147| 

           XOR     .D1     A26,A17,A5        ; |147| 
||         ADD     .S1X    B16,A5,A20        ; |147| 
||         LDW     .D2T1   *+SP(1436),A30    ; |147| 
||         ADDU    .L1     A1,A31:A30,A7:A6  ; |146| 
||         ADD     .L2X    B9,A9,B17         ; |147| 

           XOR     .S1     A23,A18,A4        ; |147| 
||         ADDU    .L2X    A4,B7:B6,B7:B6    ; |147| 
||         ADD     .D1     A28,A7,A7         ; |146| 
||         EXTU    .S2     B17,24,24,B17     ; |147| 
||         STW     .D2T2   B17,*+SP(1388)    ; |147| 
|| [ B0]   CMPLTU  .L1X    A22,B26,A9        ; |147| 

           CMPEQ   .L2     B17,B20,B0        ; |147| 
||         LDW     .D2T1   *+SP(1332),A20    ; |147| 
||         ADD     .S2X    A20,B7,B7         ; |147| 
|| [!B0]   CMPLTU  .L1X    A12,B1,A9         ; |147| 

           XOR     .S1     A3,A13,A4         ; |146| 
||         XOR     .D1     A2,A16,A5         ; |146| 
|| [ B0]   CMPLTU  .L2X    A8,B8,B6          ; |147| 
||         ADDU    .L1X    B6,A5:A4,A19:A18  ; |147| 
||         STW     .D2T1   A8,*+SP(1332)     ; |147| 

           LDW     .D2T1   *+SP(1348),A6     ; |147| 
||         ADDU    .L1     A6,A5:A4,A5:A4    ; |146| 
||         ADD     .D1X    B7,A19,A27        ; |147| 
|| [!B0]   CMPLTU  .L2     B17,B20,B6        ; |147| 
||         SHR     .S1     A9,31,A17         ; |147| 

           LDW     .D2T1   *+SP(1344),A7     ; |147| 
||         ADD     .L1     A7,A5,A5          ; |146| 
||         SHR     .S2     B6,31,B7          ; |147| 
||         MV      .S1     A30,A8            ; |147| 

           LDW     .D2T1   *+SP(1388),A29    ; |147| 

           ADDU    .L1     A18,A21:A20,A23:A22 ; |147| 
||         LDW     .D2T2   *+SP(1332),B27

           LDW     .D2T1   *+SP(1440),A9     ; |147| 
||         ADD     .S1     A27,A23,A23       ; |147| 
||         ADDU    .L1     A9,A25:A24,A19:A18 ; |147| 

           ADDU    .L1X    B6,A23:A22,A21:A20 ; |147| 
||         LDW     .D2T1   *+SP(1416),A16    ; |147| 

           ADDU    .L1     A20,A7:A6,A7:A6   ; |147| 
||         LDW     .D2T1   *+SP(1332),A1     ; |147| 

           STW     .D2T1   A7,*+SP(1448)     ; |147| 

           LDW     .D2T1   *+SP(1448),A25    ; |147| 
||         XOR     .L2     B2,B27,B6         ; |148| 

           SHL     .S1     A9:A8,30,A21:A20  ; |147| 
||         ADD     .L1X    B7,A21,A9         ; |147| 
||         MV      .D1     A8,A6             ; |147| 
||         STW     .D2T1   A6,*+SP(1444)     ; |147| 
||         AND     .L2     B29,B6,B16        ; |148| 

           STW     .D2T1   A29,*+SP(1336)    ; |147| 

           MV      .S1X    B28,A16           ; |147| 
||         LDW     .D2T2   *+SP(1336),B19
||         AND     .L1     A16,A1,A26        ; |148| 

           LDW     .D2T2   *+SP(1336),B7     ; |147| 
||         MV      .L1X    B12,A1            ; |147| 

           ADD     .L1     A9,A25,A8         ; |147| 
||         LDW     .D2T2   *+SP(1332),B6     ; |147| 

           STW     .D2T1   A8,*+SP(1448)     ; |147| 
           LDW     .D2T1   *+SP(1448),A9     ; |147| 

           LDW     .D2T1   *+SP(1444),A8     ; |147| 
||         XOR     .L2     B21,B19,B9        ; |148| 

           LDW     .D2T1   *+SP(1400),A28    ; |147| 
||         MV      .L2     B7,B1             ; |148| 
||         MV      .S2     B7,B17            ; |148| 

           LDW     .D2T1   *+SP(1380),A31    ; |147| 
||         SHL     .S2     B7:B6,23,B19:B18  ; |148| 

           LDW     .D2T2   *+SP(1352),B0     ; |147| 
           LDW     .D2T1   *+SP(1412),A29    ; |148| 

           LDW     .D2T1   *+SP(1448),A5     ; |148| 
||         ADDU    .L1     A18,A5:A4,A19:A18 ; |147| 
||         ADD     .D1     A17,A19,A9        ; |147| 
||         SHRU    .S1     A9:A8,9,A25:A24   ; |148| 

           LDW     .D2T1   *+SP(1448),A9     ; |148| 
||         MV      .L1     A8,A4             ; |148| 
||         SHRU    .S2     B7:B6,18,B9:B8    ; |148| 
||         AND     .L2X    A28,B9,B20        ; |148| 
||         ADD     .S1     A9,A19,A19        ; |147| 

           LDW     .D2T2   *+SP(1332),B16    ; |148| 
||         XOR     .L2X    B16,A26,B6        ; |148| 
||         AND     .L1     A31,A30,A27       ; |147| 
||         SHL     .S1     A19:A18,30,A13:A12 ; |147| 

           LDW     .D2T1   *+SP(1444),A8     ; |148| 
||         XOR     .L1     A16,A27,A28       ; |147| 
||         OR      .L2X    B18,A24,B26       ; |148| 

           LDW     .D2T1   *+SP(1404),A31    ; |148| 
||         AND     .L1X    A29,B1,A26        ; |148| 

           SHL     .S1     A5:A4,14,A5:A4    ; |148| 
||         LDW     .D2T1   *+SP(1436),A30    ; |148| 
||         OR      .L1X    B19,A25,A29       ; |148| 

           LDW     .D2T1   *+SP(1440),A5     ; |147| 
||         OR      .L1X    A5,B9,A27         ; |148| 
||         SHRU    .S1     A19:A18,7,A25:A24 ; |147| 
||         XOR     .L2X    B20,A26,B7        ; |148| 

           LDW     .D2T1   *+SP(1436),A4     ; |147| 
||         OR      .L2X    A4,B8,B8          ; |148| 
||         SHRU    .S2     B17:B16,14,B17:B16 ; |148| 

           LDW     .D2T1   *+SP(1440),A7     ; |147| 
||         SHL     .S1     A9:A8,18,A9:A8    ; |148| 
||         XOR     .L2     B8,B26,B8         ; |148| 

           LDW     .D2T1   *+SP(1440),A17    ; |147| 
||         XOR     .L1     A27,A29,A9        ; |148| 
||         OR      .S1X    A9,B17,A27        ; |148| 

           LDDW    .D2T2   *+B0(48),B29:B28  ; |148| 
||         SHL     .S1     A19:A18,4,A9:A8   ; |147| 
||         XOR     .D1     A27,A9,A30        ; |148| 
||         AND     .L1     A31,A30,A15       ; |147| 
||         OR      .L2X    A8,B16,B9         ; |148| 

           LDW     .D2T2   *+SP(1368),B0     ; |147| 
||         SHRU    .S1     A19:A18,2,A27:A26 ; |147| 
||         XOR     .L2     B9,B8,B8          ; |148| 

           EXTU    .S2     B7,24,24,B7       ; |148| 
||         LDW     .D2T1   *+SP(1440),A16    ; |147| 
||         SHRU    .S1     A5:A4,28,A5:A4    ; |147| 
||         XOR     .D1     A15,A28,A27       ; |147| 
||         OR      .L1     A21,A27,A21       ; |147| 
||         ADDU    .L2     B8,B7:B6,B9:B8    ; |148| 

           LDW     .D2T1   *+SP(1408),A31    ; |147| 
||         OR      .L1     A9,A5,A8          ; |147| 
||         OR      .D1     A8,A4,A9          ; |147| 
||         SHL     .S1     A7:A6,25,A7:A6    ; |147| 
||         ADD     .L2X    A30,B9,B9         ; |148| 

           LDW     .D2T1   *+SP(1436),A4     ; |147| 
||         OR      .L1     A20,A26,A24       ; |147| 
||         OR      .S1     A6,A24,A20        ; |147| 
||         AND     .D1     A1,A17,A29        ; |147| 

           MV      .S1X    B30,A25           ; |147| 
||         OR      .L1     A7,A25,A7         ; |147| 
||         LDW     .D2T1   *+SP(1436),A6     ; |147| 

           XOR     .D1     A25,A29,A7        ; |147| 
||         LDDW    .D2T2   *-B0(24),B19:B18  ; |148| 
||         XOR     .L1     A21,A7,A20        ; |147| 
||         XOR     .S1     A24,A20,A21       ; |147| 

           MV      .L1     A16,A5            ; |147| 
||         LDW     .D2T1   *+SP(1384),A1     ; |147| 
||         MV      .S1X    B31,A26           ; |147| 

           LDW     .D2T1   *+SP(1356),A16    ; |148| 
||         AND     .L1     A31,A16,A14       ; |147| 

           XOR     .D1     A9,A21,A4         ; |147| 
||         LDW     .D2T1   *+SP(1440),A7     ; |147| 
||         XOR     .L1     A14,A7,A17        ; |147| 
||         SHRU    .S1     A5:A4,7,A25:A24   ; |147| 

           XOR     .L1     A8,A20,A5         ; |147| 

           EXTU    .S1     A5,24,24,A5       ; |147| 
||         ADDU    .L1     A27,A5:A4,A9:A8   ; |147| 
||         ADDU    .L2     B18,B9:B8,B27:B26 ; |148| 
||         EXTU    .S2     B19,24,24,B2      ; |148| 

           EXTU    .S2     B9,24,24,B19      ; |148| 
||         ADD     .L1     A17,A9,A9         ; |147| 
||         ADD     .L2     B19,B27,B27       ; |148| 

           LDW     .D2T1   *+SP(1424),A9     ; |148| 
||         EXTU    .S1     A9,24,24,A29      ; |147| 
||         ADDU    .L1     A26,A9:A8,A21:A20 ; |147| 
||         ADDU    .L2     B28,B27:B26,B17:B16 ; |148| 
||         EXTU    .S2     B27,24,24,B30     ; |148| 

           LDW     .D2T1   *+SP(1440),A7     ; |147| 
||         SHL     .S1     A7:A6,4,A31:A30   ; |147| 
||         ADD     .S2     B29,B17,B17       ; |148| 
||         CMPEQ   .L2     B30,B2,B1         ; |148| 

           LDW     .D2T1   *+SP(1436),A6     ; |147| 
||         ADDU    .L2     B4,B17:B16,B21:B20 ; |148| 
||         SHL     .S1     A19:A18,25,A27:A26 ; |147| 
||         MVK     .S2     0xff,B9

           CMPEQ   .L1     A29,A5,A1         ; |147| 
||         ADD     .S2X    A1,B21,B21        ; |148| 
||         STW     .D2T1   A21,*+SP(1452)    ; |147| 
||         OR      .S1     A27,A25,A25       ; |147| 
||         OR      .D1     A26,A24,A17       ; |147| 
|| [!B1]   CMPLTU  .L2     B30,B2,B26        ; |148| 

           SHRU    .S1     A19:A18,28,A29:A28 ; |147| 
|| [!A1]   CMPLTU  .L1     A29,A5,A4         ; |147| 
||         EXTU    .S2     B21,24,24,B27     ; |148| 
||         MV      .D1X    B12,A26           ; |148| 
||         CMPEQ   .L2     B19,B7,B2         ; |148| 
||         STW     .D2T1   A20,*+SP(1384)    ; |147| 

           ADD     .D1     A9,A21,A21        ; |147| 
||         EXTU    .S1     A9,24,24,A8       ; |148| 
|| [ A1]   CMPLTU  .L1     A8,A4,A4          ; |147| 
||         CMPEQ   .L2     B27,B5,B0         ; |148| 

           EXTU    .S2     B29,24,24,B4      ; |148| 
||         OR      .L1     A31,A29,A9        ; |147| 
||         EXTU    .S1     A21,24,24,A28     ; |148| 
||         OR      .D1     A30,A28,A24       ; |147| 
|| [ B0]   CMPLTU  .L2     B20,B4,B27        ; |148| 

           LDW     .D2T2   *+SP(1336),B5     ; |148| 
||         LDDW    .D1T1   *+A16(64),A7:A6   ; |148| 
||         SHRU    .S1     A7:A6,2,A11:A10   ; |147| 
||         XOR     .L1     A9,A25,A30        ; |147| 
||         EXTU    .S2     B17,24,24,B29     ; |148| 
|| [!B0]   CMPLTU  .L2     B27,B5,B27        ; |148| 

           LDW     .D2T1   *+SP(1448),A9     ; |148| 
||         CMPEQ   .L2     B29,B4,B0         ; |148| 
||         CMPEQ   .L1     A28,A8,A1         ; |148| 
||         EXTU    .S1     A26,24,24,A29     ; |148| 
||         XOR     .D1     A24,A17,A5        ; |147| 

           LDW     .D2T1   *+SP(1372),A26    ; |148| 
||         OR      .S1     A13,A11,A24       ; |147| 
|| [!B0]   CMPLTU  .L2     B29,B4,B28        ; |148| 
||         OR      .D1     A12,A10,A27       ; |147| 
|| [!A1]   CMPLTU  .L1     A28,A8,A28        ; |148| 

           LDW     .D2T2   *+SP(1332),B4     ; |148| 
||         AND     .S2X    B24,A18,B19       ; |147| 
|| [!B2]   CMPLTU  .L2     B19,B7,B30        ; |148| 
||         MV      .L1X    B13,A17           ; |148| 

           LDW     .D2T2   *+SP(1368),B7     ; |148| 
||         SHR     .S2X    A4,31,B18         ; |147| 
|| [ B1]   CMPLTU  .L2     B26,B18,B26       ; |148| 
|| [ A1]   CMPLTU  .L1X    A20,B31,A28       ; |148| 

           SHR     .S2     B27,31,B0         ; |148| 
||         LDW     .D2T1   *+SP(1444),A8     ; |148| 
||         XOR     .D1     A27,A5,A6         ; |147| 
||         ADDU    .L1X    B27,A7:A6,A25:A24 ; |148| 
||         XOR     .S1     A24,A30,A7        ; |147| 
|| [ B0]   CMPLTU  .L2     B16,B28,B28       ; |148| 

           LDW     .D2T1   *+SP(1444),A4     ; |147| 
||         ADDU    .L1     A4,A7:A6,A7:A6    ; |147| 
||         MV      .D1     A9,A3
||         XOR     .S1X    A3,B19,A31        ; |147| 
|| [ B2]   CMPLTU  .L2     B8,B6,B30         ; |148| 
||         SHR     .S2     B26,31,B27        ; |148| 

           LDW     .D2T1   *+SP(1448),A5     ; |147| 
||         AND     .L2X    B25,A19,B9        ; |147| 
||         AND     .S1     A17,A19,A3        ; |147| 
||         XOR     .L1X    B9,A3,A10         ; |148| 
||         AND     .D1     A26,A18,A16       ; |147| 
||         SHR     .S2     B30,31,B31        ; |148| 

           LDW     .D2T2   *+SP(1380),B29    ; |148| 
||         SHRU    .S2     B5:B4,9,B17:B16   ; |148| 
||         MV      .L1X    B12,A17           ; |147| 

           LDDW    .D2T2   *-B7(32),B9:B8    ; |148| 
||         MVK     .S1     0xffffffff,A2
||         XOR     .L1X    A2,B9,A26         ; |147| 
||         SHR     .S2X    A28,31,B1         ; |148| 

           LDW     .D2T2   *+SP(1336),B7     ; |148| 
||         XOR     .D1     A16,A31,A26       ; |147| 
||         XOR     .L1     A3,A26,A27        ; |147| 
||         SHL     .S1     A9:A8,23,A9:A8    ; |148| 

           LDW     .D2T2   *+SP(1332),B6     ; |148| 
||         OR      .L1X    A8,B16,A30        ; |148| 
||         XOR     .S1     A2,A4,A11         ; |148| 

           LDW     .D2T1   *+SP(1316),A5     ; |147| 
||         SHRU    .S1     A5:A4,14,A27:A26  ; |148| 
||         ADDU    .L1     A6,A27:A26,A7:A6  ; |147| 
||         ADD     .D1X    B18,A7,A8         ; |147| 

           SHR     .S2     B28,31,B29        ; |148| 
||         ADDU    .L2     B29,B21:B20,B5:B4 ; |148| 
||         OR      .L1X    A9,B17,A9         ; |148| 
||         LDW     .D2T1   *+SP(1320),A1     ; |148| 
||         ADD     .S1     A8,A7,A7          ; |147| 

           ADDU    .L2X    A24,B29:B28,B17:B16 ; |148| 
||         LDW     .D2T2   *+SP(1368),B2     ; |149| 

           LDW     .D2T1   *+SP(1360),A17    ; |148| 
||         ADD     .L1X    A17,B5,A31        ; |148| 
||         ADDU    .L2     B16,B9:B8,B9:B8   ; |148| 

           SHL     .S2     B7:B6,18,B19:B18  ; |148| 

           LDW     .D2T1   *+SP(1448),A22    ; |148| 
||         EXTU    .S1     A31,24,24,A23     ; |148| 
||         ADDU    .L1     A28,A23:A22,A25:A24 ; |148| 
||         ADD     .D1X    B0,A25,A26        ; |148| 
||         OR      .L2X    B18,A26,B5        ; |148| 
||         SHL     .S2     B7:B6,14,B7:B6    ; |148| 

           LDW     .D2T1   *+SP(1448),A5     ; |148| 
||         AND     .S1     A5,A4,A27         ; |148| 
||         MVK     .S2     0xff,B27
||         ADDU    .L2     B8,B27:B26,B19:B18 ; |148| 
||         OR      .L1X    B19,A27,A2        ; |148| 

           XOR     .L1     A2,A9,A8          ; |148| 
||         LDW     .D2T2   *+SP(1332),B0     ; |148| 

           LDW     .D2T1   *+SP(1364),A17    ; |148| 
||         AND     .L1     A17,A11,A11       ; |148| 

           NOP             1
           LDDW    .D2T2   *-B2(8),B29:B28   ; |149| 
           SHRU    .S1     A5:A4,18,A5:A4    ; |148| 

           CMPEQ   .L1     A23,A29,A1        ; |148| 
||         OR      .S1X    B7,A5,A22         ; |148| 
||         AND     .D1     A1,A22,A5         ; |148| 

           AND     .D1     A17,A10,A30       ; |148| 
||         ADDU    .L2     B18,B31:B30,B17:B16 ; |148| 
|| [ A1]   LDW     .D2T1   *+SP(1380),A26    ; |148| 
|| [!A1]   CMPLTU  .L1     A23,A29,A26       ; |148| 
||         ADD     .S2X    A26,B17,B5        ; |148| 
||         XOR     .S1X    B5,A30,A23        ; |148| 

           MVK     .D1     0xffffffff,A29
||         XOR     .L1     A5,A30,A5         ; |148| 
||         LDW     .D2T1   *+SP(1404),A27    ; |148| 
||         XOR     .S1     A27,A11,A4        ; |148| 
||         OR      .S2X    B6,A4,B6          ; |148| 
||         ADD     .L2     B5,B9,B5          ; |148| 

           LDW     .D2T2   *+SP(1352),B19    ; |149| 
||         ADD     .S2X    B1,A25,B9         ; |148| 
||         ADDU    .L1X    B16,A5:A4,A5:A4   ; |148| 
||         ADD     .L2     B5,B19,B5         ; |148| 

           ADDU    .L1     A24,A7:A6,A23:A22 ; |148| 
||         XOR     .S1X    B6,A23,A6         ; |148| 
||         XOR     .D1     A22,A8,A7         ; |148| 
||         ADD     .L2     B5,B17,B5         ; |148| 

           SHL     .S1     A21:A20,30,A9:A8  ; |148| 

           ADD     .L2X    B9,A23,B7         ; |148| 
||         ADDU    .L1     A4,A7:A6,A5:A4    ; |148| 
||         ADD     .S1X    B5,A5,A6          ; |148| 

           AND     .D1     A27,A20,A24       ; |148| 
||         MV      .L2X    A31,B5            ; |148| 
||         LDW     .D2T1   *+SP(1436),A1     ; |148| 
|| [ A1]   CMPLTU  .L1X    B4,A26,A26        ; |148| 
||         ADD     .S1     A6,A5,A6          ; |148| 

           XOR     .D1     A15,A24,A24       ; |148| 
||         XOR     .S2     B27,B5,B31        ; |149| 
||         SHR     .S1     A26,31,A28        ; |148| 
||         LDW     .D2T2   *+SP(1336),B9     ; |148| 
||         ADD     .L1X    B9,A23,A23        ; |148| 
||         ADDU    .L2X    A4,B23:B22,B23:B22 ; |148| 

           SHRU    .S2     B5:B4,14,B19:B18  ; |149| 
||         LDDW    .D2T2   *+B19(64),B11:B10 ; |149| 
||         SHL     .S1     A21:A20,25,A5:A4  ; |148| 
||         ADD     .L2X    A6,B23,B23        ; |148| 

           LDW     .D2T1   *+SP(1408),A26    ; |148| 
||         SHL     .S2     B5:B4,23,B27:B26  ; |149| 
||         SHRU    .S1     A23:A22,7,A31:A30 ; |148| 
||         ADDU    .L2X    A26,B23:B22,B17:B16 ; |148| 

           LDW     .D2T1   *+SP(1416),A30    ; |149| 
||         AND     .L2X    A19,B7,B12        ; |148| 
||         SHRU    .S1     A23:A22,2,A7:A6   ; |148| 
||         OR      .L1     A4,A30,A4         ; |148| 

           SHRU    .S2     B5:B4,18,B25:B24  ; |149| 
||         ADDU    .L2     B16,B25:B24,B17:B16 ; |148| 
||         LDW     .D2T1   *+SP(1412),A5     ; |149| 
||         OR      .D1     A5,A31,A7         ; |148| 
||         OR      .S1     A9,A7,A9          ; |148| 
||         ADD     .L1X    A28,B17,A2        ; |148| 

           STW     .D2T2   B16,*+SP(1376)    ; |148| 
||         SHL     .S1     A23:A22,4,A29:A28 ; |148| 
||         XOR     .D1X    A29,B4,A8         ; |149| 
||         OR      .L1     A8,A6,A6          ; |148| 
||         MV      .L2     B17,B6            ; |148| 

           AND     .S2     B0,B4,B6          ; |149| 
||         LDW     .D2T1   *+SP(1440),A2     ; |149| 
||         AND     .D1     A1,A20,A25        ; |148| 
||         XOR     .S1     A9,A7,A4          ; |148| 
||         XOR     .L1     A6,A4,A6          ; |148| 
||         ADD     .L2X    A2,B6,B8          ; |148| 

           SHRU    .S1     A21:A20,28,A27:A26 ; |148| 
||         XOR     .D1     A25,A24,A1        ; |148| 
||         AND     .S2     B9,B5,B8          ; |149| 
||         STW     .D2T2   B8,*+SP(1380)     ; |148| 
||         MV      .L2     B8,B17            ; |148| 
||         AND     .L1     A26,A21,A10       ; |148| 

           OR      .D1     A28,A26,A26       ; |148| 
||         SHL     .S2     B17:B16,18,B1:B0  ; |149| 
||         AND     .L1     A30,A8,A27        ; |149| 
||         OR      .S1     A29,A27,A8        ; |148| 

           LDW     .D2T1   *+SP(1424),A8     ; |148| 
||         XOR     .D1     A14,A10,A9        ; |148| 
||         XOR     .S1     A26,A6,A6         ; |148| 
||         OR      .L2     B0,B18,B18        ; |149| 
||         SHL     .S2     B17:B16,14,B3:B2  ; |149| 
||         XOR     .L1     A8,A4,A7          ; |148| 

           EXTU    .S1     A7,24,24,A7       ; |148| 
||         ADDU    .L1     A1,A7:A6,A5:A4    ; |148| 
||         AND     .L2X    A5,B31,B30        ; |149| 
||         SHRU    .S2     B17:B16,9,B17:B16 ; |149| 
||         LDW     .D2T2   *+SP(1452),B0     ; |148| 

           OR      .D2     B27,B17,B24       ; |149| 
||         OR      .S2     B2,B24,B16        ; |149| 
||         SHRU    .S1     A23:A22,28,A29:A28 ; |148| 
||         AND     .L1     A2,A21,A24        ; |148| 
||         OR      .L2     B26,B16,B9        ; |149| 

           SHRU    .S1     A21:A20,2,A11:A10 ; |148| 
||         XOR     .L1     A24,A9,A31        ; |148| 
||         XOR     .D2     B16,B9,B8         ; |149| 
||         XOR     .S2     B30,B8,B31        ; |149| 
||         OR      .L2     B3,B25,B2         ; |149| 

           SHL     .S1     A21:A20,4,A31:A30 ; |148| 
||         ADD     .L1     A31,A5,A5         ; |148| 
||         OR      .D2     B1,B19,B9         ; |149| 
||         XOR     .S2X    A27,B6,B30        ; |149| 
||         XOR     .L2     B18,B8,B8         ; |149| 

           LDW     .D2T2   *+SP(1372),B25    ; |148| 
||         OR      .L1     A30,A28,A28       ; |148| 
||         EXTU    .S1     A5,24,24,A2       ; |148| 
||         ADDU    .L2     B8,B31:B30,B27:B26 ; |149| 
||         XOR     .S2     B2,B24,B16        ; |149| 

           LDW     .D2T2   *+SP(1396),B2     ; |148| 
||         CMPEQ   .L1     A2,A7,A1          ; |148| 
||         SHL     .S1     A23:A22,25,A27:A26 ; |148| 
||         ADD     .S2X    A8,B0,B17         ; |147| 
||         XOR     .L2     B9,B16,B16        ; |149| 

           MV      .S2X    A20,B16           ; |148| 
|| [!A1]   CMPLTU  .L1     A2,A7,A30         ; |148| 
||         SHL     .S1     A23:A22,30,A13:A12 ; |148| 
||         ADD     .L2     B16,B27,B27       ; |149| 

           SHRU    .S2     B17:B16,7,B1:B0   ; |148| 
||         MVK     .D1     0xffffffff,A11
||         OR      .S1     A13,A11,A2        ; |148| 
||         ADDU    .L2     B28,B27:B26,B19:B18 ; |149| 
|| [ A1]   CMPLTU  .L1     A4,A6,A30         ; |148| 
||         ADD     .D2X    A8,B0,B8          ; |147| 

           SHR     .S1     A30,31,A1         ; |148| 
||         STW     .D2T2   B8,*+SP(1452)     ; |148| 
||         MV      .S2X    A22,B9            ; |148| Define a twin register
||         ADD     .L2     B29,B19,B19       ; |149| 
||         ADDU    .L1X    B20,A5:A4,A9:A8   ; |148| 

           AND     .S1     A20,A8,A20        ; |149| 
||         LDW     .D2T1   *+SP(1356),A6     ; |148| 
||         EXTU    .S2     B21,24,24,B8      ; |148| 
||         OR      .L1X    A26,B0,A26        ; |148| 

           OR      .S1     A12,A10,A26       ; |148| 
||         EXTU    .S2     B19,24,24,B19     ; |149| 
||         ADDU    .L2     B10,B19:B18,B25:B24 ; |149| 
||         AND     .D2     B25,B9,B21        ; |148| 
||         ADD     .D1X    B21,A9,A9         ; |148| 
||         XOR     .L1     A28,A26,A7        ; |148| 

           MV      .D1X    B13,A26           ; |149| 
||         EXTU    .S2     B29,24,24,B29     ; |149| 
||         XOR     .D2X    A16,B21,B3        ; |148| 
||         EXTU    .S1     A9,24,24,A5       ; |148| 
||         ADD     .L2     B11,B25,B25       ; |149| 
||         XOR     .L1     A26,A7,A4         ; |148| 

           MVK     .S1     0xffffffff,A16
||         OR      .D2X    A27,B1,B21        ; |148| 
||         OR      .L1     A31,A29,A28       ; |148| 
||         EXTU    .S2     B25,24,24,B9      ; |149| 
||         ADDU    .L2     B2,B25:B24,B17:B16 ; |149| 

           LDW     .D2T1   *+SP(1400),A4     ; |149| 
||         EXTU    .S2     B11,24,24,B25     ; |149| 
||         MV      .L2X    A4,B6             ; |148| Define a twin register

           LDW     .D2T1   *+SP(1316),A31
||         CMPEQ   .L2X    A5,B8,B0          ; |148| 

           AND     .L1     A26,A23,A5        ; |148| 
|| [!B0]   CMPLTU  .L2X    A5,B8,B8          ; |148| 

           XOR     .L1     A3,A5,A3          ; |148| 
|| [ B0]   CMPLTU  .L2X    A8,B20,B8         ; |148| 

           XOR     .S2X    A28,B21,B7        ; |148| 
||         CMPEQ   .L2     B19,B29,B1        ; |149| 

           EXTU    .S1     A4,24,24,A4       ; |149| 
||         LDW     .D2T2   *+SP(1368),B28    ; |149| 
|| [ B1]   CMPLTU  .L2     B18,B28,B18       ; |149| 
||         ADD     .S2X    A4,B17,B17        ; |149| 

           CMPEQ   .L2     B9,B25,B2         ; |149| 
||         AND     .L1     A18,A22,A2        ; |148| 
||         XOR     .D2X    A2,B7,B7          ; |148| 
||         EXTU    .S2     B17,24,24,B11     ; |149| 

           CMPEQ   .L2X    B11,A4,B0         ; |149| 

           ADDU    .L2X    A30,B7:B6,B21:B20 ; |148| 
|| [!B0]   CMPLTU  .L1X    B11,A4,A7         ; |149| 
|| [ B0]   LDW     .D2T1   *+SP(1396),A5     ; |148| 

           SHL     .S2     B5:B4,14,B11:B10  ; |149| 
|| [ B2]   CMPLTU  .L2     B24,B10,B9        ; |149| 
||         XOR     .D2X    A2,B3,B6          ; |148| 

           LDW     .D2T1   *+SP(1408),A3     ; |149| 
|| [!B2]   CMPLTU  .L2     B9,B25,B9         ; |149| 
||         XOR     .S2X    B12,A3,B7         ; |148| 

           LDW     .D2T2   *+SP(1376),B6     ; |149| 
||         EXTU    .S2     B31,24,24,B2      ; |149| 
||         ADDU    .L2     B20,B7:B6,B25:B24 ; |148| 

           EXTU    .S2     B27,24,24,B31     ; |149| 
||         MV      .L1X    B9,A26            ; |149| 
||         LDW     .D2T2   *+SP(1380),B7     ; |149| 
|| [!B1]   CMPLTU  .L2     B19,B29,B18       ; |149| 

           CMPEQ   .L2     B31,B2,B0         ; |149| 
||         LDDW    .D1T1   *+A6(80),A5:A4    ; |149| 
||         SHR     .S2     B8,31,B29         ; |148| 
||         SHR     .S1     A26,31,A27        ; |149| 
||         LDW     .D2T2   *+SP(1404),B9     ; |149| 
|| [ B0]   CMPLTU  .L1X    B16,A5,A7         ; |149| 

           LDDW    .D2T2   *-B28(16),B19:B18 ; |149| 
||         MVK     .S2     0xff,B1
|| [ B0]   CMPLTU  .L2     B26,B30,B20       ; |149| 
||         MV      .L1X    B18,A28           ; |149| 

   [!B0]   CMPLTU  .L2     B31,B2,B20        ; |149| 
||         LDW     .D2T1   *+SP(1444),A6     ; |149| 

           ADDU    .L2     B8,B23:B22,B23:B22 ; |148| 
||         MV      .L1X    B6,A29            ; |149| 

           SHL     .S2     B7:B6,23,B31:B30  ; |149| 

           LDW     .D2T2   *+SP(1380),B7     ; |149| 
||         SHRU    .S2     B7:B6,14,B3:B2    ; |149| 
||         ADDU    .L1     A7,A5:A4,A5:A4    ; |149| 

           LDW     .D2T1   *+SP(1408),A16    ; |149| 
||         XOR     .S1X    A16,B6,A4         ; |149| 
||         ADDU    .L1     A4,A27:A26,A27:A26 ; |149| 

           LDW     .D2T1   *+SP(1448),A31    ; |149| 
||         SHR     .S1     A7,31,A4          ; |149| 
||         AND     .L1     A31,A4,A7         ; |149| 

           SHR     .S1     A28,31,A29        ; |149| 
||         AND     .L1     A6,A29,A26        ; |149| 
||         LDW     .D2T2   *+SP(1376),B6     ; |149| 
||         ADDU    .L2X    A26,B19:B18,B27:B26 ; |149| 

           ADD     .S2X    A1,B21,B9         ; |148| 
||         LDW     .D2T1   *+SP(1320),A5     ; |149| 
||         ADD     .L1     A4,A5,A26         ; |149| 
||         XOR     .S1     A26,A7,A4         ; |149| 
||         ADDU    .L2     B9,B17:B16,B19:B18 ; |149| 

           SHR     .S2     B20,31,B21        ; |149| 
||         ADD     .D2     B9,B25,B25        ; |148| 
||         ADDU    .L1X    B26,A29:A28,A29:A28 ; |149| 
||         MV      .L2     B7,B8             ; |149| 

           EXTU    .S1     A16,24,24,A3      ; |149| 
||         LDW     .D2T1   *+SP(1436),A7     ; |149| 
||         ADD     .L1X    A3,B19,A6         ; |149| 

           AND     .L1X    A31,B8,A31        ; |149| 
||         EXTU    .S1     A6,24,24,A30      ; |149| 

           ADD     .D2     B29,B23,B7        ; |148| 
||         SHRU    .S2     B7:B6,18,B9:B8    ; |149| 
||         XOR     .L2     B1,B8,B6          ; |149| 
||         CMPEQ   .L1     A30,A3,A1         ; |149| 

   [!A1]   CMPLTU  .L1     A30,A3,A3         ; |149| 
||         SHRU    .S2     B5:B4,9,B29:B28   ; |149| 
||         ADDU    .L2     B22,B25:B24,B23:B22 ; |148| 
|| [ A1]   LDW     .D2T1   *+SP(1404),A3     ; |149| 

           SHL     .S2     B5:B4,18,B1:B0    ; |149| 
||         ADDU    .L2X    A28,B21:B20,B7:B6 ; |149| 
||         ADD     .D2     B7,B23,B23        ; |148| 
||         ADD     .L1     A26,A27,A5        ; |149| 
||         AND     .S1X    A5,B6,A26         ; |149| 

           AND     .D1     A7,A8,A31         ; |149| 
||         XOR     .S1     A31,A26,A5        ; |149| 
||         OR      .L2     B0,B2,B27         ; |149| 
||         OR      .D2     B31,B29,B26       ; |149| 
||         OR      .S2     B30,B28,B25       ; |149| 
||         ADD     .L1X    A5,B27,A28        ; |149| 

           ADD     .D1     A28,A29,A28       ; |149| 
||         XOR     .D2     B27,B25,B8        ; |149| 
||         OR      .S2     B10,B8,B24        ; |149| 
||         SHL     .S1     A9:A8,25,A5:A4    ; |149| 
||         ADDU    .L1X    B6,A5:A4,A27:A26  ; |149| 
||         OR      .L2     B1,B3,B19         ; |149| 

           AND     .S1X    A22,B22,A12       ; |149| 
||         XOR     .L1     A25,A31,A25       ; |149| 
||         XOR     .D2     B24,B8,B20        ; |149| 
||         OR      .S2     B11,B9,B9         ; |149| 
||         XOR     .L2     B19,B26,B31       ; |149| 

           LDW     .D2T1   *+SP(1440),A1     ; |149| 
||         SHRU    .S2     B23:B22,2,B9:B8   ; |149| 
||         XOR     .L2     B9,B31,B21        ; |149| 
|| [ A1]   CMPLTU  .L1X    B18,A3,A3         ; |149| 

           SHL     .S1     A9:A8,30,A29:A28  ; |149| 
||         SHRU    .S2     B23:B22,7,B21:B20 ; |149| 
||         LDW     .D2T2   *+SP(1368),B2
||         MV      .D1     A3,A30            ; |149| 
||         ADDU    .L2X    A26,B21:B20,B7:B6 ; |149| 
||         ADD     .L1X    A28,B7,A26        ; |149| 

           LDW     .D2T1   *+SP(1360),A4     ; |149| 
||         MVK     .S2     0xff,B0
||         SHR     .S1     A30,31,A7         ; |149| 
||         OR      .L1X    A28,B8,A28        ; |149| 
||         OR      .L2X    A4,B20,B19        ; |149| 

           SHRU    .S1     A9:A8,28,A27:A26  ; |149| 
||         ADD     .L1     A26,A27,A5        ; |149| 
||         LDW     .D2T2   *+SP(1332),B1     ; |150| 
||         OR      .L2X    A5,B21,B8         ; |149| 

           MV      .S1     A17,A5            ; |149| 
||         XOR     .D1     A20,A25,A29       ; |149| 
||         OR      .L2X    A29,B9,B9         ; |149| 
||         ADD     .L1X    A5,B7,A31         ; |149| 

           AND     .D1     A21,A9,A1         ; |149| 
||         MV      .S1X    B13,A25           ; |149| 
||         AND     .L1     A1,A9,A16         ; |149| 

           LDW     .D2T1   *+SP(1372),A24    ; |149| 
||         XOR     .L1     A24,A16,A3        ; |149| 

           SHL     .S2     B23:B22,4,B7:B6   ; |149| 
||         LDDW    .D2T2   *+B2(8),B31:B30   ; |150| 
||         ADDU    .L1X    B6,A5:A4,A5:A4    ; |149| 

           AND     .D1X    A18,B22,A3        ; |149| 
||         XOR     .S1     A1,A3,A31         ; |149| 
||         OR      .L2X    B7,A27,B7         ; |149| 
||         ADD     .L1     A31,A5,A5         ; |149| 

           MVK     .D1     0xffffffff,A26
||         XOR     .L2X    A28,B19,B8        ; |149| 
||         XOR     .S2     B9,B8,B6          ; |149| 
||         OR      .S1X    B6,A26,A28        ; |149| 
||         ADDU    .L1     A30,A5:A4,A17:A16 ; |149| 

           LDW     .D2T2   *+SP(1336),B7     ; |150| 
||         MV      .S2X    A6,B19            ; |149| 
||         XOR     .L2     B7,B6,B29         ; |149| 

           XOR     .D1X    A26,B18,A7        ; |150| 
||         XOR     .D2     B0,B19,B2         ; |150| 
||         SHRU    .S2     B19:B18,18,B9:B8  ; |150| 
||         XOR     .L2X    A28,B8,B28        ; |149| 
||         ADDU    .L1     A16,A25:A24,A17:A16 ; |149| 
||         ADD     .S1     A7,A17,A24        ; |149| 

           ADD     .L1     A24,A17,A16       ; |149| 
||         ADDU    .L2X    A29,B29:B28,B25:B24 ; |149| 
||         SHL     .S2     B19:B18,23,B21:B20 ; |150| 
||         STW     .D2T1   A16,*+SP(1360)    ; |149| 

           AND     .S2     B4,B18,B1         ; |150| 
||         AND     .L2X    B1,A7,B26         ; |150| 
||         STW     .D2T1   A16,*+SP(1364)    ; |150| 

           ADD     .S2X    A31,B25,B25       ; |149| 
||         XOR     .L2     B26,B1,B26        ; |150| 
||         LDW     .D2T1   *+SP(1364),A17    ; |150| 

           SHRU    .S2     B19:B18,14,B7:B6  ; |150| 
||         AND     .L2     B7,B2,B27         ; |150| 
||         LDW     .D2T1   *+SP(1360),A16    ; |150| 

           EXTU    .S2     B25,24,24,B1      ; |149| 
||         LDW     .D2T1   *+SP(1364),A25    ; |150| 

           LDW     .D2T1   *+SP(1360),A24    ; |150| 
           LDW     .D2T1   *+SP(1324),A6     ; |149| 
           NOP             1
           SHRU    .S1     A17:A16,9,A27:A26 ; |150| 
           SHL     .S1     A17:A16,14,A17:A16 ; |150| 

           SHL     .S1     A25:A24,18,A25:A24 ; |150| 
||         AND     .S2     B5,B19,B20        ; |150| 
||         OR      .L2X    B20,A26,B0        ; |150| 
||         OR      .L1X    A17,B9,A7         ; |150| 

           SHL     .S2     B23:B22,25,B9:B8  ; |149| 
||         SHL     .S1     A9:A8,4,A17:A16   ; |149| 
||         OR      .L2X    A16,B8,B2         ; |150| 
||         XOR     .D2     B27,B20,B27       ; |150| 
||         OR      .L1X    A25,B7,A30        ; |150| 
||         MV      .D1     A6,A29            ; |149| 

           SHRU    .S1     A9:A8,7,A25:A24   ; |149| 
||         XOR     .L2     B2,B0,B6          ; |150| 
||         OR      .S2X    A24,B6,B2         ; |150| 
||         AND     .L1X    A19,B23,A26       ; |149| 

           EXTU    .S2     B29,24,24,B2      ; |149| 
||         XOR     .L2     B2,B6,B6          ; |150| 
||         OR      .D2X    B21,A27,B7        ; |150| 
||         OR      .L1X    B8,A24,A24        ; |149| 
||         EXTU    .S1     A29,24,24,A31     ; |150| 

           LDW     .D2T2   *+SP(1352),B6     ; |150| 
||         ADDU    .L2     B6,B27:B26,B21:B20 ; |150| 
||         XOR     .S2X    A7,B7,B7          ; |150| 
||         OR      .L1X    B9,A25,A28        ; |149| 

           CMPEQ   .L2     B1,B2,B0          ; |149| 
           XOR     .S2X    A30,B7,B7         ; |150| 
           XOR     .L1X    B12,A26,A25       ; |149| 
           ADD     .L2     B7,B21,B21        ; |150| 

           SHRU    .S2     B23:B22,28,B29:B28 ; |149| 
|| [ B0]   CMPLTU  .L2     B24,B28,B6        ; |149| 
||         LDDW    .D2T2   *+B6(80),B11:B10  ; |150| 

           ADDU    .L2     B16,B25:B24,B25:B24 ; |149| 

           MV      .S2     B25,B7            ; |149| 
||         LDW     .D2T2   *+SP(1416),B1     ; |149| 
|| [!B0]   CMPLTU  .L2     B1,B2,B6          ; |149| 
||         OR      .L1X    A17,B29,A27       ; |149| 

           SHRU    .S1     A9:A8,2,A17:A16   ; |149| 
||         EXTU    .S2     B17,24,24,B7      ; |149| 
||         ADD     .L2     B17,B7,B8         ; |149| 
||         STW     .D2T2   B24,*+SP(1296)    ; |149| 
||         OR      .L1X    A16,B28,A7        ; |149| 

           XOR     .S1     A27,A28,A24       ; |149| 
||         EXTU    .S2     B8,24,24,B17      ; |149| 
||         ADDU    .L2     B30,B21:B20,B25:B24 ; |150| 
||         XOR     .L1     A7,A24,A7         ; |149| 

           CMPEQ   .L2     B17,B7,B0         ; |149| 
||         ADD     .D2     B31,B25,B25       ; |150| 
||         MV      .L1X    B8,A15            ; |149| 
||         SHL     .S2     B23:B22,30,B29:B28 ; |149| 

   [ B0]   LDW     .D2T2   *+SP(1296),B7     ; |149| 
||         ADDU    .L2     B10,B25:B24,B3:B2 ; |150| 
||         EXTU    .S2     B31,24,24,B31     ; |150| 

           ADD     .S2     B11,B3,B3         ; |150| 
|| [!B0]   CMPLTU  .L2     B17,B7,B7         ; |149| 
||         OR      .L1X    B29,A17,A29       ; |149| 

           ADDU    .L2     B1,B3:B2,B9:B8    ; |150| 
||         MV      .L1X    B6,A17            ; |149| 
||         EXTU    .S2     B3,24,24,B17      ; |150| 

           XOR     .L1     A2,A3,A6          ; |149| 
||         ADD     .L2X    A6,B9,B9          ; |150| 
||         LDW     .D2T2   *+SP(1384),B28    ; |150| 
||         OR      .D1X    B28,A16,A30       ; |149| 
||         SHR     .S1     A17,31,A26        ; |149| 

           XOR     .D1     A29,A24,A7        ; |149| 
||         XOR     .S1     A30,A7,A6         ; |149| 
||         XOR     .L1     A12,A6,A16        ; |149| 
||         LDW     .D2T1   *+SP(1356),A3     ; |150| 

           EXTU    .S2     B9,24,24,B16      ; |150| 
|| [ B0]   CMPLTU  .L2     B7,B16,B7         ; |149| 
||         AND     .S1X    A23,B23,A2        ; |149| 
||         ADDU    .L1     A17,A7:A6,A7:A6   ; |149| 
||         LDW     .D2T1   *+SP(1448),A29    ; |150| 

           LDW     .D2T1   *+SP(1380),A26    ; |150| 
||         ADD     .S1     A26,A7,A25        ; |149| 
||         CMPEQ   .L2X    B16,A31,B0        ; |150| 
||         XOR     .L1     A2,A25,A17        ; |149| 

   [ B0]   LDW     .D2T2   *+SP(1416),B6     ; |149| 
||         EXTU    .S2     B11,24,24,B16     ; |150| 
|| [!B0]   CMPLTU  .L2X    B16,A31,B6        ; |150| 
||         MV      .S1X    B7,A24            ; |149| 
||         ADDU    .L1     A6,A17:A16,A7:A6  ; |149| 

           SHR     .S1     A24,31,A24        ; |149| 
||         ADDU    .L1     A24,A5:A4,A5:A4   ; |149| 
||         ADD     .D1     A25,A7,A7         ; |149| 
||         MV      .L2X    A15,B7            ; |150| 

           ADD     .S1     A24,A5,A27        ; |149| 
||         ADDU    .L1     A4,A7:A6,A7:A6    ; |149| 
||         MV      .L2X    A15,B11           ; |150| 
||         LDDW    .D1T1   *+A3(96),A17:A16  ; |150| 

           ADD     .L1     A27,A7,A7         ; |149| 
           SHRU    .S1     A7:A6,7,A5:A4     ; |150| 

           LDW     .D2T2   *+SP(1452),B0     ; |150| 
|| [ B0]   CMPLTU  .L2     B8,B6,B6          ; |150| 
||         SHRU    .S1     A7:A6,2,A25:A24   ; |150| 

           LDW     .D2T2   *+SP(1296),B6     ; |150| 
||         MV      .L2     B6,B3             ; |150| 

           NOP             2
           ADDU    .L1X    B3,A17:A16,A17:A16 ; |150| 

           CMPEQ   .L2     B17,B16,B0        ; |150| 
||         AND     .S2     B0,B11,B11        ; |150| 

           SHL     .S2     B7:B6,30,B13:B12  ; |150| 
||         MV      .L2     B6,B29            ; |150| 

   [!B0]   CMPLTU  .L2     B17,B16,B6        ; |150| 
||         SHL     .S2     B7:B6,25,B29:B28  ; |150| 
||         AND     .D2     B28,B29,B1        ; |150| 

           OR      .L1X    B13,A25,A25       ; |150| 
|| [ B0]   CMPLTU  .L2     B2,B10,B6         ; |150| 
||         EXTU    .S2     B21,24,24,B7      ; |150| 
||         LDW     .D2T2   *+SP(1296),B17    ; |150| 

           LDW     .D2T2   *+SP(1376),B1     ; |150| 
||         EXTU    .S2     B25,24,24,B16     ; |150| 
||         XOR     .L1X    A20,B1,A28        ; |150| 

           EXTU    .S2     B27,24,24,B29     ; |150| 
||         LDW     .D2T1   *+SP(1360),A5     ; |150| 
||         CMPEQ   .L2     B16,B31,B0        ; |150| 
||         OR      .L1X    B29,A5,A30        ; |150| 

           LDW     .D2T1   *+SP(1364),A1     ; |150| 
||         MVK     .S2     0xff,B25
||         CMPEQ   .L2     B7,B29,B2         ; |150| 
||         XOR     .L1X    A1,B11,A20        ; |150| 

   [ B0]   CMPLTU  .L2     B24,B30,B28       ; |150| 
||         OR      .L1X    B28,A4,A3         ; |150| 

           LDW     .D2T2   *+SP(1368),B29    ; |150| 
||         AND     .S2X    A8,B17,B13        ; |150| 
|| [!B2]   CMPLTU  .L2     B7,B29,B30        ; |150| 

           SHL     .S2     B19:B18,18,B27:B26 ; |150| 
|| [ B2]   CMPLTU  .L2     B20,B26,B30       ; |150| 

   [!B0]   CMPLTU  .L2     B16,B31,B28       ; |150| 
||         LDW     .D2T1   *+SP(1364),A5     ; |150| 
||         AND     .S2X    B1,A5,B7          ; |150| 
||         MV      .S1     A5,A4             ; |150| 
||         MV      .L1     A5,A10            ; |150| 

           MV      .D2     B17,B16           ; |150| 
||         SHRU    .S2     B19:B18,9,B1:B0   ; |150| 
||         SHL     .S1     A7:A6,4,A27:A26   ; |150| 
||         XOR     .D1X    B13,A28,A1        ; |150| 
||         AND     .L1     A26,A1,A31        ; |150| 
||         XOR     .L2X    B25,A1,B21        ; |150| 

           XOR     .L1     A11,A10,A10       ; |150| 
||         AND     .L2X    A29,B21,B24       ; |150| 

           OR      .L2X    B12,A24,B25       ; |150| 
           MV      .L2X    A15,B17           ; |150| 

           XOR     .L1X    B25,A3,A3         ; |150| 
||         SHRU    .S2     B17:B16,28,B17:B16 ; |150| 
||         SHRU    .S1     A5:A4,14,A29:A28  ; |150| 

           LDW     .D2T1   *+SP(1444),A28    ; |150| 
||         OR      .L2X    A26,B16,B31       ; |150| 
||         SHL     .S1     A5:A4,23,A5:A4    ; |150| 
||         OR      .L1X    B26,A28,A24       ; |150| 

           OR      .L1X    A4,B0,A26         ; |150| 

           SHR     .S2     B3,31,B17         ; |150| 
||         XOR     .S1     A24,A26,A24       ; |150| 
||         OR      .L2X    A5,B1,B2          ; |150| 
||         OR      .L1X    A27,B17,A27       ; |150| 

           AND     .L1X    B22,A6,A31        ; |150| 
||         XOR     .L2X    A31,B24,B1        ; |150| 

           STW     .D2T1   A31,*+SP(1348)    ; |150| 

           ADD     .S1X    B17,A17,A10       ; |150| 
||         LDW     .D2T1   *+SP(1436),A28    ; |150| 
||         AND     .L1     A28,A10,A4        ; |150| 

           LDW     .D2T1   *+SP(1364),A17    ; |150| 

           SHR     .S2     B6,31,B7          ; |150| 
||         LDDW    .D2T2   *B29,B17:B16      ; |150| 
||         XOR     .L2X    B7,A4,B0          ; |150| 

           NOP             1
           SHR     .S2     B28,31,B29        ; |150| 

           LDW     .D2T1   *+SP(1440),A25    ; |150| 
||         XOR     .S1     A25,A30,A29       ; |150| 
||         OR      .L1X    B27,A29,A28       ; |150| 
||         ADDU    .L2X    A28,B9:B8,B21:B20 ; |150| 

           LDW     .D2T1   *+SP(1360),A16    ; |150| 
||         SHL     .S2     B19:B18,14,B7:B6  ; |150| 
||         ADDU    .L2X    A16,B7:B6,B27:B26 ; |150| 
||         XOR     .L1X    A28,B2,A30        ; |150| 

           NOP             2
           ADDU    .L2     B26,B17:B16,B17:B16 ; |150| 
           ADD     .L2X    A25,B21,B21       ; |150| 

           SHR     .S2     B30,31,B31        ; |150| 
||         XOR     .L1X    B31,A3,A16        ; |150| 
||         LDW     .D2T1   *+SP(1440),A17    ; |150| 
||         SHRU    .S1     A17:A16,18,A5:A4  ; |150| 

           EXTU    .S2     B21,24,24,B28     ; |150| 
||         ADDU    .L2     B16,B29:B28,B27:B26 ; |150| 
||         ADD     .D2X    A10,B27,B6        ; |150| 
||         OR      .L1X    B6,A4,A4          ; |150| 

           AND     .D1     A22,A6,A4         ; |150| 
||         XOR     .S1     A4,A24,A24        ; |150| 
||         MV      .D2X    A15,B29           ; |150| 
||         ADDU    .L2     B26,B31:B30,B7:B6 ; |150| 
||         OR      .L1X    B7,A5,A5          ; |150| 
||         ADD     .S2     B6,B17,B16        ; |150| 

           ADDU    .L2     B6,B1:B0,B17:B16  ; |150| 
||         AND     .D1X    B23,A7,A5         ; |150| 
||         AND     .S1     A23,A7,A30        ; |150| 
||         XOR     .L1     A5,A30,A25        ; |150| 
||         AND     .D2X    A9,B29,B25        ; |150| 
||         ADD     .S2     B16,B27,B24       ; |150| 

           MVK     .S2     0xff,B29
||         ADD     .L2     B24,B7,B7         ; |150| 
||         LDW     .D2T2   *+SP(1296),B6     ; |150| 

           LDW     .D2T1   *+SP(1320),A25    ; |150| 
||         ADDU    .L1X    B16,A25:A24,A27:A26 ; |150| 
||         XOR     .D1     A27,A29,A17       ; |150| 
||         MV      .S2X    A15,B7            ; |150| 
||         ADD     .L2     B7,B17,B31        ; |150| 
||         EXTU    .S1     A17,24,24,A3      ; |150| 

           EXTU    .S1     A17,24,24,A17     ; |150| 
||         XOR     .D1X    B25,A20,A20       ; |150| 
||         LDW     .D2T1   *+SP(1316),A24    ; |150| 
||         ADDU    .L1     A1,A17:A16,A11:A10 ; |150| 

           STW     .D2T1   A5,*+SP(1344)     ; |150| 
||         SHL     .S1     A7:A6,25,A29:A28  ; |150| 
||         ADD     .D1X    B31,A27,A27       ; |150| 
||         ADD     .L1     A20,A11,A11       ; |150| 
||         CMPEQ   .L2X    B28,A3,B0         ; |150| 

           XOR     .S2     B29,B21,B28       ; |151| 
|| [!B0]   CMPLTU  .L2X    B28,A3,B24        ; |150| 
||         EXTU    .S1     A11,24,24,A20     ; |150| 
|| [ B0]   LDW     .D2T1   *+SP(1436),A3     ; |150| 

           SHRU    .S2     B7:B6,2,B27:B26   ; |150| 
||         CMPEQ   .L1     A20,A17,A1        ; |150| 

           SHRU    .S2     B7:B6,7,B17:B16   ; |150| 
|| [ A1]   CMPLTU  .L1     A10,A16,A20       ; |150| 

           SHRU    .S1     A7:A6,28,A17:A16  ; |150| 
||         SHL     .S2     B7:B6,4,B7:B6     ; |150| 
|| [!A1]   CMPLTU  .L1     A20,A17,A20       ; |150| 

           OR      .S1X    A29,B17,A29       ; |150| 
||         ADDU    .L1     A26,A25:A24,A25:A24 ; |150| 

           SHRU    .S2     B21:B20,18,B17:B16 ; |151| 
||         XOR     .D1     A2,A30,A28        ; |150| 
||         OR      .S1X    A28,B16,A3        ; |150| 
||         ADD     .L1     A27,A25,A25       ; |150| 
|| [ B0]   CMPLTU  .L2X    B20,A3,B24        ; |150| 

           SHL     .S1     A7:A6,30,A31:A30  ; |150| 
||         OR      .L2X    B6,A16,B6         ; |150| 
||         SHR     .S2     B24,31,B30        ; |150| 

           OR      .L2X    B7,A17,B7         ; |150| 
||         ADDU    .L1X    B24,A25:A24,A27:A26 ; |150| 

           EXTU    .S2     B9,24,24,B6       ; |150| 
||         XOR     .D1     A12,A4,A3         ; |150| 
||         XOR     .S1X    B6,A3,A1          ; |150| 
||         ADDU    .L1     A26,A19:A18,A17:A16 ; |150| 

           AND     .L2     B19,B21,B30       ; |151| 
||         STW     .D2T1   A16,*+SP(1316)    ; |150| 
||         ADD     .L1X    B30,A27,A4        ; |150| 

           OR      .S1X    A30,B26,A30       ; |150| 
||         ADD     .L1     A4,A17,A16        ; |150| 

           ADDU    .L1X    B8,A11:A10,A5:A4  ; |150| 
||         MVK     .D1     0xffffffff,A1
||         XOR     .S1     A30,A1,A26        ; |150| 
||         STW     .D2T1   A16,*+SP(1320)    ; |150| 

           XOR     .L1X    B7,A29,A19        ; |150| 
||         LDW     .D2T1   *+SP(1320),A17    ; |150| 

           SHR     .S1     A20,31,A1         ; |150| 
||         XOR     .L2X    A1,B20,B24        ; |151| 
||         OR      .L1X    A31,B27,A31       ; |150| 
||         LDW     .D2T1   *+SP(1316),A16    ; |150| 

           AND     .L2     B4,B24,B2         ; |151| 
||         XOR     .L1     A31,A19,A27       ; |150| 
||         LDW     .D2T1   *+SP(1348),A30

           ADD     .L1X    B9,A5,A5          ; |150| 
||         STW     .D2T1   A5,*+SP(1328)     ; |150| 

           AND     .L1     A15,A5,A14        ; |151| 
||         LDW     .D2T1   *+SP(1344),A29    ; |151| 
||         EXTU    .S1     A5,24,24,A10      ; |150| 

           LDW     .D2T2   *+SP(1328),B26    ; |151| 

           STW     .D2T1   A4,*+SP(1324)     ; |150| 
||         CMPEQ   .L2X    A10,B6,B0         ; |150| 
||         SHRU    .S1     A17:A16,9,A19:A18 ; |151| 

           LDW     .D2T1   *+SP(1316),A16    ; |151| 
||         SHL     .S1     A17:A16,14,A27:A26 ; |151| 
||         ADDU    .L1     A20,A27:A26,A3:A2 ; |150| 
|| [ B0]   MV      .L2X    A4,B6             ; |150| 
||         XOR     .D1     A30,A3,A30        ; |150| 

           SHL     .S2     B21:B20,23,B7:B6  ; |151| 
||         LDW     .D2T1   *+SP(1340),A1
||         ADD     .L1     A1,A3,A3          ; |150| 
|| [!B0]   CMPLTU  .L2X    A10,B6,B8         ; |150| 

           LDW     .D2T2   *+SP(1296),B0     ; |151| 
||         XOR     .L1     A29,A28,A31       ; |150| 
|| [ B0]   CMPLTU  .L2X    A4,B8,B8          ; |150| 

           SHR     .S2     B8,31,B1          ; |150| 
||         OR      .L1X    B7,A19,A20        ; |151| 
||         OR      .L2X    B6,A18,B6         ; |151| 

           SHRU    .S2     B21:B20,14,B27:B26 ; |151| 
||         ADD     .L2     B9,B26,B8         ; |150| Define a twin register
||         OR      .D2X    A26,B16,B7        ; |151| 
||         ADDU    .L1X    B8,A25:A24,A29:A28 ; |150| 

           ADDU    .L1     A2,A31:A30,A17:A16 ; |150| 
||         STW     .D2T2   B8,*+SP(1328)     ; |151| 
||         XOR     .L2     B7,B6,B6          ; |151| 
||         AND     .S2     B5,B28,B17        ; |151| 
||         OR      .D1X    A27,B17,A25       ; |151| 
||         SHL     .S1     A17:A16,18,A19:A18 ; |151| 

           LDDW    .D1T1   *+A1(120),A25:A24 ; |151| 
||         XOR     .S1     A25,A20,A3        ; |151| 
||         AND     .S2     B18,B20,B1        ; |151| 
||         ADD     .L2X    B1,A29,B31        ; |150| 
||         LDW     .D2T2   *+SP(1328),B9     ; |151| 
||         ADD     .L1     A3,A17,A17        ; |150| 

           SHL     .S1     A5:A4,25,A29:A28  ; |151| 
||         OR      .D1X    A19,B27,A16       ; |151| 
||         ADDU    .L1     A28,A17:A16,A19:A18 ; |150| 
||         XOR     .D2     B17,B30,B29       ; |151| 
||         XOR     .S2     B2,B1,B28         ; |151| 
||         OR      .L2X    A18,B26,B7        ; |151| 

           LDW     .D2T1   *+SP(1356),A3     ; |151| 
||         MV      .S2X    A4,B8             ; |151| 
||         SHL     .S1     A5:A4,30,A31:A30  ; |151| 
||         ADD     .D1X    B31,A19,A19       ; |150| 
||         XOR     .L2     B7,B6,B6          ; |151| 
||         XOR     .L1     A16,A3,A20        ; |151| 

           AND     .S2     B0,B8,B24         ; |151| 
||         LDW     .D2T2   *+SP(1332),B2     ; |151| 
||         SHRU    .S1     A19:A18,2,A11:A10 ; |151| 
||         ADDU    .L2     B6,B29:B28,B7:B6  ; |151| 

           XOR     .S2     B24,B13,B26       ; |151| 
||         STW     .D2T2   B24,*+SP(1372)    ; |151| 
||         SHRU    .S1     A19:A18,7,A27:A26 ; |151| 
||         ADD     .L2X    A20,B7,B7         ; |151| 

           LDW     .D2T2   *+SP(1388),B24    ; |151| 
||         SHRU    .S2     B9:B8,28,B17:B16  ; |151| 
||         OR      .D1     A31,A11,A30       ; |151| 
||         OR      .S1     A30,A10,A28       ; |151| 
||         OR      .L1     A28,A26,A26       ; |151| 
||         ADDU    .L2X    A24,B7:B6,B31:B30 ; |151| 

           EXTU    .S2     B7,24,24,B3       ; |151| 
||         LDW     .D2T1   *+SP(1360),A25
||         EXTU    .S1     A25,24,24,A28     ; |151| 
||         XOR     .L1     A28,A26,A1        ; |151| 
||         ADD     .L2X    A25,B31,B31       ; |151| 

           SHL     .S1     A19:A18,4,A3:A2   ; |151| 
||         EXTU    .S2     B29,24,24,B29     ; |151| 
||         LDDW    .D1T1   *+A3(120),A17:A16 ; |151| 

           SHL     .S1     A19:A18,25,A11:A10 ; |151| 
||         CMPEQ   .L2     B3,B29,B0         ; |151| 

           XOR     .L1X    A14,B25,A2        ; |151| 
|| [ B0]   CMPLTU  .L2     B6,B28,B28        ; |151| 
||         OR      .S2X    A2,B16,B16        ; |151| 

           AND     .L1     A8,A4,A1          ; |151| 
|| [!B0]   CMPLTU  .L2     B3,B29,B28        ; |151| 
||         MV      .D2     B24,B6            ; |151| 
||         XOR     .S2X    B16,A1,B16        ; |151| 

           MVK     .L1     0xffffffff,A3
||         OR      .L2X    A3,B17,B17        ; |151| 
||         EXTU    .S2     B6,24,24,B6       ; |151| 

           EXTU    .S1     A17,24,24,A20     ; |151| 
||         ADDU    .L2X    A16,B31:B30,B9:B8 ; |151| 

           ADD     .L2X    A17,B9,B9         ; |151| 

           ADDU    .L2     B2,B9:B8,B27:B26  ; |151| 
||         XOR     .D2X    A1,B26,B10        ; |151| 
||         EXTU    .S2     B9,24,24,B7       ; |151| 

           EXTU    .S2     B31,24,24,B9      ; |151| 
||         ADD     .D2     B24,B27,B27       ; |151| 
||         CMPEQ   .L2X    B7,A20,B1         ; |151| 

           OR      .L1     A29,A27,A20       ; |151| 
||         LDW     .D2T2   *+SP(1372),B7     ; |151| 
|| [!B1]   CMPLTU  .L2X    B7,A20,B24        ; |151| 

           XOR     .L1     A30,A20,A26       ; |151| 
||         LDW     .D2T2   *+SP(1368),B31    ; |151| 
||         CMPEQ   .L2X    B9,A28,B2         ; |151| 

           LDW     .D2T1   *+SP(1320),A27    ; |151| 
|| [!B2]   CMPLTU  .L2X    B9,A28,B30        ; |151| 

           AND     .L1     A9,A5,A16         ; |151| 
|| [ B1]   CMPLTU  .L2X    B8,A16,B24        ; |151| 

           LDW     .D2T1   *+SP(1316),A26    ; |151| 
||         XOR     .L1     A16,A2,A17        ; |151| 
||         XOR     .L2X    B17,A26,B17       ; |151| 

           EXTU    .S2     B27,24,24,B7      ; |151| 
||         LDW     .D2T1   *+SP(1356),A2
||         XOR     .L2     B7,B13,B9         ; |151| 

           SHL     .S2     B21:B20,18,B9:B8  ; |151| 
||         XOR     .D2X    A1,B9,B29         ; |151| 
||         CMPEQ   .L2     B7,B6,B0          ; |151| 

           XOR     .S2X    A14,B25,B1        ; |151| 
||         MV      .L2     B8,B12            ; |151| 
|| [ B0]   LDW     .D2T2   *+SP(1332),B6     ; |151| 

           LDDW    .D2T2   *+B31(16),B9:B8   ; |151| 
|| [!B0]   CMPLTU  .L2     B7,B6,B25         ; |151| 
||         MV      .L1X    B9,A20            ; |151| 

           LDW     .D2T1   *+SP(1320),A3     ; |151| 
||         XOR     .L1     A3,A26,A1         ; |151| 
||         ADDU    .L2     B10,B17:B16,B11:B10 ; |151| 
||         SHL     .S1     A27:A26,23,A29:A28 ; |151| 

           LDDW    .D1T1   *+A2(112),A27:A26 ; |151| 
||         EXTU    .S2     B17,24,24,B11     ; |151| 
||         ADD     .L2X    A17,B11,B31       ; |151| 
||         SHRU    .S1     A27:A26,14,A31:A30 ; |151| 

           OR      .L1     A20,A31,A20       ; |151| 
|| [ B2]   CMPLTU  .L2X    B30,A24,B30       ; |151| 
||         LDW     .D2T1   *+SP(1316),A2     ; |151| 

           SHRU    .S2     B21:B20,9,B7:B6   ; |151| 
|| [ B0]   CMPLTU  .L2     B26,B6,B25        ; |151| 

           LDW     .D2T2   *+SP(1376),B6     ; |151| 
||         ADDU    .L2     B29,B17:B16,B3:B2 ; |151| 
||         MV      .S2     B6,B13            ; |151| 

           LDW     .D2T2   *+SP(1320),B9
||         MV      .L2     B9,B7             ; |151| 
||         EXTU    .S2     B31,24,24,B17     ; |151| 
||         OR      .L1X    A29,B7,A29        ; |151| 

           SHRU    .S1     A19:A18,28,A27:A26 ; |151| 
||         ADDU    .L1X    B25,A27:A26,A13:A12 ; |151| 
||         MVK     .S2     0xff,B31
||         CMPEQ   .L2     B17,B11,B0        ; |151| 
||         STW     .D2T1   A29,*+SP(1336)    ; |151| 

           SHRU    .S1     A3:A2,18,A3:A2    ; |151| 
|| [ B0]   CMPLTU  .L2     B10,B16,B10       ; |151| 
||         LDW     .D2T1   *+SP(1316),A29

           OR      .S2X    B12,A30,B0        ; |151| 
|| [!B0]   CMPLTU  .L2     B17,B11,B10       ; |151| 
||         STW     .D2T2   B8,*+SP(1388)     ; |151| 

           LDW     .D2T2   *+SP(1380),B29    ; |151| 
||         AND     .L1X    B6,A1,A1          ; |151| 

           SHRU    .S1     A5:A4,7,A17:A16   ; |151| 
||         XOR     .D2X    A16,B1,B31        ; |151| 
||         SHL     .S2     B21:B20,14,B9:B8  ; |151| 
||         XOR     .L2     B31,B9,B16        ; |151| 

           AND     .D1     A6,A18,A10        ; |151| 
||         EXTU    .S1     A21,24,24,A16     ; |151| 
||         OR      .L1     A10,A16,A21       ; |151| 
||         MV      .S2     B13,B9            ; |151| 
||         STW     .D2T2   B9,*+SP(1332)     ; |151| 
||         MV      .L2     B8,B6             ; |151| 

           SHL     .S1     A5:A4,4,A25:A24   ; |151| 
||         LDW     .D2T2   *+SP(1384),B1     ; |151| 
||         AND     .L1     A25,A29,A29       ; |151| 

           LDW     .D2T1   *+SP(1364),A1     ; |151| 
||         OR      .S1     A11,A17,A26       ; |151| 
||         OR      .D1     A24,A26,A17       ; |151| 
||         XOR     .L1     A29,A1,A31        ; |151| 

           SHRU    .S1     A5:A4,2,A5:A4     ; |151| 
||         SHR     .S2     B25,31,B29        ; |151| 
||         AND     .L2     B29,B16,B8        ; |151| 
||         OR      .D1     A25,A27,A2        ; |151| 
||         OR      .L1X    B6,A2,A24         ; |151| 
||         LDW     .D2T1   *+SP(1320),A29    ; |151| 

           XOR     .D1     A17,A21,A21       ; |151| 
||         XOR     .S1     A2,A26,A26        ; |151| 
||         OR      .L1X    A28,B9,A30        ; |151| 
||         MV      .L2X    A31,B12           ; |151| Define a twin register
||         SHR     .S2     B24,31,B25        ; |151| 
||         LDW     .D2T2   *+SP(1388),B6     ; |151| 

           SHR     .S2     B28,31,B29        ; |151| 
||         LDW     .D2T1   *+SP(1340),A2     ; |151| 
||         ADDU    .L2X    A12,B25:B24,B25:B24 ; |151| 
||         ADD     .L1X    B29,A13,A31       ; |151| 

           ADDU    .L2     B1,B27:B26,B17:B16 ; |151| 
           AND     .S2X    B22,A18,B1        ; |151| 

           SHL     .S1     A19:A18,30,A29:A28 ; |151| 
||         AND     .L1     A1,A29,A1         ; |151| 

           XOR     .D1X    B0,A30,A29        ; |151| 
||         LDW     .D2T1   *+SP(1336),A5     ; |151| 
||         OR      .S1     A29,A5,A27        ; |151| 
||         OR      .L1     A28,A4,A28        ; |151| 
||         ADDU    .L2     B24,B7:B6,B7:B6   ; |151| 

           ADD     .D2     B31,B3,B2         ; |151| 
||         ADDU    .L2     B2,B27:B26,B9:B8  ; |151| 
||         ADDK    .S1     128,A2            ; |127| 
||         XOR     .S2X    A1,B8,B13         ; |151| 

           ADD     .L2     B2,B9,B9          ; |151| 
||         LDW     .D2T1   *+SP(1332),A1     ; |151| 
||         SHR     .S2     B30,31,B31        ; |151| 

           LDW     .D2T2   *+SP(1452),B31    ; |151| 
||         MV      .L1X    B10,A31           ; |151| 
||         ADDU    .L2     B6,B31:B30,B25:B24 ; |151| 
||         ADD     .S2X    A31,B25,B6        ; |151| 

           ADDU    .L2     B24,B29:B28,B7:B6 ; |151| 
||         ADD     .S2     B6,B7,B24         ; |151| 
||         LDW     .D2T1   *+SP(1348),A4     ; |151| 

           ADDU    .L2     B6,B13:B12,B25:B24 ; |151| 
||         EXTU    .S2     B27,24,24,B29     ; |151| 
||         ADD     .D2     B24,B25,B28       ; |151| 

           LDW     .D2T2   *+SP(1368),B27    ; |151| 
||         ADD     .L2     B28,B7,B7         ; |151| 

           LDW     .D2T1   *+SP(1344),A3     ; |151| 
||         ADD     .L2     B7,B25,B6         ; |151| 
||         OR      .L1     A1,A3,A1          ; |151| 

           LDW     .D2T2   *+SP(1352),B31    ; |151| 
||         ADD     .L2     B31,B17,B17       ; |151| 

           STW     .D2T1   A2,*+SP(1340)     ; |127| 
||         EXTU    .S2     B17,24,24,B30     ; |151| 
||         XOR     .L1X    A4,B1,A20         ; |151| 
||         XOR     .S1     A20,A5,A4         ; |151| 

           XOR     .D1     A10,A20,A24       ; |151| 
||         XOR     .S1     A24,A29,A4        ; |151| 
||         EXTU    .S2     B9,24,24,B1       ; |151| 
||         XOR     .L1     A1,A4,A5          ; |151| 

           XOR     .D1     A28,A21,A4        ; |151| 
||         ADDK    .S2     128,B27           ; |127| 
||         CMPEQ   .L2     B1,B29,B2         ; |151| 
||         ADDU    .L1X    B24,A5:A4,A27:A26 ; |151| 
||         XOR     .S1     A27,A26,A5        ; |151| 

   [!A0]   LDW     .D2T2   *+SP(1288),B26
|| [ B2]   CMPLTU  .L2     B8,B26,B7         ; |151| 
||         CMPEQ   .L1X    B30,A16,A1        ; |151| 

           LDW     .D2T1   *+SP(1448),A5     ; |151| 
||         ADDK    .S2     128,B31           ; |127| 
|| [!B2]   CMPLTU  .L2     B1,B29,B7         ; |151| 
||         AND     .S1X    B23,A19,A29       ; |151| 
||         ADDU    .L1     A31,A5:A4,A21:A20 ; |151| 

           MV      .S2     B7,B0             ; |151| 
||         ADD     .D1X    B6,A27,A30        ; |151| 
|| [!A1]   CMPLTU  .L2X    B30,A16,B24       ; |151| 
||         AND     .S1     A7,A19,A3         ; |151| 
||         XOR     .L1     A3,A29,A25        ; |151| 
||         LDW     .D2T1   *+SP(1444),A4     ; |151| 

           XOR     .L1     A3,A25,A25        ; |151| 
|| [ A1]   LDW     .D2T2   *+SP(1384),B24    ; |151| 

           SHR     .S1     A31,31,A20        ; |151| 
||         LDW     .D2T1   *+SP(1356),A29    ; |151| 
||         ADDU    .L1     A20,A25:A24,A17:A16 ; |151| 

           SHR     .S2     B0,31,B31         ; |151| 
||         STW     .D2T2   B31,*+SP(1352)    ; |127| 
||         ADD     .L1     A20,A21,A24       ; |151| 

           STW     .D2T2   B27,*+SP(1368)    ; |151| 
||         ADD     .L1     A24,A17,A17       ; |151| 

           ADDU    .L1     A26,A5:A4,A5:A4   ; |151| 

           ADD     .L1     A30,A5,A5         ; |151| 
|| [ A1]   CMPLTU  .L2     B16,B24,B24       ; |151| 

           ADDK    .S1     128,A29           ; |127| 
||         ADDU    .L1X    B0,A5:A4,A21:A20  ; |151| 
||         SHR     .S2     B24,31,B25        ; |151| 

           STW     .D2T1   A29,*+SP(1356)    ; |151| 
||         ADDU    .L1X    B24,A5:A4,A5:A4   ; |151| 

           ADD     .L2X    B31,A21,B6        ; |151| 
||         ADD     .S1X    B25,A5,A28        ; |151| 
||         ADDU    .L1     A20,A17:A16,A17:A16 ; |151| 

           STW     .D2T1   A17,*+SP(1344)    ; |151| 
||         ADDU    .L1     A4,A23:A22,A5:A4  ; |151| 

           ADD     .L1     A28,A5,A5         ; |151| 
||         STW     .D2T1   A4,*+SP(1332)     ; |127| 

           LDW     .D2T1   *+SP(1344),A4     ; |151| 

           STW     .D2T1   A5,*+SP(1336)     ; |151| 
|| [ A0]   B       .S1     L9                ; |127| 

           NOP             2
           STW     .D2T1   A16,*+SP(1348)    ; |151| 
           ADD     .L1X    B6,A4,A4          ; |151| 
	.dwpsn	"SSHSH512.C",152,0
           STW     .D2T1   A4,*+SP(1344)     ; |151| 
           ; BRANCHCC OCCURS {L9}            ; |127| 
DW$L$_SHA512_Block$8$E:
;** --------------------------------------------------------------------------*
;** 157	-----------------------    (*(struct $$fake0 *)(struct $$fake0 (* const)[8])s).hi = (unsigned long)((*(struct $$fake0 *)(struct $$fake0 (* const)[8])s).lo < CSU$a$lo)+CSU$a$hi+U$121;
;** 157	-----------------------    C$7 = (struct $$fake0 *)(struct $$fake0 (* const)[8])s+16;
;** 157	-----------------------    CSU$tmp$hi = *C$7;
;** 157	-----------------------    *K$129 = C$8 = *K$129+CSU$b$lo;
;** 157	-----------------------    *C$7 = (unsigned long)(C$8 < CSU$b$lo)+CSU$b$hi+CSU$tmp$hi;
;** 158	-----------------------    CSU$tmp$hi = *(unsigned long *)K$133;
;** 158	-----------------------    *((unsigned long * const)s+40) = C$6 = *((unsigned long * const)s+40)+CSU$c$lo;
;** 158	-----------------------    *(unsigned long *)K$133 = (unsigned long)(C$6 < CSU$c$lo)+CSU$c$hi+CSU$tmp$hi;
;** 158	-----------------------    CSU$tmp$hi = ((unsigned long *)K$133)[2];
;** 158	-----------------------    K$129[4] = C$5 = K$129[4]+CSU$d$lo;
;** 158	-----------------------    ((unsigned long *)K$133)[2] = (unsigned long)(C$5 < CSU$d$lo)+CSU$d$hi+CSU$tmp$hi;
;** 159	-----------------------    CSU$tmp$hi = ((unsigned long *)K$133)[4];
;** 159	-----------------------    K$129[6] = C$4 = K$129[6]+CSU$e$lo;
;** 159	-----------------------    ((unsigned long *)K$133)[4] = (unsigned long)(C$4 < CSU$e$lo)+CSU$e$hi+CSU$tmp$hi;
;** 159	-----------------------    CSU$tmp$hi = *(unsigned long *)K$156;
;** 159	-----------------------    K$129[8] = C$3 = K$129[8]+CSU$f$lo;
;** 159	-----------------------    *(unsigned long *)K$156 = (unsigned long)(C$3 < CSU$f$lo)+CSU$f$hi+CSU$tmp$hi;
;** 160	-----------------------    CSU$tmp$hi = ((unsigned long *)K$156)[2];
;** 160	-----------------------    K$129[10] = C$2 = K$129[10]+CSU$g$lo;
;** 160	-----------------------    ((unsigned long *)K$156)[2] = (unsigned long)(C$2 < CSU$g$lo)+CSU$g$hi+CSU$tmp$hi;
;** 160	-----------------------    CSU$tmp$hi = ((unsigned long *)K$156)[4];
;** 160	-----------------------    *((unsigned long * const)s+120) = C$1 = *((unsigned long * const)s+120)+CSU$h$lo;
;** 160	-----------------------    ((unsigned long *)K$156)[4] = (unsigned long)(C$1 < CSU$h$lo)+CSU$h$hi+CSU$tmp$hi;
;** 161	-----------------------    return;
           LDDW    .D2T2   *+B26(8),B7:B6    ; |157| 
           NOP             4

           EXTU    .S2     B9,24,24,B9       ; |157| 
||         ADDU    .L2     B6,B9:B8,B25:B24  ; |157| 

           ADD     .L2     B7,B25,B25        ; |157| 

           MV      .L2     B26,B25           ; |157| 
||         STDW    .D2T2   B25:B24,*+B26(8)  ; |157| 

           LDDW    .D2T2   *+B25(8),B7:B6    ; |157| 
           NOP             2
           LDW     .D2T1   *+SP(1348),A4     ; |157| 
           LDW     .D2T1   *+SP(1344),A5     ; |157| 
           EXTU    .S2     B7,24,24,B7       ; |157| 
           CMPEQ   .L2     B7,B9,B0          ; |157| 
   [!B0]   CMPLTU  .L2     B7,B9,B6          ; |157| 
   [ B0]   CMPLTU  .L2     B6,B8,B6          ; |157| 
           SHR     .S2     B6,31,B7          ; |157| 

           LDW     .D2T1   *+SP(1308),A4     ; |157| 
||         ADDU    .L1X    B6,A5:A4,A17:A16  ; |157| 

           LDW     .D2T1   *+SP(1312),A5     ; |157| 
||         ADD     .L1X    B7,A17,A3         ; |157| 

           NOP             4
           ADDU    .L1     A16,A5:A4,A5:A4   ; |157| 
           ADD     .L1     A3,A5,A5          ; |157| 
           STDW    .D2T1   A5:A4,*B26        ; |157| 
           LDW     .D2T2   *+SP(1292),B27    ; |157| 
           NOP             1
           LDW     .D2T2   *+SP(1324),B6
           LDW     .D2T2   *+SP(1328),B7
           NOP             1
           LDDW    .D2T2   *B27,B25:B24      ; |157| 
           NOP             2
           MV      .L1X    B7,A3
           EXTU    .S1     A3,24,24,A3       ; |157| 

           MV      .S2     B27,B24           ; |157| 
||         ADDU    .L2     B24,B7:B6,B9:B8   ; |157| 

           MV      .S2     B26,B25           ; |157| 
||         ADD     .L2     B25,B9,B9         ; |157| 

           EXTU    .S2     B9,24,24,B28      ; |157| 
||         ADD     .D2     B25,16,B26        ; |157| 

           CMPEQ   .L2X    B28,A3,B0         ; |157| 
||         LDDW    .D2T2   *B26,B7:B6        ; |157| 

   [!B0]   CMPLTU  .L2X    B28,A3,B8         ; |157| 
||         STDW    .D2T2   B9:B8,*B24        ; |157| 

   [ B0]   LDW     .D2T2   *+SP(1324),B9     ; |157| 
           NOP             3
           LDDW    .D2T1   *+B25(40),A5:A4   ; |158| 

           MV      .S2X    A15,B9            ; |157| 
|| [ B0]   CMPLTU  .L2     B8,B9,B8          ; |157| 

           NOP             1

           LDW     .D2T2   *+SP(1296),B8     ; |157| 
||         MV      .L1X    B8,A3             ; |157| 

           SHR     .S1     A3,31,A3          ; |157| 
||         ADDU    .L1     A3,A19:A18,A17:A16 ; |157| 

           ADD     .L1     A3,A17,A3         ; |157| 
           ADDU    .L2X    A16,B7:B6,B7:B6   ; |157| 
           ADD     .L2X    A3,B7,B7          ; |157| 

           EXTU    .S1     A15,24,24,A4      ; |158| 
||         ADDU    .L2X    A4,B9:B8,B9:B8    ; |158| 
||         MV      .L1X    B8,A20
||         STDW    .D2T2   B7:B6,*B26        ; |157| 

           ADD     .L2X    A5,B9,B9          ; |158| 
||         LDW     .D2T1   *+SP(1300),A3     ; |157| 

           LDW     .D2T2   *+SP(1476),B3     ; |162| 
||         EXTU    .S2     B9,24,24,B27      ; |158| 

           LDW     .D2T1   *+SP(1456),A10    ; |162| 

           LDW     .D2T2   *+SP(1492),B13    ; |162| 
||         CMPEQ   .L1X    B27,A4,A0         ; |158| 

           LDW     .D2T2   *+SP(1488),B12    ; |162| 
|| [ A0]   CMPLTU  .L1X    B8,A20,A4         ; |158| 

           MV      .L2     B24,B27           ; |158| 
|| [!A0]   CMPLTU  .L1X    B27,A4,A4         ; |158| 
||         LDDW    .D1T1   *A3,A17:A16       ; |158| 
||         STDW    .D2T2   B9:B8,*+B25(40)   ; |158| 

           LDW     .D2T1   *+SP(1460),A11    ; |162| 
||         ADDU    .L1     A4,A7:A6,A5:A4    ; |158| 
||         SHR     .S1     A4,31,A6          ; |158| 

           LDW     .D2T1   *+SP(1464),A12    ; |162| 
||         ADD     .L1     A6,A5,A6          ; |158| 

           LDW     .D2T1   *+SP(1468),A13    ; |162| 
           LDW     .D2T2   *+SP(1484),B11    ; |162| 

           LDW     .D2T2   *+SP(1480),B10    ; |162| 
||         ADDU    .L1     A4,A17:A16,A5:A4  ; |158| 

           EXTU    .S1     A9,24,24,A6       ; |158| 
||         LDW     .D2T1   *+SP(1472),A14    ; |162| 
||         ADD     .L1     A6,A5,A5          ; |158| 

           STDW    .D1T1   A5:A4,*A3         ; |158| 
           LDDW    .D2T2   *+B27(32),B7:B6   ; |158| 
           NOP             3
           LDW     .D2T1   *+SP(1496),A15    ; |162| 
           ADDU    .L1X    B6,A9:A8,A5:A4    ; |158| 

           LDDW    .D1T2   *+A3(16),B7:B6    ; |158| 
||         ADD     .L1X    B7,A5,A5          ; |158| 

           EXTU    .S1     A5,24,24,A7       ; |158| 
||         STDW    .D2T1   A5:A4,*+B27(32)   ; |158| 

           CMPEQ   .L1     A7,A6,A0          ; |158| 
||         LDW     .D2T1   *+SP(1336),A5     ; |159| 

           LDW     .D2T1   *+SP(1332),A4     ; |159| 
|| [ A0]   CMPLTU  .L1     A4,A8,A6          ; |158| 

   [!A0]   CMPLTU  .L1     A7,A6,A6          ; |158| 
           SHR     .S1     A6,31,A7          ; |158| 
           ADDU    .L2X    A6,B23:B22,B9:B8  ; |158| 

           ADD     .S2X    A7,B9,B8          ; |158| 
||         ADDU    .L2     B8,B7:B6,B7:B6    ; |158| 

           ADD     .L2     B8,B7,B7          ; |158| 
           STDW    .D1T2   B7:B6,*+A3(16)    ; |158| 

           LDDW    .D2T2   *+B27(48),B9:B8   ; |159| 
||         LDDW    .D1T1   *+A3(32),A7:A6    ; |159| 

           NOP             4
           ADDU    .L2     B8,B17:B16,B7:B6  ; |159| 

           EXTU    .S2     B17,24,24,B9      ; |159| 
||         ADD     .L2     B9,B7,B7          ; |159| 

           STDW    .D2T2   B7:B6,*+B27(48)   ; |159| 
||         EXTU    .S2     B7,24,24,B8       ; |159| 

           CMPEQ   .L2     B8,B9,B0          ; |159| 
   [ B0]   CMPLTU  .L2     B6,B16,B8         ; |159| 
   [!B0]   CMPLTU  .L2     B8,B9,B8          ; |159| 
           SHR     .S2     B8,31,B9          ; |159| 
           ADDU    .L1X    B8,A5:A4,A5:A4    ; |159| 

           ADDU    .L1     A4,A7:A6,A5:A4    ; |159| 
||         ADD     .S1X    B9,A5,A6          ; |159| 

           ADD     .L1     A6,A5,A5          ; |159| 
           STDW    .D1T1   A5:A4,*+A3(32)    ; |159| 
           LDDW    .D2T2   *+B27(64),B9:B8   ; |159| 
           LDW     .D2T1   *+SP(1304),A3     ; |159| 
           NOP             1
           LDW     .D2T1   *+SP(1316),A4     ; |159| 
           LDW     .D2T1   *+SP(1320),A5     ; |159| 
           ADDU    .L2     B8,B21:B20,B7:B6  ; |159| 

           EXTU    .S2     B21,24,24,B9      ; |159| 
||         ADD     .L2     B9,B7,B7          ; |159| 
||         LDDW    .D1T1   *A3,A7:A6         ; |159| 

           EXTU    .S2     B7,24,24,B8       ; |159| 
||         STDW    .D2T2   B7:B6,*+B27(64)   ; |159| 

           CMPEQ   .L2     B8,B9,B0          ; |159| 
   [ B0]   CMPLTU  .L2     B6,B20,B8         ; |159| 
   [!B0]   CMPLTU  .L2     B8,B9,B8          ; |159| 
           SHR     .S2     B8,31,B9          ; |159| 
           ADDU    .L1X    B8,A5:A4,A5:A4    ; |159| 

           ADDU    .L1     A4,A7:A6,A5:A4    ; |159| 
||         ADD     .S1X    B9,A5,A6          ; |159| 

           ADD     .L1     A6,A5,A5          ; |159| 
           STDW    .D1T1   A5:A4,*A3         ; |159| 

           LDDW    .D2T2   *+B27(80),B7:B6   ; |160| 
||         LDDW    .D1T1   *+A3(16),A7:A6    ; |160| 

           NOP             2
           LDW     .D2T1   *+SP(1360),A4     ; |160| 
           LDW     .D2T1   *+SP(1364),A5     ; |160| 

           EXTU    .S2     B19,24,24,B6      ; |160| 
||         ADDU    .L2     B6,B19:B18,B9:B8  ; |160| 

           ADD     .L2     B7,B9,B9          ; |160| 

           STDW    .D2T2   B9:B8,*+B27(80)   ; |160| 
||         EXTU    .S2     B9,24,24,B7       ; |160| 

           CMPEQ   .L2     B7,B6,B0          ; |160| 
   [ B0]   CMPLTU  .L2     B8,B18,B6         ; |160| 
   [!B0]   CMPLTU  .L2     B7,B6,B6          ; |160| 
           SHR     .S2     B6,31,B7          ; |160| 
           ADDU    .L1X    B6,A5:A4,A5:A4    ; |160| 

           ADDU    .L1     A4,A7:A6,A5:A4    ; |160| 
||         ADD     .S1X    B7,A5,A6          ; |160| 

           ADD     .L1     A6,A5,A5          ; |160| 
           STDW    .D1T1   A5:A4,*+A3(16)    ; |160| 

           LDDW    .D1T1   *+A3(32),A5:A4    ; |160| 
||         LDDW    .D2T2   *+B25(120),B9:B8  ; |160| 

           NOP             4

           EXTU    .S2     B5,24,24,B5       ; |160| 
||         ADDU    .L2     B8,B5:B4,B7:B6    ; |160| 

           ADD     .L2     B9,B7,B7          ; |160| 

           EXTU    .S2     B7,24,24,B8       ; |160| 
||         STDW    .D2T2   B7:B6,*+B25(120)  ; |160| 

           CMPEQ   .L2     B8,B5,B0          ; |160| 
   [ B0]   CMPLTU  .L2     B6,B4,B4          ; |160| 

           LDW     .D2T2   *+SP(1380),B5     ; |160| 
|| [!B0]   CMPLTU  .L2     B8,B5,B4          ; |160| 

           ADDK    .S2     1496,SP           ; |162| 
||         LDW     .D2T2   *+SP(1376),B4     ; |160| 
||         MV      .L2     B4,B8             ; |160| 

           NOP             3
           RET     .S2     B3                ; |162| 

           SHR     .S2     B8,31,B8          ; |160| 
||         ADDU    .L2     B8,B5:B4,B5:B4    ; |160| 

           ADD     .L2     B8,B5,B5          ; |160| 
           ADDU    .L1X    B4,A5:A4,A5:A4    ; |160| 
           ADD     .L1X    B5,A5,A5          ; |160| 
	.dwpsn	"SSHSH512.C",162,1
           STDW    .D1T1   A5:A4,*+A3(32)    ; |160| 
           ; BRANCH OCCURS {B3}              ; |162| 

DW$17	.dwtag  DW_TAG_loop
	.dwattr DW$17, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSH512.asm:L9:1:1288598973")
	.dwattr DW$17, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$17, DW_AT_begin_line(0x7f)
	.dwattr DW$17, DW_AT_end_line(0x98)
DW$18	.dwtag  DW_TAG_loop_range
	.dwattr DW$18, DW_AT_low_pc(DW$L$_SHA512_Block$8$B)
	.dwattr DW$18, DW_AT_high_pc(DW$L$_SHA512_Block$8$E)
	.dwendtag DW$17


DW$19	.dwtag  DW_TAG_loop
	.dwattr DW$19, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSH512.asm:L7:1:1288598973")
	.dwattr DW$19, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$19, DW_AT_begin_line(0x73)
	.dwattr DW$19, DW_AT_end_line(0x7a)
DW$20	.dwtag  DW_TAG_loop_range
	.dwattr DW$20, DW_AT_low_pc(DW$L$_SHA512_Block$5$B)
	.dwattr DW$20, DW_AT_high_pc(DW$L$_SHA512_Block$5$E)
	.dwendtag DW$19


DW$21	.dwtag  DW_TAG_loop
	.dwattr DW$21, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSH512.asm:L5:1:1288598973")
	.dwattr DW$21, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$21, DW_AT_begin_line(0x70)
	.dwattr DW$21, DW_AT_end_line(0x71)
DW$22	.dwtag  DW_TAG_loop_range
	.dwattr DW$22, DW_AT_low_pc(DW$L$_SHA512_Block$3$B)
	.dwattr DW$22, DW_AT_high_pc(DW$L$_SHA512_Block$3$E)
	.dwendtag DW$21

	.dwattr DW$13, DW_AT_end_file("SSHSH512.C")
	.dwattr DW$13, DW_AT_end_line(0xa2)
	.dwattr DW$13, DW_AT_end_column(0x01)
	.dwendtag DW$13

	.sect	".text"
	.global	_SHA512_Bytes

DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Bytes"), DW_AT_symbol_name("_SHA512_Bytes")
	.dwattr DW$23, DW_AT_low_pc(_SHA512_Bytes)
	.dwattr DW$23, DW_AT_high_pc(0x00)
	.dwattr DW$23, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$23, DW_AT_begin_line(0xb2)
	.dwattr DW$23, DW_AT_begin_column(0x06)
	.dwattr DW$23, DW_AT_frame_base[DW_OP_breg31 312]
	.dwattr DW$23, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH512.C",178,60

;******************************************************************************
;* FUNCTION NAME: _SHA512_Bytes                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 264 Auto + 44 Save = 308 byte               *
;******************************************************************************
_SHA512_Bytes:
;** --------------------------------------------------------------------------*
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$24, DW_AT_type(*DW$T$34)
	.dwattr DW$24, DW_AT_location[DW_OP_reg4]
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$25, DW_AT_type(*DW$T$27)
	.dwattr DW$25, DW_AT_location[DW_OP_reg20]
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_location[DW_OP_reg6]
;** 188	-----------------------    C$8 = (double * const)s+256;
;** 188	-----------------------    s$28 = (unsigned)len+_hi(*C$8);
;** 189	-----------------------    ((unsigned *)C$8)[1] = s$28;
;** 189	-----------------------    C$9 = s$28 < (unsigned)len;
;** 189	-----------------------    C$6 = C$8[1];
;** 189	-----------------------    C$5 = _lo(C$6)+(unsigned)C$9;
;** 189	-----------------------    lenw = C$7 = C$5 < (unsigned)C$9;
;** 188	-----------------------    C$4 = (double * const)s+264;
;** 188	-----------------------    s$31 = _hi(C$6)+(unsigned)C$7;
;** 189	-----------------------    *((double * const)s+264) = _itod(s$31, C$5);
;** 189	-----------------------    lenw = lenw > s$31;
;** 188	-----------------------    ((unsigned *)C$4)[2] = ((unsigned *)C$4)[2]+lenw;
;** 179	-----------------------    q = (unsigned char * const)p;
;** 178	-----------------------    len = len;
;** 192	-----------------------    U$35 = (*s).blkused;
;** 192	-----------------------    C$3 = U$35+len;
;** 192	-----------------------    if ( (U$35 != 0)&(C$3 < 128) ) goto g8;

           MVK     .S1     256,A3            ; |188| 
||         MV      .L1X    SP,A31            ; |178| 
||         ADDK    .S2     -312,SP           ; |178| 

           ADD     .L1     A3,A4,A8          ; |188| 
||         MVK     .S1     64,A3             ; |192| 
||         STW     .D1T1   A14,*-A31(24)
||         STW     .D2T2   B12,*+SP(304)
||         MVK     .S2     264,B5            ; |188| 

           LDDW    .D1T1   *A8,A17:A16       ; |188| 
||         STW     .D2T2   B13,*+SP(308)
||         MVK     .S2     128,B9            ; |202| 
||         ADD     .L2X    B5,A4,B5          ; |188| 

           LDDW    .D1T1   *+A8(8),A19:A18   ; |189| 
||         STW     .D2T2   B10,*+SP(296)
||         MVK     .S2     128,B7            ; |192| 
||         MV      .L2X    A6,B10            ; |178| 

           STDW    .D1T1   A13:A12,*-A31(32)
||         STW     .D2T2   B11,*+SP(300)
||         MV      .L2     B4,B11            ; |178| 
||         MVK     .S2     64,B12            ; |197| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         STW     .D2T2   B3,*+SP(292)
||         MV      .L1     A4,A10            ; |178| 
||         MVK     .S1     64,A11            ; |197| 

           STW     .D2T1   A15,*+SP(312)

           LDW     .D1T1   *+A10[A3],A3      ; |192| 
||         ADD     .L1     A17,A6,A16        ; |188| 
||         LDW     .D2T2   *+B5(8),B8        ; |188| 

           CMPLTU  .L1     A16,A6,A5         ; |189| 
           STW     .D1T1   A16,*+A8(4)       ; |189| 

           ADD     .L1     A5,A18,A17        ; |189| 
||         ADD     .S1     A5,A18,A18        ; |189| 

           CMPLTU  .L1     A17,A5,A7         ; |189| 
||         MVK     .S1     264,A17           ; |189| 

           ADD     .S1     A10,A3,A5         ; |196| 
||         CMPEQ   .L1     A3,0,A9           ; |192| 
||         ADD     .D1     A6,A3,A3          ; |192| 

           CMPLT   .L1X    A3,B9,A0          ; |202| 
||         ADDAD   .D1     A5,16,A5          ; |196| 

           CMPLT   .L2X    A3,B7,B7          ; |192| 

           XOR     .L2X    1,A9,B6           ; |192| 
||         ADD     .L1     A7,A19,A9         ; |188| 
||         ADD     .S1     A7,A19,A19        ; |188| 

           AND     .L2     B7,B6,B0          ; |192| 
||         CMPGTU  .L1     A7,A9,A7          ; |189| 

   [ B0]   ZERO    .L1     A0                ; nullify predicate
|| [!B0]   MVK     .S2     129,B4
|| [!B0]   ADDAD   .D1     A10,16,A13
|| [ B0]   B       .S1     L14               ; |192| 

   [ A0]   B       .S1     L13               ; |202| 
||         ADD     .L2X    A7,B8,B8          ; |188| 
||         ADD     .L1     A17,A4,A7         ; |189| 
||         MV      .D1     A5,A4             ; |196| 
|| [!B0]   MVK     .S2     130,B31

           STW     .D2T2   B8,*+B5(8)        ; |188| 
||         STDW    .D1T1   A19:A18,*A7       ; |189| 
|| [!B0]   ADD     .L1X    B4,A10,A14
|| [!B0]   ADD     .L2X    B31,A10,B4
|| [!B0]   MVK     .S1     134,A4
|| [!B0]   MVK     .S2     135,B5

   [!B0]   STW     .D2T2   B4,*+SP(264)
|| [!B0]   MVK     .S1     132,A3
|| [!B0]   MVK     .S2     133,B6
|| [!B0]   ADD     .L1     A4,A10,A12
|| [!B0]   ADD     .L2X    B5,A10,B12

   [!B0]   MVK     .S1     131,A5
|| [!B0]   ADD     .L1     A3,A10,A11
|| [!B0]   ADD     .L2X    B6,A10,B13
|| [ B0]   CALL    .S2     _memcpy           ; |196| 

   [!B0]   ADD     .L1     A5,A10,A15
           ; BRANCHCC OCCURS {L14}           ; |192| 
;** --------------------------------------------------------------------------*
;** 202	-----------------------    if ( C$3 < 128 ) goto g7;
;**  	-----------------------    K$52 = (-128);
;**  	-----------------------    K$56 = (unsigned char * const)s+131;
;**  	-----------------------    K$63 = (unsigned char * const)s+130;
;**  	-----------------------    K$69 = (unsigned char * const)s+129;
;**  	-----------------------    K$75 = (unsigned char * const)s+128;
;**  	-----------------------    K$90 = (unsigned char * const)s+135;
;**  	-----------------------    K$95 = (unsigned char * const)s+134;
;**  	-----------------------    K$101 = (unsigned char * const)s+133;
;**  	-----------------------    K$107 = (unsigned char * const)s+132;
;** 192	-----------------------    K$39 = 128;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
   [!A0]   MVK     .S1     64,A3             ; |203| 
           ; BRANCHCC OCCURS {L13}           ; |202| 
;** --------------------------------------------------------------------------*
           LDW     .D1T1   *+A10[A3],A4      ; |203| 
;**	-----------------------g4:
;** 203	-----------------------    C$2 = (*s).blkused;
;** 203	-----------------------    memcpy(C$2+(unsigned char (* const)[128])s+128, (const void *)q, (unsigned)K$39-(unsigned)C$2);
;** 204	-----------------------    C$1 = (*s).blkused;
;** 204	-----------------------    q = q-C$1+128;
;** 205	-----------------------    len = C$1+len+K$52;
;**  	-----------------------    U$59 = K$56;
;**  	-----------------------    U$64 = K$63;
;**  	-----------------------    U$70 = K$69;
;**  	-----------------------    U$76 = K$75;
;**  	-----------------------    U$91 = K$90;
;**  	-----------------------    U$96 = K$95;
;**  	-----------------------    U$102 = K$101;
;**  	-----------------------    U$108 = K$107;
;** 207	-----------------------    L$1 = 16;
;**  	-----------------------    U$86 = (struct $$fake0 *)&wordblock;
;**  	-----------------------    #pragma MUST_ITERATE(16, 16, 16)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g5:
;** 209	-----------------------    (*U$86).hi = (unsigned)*U$59++{8}|(unsigned)*U$64++{8}<<8|(unsigned)*U$70++{8}<<16|(unsigned)*U$76++{8}<<24;
;** 217	-----------------------    (*U$86++{16}).lo = (unsigned)*U$91++{8}|(unsigned)*U$96++{8}<<8|(unsigned)*U$102++{8}<<16|(unsigned)*U$108++{8}<<24;
;** 207	-----------------------    if ( --L$1 ) goto g5;
;** 219	-----------------------    SHA512_Block(s, (struct $$fake0 *)&wordblock);
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 207
;*      Loop opening brace source line   : 207
;*      Loop closing brace source line   : 218
;*      Known Minimum Trip Count         : 16                    
;*      Known Maximum Trip Count         : 16                    
;*      Known Max Trip Count Factor      : 16
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 6
;*      Partitioned Resource Bound(*)    : 6
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     3        4     
;*      .D units                     6*       5     
;*      .M units                     0        0     
;*      .X cross paths               3        2     
;*      .T address paths             6*       4     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        2     
;*      Bound(.L .S .D .LS .LSD)     5        5     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 2
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count     : 2
;*----------------------------------------------------------------------------*
L10:    ; PIPED LOOP PROLOG
           CALL    .S2     _memcpy           ; |203| 
           NOP             3

           MVK     .S1     0x80,A3           ; |192| 
||         ADD     .L1     A10,A4,A5         ; |203| 

           MV      .L2     B11,B4            ; |203| 
||         ADDKPC  .S2     RL0,B3,0          ; |203| 
||         SUB     .L1     A3,A4,A6          ; |203| 
||         ADDAD   .D1     A5,16,A4          ; |203| 

RL0:       ; CALL OCCURS {_memcpy}           ; |203| 
           NOP             1
           MVK     .S1     64,A3             ; |204| 
           LDW     .D1T1   *+A10[A3],A3      ; |204| 
           NOP             2

           MVK     .S2     15,B0             ; |207| 
||         LDW     .D2T2   *+SP(264),B8

           MV      .L2     B12,B4
||         MV      .D2X    A14,B7
||         MVC     .S2     CSR,B20

           MVK     .L1     0x1,A1            ; init prolog collapse predicate
||         MVK     .S1     0x2,A0            ; init prolog collapse predicate
||         ADD     .D1X    8,SP,A4
||         MVK     .S2     0xffffff80,B16
||         AND     .L2     -2,B20,B31
||         ADD     .D2X    B10,A3,B5         ; |205| 

           ZERO    .L1     A9                ; |209| 
||         MV      .S1     A15,A17
||         ZERO    .D1     A7                ; |217| 
||         MV      .D2     B13,B6
||         MVC     .S2     B31,CSR           ; interrupts off
||         SUB     .L2X    B11,A3,B9         ; |204| 

	.dwpsn	"SSHSH512.C",207,0

           MV      .L1     A13,A16
||         MV      .S1     A11,A18
||         MV      .D1     A12,A19
||         ADD     .L2     B16,B5,B10        ; |205| 
||         ADDAD   .D2     B9,16,B11         ; |204| 
||         ADD     .S2     8,SP,B16

;** --------------------------------------------------------------------------*
L11:    ; PIPED LOOP KERNEL
DW$L$_SHA512_Bytes$5$B:

           SHL     .S1     A3,24,A6          ; |209| <0,10> 
||         MV      .L1     A4,A3             ; |217| <0,10> 
|| [ B0]   BDEC    .S2     L11,B0            ; |207| <0,10> 
||         OR      .L2     B18,B17,B17       ; |217| <0,10>  ^ 
|| [!A1]   LDBU    .D1T1   *A18++(8),A8      ; |217| <1,4> 
|| [!A1]   LDBU    .D2T2   *B6++(8),B19      ; |217| <1,4> 

           SHL     .S1     A8,24,A6          ; |217| <0,11> 
|| [!A0]   ADD     .D2     B9,16,B16         ; |217| <0,11>  ^ 
||         OR      .L1X    A6,B5,A8          ; |209| <0,11>  ^ 
|| [!A1]   LDBU    .D1T1   *A16++(8),A3      ; |209| <1,5> 

           OR      .L1X    A6,B17,A6         ; |217| <0,12>  ^ 
||         MV      .L2     B16,B9            ; |217| <1,6>  ^ Define a twin register
||         SHL     .S2     B5,8,B5           ; |209| <1,6> 
||         LDBU    .D2T2   *B4++(8),B18      ; |217| <2,0> 
||         LDBU    .D1T1   *A17++(8),A5      ; |209| <2,0> 

   [!A0]   STDW    .D1T1   A9:A8,*A4         ; |209| <0,13> 
||         SHL     .S1     A20,8,A5          ; |217| <1,7>  ^ 
||         OR      .L2X    B5,A5,B5          ; |209| <1,7> 
||         SHL     .S2     B17,16,B17        ; |209| <1,7> 
||         LDBU    .D2T2   *B8++(8),B5       ; |209| <2,1> 

   [ A1]   SUB     .L1     A1,1,A1           ; <0,14> 
||         LDBU    .D1T1   *A19++(8),A20     ; |217| <2,2> 
||         LDBU    .D2T2   *B7++(8),B17      ; |209| <2,2> 

	.dwpsn	"SSHSH512.C",218,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,15> 
|| [!A0]   MV      .S1X    B16,A4            ; |217| <0,15>  ^ Define a twin register
|| [!A0]   STDW    .D1T1   A7:A6,*+A3(8)     ; |217| <0,15> 
||         SHL     .S2     B19,16,B18        ; |217| <1,9> 
||         OR      .L2X    A5,B18,B17        ; |217| <1,9>  ^ 
||         OR      .D2     B17,B5,B5         ; |209| <1,9>  ^ 

DW$L$_SHA512_Bytes$5$E:
;** --------------------------------------------------------------------------*
L12:    ; PIPED LOOP EPILOG
;** 220	-----------------------    (*s).blkused = 0;
;** 202	-----------------------    if ( len >= (K$39 = 128) ) goto g4;

           ADD     .L2     8,SP,B4           ; |219| 
||         MV      .L1     A4,A3             ; |217| (E) <1,10> 
||         OR      .S2     B18,B17,B17       ; |217| (E) <1,10>  ^ 
||         LDBU    .D1T1   *A18++(8),A8      ; |217| (E) <2,4> 
||         LDBU    .D2T2   *B6++(8),B19      ; |217| (E) <2,4> 
||         SHL     .S1     A3,24,A6          ; |209| (E) <1,10> 

           SHL     .S1     A8,24,A6          ; |217| (E) <1,11> 
||         OR      .L1X    A6,B5,A8          ; |209| (E) <1,11>  ^ 
||         LDBU    .D1T1   *A16++(8),A3      ; |209| (E) <2,5> 
||         ADD     .D2     B9,16,B16         ; |217| (E) <1,11>  ^ 

           OR      .L1X    A6,B17,A6         ; |217| (E) <1,12>  ^ 
||         MV      .L2     B16,B9            ; |217| (E) <2,6>  ^ Define a twin register
||         SHL     .S2     B5,8,B5           ; |209| (E) <2,6> 

           SHL     .S1     A20,8,A5          ; |217| (E) <2,7>  ^ 
||         OR      .L2X    B5,A5,B5          ; |209| (E) <2,7> 
||         SHL     .S2     B17,16,B17        ; |209| (E) <2,7> 
||         STDW    .D1T1   A9:A8,*A4         ; |209| (E) <1,13> 

           CALL    .S2     _SHA512_Block     ; |219| 

           MV      .L1X    B16,A4            ; |217| (E) <1,15>  ^ Define a twin register
||         SHL     .S2     B19,16,B18        ; |217| (E) <2,9> 
||         OR      .L2X    A5,B18,B17        ; |217| (E) <2,9>  ^ 
||         OR      .D2     B17,B5,B5         ; |209| (E) <2,9>  ^ 
||         STDW    .D1T1   A7:A6,*+A3(8)     ; |217| (E) <1,15> 

           ADDKPC  .S2     RL1,B3,0          ; |219| 
||         MV      .L1     A4,A3             ; |217| (E) <2,10> 
||         OR      .L2     B18,B17,B17       ; |217| (E) <2,10>  ^ 
||         SHL     .S1     A3,24,A6          ; |209| (E) <2,10> 

           MVC     .S2     B20,CSR           ; interrupts on
||         OR      .L1X    A6,B5,A8          ; |209| (E) <2,11>  ^ 
||         SHL     .S1     A8,24,A6          ; |217| (E) <2,11> 

           MV      .L1     A10,A4            ; |219| 
||         OR      .S1X    A6,B17,A6         ; |217| (E) <2,12>  ^ 
||         STDW    .D1T1   A9:A8,*A4         ; |209| (E) <2,13> 

           STDW    .D1T1   A7:A6,*+A3(8)     ; |217| (E) <2,15> 
RL1:       ; CALL OCCURS {_SHA512_Block}     ; |219| 
           NOP             1

           ZERO    .L1     A3                ; |220| 
||         MVK     .S1     64,A4             ; |220| 
||         MVK     .S2     0x80,B4           ; |192| 

           STW     .D1T1   A3,*+A10[A4]      ; |220| 
||         CMPLT   .L2     B10,B4,B0         ; |202| 

;** --------------------------------------------------------------------------*
DW$L$_SHA512_Bytes$7$B:

   [!B0]   BNOP    .S2     L10,4             ; |202| 
|| [!B0]   MVK     .S1     64,A3             ; |203| 

   [!B0]   LDW     .D1T1   *+A10[A3],A4      ; |203| 
           ; BRANCHCC OCCURS {L10}           ; |202| 
DW$L$_SHA512_Bytes$7$E:
;** --------------------------------------------------------------------------*
L13:    
;**	-----------------------g7:
;** 222	-----------------------    memcpy((unsigned char (* const)[128])s+128, (const void *)q, (unsigned)len);
;** 223	-----------------------    (*s).blkused = len;
;** 223	-----------------------    goto g9;
           CALL    .S1     _memcpy           ; |222| 
           ADDKPC  .S2     RL2,B3,1          ; |222| 
           MV      .L1X    B10,A6            ; |222| 
           MV      .L2     B11,B4            ; |222| 
           ADDAD   .D1     A10,16,A4         ; |222| 
RL2:       ; CALL OCCURS {_memcpy}           ; |222| 
;** --------------------------------------------------------------------------*
           MVK     .S1     64,A3             ; |223| 
           STW     .D1T2   B10,*+A10[A3]     ; |223| 
           LDW     .D2T2   *+SP(292),B3      ; |225| 
           LDW     .D2T1   *+SP(312),A15     ; |225| 
           LDW     .D2T1   *+SP(276),A11     ; |225| 
           LDW     .D2T1   *+SP(284),A13     ; |225| 
           LDW     .D2T1   *+SP(280),A12     ; |225| 
           LDW     .D2T1   *+SP(288),A14     ; |225| 
           LDW     .D2T2   *+SP(300),B11     ; |225| 
           LDW     .D2T2   *+SP(308),B13     ; |225| 
           LDW     .D2T2   *+SP(304),B12     ; |225| 

           RET     .S2     B3                ; |225| 
||         LDW     .D2T1   *+SP(272),A10     ; |225| 

           LDW     .D2T2   *+SP(296),B10     ; |225| 
           NOP             3
           ADDK    .S2     312,SP            ; |225| 
           ; BRANCH OCCURS {B3}              ; |225| 
;** --------------------------------------------------------------------------*
L14:    
;**	-----------------------g8:
;** 196	-----------------------    memcpy(U$35+(unsigned char (* const)[128])s+128, (const void *)q, (unsigned)len);
;** 197	-----------------------    (*s).blkused = (*s).blkused+len;
;**	-----------------------g9:
;**  	-----------------------    return;
           ADDKPC  .S2     RL3,B3,3          ; |196| 
RL3:       ; CALL OCCURS {_memcpy}           ; |196| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A10,B4
           LDW     .D2T2   *+B4[B12],B4      ; |197| 
           NOP             4
           ADD     .L2     B10,B4,B4         ; |197| 
           STW     .D1T2   B4,*+A10[A11]     ; |197| 
           LDW     .D2T2   *+SP(292),B3      ; |225| 
           LDW     .D2T1   *+SP(284),A13     ; |225| 
           LDW     .D2T1   *+SP(280),A12     ; |225| 
           LDW     .D2T1   *+SP(288),A14     ; |225| 
           LDW     .D2T2   *+SP(300),B11     ; |225| 
           LDW     .D2T2   *+SP(296),B10     ; |225| 
           LDW     .D2T2   *+SP(304),B12     ; |225| 

           LDW     .D2T1   *+SP(276),A11     ; |225| 
||         RET     .S2     B3                ; |225| 

           LDW     .D2T1   *+SP(272),A10     ; |225| 
           NOP             3
	.dwpsn	"SSHSH512.C",225,1
           ADDK    .S2     312,SP            ; |225| 
           ; BRANCH OCCURS {B3}              ; |225| 

DW$27	.dwtag  DW_TAG_loop
	.dwattr DW$27, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSH512.asm:L10:1:1288598973")
	.dwattr DW$27, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$27, DW_AT_begin_line(0xc0)
	.dwattr DW$27, DW_AT_end_line(0xdc)
DW$28	.dwtag  DW_TAG_loop_range
	.dwattr DW$28, DW_AT_low_pc(DW$L$_SHA512_Bytes$7$B)
	.dwattr DW$28, DW_AT_high_pc(DW$L$_SHA512_Bytes$7$E)

DW$29	.dwtag  DW_TAG_loop
	.dwattr DW$29, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSH512.asm:L11:2:1288598973")
	.dwattr DW$29, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$29, DW_AT_begin_line(0xcf)
	.dwattr DW$29, DW_AT_end_line(0xda)
DW$30	.dwtag  DW_TAG_loop_range
	.dwattr DW$30, DW_AT_low_pc(DW$L$_SHA512_Bytes$5$B)
	.dwattr DW$30, DW_AT_high_pc(DW$L$_SHA512_Bytes$5$E)
	.dwendtag DW$29

	.dwendtag DW$27

	.dwattr DW$23, DW_AT_end_file("SSHSH512.C")
	.dwattr DW$23, DW_AT_end_line(0xe1)
	.dwattr DW$23, DW_AT_end_column(0x01)
	.dwendtag DW$23

	.sect	".text"
	.global	_SHA512_Final

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Final"), DW_AT_symbol_name("_SHA512_Final")
	.dwattr DW$31, DW_AT_low_pc(_SHA512_Final)
	.dwattr DW$31, DW_AT_high_pc(0x00)
	.dwattr DW$31, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$31, DW_AT_begin_line(0xe3)
	.dwattr DW$31, DW_AT_begin_column(0x06)
	.dwattr DW$31, DW_AT_frame_base[DW_OP_breg31 168]
	.dwattr DW$31, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH512.C",227,59

;******************************************************************************
;* FUNCTION NAME: _SHA512_Final                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19, *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,DP,SP,A16,A17,A18,  *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 148 Auto + 20 Save = 168 byte               *
;******************************************************************************
_SHA512_Final:
;** --------------------------------------------------------------------------*
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("s"), DW_AT_symbol_name("_s")
	.dwattr DW$32, DW_AT_type(*DW$T$34)
	.dwattr DW$32, DW_AT_location[DW_OP_reg4]
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_name("digest"), DW_AT_symbol_name("_digest")
	.dwattr DW$33, DW_AT_type(*DW$T$42)
	.dwattr DW$33, DW_AT_location[DW_OP_reg20]
;** 233	-----------------------    ((U$3 = (*s).blkused) >= 112) ? (pad = 240-U$3) : (pad = 112-U$3);
;** 234	-----------------------    C$4 = (double * const)s+264;
;** 241	-----------------------    C$3 = *C$4;
;** 241	-----------------------    ((double *)len)[1] = _itod(((unsigned *)C$4)[2]<<3|((unsigned *)C$4)[1]>>29, _hi(C$3)<<3|_lo(C$3)>>29);
;** 241	-----------------------    ((double *)len)[0] = _itod(_lo(C$3)<<3|((unsigned *)C$4)[-1]>>29, _hi(C$4[-1])<<3);
;** 244	-----------------------    memset(&c, 0, (unsigned)pad);
;** 245	-----------------------    c[0] = 128;
;** 246	-----------------------    SHA512_Bytes(s, &c, pad);
;** 249	-----------------------    C$2 = ((double *)len)[1];
;** 249	-----------------------    c[0] = _hi(C$2)>>24;
;** 250	-----------------------    c[1] = _hi(C$2)>>16;
;** 251	-----------------------    c[2] = _hi(C$2)>>8;
;** 252	-----------------------    c[3] = _hi(C$2);
;** 249	-----------------------    c[4] = _lo(C$2)>>24;
;** 250	-----------------------    c[5] = _lo(C$2)>>16;
;** 251	-----------------------    c[6] = _lo(C$2)>>8;
;** 252	-----------------------    c[7] = _lo(C$2);
;** 249	-----------------------    C$1 = ((double *)len)[0];
;** 249	-----------------------    c[8] = _hi(C$1)>>24;
;** 250	-----------------------    c[9] = _hi(C$1)>>16;
;** 251	-----------------------    c[10] = _hi(C$1)>>8;
;** 252	-----------------------    c[11] = _hi(C$1);
;** 249	-----------------------    c[12] = _lo(C$1)>>24;
;** 250	-----------------------    c[13] = _lo(C$1)>>16;
;** 251	-----------------------    c[14] = _lo(C$1)>>8;
;** 252	-----------------------    c[15] = _lo(C$1);
;** 255	-----------------------    SHA512_Bytes(s, &c, 16);
;**  	-----------------------    U$120 = (struct $$fake0 *)(struct $$fake0 (* const)[8])s;
;**  	-----------------------    U$129 = &digest[-8];
;**  	-----------------------    L$1 = 8;
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 259	-----------------------    h = (*U$120).hi;
;** 259	-----------------------    l = (*U$120++{16}).lo;
;** 260	-----------------------    *(U$129 += 8) = h>>24;
;** 261	-----------------------    U$129[1] = h>>16;
;** 262	-----------------------    U$129[2] = h>>8;
;** 263	-----------------------    U$129[3] = h;
;** 264	-----------------------    U$129[4] = l>>24;
;** 265	-----------------------    U$129[5] = l>>16;
;** 266	-----------------------    U$129[6] = l>>8;
;** 267	-----------------------    U$129[7] = l;
;** 257	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    return;

           ADDK    .S2     -168,SP           ; |227| 
||         MVK     .S1     264,A3            ; |234| 

           STDW    .D2T1   A11:A10,*+SP(152) ; |227| 
||         ADD     .L1     A3,A4,A5          ; |234| 

           LDW     .D1T1   *-A5(4),A8        ; |241| 
           LDDW    .D1T1   *A5,A7:A6         ; |241| 
           LDW     .D1T1   *+A5(4),A16       ; |241| 
           STW     .D2T1   A12,*+SP(168)     ; |227| 

           LDW     .D1T1   *+A5(8),A17       ; |241| 
||         MVK     .S1     64,A3             ; |233| 

           LDDW    .D1T1   *-A5(8),A9:A8     ; |241| 
||         SHRU    .S1     A8,29,A18         ; |241| 
||         MV      .L1     A4,A10            ; |227| 
||         STDW    .D2T2   B11:B10,*+SP(160) ; |227| 

           LDW     .D1T1   *+A10[A3],A3      ; |233| 

           SHRU    .S1     A16,29,A7         ; |241| 
||         SHL     .S2X    A7,3,B5           ; |241| 

           SHL     .S1     A6,3,A5           ; |241| 
||         MVK     .S2     240,B6            ; |233| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 257
;*      Loop opening brace source line   : 257
;*      Loop closing brace source line   : 268
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 8
;*      Unpartitioned Resource Bound     : 6
;*      Partitioned Resource Bound(*)    : 6
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     3        4     
;*      .D units                     5        6*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             5        5     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        2     
;*      Bound(.L .S .D .LS .LSD)     3        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Did not find schedule
;*         ii = 9  Did not find schedule
;*         ii = 10 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L15:    ; PIPED LOOP PROLOG

           CALL    .S2     _memset           ; |244| 
||         SHRU    .S1     A6,29,A6          ; |241| 

           MV      .L1     A4,A12            ; |227| 
||         SHL     .S1     A17,3,A8          ; |241| 

           SUB     .L1X    B6,A3,A11         ; |233| 
||         MVK     .S2     112,B6            ; |233| 
||         OR      .D1     A18,A5,A5         ; |241| 
||         SHL     .S1     A9,3,A4           ; |241| 

           CMPLT   .L2X    A3,B6,B0          ; |233| 
||         STDW    .D2T1   A5:A4,*+SP(136)   ; |241| 
||         OR      .L1X    A6,B5,A4          ; |241| 
||         MVK     .S1     112,A6            ; |233| 

           SUB     .L2     B4,8,B10
||         MV      .S2     B3,B11            ; |227| 
||         OR      .L1     A7,A8,A5          ; |241| 
|| [ B0]   SUB     .S1     A6,A3,A11         ; |233| 

           ZERO    .L2     B4                ; |244| 
||         ADDKPC  .S2     RL4,B3,0          ; |244| 
||         STDW    .D2T1   A5:A4,*+SP(144)   ; |241| 
||         ADD     .L1X    8,SP,A4           ; |244| 
||         MV      .S1     A11,A6            ; |244| 

RL4:       ; CALL OCCURS {_memset}           ; |244| 
           CALL    .S2     _SHA512_Bytes     ; |246| 
           NOP             3
           MVK     .S2     128,B4            ; |245| 

           MV      .L1     A10,A4            ; |246| 
||         MV      .S1     A11,A6            ; |246| 
||         STB     .D2T2   B4,*+SP(8)        ; |245| 
||         ADDKPC  .S2     RL5,B3,0          ; |246| 
||         ADD     .L2     8,SP,B4           ; |246| 

RL5:       ; CALL OCCURS {_SHA512_Bytes}     ; |246| 
           NOP             1
           LDDW    .D2T2   *+SP(144),B5:B4   ; |249| 
           NOP             1
           LDDW    .D2T2   *+SP(136),B7:B6   ; |249| 
           NOP             2
           SHRU    .S2     B5,24,B8          ; |249| 
           STB     .D2T2   B8,*+SP(8)        ; |249| 
           STB     .D2T2   B7,*+SP(19)       ; |252| 

           SHRU    .S2     B5,16,B8          ; |250| 
||         STB     .D2T2   B6,*+SP(23)       ; |252| 

           STB     .D2T2   B5,*+SP(11)       ; |252| 
||         SHRU    .S2     B5,8,B5           ; |251| 

           STB     .D2T2   B5,*+SP(10)       ; |251| 
||         SHRU    .S2     B4,24,B5          ; |249| 

           STB     .D2T2   B5,*+SP(12)       ; |249| 

           SHRU    .S2     B4,16,B5          ; |250| 
||         STB     .D2T2   B8,*+SP(9)        ; |250| 

           STB     .D2T2   B4,*+SP(15)       ; |252| 
||         SHRU    .S2     B4,8,B4           ; |251| 

           STB     .D2T2   B4,*+SP(14)       ; |251| 

           SHRU    .S2     B7,24,B4          ; |249| 
||         STB     .D2T2   B5,*+SP(13)       ; |250| 

           STB     .D2T2   B4,*+SP(16)       ; |249| 
||         SHRU    .S2     B7,16,B4          ; |250| 

           CALL    .S2     _SHA512_Bytes     ; |255| 

           STB     .D2T2   B4,*+SP(17)       ; |250| 
||         SHRU    .S2     B7,8,B4           ; |251| 

           STB     .D2T2   B4,*+SP(18)       ; |251| 
||         SHRU    .S2     B6,24,B4          ; |249| 

           STB     .D2T2   B4,*+SP(20)       ; |249| 
||         SHRU    .S2     B6,16,B4          ; |250| 

           STB     .D2T2   B4,*+SP(21)       ; |250| 
||         SHRU    .S2     B6,8,B4           ; |251| 

           MV      .L1     A10,A4            ; |255| 
||         MVK     .S1     0x10,A6           ; |255| 
||         ADDKPC  .S2     RL6,B3,0          ; |255| 
||         STB     .D2T2   B4,*+SP(22)       ; |251| 
||         ADD     .L2     8,SP,B4           ; |255| 

RL6:       ; CALL OCCURS {_SHA512_Bytes}     ; |255| 
           NOP             1
           MVC     .S2     CSR,B7
           AND     .L2     -2,B7,B6
	.dwpsn	"SSHSH512.C",257,0

           MV      .L2X    A12,B4
||         MV      .L1X    B10,A4
||         ADD     .D2     1,B10,B5
||         MV      .S1     A12,A3
||         MVK     .D1     7,A0
||         MVC     .S2     B6,CSR            ; interrupts off

;** --------------------------------------------------------------------------*
L16:    ; PIPED LOOP KERNEL
DW$L$_SHA512_Final$3$B:
           LDW     .D1T1   *A3,A5            ; |259| <0,0>  ^ 
           LDW     .D1T1   *+A3(8),A3        ; |259| <0,1> 
           NOP             2
   [ A0]   BDEC    .S1     L16,A0            ; |257| <0,4> 

           ADD     .D2     B4,16,B4          ; |259| <0,5> 
||         SHRU    .S1     A5,24,A6          ; |260| <0,5>  ^ 
||         SHRU    .S2X    A5,16,B6          ; |261| <0,5>  ^ 

           SHRU    .S2X    A5,8,B6           ; |262| <0,6> 
||         SHRU    .S1     A3,8,A6           ; |266| <0,6> 
||         STB     .D1T1   A6,*++A4(8)       ; |260| <0,6>  ^ 
||         STB     .D2T2   B6,*++B5(8)       ; |261| <0,6>  ^ 

           SHRU    .S2X    A3,24,B6          ; |264| <0,7> 
||         STB     .D1T1   A6,*+A4(6)        ; |266| <0,7>  ^ 
||         STB     .D2T2   B6,*+B5(1)        ; |262| <0,7>  ^ 

           SHRU    .S2X    A3,16,B6          ; |265| <0,8> 
||         STB     .D1T1   A3,*+A4(7)        ; |267| <0,8>  ^ 
||         STB     .D2T2   B6,*+B5(3)        ; |264| <0,8>  ^ 

	.dwpsn	"SSHSH512.C",268,0

           MV      .L1X    B4,A3             ; |259| <0,9> Define a twin register
||         STB     .D1T2   B6,*+A4(5)        ; |265| <0,9>  ^ 
||         STB     .D2T1   A5,*+B5(2)        ; |263| <0,9>  ^ 

DW$L$_SHA512_Final$3$E:
;** --------------------------------------------------------------------------*
L17:    ; PIPED LOOP EPILOG

           MVC     .S2     B7,CSR            ; interrupts on
||         LDDW    .D2T2   *+SP(160),B11:B10 ; |269| 
||         MV      .L2     B11,B3            ; |269| 

           LDW     .D2T1   *+SP(168),A12     ; |269| 
||         RET     .S2     B3                ; |269| 

           ADDK    .S2     168,SP            ; |269| 
||         LDDW    .D2T1   *+SP(152),A11:A10 ; |269| 

	.dwpsn	"SSHSH512.C",269,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |269| 

DW$34	.dwtag  DW_TAG_loop
	.dwattr DW$34, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\SSHSH512.asm:L16:1:1288598973")
	.dwattr DW$34, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$34, DW_AT_begin_line(0x101)
	.dwattr DW$34, DW_AT_end_line(0x10c)
DW$35	.dwtag  DW_TAG_loop_range
	.dwattr DW$35, DW_AT_low_pc(DW$L$_SHA512_Final$3$B)
	.dwattr DW$35, DW_AT_high_pc(DW$L$_SHA512_Final$3$E)
	.dwendtag DW$34

	.dwattr DW$31, DW_AT_end_file("SSHSH512.C")
	.dwattr DW$31, DW_AT_end_line(0x10d)
	.dwattr DW$31, DW_AT_end_column(0x01)
	.dwendtag DW$31

	.sect	".text"
	.global	_SHA512_Simple

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA512_Simple"), DW_AT_symbol_name("_SHA512_Simple")
	.dwattr DW$36, DW_AT_low_pc(_SHA512_Simple)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("SSHSH512.C")
	.dwattr DW$36, DW_AT_begin_line(0x10f)
	.dwattr DW$36, DW_AT_begin_column(0x06)
	.dwattr DW$36, DW_AT_frame_base[DW_OP_breg31 296]
	.dwattr DW$36, DW_AT_skeletal(0x01)
	.dwpsn	"SSHSH512.C",271,67

;******************************************************************************
;* FUNCTION NAME: _SHA512_Simple                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,A22,  *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,A22,  *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 284 Auto + 8 Save = 292 byte                *
;******************************************************************************
_SHA512_Simple:
;** --------------------------------------------------------------------------*
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$37, DW_AT_type(*DW$T$27)
	.dwattr DW$37, DW_AT_location[DW_OP_reg4]
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$38, DW_AT_type(*DW$T$10)
	.dwattr DW$38, DW_AT_location[DW_OP_reg20]
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$39, DW_AT_type(*DW$T$42)
	.dwattr DW$39, DW_AT_location[DW_OP_reg6]
;** 274	-----------------------    SHA512_Init(&s);
;** 275	-----------------------    SHA512_Bytes(&s, p, len);
;** 276	-----------------------    SHA512_Final(&s, output);
;** 276	-----------------------    return;
           CALL    .S1     _SHA512_Init      ; |274| 
           MV      .L2     B4,B9             ; |271| 
           MV      .D1     A4,A9             ; |271| 
           ADDK    .S2     -296,SP           ; |271| 
           STW     .D2T2   B13,*+SP(292)     ; |271| 

           MV      .S1     A6,A10            ; |271| 
||         STW     .D2T1   A10,*+SP(296)     ; |271| 
||         MV      .L2     B3,B13            ; |271| 
||         ADD     .L1X    8,SP,A4           ; |274| 
||         ADDKPC  .S2     RL7,B3,0          ; |274| 

RL7:       ; CALL OCCURS {_SHA512_Init}      ; |274| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _SHA512_Bytes     ; |275| 
           ADD     .L1X    8,SP,A4           ; |275| 
           ADDKPC  .S2     RL8,B3,1          ; |275| 
           MV      .L1X    B9,A6             ; |275| 
           MV      .L2X    A9,B4             ; |275| 
RL8:       ; CALL OCCURS {_SHA512_Bytes}     ; |275| 
           CALL    .S1     _SHA512_Final     ; |276| 
           ADD     .L1X    8,SP,A4           ; |276| 
           MV      .L2X    A10,B4            ; |276| 
           ADDKPC  .S2     RL9,B3,2          ; |276| 
RL9:       ; CALL OCCURS {_SHA512_Final}     ; |276| 
;** --------------------------------------------------------------------------*
           MV      .L2     B13,B3            ; |277| 

           RET     .S2     B3                ; |277| 
||         LDW     .D2T1   *+SP(296),A10     ; |277| 

           LDW     .D2T2   *+SP(292),B13     ; |277| 
           NOP             3
	.dwpsn	"SSHSH512.C",277,1
           ADDK    .S2     296,SP            ; |277| 
           ; BRANCH OCCURS {B3}              ; |277| 
	.dwattr DW$36, DW_AT_end_file("SSHSH512.C")
	.dwattr DW$36, DW_AT_end_line(0x115)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendtag DW$36

;; Inlined function references:
;; [  2] SHA512_Core_Init
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_memset
	.global	_memcpy

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$29	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$T$29


DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$T$30

DW$T$27	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$27, DW_AT_address_class(0x20)

DW$T$35	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$35


DW$T$38	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$40


DW$T$43	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$42)
	.dwendtag DW$T$45

DW$T$42	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$42, DW_AT_address_class(0x20)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$37, DW_AT_address_class(0x20)

DW$T$63	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$62)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$63, DW_AT_byte_size(0x80)
DW$57	.dwtag  DW_TAG_subrange_type
	.dwattr DW$57, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$63


DW$T$64	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$62)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$64, DW_AT_byte_size(0x500)
DW$58	.dwtag  DW_TAG_subrange_type
	.dwattr DW$58, DW_AT_upper_bound(0x4f)
	.dwendtag DW$T$64

DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$33)
	.dwattr DW$T$34, DW_AT_address_class(0x20)
DW$T$26	.dwtag  DW_TAG_const_type
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("uint64"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
DW$T$62	.dwtag  DW_TAG_const_type
	.dwattr DW$T$62, DW_AT_type(*DW$T$20)
DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("SHA512_State"), DW_AT_type(*DW$T$25)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x10)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$59, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$60, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_byte_size(0x118)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$61, DW_AT_name("h"), DW_AT_symbol_name("_h")
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$62, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$63, DW_AT_name("blkused"), DW_AT_symbol_name("_blkused")
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x100]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$64, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x104]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$22	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$22, DW_AT_byte_size(0x80)
DW$65	.dwtag  DW_TAG_subrange_type
	.dwattr DW$65, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$24, DW_AT_byte_size(0x10)
DW$66	.dwtag  DW_TAG_subrange_type
	.dwattr DW$66, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$24

DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)

DW$T$21	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$21, DW_AT_byte_size(0x80)
DW$67	.dwtag  DW_TAG_subrange_type
	.dwattr DW$67, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$21

DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

	.dwattr DW$23, DW_AT_external(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$68	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$68, DW_AT_location[DW_OP_reg0]
DW$69	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$69, DW_AT_location[DW_OP_reg1]
DW$70	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$70, DW_AT_location[DW_OP_reg2]
DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$71, DW_AT_location[DW_OP_reg3]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$72, DW_AT_location[DW_OP_reg4]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$73, DW_AT_location[DW_OP_reg5]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$74, DW_AT_location[DW_OP_reg6]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$75, DW_AT_location[DW_OP_reg7]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$76, DW_AT_location[DW_OP_reg8]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$77, DW_AT_location[DW_OP_reg9]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$78, DW_AT_location[DW_OP_reg10]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$79, DW_AT_location[DW_OP_reg11]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$80, DW_AT_location[DW_OP_reg12]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$81, DW_AT_location[DW_OP_reg13]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$82, DW_AT_location[DW_OP_reg14]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$83, DW_AT_location[DW_OP_reg15]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$84, DW_AT_location[DW_OP_reg16]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$85, DW_AT_location[DW_OP_reg17]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$86, DW_AT_location[DW_OP_reg18]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$87, DW_AT_location[DW_OP_reg19]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$88, DW_AT_location[DW_OP_reg20]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$89, DW_AT_location[DW_OP_reg21]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$90, DW_AT_location[DW_OP_reg22]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$91, DW_AT_location[DW_OP_reg23]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$92, DW_AT_location[DW_OP_reg24]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$93, DW_AT_location[DW_OP_reg25]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$94, DW_AT_location[DW_OP_reg26]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$95, DW_AT_location[DW_OP_reg27]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$96, DW_AT_location[DW_OP_reg28]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$97, DW_AT_location[DW_OP_reg29]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$98, DW_AT_location[DW_OP_reg30]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$99, DW_AT_location[DW_OP_reg31]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$100, DW_AT_location[DW_OP_regx 0x20]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$101, DW_AT_location[DW_OP_regx 0x21]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$102, DW_AT_location[DW_OP_regx 0x22]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$103, DW_AT_location[DW_OP_regx 0x23]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x24]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x25]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x26]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x27]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x28]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x29]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x2a]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x2b]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x2c]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x2d]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x2e]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x2f]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x30]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x31]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x32]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x33]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x34]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x35]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x36]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x37]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x38]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x39]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x3a]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x3b]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x3c]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x3d]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x3e]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x3f]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x40]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x41]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x42]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x43]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x44]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x45]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x46]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x47]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x48]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x49]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x4a]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x4b]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x4c]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x4d]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x4e]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x4f]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x50]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x51]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x52]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x53]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x54]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x55]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x56]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x57]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x58]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x59]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x5a]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x5b]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x5c]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x5d]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x5e]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x5f]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x60]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x61]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x62]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x63]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x64]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x65]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x66]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x67]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x68]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x69]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x6a]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x6b]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x6c]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x6d]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x6e]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x6f]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x70]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x71]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x72]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x73]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x74]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x75]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x76]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x77]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x78]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x79]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x7a]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x7b]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x7c]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x7d]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

