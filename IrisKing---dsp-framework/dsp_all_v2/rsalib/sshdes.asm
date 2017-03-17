;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Nov 01 16:08:29 2010                                *
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
	.dwattr DW$CU, DW_AT_name("sshdes.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert"), DW_AT_symbol_name("__assert")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$47)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$4, DW_AT_type(*DW$T$3)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$4


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("safemalloc"), DW_AT_symbol_name("_safemalloc")
	.dwattr DW$8, DW_AT_type(*DW$T$3)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$8


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("safefree"), DW_AT_symbol_name("_safefree")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$11

	.sect	".const"
	.align	8
_SPboxes:
	.field  	16843776,32			; _SPboxes[0][0] @ 0
	.field  	0,32			; _SPboxes[0][1] @ 32
	.field  	65536,32			; _SPboxes[0][2] @ 64
	.field  	16843780,32			; _SPboxes[0][3] @ 96
	.field  	16842756,32			; _SPboxes[0][4] @ 128
	.field  	66564,32			; _SPboxes[0][5] @ 160
	.field  	4,32			; _SPboxes[0][6] @ 192
	.field  	65536,32			; _SPboxes[0][7] @ 224
	.field  	1024,32			; _SPboxes[0][8] @ 256
	.field  	16843776,32			; _SPboxes[0][9] @ 288
	.field  	16843780,32			; _SPboxes[0][10] @ 320
	.field  	1024,32			; _SPboxes[0][11] @ 352
	.field  	16778244,32			; _SPboxes[0][12] @ 384
	.field  	16842756,32			; _SPboxes[0][13] @ 416
	.field  	16777216,32			; _SPboxes[0][14] @ 448
	.field  	4,32			; _SPboxes[0][15] @ 480
	.field  	1028,32			; _SPboxes[0][16] @ 512
	.field  	16778240,32			; _SPboxes[0][17] @ 544
	.field  	16778240,32			; _SPboxes[0][18] @ 576
	.field  	66560,32			; _SPboxes[0][19] @ 608
	.field  	66560,32			; _SPboxes[0][20] @ 640
	.field  	16842752,32			; _SPboxes[0][21] @ 672
	.field  	16842752,32			; _SPboxes[0][22] @ 704
	.field  	16778244,32			; _SPboxes[0][23] @ 736
	.field  	65540,32			; _SPboxes[0][24] @ 768
	.field  	16777220,32			; _SPboxes[0][25] @ 800
	.field  	16777220,32			; _SPboxes[0][26] @ 832
	.field  	65540,32			; _SPboxes[0][27] @ 864
	.field  	0,32			; _SPboxes[0][28] @ 896
	.field  	1028,32			; _SPboxes[0][29] @ 928
	.field  	66564,32			; _SPboxes[0][30] @ 960
	.field  	16777216,32			; _SPboxes[0][31] @ 992
	.field  	65536,32			; _SPboxes[0][32] @ 1024
	.field  	16843780,32			; _SPboxes[0][33] @ 1056
	.field  	4,32			; _SPboxes[0][34] @ 1088
	.field  	16842752,32			; _SPboxes[0][35] @ 1120
	.field  	16843776,32			; _SPboxes[0][36] @ 1152
	.field  	16777216,32			; _SPboxes[0][37] @ 1184
	.field  	16777216,32			; _SPboxes[0][38] @ 1216
	.field  	1024,32			; _SPboxes[0][39] @ 1248
	.field  	16842756,32			; _SPboxes[0][40] @ 1280
	.field  	65536,32			; _SPboxes[0][41] @ 1312
	.field  	66560,32			; _SPboxes[0][42] @ 1344
	.field  	16777220,32			; _SPboxes[0][43] @ 1376
	.field  	1024,32			; _SPboxes[0][44] @ 1408
	.field  	4,32			; _SPboxes[0][45] @ 1440
	.field  	16778244,32			; _SPboxes[0][46] @ 1472
	.field  	66564,32			; _SPboxes[0][47] @ 1504
	.field  	16843780,32			; _SPboxes[0][48] @ 1536
	.field  	65540,32			; _SPboxes[0][49] @ 1568
	.field  	16842752,32			; _SPboxes[0][50] @ 1600
	.field  	16778244,32			; _SPboxes[0][51] @ 1632
	.field  	16777220,32			; _SPboxes[0][52] @ 1664
	.field  	1028,32			; _SPboxes[0][53] @ 1696
	.field  	66564,32			; _SPboxes[0][54] @ 1728
	.field  	16843776,32			; _SPboxes[0][55] @ 1760
	.field  	1028,32			; _SPboxes[0][56] @ 1792
	.field  	16778240,32			; _SPboxes[0][57] @ 1824
	.field  	16778240,32			; _SPboxes[0][58] @ 1856
	.field  	0,32			; _SPboxes[0][59] @ 1888
	.field  	65540,32			; _SPboxes[0][60] @ 1920
	.field  	66560,32			; _SPboxes[0][61] @ 1952
	.field  	0,32			; _SPboxes[0][62] @ 1984
	.field  	16842756,32			; _SPboxes[0][63] @ 2016
	.field  	-2146402272,32			; _SPboxes[1][0] @ 2048
	.field  	-2147450880,32			; _SPboxes[1][1] @ 2080
	.field  	32768,32			; _SPboxes[1][2] @ 2112
	.field  	1081376,32			; _SPboxes[1][3] @ 2144
	.field  	1048576,32			; _SPboxes[1][4] @ 2176
	.field  	32,32			; _SPboxes[1][5] @ 2208
	.field  	-2146435040,32			; _SPboxes[1][6] @ 2240
	.field  	-2147450848,32			; _SPboxes[1][7] @ 2272
	.field  	-2147483616,32			; _SPboxes[1][8] @ 2304
	.field  	-2146402272,32			; _SPboxes[1][9] @ 2336
	.field  	-2146402304,32			; _SPboxes[1][10] @ 2368
	.field  	-2147483648,32			; _SPboxes[1][11] @ 2400
	.field  	-2147450880,32			; _SPboxes[1][12] @ 2432
	.field  	1048576,32			; _SPboxes[1][13] @ 2464
	.field  	32,32			; _SPboxes[1][14] @ 2496
	.field  	-2146435040,32			; _SPboxes[1][15] @ 2528
	.field  	1081344,32			; _SPboxes[1][16] @ 2560
	.field  	1048608,32			; _SPboxes[1][17] @ 2592
	.field  	-2147450848,32			; _SPboxes[1][18] @ 2624
	.field  	0,32			; _SPboxes[1][19] @ 2656
	.field  	-2147483648,32			; _SPboxes[1][20] @ 2688
	.field  	32768,32			; _SPboxes[1][21] @ 2720
	.field  	1081376,32			; _SPboxes[1][22] @ 2752
	.field  	-2146435072,32			; _SPboxes[1][23] @ 2784
	.field  	1048608,32			; _SPboxes[1][24] @ 2816
	.field  	-2147483616,32			; _SPboxes[1][25] @ 2848
	.field  	0,32			; _SPboxes[1][26] @ 2880
	.field  	1081344,32			; _SPboxes[1][27] @ 2912
	.field  	32800,32			; _SPboxes[1][28] @ 2944
	.field  	-2146402304,32			; _SPboxes[1][29] @ 2976
	.field  	-2146435072,32			; _SPboxes[1][30] @ 3008
	.field  	32800,32			; _SPboxes[1][31] @ 3040
	.field  	0,32			; _SPboxes[1][32] @ 3072
	.field  	1081376,32			; _SPboxes[1][33] @ 3104
	.field  	-2146435040,32			; _SPboxes[1][34] @ 3136
	.field  	1048576,32			; _SPboxes[1][35] @ 3168
	.field  	-2147450848,32			; _SPboxes[1][36] @ 3200
	.field  	-2146435072,32			; _SPboxes[1][37] @ 3232
	.field  	-2146402304,32			; _SPboxes[1][38] @ 3264
	.field  	32768,32			; _SPboxes[1][39] @ 3296
	.field  	-2146435072,32			; _SPboxes[1][40] @ 3328
	.field  	-2147450880,32			; _SPboxes[1][41] @ 3360
	.field  	32,32			; _SPboxes[1][42] @ 3392
	.field  	-2146402272,32			; _SPboxes[1][43] @ 3424
	.field  	1081376,32			; _SPboxes[1][44] @ 3456
	.field  	32,32			; _SPboxes[1][45] @ 3488
	.field  	32768,32			; _SPboxes[1][46] @ 3520
	.field  	-2147483648,32			; _SPboxes[1][47] @ 3552
	.field  	32800,32			; _SPboxes[1][48] @ 3584
	.field  	-2146402304,32			; _SPboxes[1][49] @ 3616
	.field  	1048576,32			; _SPboxes[1][50] @ 3648
	.field  	-2147483616,32			; _SPboxes[1][51] @ 3680
	.field  	1048608,32			; _SPboxes[1][52] @ 3712
	.field  	-2147450848,32			; _SPboxes[1][53] @ 3744
	.field  	-2147483616,32			; _SPboxes[1][54] @ 3776
	.field  	1048608,32			; _SPboxes[1][55] @ 3808
	.field  	1081344,32			; _SPboxes[1][56] @ 3840
	.field  	0,32			; _SPboxes[1][57] @ 3872
	.field  	-2147450880,32			; _SPboxes[1][58] @ 3904
	.field  	32800,32			; _SPboxes[1][59] @ 3936
	.field  	-2147483648,32			; _SPboxes[1][60] @ 3968
	.field  	-2146435040,32			; _SPboxes[1][61] @ 4000
	.field  	-2146402272,32			; _SPboxes[1][62] @ 4032
	.field  	1081344,32			; _SPboxes[1][63] @ 4064
	.field  	520,32			; _SPboxes[2][0] @ 4096
	.field  	134349312,32			; _SPboxes[2][1] @ 4128
	.field  	0,32			; _SPboxes[2][2] @ 4160
	.field  	134348808,32			; _SPboxes[2][3] @ 4192
	.field  	134218240,32			; _SPboxes[2][4] @ 4224
	.field  	0,32			; _SPboxes[2][5] @ 4256
	.field  	131592,32			; _SPboxes[2][6] @ 4288
	.field  	134218240,32			; _SPboxes[2][7] @ 4320
	.field  	131080,32			; _SPboxes[2][8] @ 4352
	.field  	134217736,32			; _SPboxes[2][9] @ 4384
	.field  	134217736,32			; _SPboxes[2][10] @ 4416
	.field  	131072,32			; _SPboxes[2][11] @ 4448
	.field  	134349320,32			; _SPboxes[2][12] @ 4480
	.field  	131080,32			; _SPboxes[2][13] @ 4512
	.field  	134348800,32			; _SPboxes[2][14] @ 4544
	.field  	520,32			; _SPboxes[2][15] @ 4576
	.field  	134217728,32			; _SPboxes[2][16] @ 4608
	.field  	8,32			; _SPboxes[2][17] @ 4640
	.field  	134349312,32			; _SPboxes[2][18] @ 4672
	.field  	512,32			; _SPboxes[2][19] @ 4704
	.field  	131584,32			; _SPboxes[2][20] @ 4736
	.field  	134348800,32			; _SPboxes[2][21] @ 4768
	.field  	134348808,32			; _SPboxes[2][22] @ 4800
	.field  	131592,32			; _SPboxes[2][23] @ 4832
	.field  	134218248,32			; _SPboxes[2][24] @ 4864
	.field  	131584,32			; _SPboxes[2][25] @ 4896
	.field  	131072,32			; _SPboxes[2][26] @ 4928
	.field  	134218248,32			; _SPboxes[2][27] @ 4960
	.field  	8,32			; _SPboxes[2][28] @ 4992
	.field  	134349320,32			; _SPboxes[2][29] @ 5024
	.field  	512,32			; _SPboxes[2][30] @ 5056
	.field  	134217728,32			; _SPboxes[2][31] @ 5088
	.field  	134349312,32			; _SPboxes[2][32] @ 5120
	.field  	134217728,32			; _SPboxes[2][33] @ 5152
	.field  	131080,32			; _SPboxes[2][34] @ 5184
	.field  	520,32			; _SPboxes[2][35] @ 5216
	.field  	131072,32			; _SPboxes[2][36] @ 5248
	.field  	134349312,32			; _SPboxes[2][37] @ 5280
	.field  	134218240,32			; _SPboxes[2][38] @ 5312
	.field  	0,32			; _SPboxes[2][39] @ 5344
	.field  	512,32			; _SPboxes[2][40] @ 5376
	.field  	131080,32			; _SPboxes[2][41] @ 5408
	.field  	134349320,32			; _SPboxes[2][42] @ 5440
	.field  	134218240,32			; _SPboxes[2][43] @ 5472
	.field  	134217736,32			; _SPboxes[2][44] @ 5504
	.field  	512,32			; _SPboxes[2][45] @ 5536
	.field  	0,32			; _SPboxes[2][46] @ 5568
	.field  	134348808,32			; _SPboxes[2][47] @ 5600
	.field  	134218248,32			; _SPboxes[2][48] @ 5632
	.field  	131072,32			; _SPboxes[2][49] @ 5664
	.field  	134217728,32			; _SPboxes[2][50] @ 5696
	.field  	134349320,32			; _SPboxes[2][51] @ 5728
	.field  	8,32			; _SPboxes[2][52] @ 5760
	.field  	131592,32			; _SPboxes[2][53] @ 5792
	.field  	131584,32			; _SPboxes[2][54] @ 5824
	.field  	134217736,32			; _SPboxes[2][55] @ 5856
	.field  	134348800,32			; _SPboxes[2][56] @ 5888
	.field  	134218248,32			; _SPboxes[2][57] @ 5920
	.field  	520,32			; _SPboxes[2][58] @ 5952
	.field  	134348800,32			; _SPboxes[2][59] @ 5984
	.field  	131592,32			; _SPboxes[2][60] @ 6016
	.field  	8,32			; _SPboxes[2][61] @ 6048
	.field  	134348808,32			; _SPboxes[2][62] @ 6080
	.field  	131584,32			; _SPboxes[2][63] @ 6112
	.field  	8396801,32			; _SPboxes[3][0] @ 6144
	.field  	8321,32			; _SPboxes[3][1] @ 6176
	.field  	8321,32			; _SPboxes[3][2] @ 6208
	.field  	128,32			; _SPboxes[3][3] @ 6240
	.field  	8396928,32			; _SPboxes[3][4] @ 6272
	.field  	8388737,32			; _SPboxes[3][5] @ 6304
	.field  	8388609,32			; _SPboxes[3][6] @ 6336
	.field  	8193,32			; _SPboxes[3][7] @ 6368
	.field  	0,32			; _SPboxes[3][8] @ 6400
	.field  	8396800,32			; _SPboxes[3][9] @ 6432
	.field  	8396800,32			; _SPboxes[3][10] @ 6464
	.field  	8396929,32			; _SPboxes[3][11] @ 6496
	.field  	129,32			; _SPboxes[3][12] @ 6528
	.field  	0,32			; _SPboxes[3][13] @ 6560
	.field  	8388736,32			; _SPboxes[3][14] @ 6592
	.field  	8388609,32			; _SPboxes[3][15] @ 6624
	.field  	1,32			; _SPboxes[3][16] @ 6656
	.field  	8192,32			; _SPboxes[3][17] @ 6688
	.field  	8388608,32			; _SPboxes[3][18] @ 6720
	.field  	8396801,32			; _SPboxes[3][19] @ 6752
	.field  	128,32			; _SPboxes[3][20] @ 6784
	.field  	8388608,32			; _SPboxes[3][21] @ 6816
	.field  	8193,32			; _SPboxes[3][22] @ 6848
	.field  	8320,32			; _SPboxes[3][23] @ 6880
	.field  	8388737,32			; _SPboxes[3][24] @ 6912
	.field  	1,32			; _SPboxes[3][25] @ 6944
	.field  	8320,32			; _SPboxes[3][26] @ 6976
	.field  	8388736,32			; _SPboxes[3][27] @ 7008
	.field  	8192,32			; _SPboxes[3][28] @ 7040
	.field  	8396928,32			; _SPboxes[3][29] @ 7072
	.field  	8396929,32			; _SPboxes[3][30] @ 7104
	.field  	129,32			; _SPboxes[3][31] @ 7136
	.field  	8388736,32			; _SPboxes[3][32] @ 7168
	.field  	8388609,32			; _SPboxes[3][33] @ 7200
	.field  	8396800,32			; _SPboxes[3][34] @ 7232
	.field  	8396929,32			; _SPboxes[3][35] @ 7264
	.field  	129,32			; _SPboxes[3][36] @ 7296
	.field  	0,32			; _SPboxes[3][37] @ 7328
	.field  	0,32			; _SPboxes[3][38] @ 7360
	.field  	8396800,32			; _SPboxes[3][39] @ 7392
	.field  	8320,32			; _SPboxes[3][40] @ 7424
	.field  	8388736,32			; _SPboxes[3][41] @ 7456
	.field  	8388737,32			; _SPboxes[3][42] @ 7488
	.field  	1,32			; _SPboxes[3][43] @ 7520
	.field  	8396801,32			; _SPboxes[3][44] @ 7552
	.field  	8321,32			; _SPboxes[3][45] @ 7584
	.field  	8321,32			; _SPboxes[3][46] @ 7616
	.field  	128,32			; _SPboxes[3][47] @ 7648
	.field  	8396929,32			; _SPboxes[3][48] @ 7680
	.field  	129,32			; _SPboxes[3][49] @ 7712
	.field  	1,32			; _SPboxes[3][50] @ 7744
	.field  	8192,32			; _SPboxes[3][51] @ 7776
	.field  	8388609,32			; _SPboxes[3][52] @ 7808
	.field  	8193,32			; _SPboxes[3][53] @ 7840
	.field  	8396928,32			; _SPboxes[3][54] @ 7872
	.field  	8388737,32			; _SPboxes[3][55] @ 7904
	.field  	8193,32			; _SPboxes[3][56] @ 7936
	.field  	8320,32			; _SPboxes[3][57] @ 7968
	.field  	8388608,32			; _SPboxes[3][58] @ 8000
	.field  	8396801,32			; _SPboxes[3][59] @ 8032
	.field  	128,32			; _SPboxes[3][60] @ 8064
	.field  	8388608,32			; _SPboxes[3][61] @ 8096
	.field  	8192,32			; _SPboxes[3][62] @ 8128
	.field  	8396928,32			; _SPboxes[3][63] @ 8160
	.field  	256,32			; _SPboxes[4][0] @ 8192
	.field  	34078976,32			; _SPboxes[4][1] @ 8224
	.field  	34078720,32			; _SPboxes[4][2] @ 8256
	.field  	1107296512,32			; _SPboxes[4][3] @ 8288
	.field  	524288,32			; _SPboxes[4][4] @ 8320
	.field  	256,32			; _SPboxes[4][5] @ 8352
	.field  	1073741824,32			; _SPboxes[4][6] @ 8384
	.field  	34078720,32			; _SPboxes[4][7] @ 8416
	.field  	1074266368,32			; _SPboxes[4][8] @ 8448
	.field  	524288,32			; _SPboxes[4][9] @ 8480
	.field  	33554688,32			; _SPboxes[4][10] @ 8512
	.field  	1074266368,32			; _SPboxes[4][11] @ 8544
	.field  	1107296512,32			; _SPboxes[4][12] @ 8576
	.field  	1107820544,32			; _SPboxes[4][13] @ 8608
	.field  	524544,32			; _SPboxes[4][14] @ 8640
	.field  	1073741824,32			; _SPboxes[4][15] @ 8672
	.field  	33554432,32			; _SPboxes[4][16] @ 8704
	.field  	1074266112,32			; _SPboxes[4][17] @ 8736
	.field  	1074266112,32			; _SPboxes[4][18] @ 8768
	.field  	0,32			; _SPboxes[4][19] @ 8800
	.field  	1073742080,32			; _SPboxes[4][20] @ 8832
	.field  	1107820800,32			; _SPboxes[4][21] @ 8864
	.field  	1107820800,32			; _SPboxes[4][22] @ 8896
	.field  	33554688,32			; _SPboxes[4][23] @ 8928
	.field  	1107820544,32			; _SPboxes[4][24] @ 8960
	.field  	1073742080,32			; _SPboxes[4][25] @ 8992
	.field  	0,32			; _SPboxes[4][26] @ 9024
	.field  	1107296256,32			; _SPboxes[4][27] @ 9056
	.field  	34078976,32			; _SPboxes[4][28] @ 9088
	.field  	33554432,32			; _SPboxes[4][29] @ 9120
	.field  	1107296256,32			; _SPboxes[4][30] @ 9152
	.field  	524544,32			; _SPboxes[4][31] @ 9184
	.field  	524288,32			; _SPboxes[4][32] @ 9216
	.field  	1107296512,32			; _SPboxes[4][33] @ 9248
	.field  	256,32			; _SPboxes[4][34] @ 9280
	.field  	33554432,32			; _SPboxes[4][35] @ 9312
	.field  	1073741824,32			; _SPboxes[4][36] @ 9344
	.field  	34078720,32			; _SPboxes[4][37] @ 9376
	.field  	1107296512,32			; _SPboxes[4][38] @ 9408
	.field  	1074266368,32			; _SPboxes[4][39] @ 9440
	.field  	33554688,32			; _SPboxes[4][40] @ 9472
	.field  	1073741824,32			; _SPboxes[4][41] @ 9504
	.field  	1107820544,32			; _SPboxes[4][42] @ 9536
	.field  	34078976,32			; _SPboxes[4][43] @ 9568
	.field  	1074266368,32			; _SPboxes[4][44] @ 9600
	.field  	256,32			; _SPboxes[4][45] @ 9632
	.field  	33554432,32			; _SPboxes[4][46] @ 9664
	.field  	1107820544,32			; _SPboxes[4][47] @ 9696
	.field  	1107820800,32			; _SPboxes[4][48] @ 9728
	.field  	524544,32			; _SPboxes[4][49] @ 9760
	.field  	1107296256,32			; _SPboxes[4][50] @ 9792
	.field  	1107820800,32			; _SPboxes[4][51] @ 9824
	.field  	34078720,32			; _SPboxes[4][52] @ 9856
	.field  	0,32			; _SPboxes[4][53] @ 9888
	.field  	1074266112,32			; _SPboxes[4][54] @ 9920
	.field  	1107296256,32			; _SPboxes[4][55] @ 9952
	.field  	524544,32			; _SPboxes[4][56] @ 9984
	.field  	33554688,32			; _SPboxes[4][57] @ 10016
	.field  	1073742080,32			; _SPboxes[4][58] @ 10048
	.field  	524288,32			; _SPboxes[4][59] @ 10080
	.field  	0,32			; _SPboxes[4][60] @ 10112
	.field  	1074266112,32			; _SPboxes[4][61] @ 10144
	.field  	34078976,32			; _SPboxes[4][62] @ 10176
	.field  	1073742080,32			; _SPboxes[4][63] @ 10208
	.field  	536870928,32			; _SPboxes[5][0] @ 10240
	.field  	541065216,32			; _SPboxes[5][1] @ 10272
	.field  	16384,32			; _SPboxes[5][2] @ 10304
	.field  	541081616,32			; _SPboxes[5][3] @ 10336
	.field  	541065216,32			; _SPboxes[5][4] @ 10368
	.field  	16,32			; _SPboxes[5][5] @ 10400
	.field  	541081616,32			; _SPboxes[5][6] @ 10432
	.field  	4194304,32			; _SPboxes[5][7] @ 10464
	.field  	536887296,32			; _SPboxes[5][8] @ 10496
	.field  	4210704,32			; _SPboxes[5][9] @ 10528
	.field  	4194304,32			; _SPboxes[5][10] @ 10560
	.field  	536870928,32			; _SPboxes[5][11] @ 10592
	.field  	4194320,32			; _SPboxes[5][12] @ 10624
	.field  	536887296,32			; _SPboxes[5][13] @ 10656
	.field  	536870912,32			; _SPboxes[5][14] @ 10688
	.field  	16400,32			; _SPboxes[5][15] @ 10720
	.field  	0,32			; _SPboxes[5][16] @ 10752
	.field  	4194320,32			; _SPboxes[5][17] @ 10784
	.field  	536887312,32			; _SPboxes[5][18] @ 10816
	.field  	16384,32			; _SPboxes[5][19] @ 10848
	.field  	4210688,32			; _SPboxes[5][20] @ 10880
	.field  	536887312,32			; _SPboxes[5][21] @ 10912
	.field  	16,32			; _SPboxes[5][22] @ 10944
	.field  	541065232,32			; _SPboxes[5][23] @ 10976
	.field  	541065232,32			; _SPboxes[5][24] @ 11008
	.field  	0,32			; _SPboxes[5][25] @ 11040
	.field  	4210704,32			; _SPboxes[5][26] @ 11072
	.field  	541081600,32			; _SPboxes[5][27] @ 11104
	.field  	16400,32			; _SPboxes[5][28] @ 11136
	.field  	4210688,32			; _SPboxes[5][29] @ 11168
	.field  	541081600,32			; _SPboxes[5][30] @ 11200
	.field  	536870912,32			; _SPboxes[5][31] @ 11232
	.field  	536887296,32			; _SPboxes[5][32] @ 11264
	.field  	16,32			; _SPboxes[5][33] @ 11296
	.field  	541065232,32			; _SPboxes[5][34] @ 11328
	.field  	4210688,32			; _SPboxes[5][35] @ 11360
	.field  	541081616,32			; _SPboxes[5][36] @ 11392
	.field  	4194304,32			; _SPboxes[5][37] @ 11424
	.field  	16400,32			; _SPboxes[5][38] @ 11456
	.field  	536870928,32			; _SPboxes[5][39] @ 11488
	.field  	4194304,32			; _SPboxes[5][40] @ 11520
	.field  	536887296,32			; _SPboxes[5][41] @ 11552
	.field  	536870912,32			; _SPboxes[5][42] @ 11584
	.field  	16400,32			; _SPboxes[5][43] @ 11616
	.field  	536870928,32			; _SPboxes[5][44] @ 11648
	.field  	541081616,32			; _SPboxes[5][45] @ 11680
	.field  	4210688,32			; _SPboxes[5][46] @ 11712
	.field  	541065216,32			; _SPboxes[5][47] @ 11744
	.field  	4210704,32			; _SPboxes[5][48] @ 11776
	.field  	541081600,32			; _SPboxes[5][49] @ 11808
	.field  	0,32			; _SPboxes[5][50] @ 11840
	.field  	541065232,32			; _SPboxes[5][51] @ 11872
	.field  	16,32			; _SPboxes[5][52] @ 11904
	.field  	16384,32			; _SPboxes[5][53] @ 11936
	.field  	541065216,32			; _SPboxes[5][54] @ 11968
	.field  	4210704,32			; _SPboxes[5][55] @ 12000
	.field  	16384,32			; _SPboxes[5][56] @ 12032
	.field  	4194320,32			; _SPboxes[5][57] @ 12064
	.field  	536887312,32			; _SPboxes[5][58] @ 12096
	.field  	0,32			; _SPboxes[5][59] @ 12128
	.field  	541081600,32			; _SPboxes[5][60] @ 12160
	.field  	536870912,32			; _SPboxes[5][61] @ 12192
	.field  	4194320,32			; _SPboxes[5][62] @ 12224
	.field  	536887312,32			; _SPboxes[5][63] @ 12256
	.field  	2097152,32			; _SPboxes[6][0] @ 12288
	.field  	69206018,32			; _SPboxes[6][1] @ 12320
	.field  	67110914,32			; _SPboxes[6][2] @ 12352
	.field  	0,32			; _SPboxes[6][3] @ 12384
	.field  	2048,32			; _SPboxes[6][4] @ 12416
	.field  	67110914,32			; _SPboxes[6][5] @ 12448
	.field  	2099202,32			; _SPboxes[6][6] @ 12480
	.field  	69208064,32			; _SPboxes[6][7] @ 12512
	.field  	69208066,32			; _SPboxes[6][8] @ 12544
	.field  	2097152,32			; _SPboxes[6][9] @ 12576
	.field  	0,32			; _SPboxes[6][10] @ 12608
	.field  	67108866,32			; _SPboxes[6][11] @ 12640
	.field  	2,32			; _SPboxes[6][12] @ 12672
	.field  	67108864,32			; _SPboxes[6][13] @ 12704
	.field  	69206018,32			; _SPboxes[6][14] @ 12736
	.field  	2050,32			; _SPboxes[6][15] @ 12768
	.field  	67110912,32			; _SPboxes[6][16] @ 12800
	.field  	2099202,32			; _SPboxes[6][17] @ 12832
	.field  	2097154,32			; _SPboxes[6][18] @ 12864
	.field  	67110912,32			; _SPboxes[6][19] @ 12896
	.field  	67108866,32			; _SPboxes[6][20] @ 12928
	.field  	69206016,32			; _SPboxes[6][21] @ 12960
	.field  	69208064,32			; _SPboxes[6][22] @ 12992
	.field  	2097154,32			; _SPboxes[6][23] @ 13024
	.field  	69206016,32			; _SPboxes[6][24] @ 13056
	.field  	2048,32			; _SPboxes[6][25] @ 13088
	.field  	2050,32			; _SPboxes[6][26] @ 13120
	.field  	69208066,32			; _SPboxes[6][27] @ 13152
	.field  	2099200,32			; _SPboxes[6][28] @ 13184
	.field  	2,32			; _SPboxes[6][29] @ 13216
	.field  	67108864,32			; _SPboxes[6][30] @ 13248
	.field  	2099200,32			; _SPboxes[6][31] @ 13280
	.field  	67108864,32			; _SPboxes[6][32] @ 13312
	.field  	2099200,32			; _SPboxes[6][33] @ 13344
	.field  	2097152,32			; _SPboxes[6][34] @ 13376
	.field  	67110914,32			; _SPboxes[6][35] @ 13408
	.field  	67110914,32			; _SPboxes[6][36] @ 13440
	.field  	69206018,32			; _SPboxes[6][37] @ 13472
	.field  	69206018,32			; _SPboxes[6][38] @ 13504
	.field  	2,32			; _SPboxes[6][39] @ 13536
	.field  	2097154,32			; _SPboxes[6][40] @ 13568
	.field  	67108864,32			; _SPboxes[6][41] @ 13600
	.field  	67110912,32			; _SPboxes[6][42] @ 13632
	.field  	2097152,32			; _SPboxes[6][43] @ 13664
	.field  	69208064,32			; _SPboxes[6][44] @ 13696
	.field  	2050,32			; _SPboxes[6][45] @ 13728
	.field  	2099202,32			; _SPboxes[6][46] @ 13760
	.field  	69208064,32			; _SPboxes[6][47] @ 13792
	.field  	2050,32			; _SPboxes[6][48] @ 13824
	.field  	67108866,32			; _SPboxes[6][49] @ 13856
	.field  	69208066,32			; _SPboxes[6][50] @ 13888
	.field  	69206016,32			; _SPboxes[6][51] @ 13920
	.field  	2099200,32			; _SPboxes[6][52] @ 13952
	.field  	0,32			; _SPboxes[6][53] @ 13984
	.field  	2,32			; _SPboxes[6][54] @ 14016
	.field  	69208066,32			; _SPboxes[6][55] @ 14048
	.field  	0,32			; _SPboxes[6][56] @ 14080
	.field  	2099202,32			; _SPboxes[6][57] @ 14112
	.field  	69206016,32			; _SPboxes[6][58] @ 14144
	.field  	2048,32			; _SPboxes[6][59] @ 14176
	.field  	67108866,32			; _SPboxes[6][60] @ 14208
	.field  	67110912,32			; _SPboxes[6][61] @ 14240
	.field  	2048,32			; _SPboxes[6][62] @ 14272
	.field  	2097154,32			; _SPboxes[6][63] @ 14304
	.field  	268439616,32			; _SPboxes[7][0] @ 14336
	.field  	4096,32			; _SPboxes[7][1] @ 14368
	.field  	262144,32			; _SPboxes[7][2] @ 14400
	.field  	268701760,32			; _SPboxes[7][3] @ 14432
	.field  	268435456,32			; _SPboxes[7][4] @ 14464
	.field  	268439616,32			; _SPboxes[7][5] @ 14496
	.field  	64,32			; _SPboxes[7][6] @ 14528
	.field  	268435456,32			; _SPboxes[7][7] @ 14560
	.field  	262208,32			; _SPboxes[7][8] @ 14592
	.field  	268697600,32			; _SPboxes[7][9] @ 14624
	.field  	268701760,32			; _SPboxes[7][10] @ 14656
	.field  	266240,32			; _SPboxes[7][11] @ 14688
	.field  	268701696,32			; _SPboxes[7][12] @ 14720
	.field  	266304,32			; _SPboxes[7][13] @ 14752
	.field  	4096,32			; _SPboxes[7][14] @ 14784
	.field  	64,32			; _SPboxes[7][15] @ 14816
	.field  	268697600,32			; _SPboxes[7][16] @ 14848
	.field  	268435520,32			; _SPboxes[7][17] @ 14880
	.field  	268439552,32			; _SPboxes[7][18] @ 14912
	.field  	4160,32			; _SPboxes[7][19] @ 14944
	.field  	266240,32			; _SPboxes[7][20] @ 14976
	.field  	262208,32			; _SPboxes[7][21] @ 15008
	.field  	268697664,32			; _SPboxes[7][22] @ 15040
	.field  	268701696,32			; _SPboxes[7][23] @ 15072
	.field  	4160,32			; _SPboxes[7][24] @ 15104
	.field  	0,32			; _SPboxes[7][25] @ 15136
	.field  	0,32			; _SPboxes[7][26] @ 15168
	.field  	268697664,32			; _SPboxes[7][27] @ 15200
	.field  	268435520,32			; _SPboxes[7][28] @ 15232
	.field  	268439552,32			; _SPboxes[7][29] @ 15264
	.field  	266304,32			; _SPboxes[7][30] @ 15296
	.field  	262144,32			; _SPboxes[7][31] @ 15328
	.field  	266304,32			; _SPboxes[7][32] @ 15360
	.field  	262144,32			; _SPboxes[7][33] @ 15392
	.field  	268701696,32			; _SPboxes[7][34] @ 15424
	.field  	4096,32			; _SPboxes[7][35] @ 15456
	.field  	64,32			; _SPboxes[7][36] @ 15488
	.field  	268697664,32			; _SPboxes[7][37] @ 15520
	.field  	4096,32			; _SPboxes[7][38] @ 15552
	.field  	266304,32			; _SPboxes[7][39] @ 15584
	.field  	268439552,32			; _SPboxes[7][40] @ 15616
	.field  	64,32			; _SPboxes[7][41] @ 15648
	.field  	268435520,32			; _SPboxes[7][42] @ 15680
	.field  	268697600,32			; _SPboxes[7][43] @ 15712
	.field  	268697664,32			; _SPboxes[7][44] @ 15744
	.field  	268435456,32			; _SPboxes[7][45] @ 15776
	.field  	262144,32			; _SPboxes[7][46] @ 15808
	.field  	268439616,32			; _SPboxes[7][47] @ 15840
	.field  	0,32			; _SPboxes[7][48] @ 15872
	.field  	268701760,32			; _SPboxes[7][49] @ 15904
	.field  	262208,32			; _SPboxes[7][50] @ 15936
	.field  	268435520,32			; _SPboxes[7][51] @ 15968
	.field  	268697600,32			; _SPboxes[7][52] @ 16000
	.field  	268439552,32			; _SPboxes[7][53] @ 16032
	.field  	268439616,32			; _SPboxes[7][54] @ 16064
	.field  	0,32			; _SPboxes[7][55] @ 16096
	.field  	268701760,32			; _SPboxes[7][56] @ 16128
	.field  	266240,32			; _SPboxes[7][57] @ 16160
	.field  	266240,32			; _SPboxes[7][58] @ 16192
	.field  	4160,32			; _SPboxes[7][59] @ 16224
	.field  	4160,32			; _SPboxes[7][60] @ 16256
	.field  	262208,32			; _SPboxes[7][61] @ 16288
	.field  	268435456,32			; _SPboxes[7][62] @ 16320
	.field  	268701696,32			; _SPboxes[7][63] @ 16352

DW$13	.dwtag  DW_TAG_variable, DW_AT_name("SPboxes"), DW_AT_symbol_name("_SPboxes")
	.dwattr DW$13, DW_AT_type(*DW$T$80)
	.dwattr DW$13, DW_AT_location[DW_OP_addr _SPboxes]
	.sect	".const"
	.align	4
_ssh_3des_ssh2:
	.field  	_des3_make_context,32		; _ssh_3des_ssh2._make_context @ 0
	.field  	_des3_free_context,32		; _ssh_3des_ssh2._free_context @ 32
	.field  	_des3_iv,32		; _ssh_3des_ssh2._setiv @ 64
	.field  	_des3_key,32		; _ssh_3des_ssh2._setkey @ 96
	.field  	_des3_ssh2_encrypt_blk,32		; _ssh_3des_ssh2._encrypt @ 128
	.field  	_des3_ssh2_decrypt_blk,32		; _ssh_3des_ssh2._decrypt @ 160
	.field  	SL1,32		; _ssh_3des_ssh2._name @ 192
	.field  	8,32			; _ssh_3des_ssh2._blksize @ 224
	.field  	168,32			; _ssh_3des_ssh2._keylen @ 256
	.field  	1,32			; _ssh_3des_ssh2._flags @ 288
	.field  	SL2,32		; _ssh_3des_ssh2._text_name @ 320

DW$14	.dwtag  DW_TAG_variable, DW_AT_name("ssh_3des_ssh2"), DW_AT_symbol_name("_ssh_3des_ssh2")
	.dwattr DW$14, DW_AT_type(*DW$T$34)
	.dwattr DW$14, DW_AT_location[DW_OP_addr _ssh_3des_ssh2]
	.sect	".const"
	.align	4
_ssh_3des_ssh2_ctr:
	.field  	_des3_make_context,32		; _ssh_3des_ssh2_ctr._make_context @ 0
	.field  	_des3_free_context,32		; _ssh_3des_ssh2_ctr._free_context @ 32
	.field  	_des3_iv,32		; _ssh_3des_ssh2_ctr._setiv @ 64
	.field  	_des3_key,32		; _ssh_3des_ssh2_ctr._setkey @ 96
	.field  	_des3_ssh2_sdctr,32		; _ssh_3des_ssh2_ctr._encrypt @ 128
	.field  	_des3_ssh2_sdctr,32		; _ssh_3des_ssh2_ctr._decrypt @ 160
	.field  	SL3,32		; _ssh_3des_ssh2_ctr._name @ 192
	.field  	8,32			; _ssh_3des_ssh2_ctr._blksize @ 224
	.field  	168,32			; _ssh_3des_ssh2_ctr._keylen @ 256
	.field  	0,32			; _ssh_3des_ssh2_ctr._flags @ 288
	.field  	SL4,32		; _ssh_3des_ssh2_ctr._text_name @ 320

DW$15	.dwtag  DW_TAG_variable, DW_AT_name("ssh_3des_ssh2_ctr"), DW_AT_symbol_name("_ssh_3des_ssh2_ctr")
	.dwattr DW$15, DW_AT_type(*DW$T$34)
	.dwattr DW$15, DW_AT_location[DW_OP_addr _ssh_3des_ssh2_ctr]
	.sect	".const"
	.align	4
_ssh_des_ssh2:
	.field  	_des_make_context,32		; _ssh_des_ssh2._make_context @ 0
	.field  	_des3_free_context,32		; _ssh_des_ssh2._free_context @ 32
	.field  	_des3_iv,32		; _ssh_des_ssh2._setiv @ 64
	.field  	_des_key,32		; _ssh_des_ssh2._setkey @ 96
	.field  	_des_ssh2_encrypt_blk,32		; _ssh_des_ssh2._encrypt @ 128
	.field  	_des_ssh2_decrypt_blk,32		; _ssh_des_ssh2._decrypt @ 160
	.field  	SL5,32		; _ssh_des_ssh2._name @ 192
	.field  	8,32			; _ssh_des_ssh2._blksize @ 224
	.field  	56,32			; _ssh_des_ssh2._keylen @ 256
	.field  	1,32			; _ssh_des_ssh2._flags @ 288
	.field  	SL6,32		; _ssh_des_ssh2._text_name @ 320

DW$16	.dwtag  DW_TAG_variable, DW_AT_name("ssh_des_ssh2"), DW_AT_symbol_name("_ssh_des_ssh2")
	.dwattr DW$16, DW_AT_type(*DW$T$34)
	.dwattr DW$16, DW_AT_location[DW_OP_addr _ssh_des_ssh2]
	.sect	".const"
	.align	4
_ssh_des_sshcom_ssh2:
	.field  	_des_make_context,32		; _ssh_des_sshcom_ssh2._make_context @ 0
	.field  	_des3_free_context,32		; _ssh_des_sshcom_ssh2._free_context @ 32
	.field  	_des3_iv,32		; _ssh_des_sshcom_ssh2._setiv @ 64
	.field  	_des_key,32		; _ssh_des_sshcom_ssh2._setkey @ 96
	.field  	_des_ssh2_encrypt_blk,32		; _ssh_des_sshcom_ssh2._encrypt @ 128
	.field  	_des_ssh2_decrypt_blk,32		; _ssh_des_sshcom_ssh2._decrypt @ 160
	.field  	SL7,32		; _ssh_des_sshcom_ssh2._name @ 192
	.field  	8,32			; _ssh_des_sshcom_ssh2._blksize @ 224
	.field  	56,32			; _ssh_des_sshcom_ssh2._keylen @ 256
	.field  	1,32			; _ssh_des_sshcom_ssh2._flags @ 288
	.field  	SL6,32		; _ssh_des_sshcom_ssh2._text_name @ 320

DW$17	.dwtag  DW_TAG_variable, DW_AT_name("ssh_des_sshcom_ssh2"), DW_AT_symbol_name("_ssh_des_sshcom_ssh2")
	.dwattr DW$17, DW_AT_type(*DW$T$34)
	.dwattr DW$17, DW_AT_location[DW_OP_addr _ssh_des_sshcom_ssh2]
	.sect	".const"
	.align	8
_des3_list:
	.field  	_ssh_3des_ssh2_ctr,32		; _des3_list[0] @ 0
	.field  	_ssh_3des_ssh2,32		; _des3_list[1] @ 32

DW$18	.dwtag  DW_TAG_variable, DW_AT_name("des3_list"), DW_AT_symbol_name("_des3_list")
	.dwattr DW$18, DW_AT_type(*DW$T$100)
	.dwattr DW$18, DW_AT_location[DW_OP_addr _des3_list]
	.global	_ssh2_3des
	.sect	".const"
	.align	4
_ssh2_3des:
	.field  	2,32			; _ssh2_3des._nciphers @ 0
	.field  	_des3_list,32		; _ssh2_3des._list @ 32

DW$19	.dwtag  DW_TAG_variable, DW_AT_name("ssh2_3des"), DW_AT_symbol_name("_ssh2_3des")
	.dwattr DW$19, DW_AT_location[DW_OP_addr _ssh2_3des]
	.dwattr DW$19, DW_AT_type(*DW$T$101)
	.dwattr DW$19, DW_AT_external(0x01)
	.sect	".const"
	.align	8
_des_list:
	.field  	_ssh_des_ssh2,32		; _des_list[0] @ 0
	.field  	_ssh_des_sshcom_ssh2,32		; _des_list[1] @ 32

DW$20	.dwtag  DW_TAG_variable, DW_AT_name("des_list"), DW_AT_symbol_name("_des_list")
	.dwattr DW$20, DW_AT_type(*DW$T$100)
	.dwattr DW$20, DW_AT_location[DW_OP_addr _des_list]
	.global	_ssh2_des
	.sect	".const"
	.align	4
_ssh2_des:
	.field  	2,32			; _ssh2_des._nciphers @ 0
	.field  	_des_list,32		; _ssh2_des._list @ 32

DW$21	.dwtag  DW_TAG_variable, DW_AT_name("ssh2_des"), DW_AT_symbol_name("_ssh2_des")
	.dwattr DW$21, DW_AT_location[DW_OP_addr _ssh2_des]
	.dwattr DW$21, DW_AT_type(*DW$T$101)
	.dwattr DW$21, DW_AT_external(0x01)
	.global	_ssh_3des
	.sect	".const"
	.align	4
_ssh_3des:
	.field  	_des3_ssh1_make_context,32		; _ssh_3des._make_context @ 0
	.field  	_des3_free_context,32		; _ssh_3des._free_context @ 32
	.field  	_des3_sesskey,32		; _ssh_3des._sesskey @ 64
	.field  	_des3_encrypt_blk,32		; _ssh_3des._encrypt @ 96
	.field  	_des3_decrypt_blk,32		; _ssh_3des._decrypt @ 128
	.field  	8,32			; _ssh_3des._blksize @ 160
	.field  	SL8,32		; _ssh_3des._text_name @ 192

DW$22	.dwtag  DW_TAG_variable, DW_AT_name("ssh_3des"), DW_AT_symbol_name("_ssh_3des")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _ssh_3des]
	.dwattr DW$22, DW_AT_type(*DW$T$102)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_ssh_des
	.sect	".const"
	.align	4
_ssh_des:
	.field  	_des_ssh1_make_context,32		; _ssh_des._make_context @ 0
	.field  	_des3_free_context,32		; _ssh_des._free_context @ 32
	.field  	_des_sesskey,32		; _ssh_des._sesskey @ 64
	.field  	_des_encrypt_blk,32		; _ssh_des._encrypt @ 96
	.field  	_des_decrypt_blk,32		; _ssh_des._decrypt @ 128
	.field  	8,32			; _ssh_des._blksize @ 160
	.field  	SL6,32		; _ssh_des._text_name @ 192

DW$23	.dwtag  DW_TAG_variable, DW_AT_name("ssh_des"), DW_AT_symbol_name("_ssh_des")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _ssh_des]
	.dwattr DW$23, DW_AT_type(*DW$T$102)
	.dwattr DW$23, DW_AT_external(0x01)
	.sect	".const"
	.align	8
_PC1_Cbits$1:
	.field  	7,32			; _PC1_Cbits$1[0] @ 0
	.field  	15,32			; _PC1_Cbits$1[1] @ 32
	.field  	23,32			; _PC1_Cbits$1[2] @ 64
	.field  	31,32			; _PC1_Cbits$1[3] @ 96
	.field  	39,32			; _PC1_Cbits$1[4] @ 128
	.field  	47,32			; _PC1_Cbits$1[5] @ 160
	.field  	55,32			; _PC1_Cbits$1[6] @ 192
	.field  	63,32			; _PC1_Cbits$1[7] @ 224
	.field  	6,32			; _PC1_Cbits$1[8] @ 256
	.field  	14,32			; _PC1_Cbits$1[9] @ 288
	.field  	22,32			; _PC1_Cbits$1[10] @ 320
	.field  	30,32			; _PC1_Cbits$1[11] @ 352
	.field  	38,32			; _PC1_Cbits$1[12] @ 384
	.field  	46,32			; _PC1_Cbits$1[13] @ 416
	.field  	54,32			; _PC1_Cbits$1[14] @ 448
	.field  	62,32			; _PC1_Cbits$1[15] @ 480
	.field  	5,32			; _PC1_Cbits$1[16] @ 512
	.field  	13,32			; _PC1_Cbits$1[17] @ 544
	.field  	21,32			; _PC1_Cbits$1[18] @ 576
	.field  	29,32			; _PC1_Cbits$1[19] @ 608
	.field  	37,32			; _PC1_Cbits$1[20] @ 640
	.field  	45,32			; _PC1_Cbits$1[21] @ 672
	.field  	53,32			; _PC1_Cbits$1[22] @ 704
	.field  	61,32			; _PC1_Cbits$1[23] @ 736
	.field  	4,32			; _PC1_Cbits$1[24] @ 768
	.field  	12,32			; _PC1_Cbits$1[25] @ 800
	.field  	20,32			; _PC1_Cbits$1[26] @ 832
	.field  	28,32			; _PC1_Cbits$1[27] @ 864

	.sect	".const"
	.align	8
_PC1_Dbits$2:
	.field  	1,32			; _PC1_Dbits$2[0] @ 0
	.field  	9,32			; _PC1_Dbits$2[1] @ 32
	.field  	17,32			; _PC1_Dbits$2[2] @ 64
	.field  	25,32			; _PC1_Dbits$2[3] @ 96
	.field  	33,32			; _PC1_Dbits$2[4] @ 128
	.field  	41,32			; _PC1_Dbits$2[5] @ 160
	.field  	49,32			; _PC1_Dbits$2[6] @ 192
	.field  	57,32			; _PC1_Dbits$2[7] @ 224
	.field  	2,32			; _PC1_Dbits$2[8] @ 256
	.field  	10,32			; _PC1_Dbits$2[9] @ 288
	.field  	18,32			; _PC1_Dbits$2[10] @ 320
	.field  	26,32			; _PC1_Dbits$2[11] @ 352
	.field  	34,32			; _PC1_Dbits$2[12] @ 384
	.field  	42,32			; _PC1_Dbits$2[13] @ 416
	.field  	50,32			; _PC1_Dbits$2[14] @ 448
	.field  	58,32			; _PC1_Dbits$2[15] @ 480
	.field  	3,32			; _PC1_Dbits$2[16] @ 512
	.field  	11,32			; _PC1_Dbits$2[17] @ 544
	.field  	19,32			; _PC1_Dbits$2[18] @ 576
	.field  	27,32			; _PC1_Dbits$2[19] @ 608
	.field  	35,32			; _PC1_Dbits$2[20] @ 640
	.field  	43,32			; _PC1_Dbits$2[21] @ 672
	.field  	51,32			; _PC1_Dbits$2[22] @ 704
	.field  	59,32			; _PC1_Dbits$2[23] @ 736
	.field  	36,32			; _PC1_Dbits$2[24] @ 768
	.field  	44,32			; _PC1_Dbits$2[25] @ 800
	.field  	52,32			; _PC1_Dbits$2[26] @ 832
	.field  	60,32			; _PC1_Dbits$2[27] @ 864

	.sect	".const"
	.align	8
_PC2_0246$3:
	.field  	49,32			; _PC2_0246$3[0] @ 0
	.field  	36,32			; _PC2_0246$3[1] @ 32
	.field  	59,32			; _PC2_0246$3[2] @ 64
	.field  	55,32			; _PC2_0246$3[3] @ 96
	.field  	-1,32			; _PC2_0246$3[4] @ 128
	.field  	-1,32			; _PC2_0246$3[5] @ 160
	.field  	37,32			; _PC2_0246$3[6] @ 192
	.field  	41,32			; _PC2_0246$3[7] @ 224
	.field  	48,32			; _PC2_0246$3[8] @ 256
	.field  	56,32			; _PC2_0246$3[9] @ 288
	.field  	34,32			; _PC2_0246$3[10] @ 320
	.field  	52,32			; _PC2_0246$3[11] @ 352
	.field  	-1,32			; _PC2_0246$3[12] @ 384
	.field  	-1,32			; _PC2_0246$3[13] @ 416
	.field  	15,32			; _PC2_0246$3[14] @ 448
	.field  	4,32			; _PC2_0246$3[15] @ 480
	.field  	25,32			; _PC2_0246$3[16] @ 512
	.field  	19,32			; _PC2_0246$3[17] @ 544
	.field  	9,32			; _PC2_0246$3[18] @ 576
	.field  	1,32			; _PC2_0246$3[19] @ 608
	.field  	-1,32			; _PC2_0246$3[20] @ 640
	.field  	-1,32			; _PC2_0246$3[21] @ 672
	.field  	12,32			; _PC2_0246$3[22] @ 704
	.field  	7,32			; _PC2_0246$3[23] @ 736
	.field  	17,32			; _PC2_0246$3[24] @ 768
	.field  	0,32			; _PC2_0246$3[25] @ 800
	.field  	22,32			; _PC2_0246$3[26] @ 832
	.field  	3,32			; _PC2_0246$3[27] @ 864
	.field  	-1,32			; _PC2_0246$3[28] @ 896
	.field  	-1,32			; _PC2_0246$3[29] @ 928
	.field  	46,32			; _PC2_0246$3[30] @ 960
	.field  	43,32			; _PC2_0246$3[31] @ 992

	.sect	".const"
	.align	8
_PC2_1357$4:
	.field  	-1,32			; _PC2_1357$4[0] @ 0
	.field  	-1,32			; _PC2_1357$4[1] @ 32
	.field  	57,32			; _PC2_1357$4[2] @ 64
	.field  	32,32			; _PC2_1357$4[3] @ 96
	.field  	45,32			; _PC2_1357$4[4] @ 128
	.field  	54,32			; _PC2_1357$4[5] @ 160
	.field  	39,32			; _PC2_1357$4[6] @ 192
	.field  	50,32			; _PC2_1357$4[7] @ 224
	.field  	-1,32			; _PC2_1357$4[8] @ 256
	.field  	-1,32			; _PC2_1357$4[9] @ 288
	.field  	44,32			; _PC2_1357$4[10] @ 320
	.field  	53,32			; _PC2_1357$4[11] @ 352
	.field  	33,32			; _PC2_1357$4[12] @ 384
	.field  	40,32			; _PC2_1357$4[13] @ 416
	.field  	47,32			; _PC2_1357$4[14] @ 448
	.field  	58,32			; _PC2_1357$4[15] @ 480
	.field  	-1,32			; _PC2_1357$4[16] @ 512
	.field  	-1,32			; _PC2_1357$4[17] @ 544
	.field  	26,32			; _PC2_1357$4[18] @ 576
	.field  	16,32			; _PC2_1357$4[19] @ 608
	.field  	5,32			; _PC2_1357$4[20] @ 640
	.field  	11,32			; _PC2_1357$4[21] @ 672
	.field  	23,32			; _PC2_1357$4[22] @ 704
	.field  	8,32			; _PC2_1357$4[23] @ 736
	.field  	-1,32			; _PC2_1357$4[24] @ 768
	.field  	-1,32			; _PC2_1357$4[25] @ 800
	.field  	10,32			; _PC2_1357$4[26] @ 832
	.field  	14,32			; _PC2_1357$4[27] @ 864
	.field  	6,32			; _PC2_1357$4[28] @ 896
	.field  	20,32			; _PC2_1357$4[29] @ 928
	.field  	27,32			; _PC2_1357$4[30] @ 960
	.field  	24,32			; _PC2_1357$4[31] @ 992

	.sect	".const"
	.align	8
_leftshifts$5:
	.field  	1,32			; _leftshifts$5[0] @ 0
	.field  	1,32			; _leftshifts$5[1] @ 32
	.field  	2,32			; _leftshifts$5[2] @ 64
	.field  	2,32			; _leftshifts$5[3] @ 96
	.field  	2,32			; _leftshifts$5[4] @ 128
	.field  	2,32			; _leftshifts$5[5] @ 160
	.field  	2,32			; _leftshifts$5[6] @ 192
	.field  	2,32			; _leftshifts$5[7] @ 224
	.field  	1,32			; _leftshifts$5[8] @ 256
	.field  	2,32			; _leftshifts$5[9] @ 288
	.field  	2,32			; _leftshifts$5[10] @ 320
	.field  	2,32			; _leftshifts$5[11] @ 352
	.field  	2,32			; _leftshifts$5[12] @ 384
	.field  	2,32			; _leftshifts$5[13] @ 416
	.field  	2,32			; _leftshifts$5[14] @ 448
	.field  	1,32			; _leftshifts$5[15] @ 480

;	D:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI2922 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI2924 
	.sect	".text"

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("des_encipher"), DW_AT_symbol_name("_des_encipher")
	.dwattr DW$24, DW_AT_low_pc(_des_encipher)
	.dwattr DW$24, DW_AT_high_pc(0x00)
	.dwattr DW$24, DW_AT_begin_file("sshdes.c")
	.dwattr DW$24, DW_AT_begin_line(0x20b)
	.dwattr DW$24, DW_AT_begin_column(0x0d)
	.dwattr DW$24, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$24, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",525,1

;******************************************************************************
;* FUNCTION NAME: _des_encipher                                               *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A8,A9,B4,B5,B6,B7,B8,B9,A16,A17,B16,  *
;*                           B17,B18,B19,B20,B21,B22,B23,B24                  *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,B3,B4,B5,B6,B7,B8,B9,A16,A17,   *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_des_encipher:
;** --------------------------------------------------------------------------*
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$25, DW_AT_type(*DW$T$53)
	.dwattr DW$25, DW_AT_location[DW_OP_reg4]
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("L"), DW_AT_symbol_name("_L")
	.dwattr DW$26, DW_AT_type(*DW$T$19)
	.dwattr DW$26, DW_AT_location[DW_OP_reg20]
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("R"), DW_AT_symbol_name("_R")
	.dwattr DW$27, DW_AT_type(*DW$T$19)
	.dwattr DW$27, DW_AT_location[DW_OP_reg6]
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sched"), DW_AT_symbol_name("_sched")
	.dwattr DW$28, DW_AT_type(*DW$T$50)
	.dwattr DW$28, DW_AT_location[DW_OP_reg22]
;** 528	-----------------------    C$48 = (L>>4^R)&0xf0f0f0fu;
;** 528	-----------------------    C$47 = R^C$48;
;** 528	-----------------------    C$46 = C$48<<4^L;
;** 528	-----------------------    C$45 = (unsigned short)(C$46>>16^C$47);
;** 528	-----------------------    C$44 = (unsigned)C$45^C$47;
;** 528	-----------------------    C$42 = (unsigned)C$45<<16^C$46;
;** 528	-----------------------    C$43 = (C$44>>2^C$42)&0x33333333u;
;** 528	-----------------------    R = C$43*4u^C$44;
;** 528	-----------------------    L = C$42^C$43;
;** 528	-----------------------    swap = (R>>8^L)&0xff00ffu;
;** 528	-----------------------    R ^= swap<<8;
;** 528	-----------------------    L ^= swap;
;** 528	-----------------------    swap = (L>>1^R)&0x55555555u;
;** 528	-----------------------    L ^= swap*2u;
;** 528	-----------------------    R ^= swap;
;** 530	-----------------------    L = _rotl(L, 1);
;** 531	-----------------------    R = _rotl(R, 1);
;** 533	-----------------------    C$41 = *((unsigned (* const)[16])sched+64)^R;
;** 533	-----------------------    C$2 = &SPboxes;
;** 533	-----------------------    C$11 = &C$2[448];
;** 533	-----------------------    C$40 = _rotl(*(unsigned * const)sched^R, 28);
;** 533	-----------------------    C$10 = &SPboxes[384];
;** 533	-----------------------    C$9 = &SPboxes[320];
;** 533	-----------------------    C$8 = &SPboxes[256];
;** 533	-----------------------    C$7 = &SPboxes[192];
;** 533	-----------------------    C$6 = &SPboxes[128];
;** 533	-----------------------    C$4 = &SPboxes[64];
;** 533	-----------------------    L ^= C$2[_extu(C$40, 2u, 26u)]|C$4[_extu(C$41, 2u, 26u)]|C$6[_extu(C$40, 10u, 26u)]|C$7[_extu(C$41, 10u, 26u)]|C$8[_extu(C$40, 18u, 26u)]|C$9[_extu(C$41, 18u, 26u)]|C$10[_extu(C$40, 26u, 26u)]|C$11[_extu(C$41, 26u, 26u)];
;** 534	-----------------------    C$39 = *((unsigned (* const)[16])sched+68)^L;
;** 534	-----------------------    C$38 = _rotl(*((unsigned * const)sched+4)^L, 28);
;** 534	-----------------------    R ^= C$2[_extu(C$38, 2u, 26u)]|C$4[_extu(C$39, 2u, 26u)]|C$6[_extu(C$38, 10u, 26u)]|C$7[_extu(C$39, 10u, 26u)]|C$8[_extu(C$38, 18u, 26u)]|C$9[_extu(C$39, 18u, 26u)]|C$10[_extu(C$38, 26u, 26u)]|C$11[_extu(C$39, 26u, 26u)];
;** 535	-----------------------    C$37 = *((unsigned (* const)[16])sched+72)^R;
;** 535	-----------------------    C$36 = _rotl(*((unsigned * const)sched+8)^R, 28);
;** 535	-----------------------    L ^= C$2[_extu(C$36, 2u, 26u)]|C$4[_extu(C$37, 2u, 26u)]|C$6[_extu(C$36, 10u, 26u)]|C$7[_extu(C$37, 10u, 26u)]|C$8[_extu(C$36, 18u, 26u)]|C$9[_extu(C$37, 18u, 26u)]|C$10[_extu(C$36, 26u, 26u)]|C$11[_extu(C$37, 26u, 26u)];
;** 536	-----------------------    C$35 = *((unsigned (* const)[16])sched+76)^L;
;** 536	-----------------------    C$34 = _rotl(*((unsigned * const)sched+12)^L, 28);
;** 536	-----------------------    R ^= C$2[_extu(C$34, 2u, 26u)]|C$4[_extu(C$35, 2u, 26u)]|C$6[_extu(C$34, 10u, 26u)]|C$7[_extu(C$35, 10u, 26u)]|C$8[_extu(C$34, 18u, 26u)]|C$9[_extu(C$35, 18u, 26u)]|C$10[_extu(C$34, 26u, 26u)]|C$11[_extu(C$35, 26u, 26u)];
;** 537	-----------------------    C$33 = *((unsigned (* const)[16])sched+80)^R;
;** 537	-----------------------    C$32 = _rotl(*((unsigned * const)sched+16)^R, 28);
;** 537	-----------------------    L ^= C$2[_extu(C$32, 2u, 26u)]|C$4[_extu(C$33, 2u, 26u)]|C$6[_extu(C$32, 10u, 26u)]|C$7[_extu(C$33, 10u, 26u)]|C$8[_extu(C$32, 18u, 26u)]|C$9[_extu(C$33, 18u, 26u)]|C$10[_extu(C$32, 26u, 26u)]|C$11[_extu(C$33, 26u, 26u)];
;** 538	-----------------------    C$31 = *((unsigned (* const)[16])sched+84)^L;
;** 538	-----------------------    C$30 = _rotl(*((unsigned * const)sched+20)^L, 28);
;** 538	-----------------------    R ^= C$2[_extu(C$30, 2u, 26u)]|C$4[_extu(C$31, 2u, 26u)]|C$6[_extu(C$30, 10u, 26u)]|C$7[_extu(C$31, 10u, 26u)]|C$8[_extu(C$30, 18u, 26u)]|C$9[_extu(C$31, 18u, 26u)]|C$10[_extu(C$30, 26u, 26u)]|C$11[_extu(C$31, 26u, 26u)];
;** 539	-----------------------    C$29 = *((unsigned (* const)[16])sched+88)^R;
;** 539	-----------------------    C$28 = _rotl(*((unsigned * const)sched+24)^R, 28);
;** 539	-----------------------    L ^= C$2[_extu(C$28, 2u, 26u)]|C$4[_extu(C$29, 2u, 26u)]|C$6[_extu(C$28, 10u, 26u)]|C$7[_extu(C$29, 10u, 26u)]|C$8[_extu(C$28, 18u, 26u)]|C$9[_extu(C$29, 18u, 26u)]|C$10[_extu(C$28, 26u, 26u)]|C$11[_extu(C$29, 26u, 26u)];
;** 540	-----------------------    C$27 = *((unsigned (* const)[16])sched+92)^L;
;** 540	-----------------------    C$26 = _rotl(*((unsigned * const)sched+28)^L, 28);
;** 540	-----------------------    R ^= C$2[_extu(C$26, 2u, 26u)]|C$4[_extu(C$27, 2u, 26u)]|C$6[_extu(C$26, 10u, 26u)]|C$7[_extu(C$27, 10u, 26u)]|C$8[_extu(C$26, 18u, 26u)]|C$9[_extu(C$27, 18u, 26u)]|C$10[_extu(C$26, 26u, 26u)]|C$11[_extu(C$27, 26u, 26u)];
;** 541	-----------------------    C$25 = *((unsigned (* const)[16])sched+96)^R;
;** 541	-----------------------    C$24 = _rotl(*((unsigned * const)sched+32)^R, 28);
;** 541	-----------------------    L ^= C$2[_extu(C$24, 2u, 26u)]|C$4[_extu(C$25, 2u, 26u)]|C$6[_extu(C$24, 10u, 26u)]|C$7[_extu(C$25, 10u, 26u)]|C$8[_extu(C$24, 18u, 26u)]|C$9[_extu(C$25, 18u, 26u)]|C$10[_extu(C$24, 26u, 26u)]|C$11[_extu(C$25, 26u, 26u)];
;** 542	-----------------------    C$23 = *((unsigned (* const)[16])sched+100)^L;
;** 542	-----------------------    C$22 = _rotl(*((unsigned * const)sched+36)^L, 28);
;** 542	-----------------------    R ^= C$2[_extu(C$22, 2u, 26u)]|C$4[_extu(C$23, 2u, 26u)]|C$6[_extu(C$22, 10u, 26u)]|C$7[_extu(C$23, 10u, 26u)]|C$8[_extu(C$22, 18u, 26u)]|C$9[_extu(C$23, 18u, 26u)]|C$10[_extu(C$22, 26u, 26u)]|C$11[_extu(C$23, 26u, 26u)];
;** 543	-----------------------    C$21 = *((unsigned (* const)[16])sched+104)^R;
;** 543	-----------------------    C$20 = _rotl(*((unsigned * const)sched+40)^R, 28);
;** 543	-----------------------    L ^= C$2[_extu(C$20, 2u, 26u)]|C$4[_extu(C$21, 2u, 26u)]|C$6[_extu(C$20, 10u, 26u)]|C$7[_extu(C$21, 10u, 26u)]|C$8[_extu(C$20, 18u, 26u)]|C$9[_extu(C$21, 18u, 26u)]|C$10[_extu(C$20, 26u, 26u)]|C$11[_extu(C$21, 26u, 26u)];
;** 544	-----------------------    C$19 = *((unsigned (* const)[16])sched+108)^L;
;** 544	-----------------------    C$18 = _rotl(*((unsigned * const)sched+44)^L, 28);
;** 544	-----------------------    R ^= C$2[_extu(C$18, 2u, 26u)]|C$4[_extu(C$19, 2u, 26u)]|C$6[_extu(C$18, 10u, 26u)]|C$7[_extu(C$19, 10u, 26u)]|C$8[_extu(C$18, 18u, 26u)]|C$9[_extu(C$19, 18u, 26u)]|C$10[_extu(C$18, 26u, 26u)]|C$11[_extu(C$19, 26u, 26u)];
;** 545	-----------------------    C$17 = *((unsigned (* const)[16])sched+112)^R;
;** 545	-----------------------    C$16 = _rotl(*((unsigned * const)sched+48)^R, 28);
;** 545	-----------------------    L ^= C$2[_extu(C$16, 2u, 26u)]|C$4[_extu(C$17, 2u, 26u)]|C$6[_extu(C$16, 10u, 26u)]|C$7[_extu(C$17, 10u, 26u)]|C$8[_extu(C$16, 18u, 26u)]|C$9[_extu(C$17, 18u, 26u)]|C$10[_extu(C$16, 26u, 26u)]|C$11[_extu(C$17, 26u, 26u)];
           SHRU    .S2     B4,4,B5           ; |528| 
           MVKL    .S1     0xf0f0f0f,A3      ; |528| 

           XOR     .L1X    A6,B5,A5          ; |528| 
||         MVKH    .S1     0xf0f0f0f,A3      ; |528| 

           AND     .L1     A3,A5,A3          ; |528| 
           SHL     .S1     A3,4,A5           ; |528| 
           XOR     .L1     A3,A6,A3          ; |528| 
           XOR     .L2X    B4,A5,B4          ; |528| 
           SHRU    .S2     B4,16,B5          ; |528| 
           XOR     .L2X    A3,B5,B5          ; |528| 
           MVKL    .S1     _SPboxes+512,A8   ; |533| 

           EXTU    .S2     B5,16,16,B5       ; |528| 
||         SHL     .S1X    B5,16,A5          ; |528| 

           XOR     .L1X    B4,A5,A3          ; |528| 
||         XOR     .L2X    A3,B5,B4          ; |528| 

           SHRU    .S2     B4,2,B7           ; |528| 
           MVKL    .S2     0x33333333,B5     ; |528| 

           MVKH    .S2     0x33333333,B5     ; |528| 
||         XOR     .L2X    A3,B7,B7          ; |528| 

           AND     .L2     B5,B7,B5          ; |528| 
           SHL     .S2     B5,2,B7           ; |528| 
           XOR     .L2     B4,B7,B4          ; |528| 

           XOR     .L2X    B5,A3,B5          ; |528| 
||         SHRU    .S2     B4,8,B7           ; |528| 

           MVKL    .S1     0xff00ff,A3       ; |528| 
||         XOR     .L2     B5,B7,B7          ; |528| 

           MVKH    .S1     0xff00ff,A3       ; |528| 
           AND     .L1X    A3,B7,A3          ; |528| 

           SHL     .S1     A3,8,A3           ; |528| 
||         MVKL    .S2     0x55555555,B5     ; |528| 
||         XOR     .L1X    A3,B5,A9          ; |528| 

           SHRU    .S1     A9,1,A5           ; |528| 
||         XOR     .L1X    A3,B4,A3          ; |528| 
||         MVKH    .S2     0x55555555,B5     ; |528| 

           XOR     .L1     A3,A5,A5          ; |528| 

           AND     .L1X    B5,A5,A7          ; |528| 
||         LDW     .D2T2   *+B6(64),B4       ; |533| 

           XOR     .L1     A7,A3,A3          ; |528| 
||         LDW     .D2T2   *B6,B7            ; |533| 

           ROTL    .M1     A3,1,A17          ; |531| 
           MVKL    .S2     _SPboxes+256,B8   ; |533| 
           MVKL    .S1     _SPboxes,A6       ; |533| 
           XOR     .L2X    A17,B4,B17        ; |533| 
           XOR     .L2X    A17,B7,B4         ; |533| 

           ROTL    .M2     B4,28,B16         ; |533| 
||         MVKH    .S2     _SPboxes+256,B8   ; |533| 

           MVKL    .S2     _SPboxes+768,B5   ; |533| 
||         MVKH    .S1     _SPboxes,A6       ; |533| 

           EXTU    .S2     B16,2,26,B18      ; |533| 
||         MVKL    .S1     _SPboxes+1280,A16 ; |533| 

           EXTU    .S2     B17,2,26,B4       ; |533| 
||         MV      .L2X    A6,B9             ; |533| 
||         MVKH    .S1     _SPboxes+512,A8   ; |533| 

           MVKH    .S2     _SPboxes+768,B5   ; |533| 
||         LDW     .D2T2   *+B9[B18],B21     ; |533| 
||         MVKH    .S1     _SPboxes+1280,A16 ; |533| 

           LDW     .D2T2   *+B8[B4],B19      ; |533| 
||         EXTU    .S2     B16,10,26,B16     ; |533| 
||         MV      .L1X    B16,A8            ; |533| Define a twin register
||         MV      .L2X    A8,B7             ; |533| 
||         MVKL    .S1     _SPboxes+1024,A5  ; |533| 

           MVKH    .S1     _SPboxes+1024,A5  ; |533| 
||         EXTU    .S2     B17,10,26,B16     ; |533| 
||         LDW     .D2T2   *+B7[B16],B18     ; |533| 

           LDW     .D2T2   *+B5[B16],B20     ; |533| 
||         MVKL    .S1     _SPboxes+1536,A3  ; |533| 

           EXTU    .S1     A8,18,26,A16      ; |533| 
||         MV      .L2X    A16,B4            ; |533| 

           LDW     .D1T1   *+A5[A16],A16     ; |533| 
||         EXTU    .S2     B17,18,26,B16     ; |533| 
||         MVKH    .S1     _SPboxes+1536,A3  ; |533| 

           MVK     .S2     1792,B16          ; |533| 
||         LDW     .D2T2   *+B4[B16],B19     ; |533| 
||         EXTU    .S1     A8,26,26,A8       ; |533| 
||         OR      .L2     B19,B21,B21       ; |533| 

           LDW     .D1T1   *+A3[A8],A8       ; |533| 
||         OR      .L2     B18,B21,B17       ; |533| 
||         EXTU    .S2     B17,26,26,B16     ; |533| 
||         ADD     .D2X    B16,A6,B18        ; |533| 

           LDW     .D2T2   *+B18[B16],B16    ; |533| 
||         OR      .L2     B20,B17,B17       ; |533| 

           ADD     .S1     A7,A7,A7          ; |528| 
           OR      .L1X    A16,B17,A16       ; |533| 

           LDW     .D2T2   *+B6(4),B17       ; |534| 
||         OR      .L1X    B19,A16,A9        ; |533| 
||         XOR     .S1     A7,A9,A7          ; |528| 

           OR      .L1     A8,A9,A8          ; |533| 
||         ROTL    .M1     A7,1,A7           ; |530| 

           OR      .L1X    B16,A8,A8         ; |533| 

           LDW     .D2T2   *+B6(68),B19      ; |534| 
||         XOR     .L1     A8,A7,A9          ; |533| 

           NOP             1
           XOR     .L2X    A9,B17,B16        ; |534| 
           ROTL    .M2     B16,28,B16        ; |534| 
           NOP             1

           XOR     .L2X    A9,B19,B17        ; |534| 
||         EXTU    .S2     B16,2,26,B20      ; |534| 

           LDW     .D2T2   *+B9[B20],B21     ; |534| 
||         EXTU    .S2     B17,2,26,B19      ; |534| 

           EXTU    .S2     B16,10,26,B16     ; |534| 
||         LDW     .D2T2   *+B8[B19],B19     ; |534| 
||         MV      .L1X    B16,A7            ; |534| Define a twin register

           EXTU    .S2     B17,10,26,B16     ; |534| 
||         LDW     .D2T2   *+B7[B16],B22     ; |534| 

           LDW     .D2T2   *+B5[B16],B20     ; |534| 
           EXTU    .S1     A7,18,26,A8       ; |534| 

           LDW     .D1T1   *+A5[A8],A16      ; |534| 
||         EXTU    .S2     B17,18,26,B16     ; |534| 

           LDW     .D2T2   *+B4[B16],B16     ; |534| 
||         OR      .L2     B19,B21,B19       ; |534| 
||         EXTU    .S1     A7,26,26,A7       ; |534| 

           LDW     .D1T1   *+A3[A7],A8       ; |534| 
||         OR      .L2     B22,B19,B19       ; |534| 
||         EXTU    .S2     B17,26,26,B17     ; |534| 

           LDW     .D2T2   *+B18[B17],B17    ; |534| 
||         OR      .L2     B20,B19,B19       ; |534| 

           NOP             1
           OR      .L1X    A16,B19,A7        ; |534| 

           LDW     .D2T2   *+B6(8),B16       ; |535| 
||         OR      .L1X    B16,A7,A7         ; |534| 

           OR      .L1     A8,A7,A7          ; |534| 
           OR      .L1X    B17,A7,A7         ; |534| 

           XOR     .L1     A7,A17,A8         ; |534| 
||         LDW     .D2T2   *+B6(72),B17      ; |535| 

           NOP             1
           XOR     .L2X    A8,B16,B16        ; |535| 
           ROTL    .M2     B16,28,B16        ; |535| 
           NOP             1

           XOR     .L2X    A8,B17,B17        ; |535| 
||         EXTU    .S2     B16,2,26,B20      ; |535| 

           EXTU    .S2     B17,2,26,B19      ; |535| 
||         LDW     .D2T2   *+B9[B20],B21     ; |535| 

           EXTU    .S2     B16,10,26,B16     ; |535| 
||         MV      .L1X    B16,A7            ; |535| Define a twin register
||         LDW     .D2T2   *+B8[B19],B19     ; |535| 

           EXTU    .S2     B17,10,26,B16     ; |535| 
||         LDW     .D2T2   *+B7[B16],B22     ; |535| 

           LDW     .D2T2   *+B5[B16],B20     ; |535| 
           EXTU    .S1     A7,18,26,A16      ; |535| 

           EXTU    .S2     B17,18,26,B16     ; |535| 
||         LDW     .D1T1   *+A5[A16],A16     ; |535| 

           EXTU    .S1     A7,26,26,A7       ; |535| 
||         OR      .L2     B19,B21,B19       ; |535| 
||         LDW     .D2T2   *+B4[B16],B16     ; |535| 

           OR      .L2     B22,B19,B19       ; |535| 
||         EXTU    .S2     B17,26,26,B17     ; |535| 
||         LDW     .D1T1   *+A3[A7],A7       ; |535| 

           LDW     .D2T2   *+B18[B17],B19    ; |535| 
||         OR      .L2     B20,B19,B17       ; |535| 

           NOP             1
           OR      .L1X    A16,B17,A16       ; |535| 

           LDW     .D2T2   *+B6(12),B16      ; |536| 
||         OR      .L1X    B16,A16,A16       ; |535| 

           OR      .L1     A7,A16,A7         ; |535| 
           OR      .L1X    B19,A7,A7         ; |535| 

           LDW     .D2T2   *+B6(76),B17      ; |536| 
||         XOR     .L1     A7,A9,A9          ; |535| 

           NOP             1
           XOR     .L2X    A9,B16,B16        ; |536| 
           ROTL    .M2     B16,28,B16        ; |536| 
           NOP             1

           EXTU    .S2     B16,2,26,B20      ; |536| 
||         XOR     .L2X    A9,B17,B17        ; |536| 

           LDW     .D2T2   *+B9[B20],B21     ; |536| 
||         EXTU    .S2     B17,2,26,B19      ; |536| 

           EXTU    .S2     B16,10,26,B16     ; |536| 
||         LDW     .D2T2   *+B8[B19],B19     ; |536| 
||         MV      .L1X    B16,A7            ; |536| Define a twin register

           EXTU    .S2     B17,10,26,B16     ; |536| 
||         LDW     .D2T2   *+B7[B16],B22     ; |536| 

           LDW     .D2T2   *+B5[B16],B20     ; |536| 
           EXTU    .S1     A7,18,26,A16      ; |536| 

           LDW     .D1T1   *+A5[A16],A17     ; |536| 
||         EXTU    .S2     B17,18,26,B16     ; |536| 

           LDW     .D2T2   *+B4[B16],B19     ; |536| 
||         OR      .L2     B19,B21,B16       ; |536| 
||         EXTU    .S1     A7,26,26,A7       ; |536| 

           LDW     .D1T1   *+A3[A7],A16      ; |536| 
||         OR      .L2     B22,B16,B16       ; |536| 
||         EXTU    .S2     B17,26,26,B17     ; |536| 

           LDW     .D2T2   *+B18[B17],B16    ; |536| 
||         OR      .L2     B20,B16,B17       ; |536| 

           NOP             1
           OR      .L1X    A17,B17,A7        ; |536| 

           OR      .L1X    B19,A7,A7         ; |536| 
||         LDW     .D2T2   *+B6(16),B17      ; |537| 

           OR      .L1     A16,A7,A7         ; |536| 
           OR      .L1X    B16,A7,A7         ; |536| 

           XOR     .L1     A7,A8,A8          ; |536| 
||         LDW     .D2T2   *+B6(80),B19      ; |537| 

           NOP             1
           XOR     .L2X    A8,B17,B16        ; |537| 
           ROTL    .M2     B16,28,B16        ; |537| 
           NOP             1

           EXTU    .S2     B16,2,26,B20      ; |537| 
||         XOR     .L2X    A8,B19,B17        ; |537| 

           EXTU    .S2     B17,2,26,B19      ; |537| 
||         LDW     .D2T2   *+B9[B20],B22     ; |537| 

           EXTU    .S2     B16,10,26,B16     ; |537| 
||         MV      .L1X    B16,A7            ; |537| Define a twin register
||         LDW     .D2T2   *+B8[B19],B19     ; |537| 

           EXTU    .S2     B17,10,26,B16     ; |537| 
||         LDW     .D2T2   *+B7[B16],B21     ; |537| 

           LDW     .D2T2   *+B5[B16],B20     ; |537| 
           EXTU    .S1     A7,18,26,A16      ; |537| 

           EXTU    .S2     B17,18,26,B16     ; |537| 
||         LDW     .D1T1   *+A5[A16],A16     ; |537| 

           EXTU    .S1     A7,26,26,A7       ; |537| 
||         LDW     .D2T2   *+B4[B16],B19     ; |537| 
||         OR      .L2     B19,B22,B16       ; |537| 

           OR      .L2     B21,B16,B17       ; |537| 
||         EXTU    .S2     B17,26,26,B16     ; |537| 
||         LDW     .D1T1   *+A3[A7],A7       ; |537| 

           OR      .L2     B20,B17,B17       ; |537| 
||         LDW     .D2T2   *+B18[B16],B16    ; |537| 

           NOP             1
           OR      .L1X    A16,B17,A16       ; |537| 

           LDW     .D2T2   *+B6(20),B17      ; |538| 
||         OR      .L1X    B19,A16,A16       ; |537| 

           LDW     .D2T2   *+B6(84),B19      ; |538| 
||         OR      .L1     A7,A16,A7         ; |537| 

           OR      .L1X    B16,A7,A7         ; |537| 
           XOR     .L1     A7,A9,A9          ; |537| 
           NOP             1
           XOR     .L2X    A9,B17,B16        ; |538| 

           XOR     .L2X    A9,B19,B17        ; |538| 
||         ROTL    .M2     B16,28,B16        ; |538| 

           EXTU    .S2     B17,2,26,B19      ; |538| 

           EXTU    .S2     B16,2,26,B19      ; |538| 
||         LDW     .D2T2   *+B8[B19],B21     ; |538| 

           EXTU    .S2     B16,10,26,B16     ; |538| 
||         MV      .L1X    B16,A7            ; |538| Define a twin register
||         LDW     .D2T2   *+B9[B19],B22     ; |538| 

           EXTU    .S2     B17,10,26,B16     ; |538| 
||         LDW     .D2T2   *+B7[B16],B20     ; |538| 

           LDW     .D2T2   *+B5[B16],B19     ; |538| 
           EXTU    .S1     A7,18,26,A16      ; |538| 

           EXTU    .S2     B17,18,26,B16     ; |538| 
||         LDW     .D1T1   *+A5[A16],A16     ; |538| 

           EXTU    .S1     A7,26,26,A7       ; |538| 
||         OR      .L2     B21,B22,B21       ; |538| 
||         LDW     .D2T2   *+B4[B16],B16     ; |538| 

           OR      .L2     B20,B21,B20       ; |538| 
||         EXTU    .S2     B17,26,26,B17     ; |538| 
||         LDW     .D1T1   *+A3[A7],A7       ; |538| 

           OR      .L2     B19,B20,B19       ; |538| 
||         LDW     .D2T2   *+B18[B17],B17    ; |538| 

           NOP             1
           OR      .L1X    A16,B19,A16       ; |538| 
           OR      .L1X    B16,A16,A16       ; |538| 

           LDW     .D2T2   *+B6(24),B16      ; |539| 
||         OR      .L1     A7,A16,A7         ; |538| 

           LDW     .D2T2   *+B6(88),B17      ; |539| 
||         OR      .L1X    B17,A7,A7         ; |538| 

           NOP             1
           XOR     .L1     A7,A8,A8          ; |538| 
           NOP             1
           XOR     .L2X    A8,B16,B16        ; |539| 

           XOR     .L2X    A8,B17,B17        ; |539| 
||         ROTL    .M2     B16,28,B16        ; |539| 

           EXTU    .S2     B17,2,26,B19      ; |539| 

           EXTU    .S2     B16,2,26,B19      ; |539| 
||         LDW     .D2T2   *+B8[B19],B20     ; |539| 

           LDW     .D2T2   *+B9[B19],B16     ; |539| 
||         EXTU    .S2     B16,10,26,B19     ; |539| 
||         MV      .L1X    B16,A7            ; |539| Define a twin register

           EXTU    .S2     B17,10,26,B21     ; |539| 
||         LDW     .D2T2   *+B7[B19],B19     ; |539| 

           LDW     .D2T2   *+B5[B21],B22     ; |539| 
           EXTU    .S1     A7,18,26,A16      ; |539| 

           EXTU    .S2     B17,18,26,B21     ; |539| 
||         LDW     .D1T1   *+A5[A16],A16     ; |539| 

           LDW     .D2T2   *+B4[B21],B20     ; |539| 
||         EXTU    .S1     A7,26,26,A7       ; |539| 
||         OR      .L2     B20,B16,B16       ; |539| 

           EXTU    .S2     B17,26,26,B17     ; |539| 
||         OR      .L2     B19,B16,B16       ; |539| 
||         LDW     .D1T1   *+A3[A7],A7       ; |539| 

           OR      .L2     B22,B16,B16       ; |539| 
||         LDW     .D2T2   *+B18[B17],B17    ; |539| 

           NOP             1
           OR      .L1X    A16,B16,A16       ; |539| 

           LDW     .D2T2   *+B6(28),B16      ; |540| 
||         OR      .L1X    B20,A16,A16       ; |539| 

           OR      .L1     A7,A16,A7         ; |539| 
           OR      .L1X    B17,A7,A7         ; |539| 

           LDW     .D2T2   *+B6(92),B17      ; |540| 
||         XOR     .L1     A7,A9,A9          ; |539| 

           NOP             1
           XOR     .L2X    A9,B16,B16        ; |540| 
           ROTL    .M2     B16,28,B16        ; |540| 
           NOP             1

           EXTU    .S2     B16,2,26,B20      ; |540| 
||         XOR     .L2X    A9,B17,B17        ; |540| 

           LDW     .D2T2   *+B9[B20],B22     ; |540| 
||         EXTU    .S2     B17,2,26,B19      ; |540| 

           EXTU    .S2     B16,10,26,B16     ; |540| 
||         LDW     .D2T2   *+B8[B19],B19     ; |540| 
||         MV      .L1X    B16,A7            ; |540| Define a twin register

           EXTU    .S2     B17,10,26,B16     ; |540| 
||         LDW     .D2T2   *+B7[B16],B21     ; |540| 

           LDW     .D2T2   *+B5[B16],B20     ; |540| 
           EXTU    .S1     A7,18,26,A16      ; |540| 

           LDW     .D1T1   *+A5[A16],A16     ; |540| 
||         EXTU    .S2     B17,18,26,B16     ; |540| 

           LDW     .D2T2   *+B4[B16],B19     ; |540| 
||         OR      .L2     B19,B22,B16       ; |540| 
||         EXTU    .S1     A7,26,26,A7       ; |540| 

           LDW     .D1T1   *+A3[A7],A7       ; |540| 
||         OR      .L2     B21,B16,B17       ; |540| 
||         EXTU    .S2     B17,26,26,B16     ; |540| 

           LDW     .D2T2   *+B18[B16],B16    ; |540| 
||         OR      .L2     B20,B17,B17       ; |540| 

           NOP             1
           OR      .L1X    A16,B17,A16       ; |540| 

           OR      .L1X    B19,A16,A16       ; |540| 
||         LDW     .D2T2   *+B6(32),B17      ; |541| 

           OR      .L1     A7,A16,A7         ; |540| 
||         LDW     .D2T2   *+B6(96),B19      ; |541| 

           OR      .L1X    B16,A7,A7         ; |540| 
           XOR     .L1     A7,A8,A8          ; |540| 
           NOP             1
           XOR     .L2X    A8,B17,B16        ; |541| 

           ROTL    .M2     B16,28,B16        ; |541| 
||         XOR     .L2X    A8,B19,B17        ; |541| 

           EXTU    .S2     B17,2,26,B19      ; |541| 

           EXTU    .S2     B16,2,26,B19      ; |541| 
||         LDW     .D2T2   *+B8[B19],B20     ; |541| 

           LDW     .D2T2   *+B9[B19],B16     ; |541| 
||         EXTU    .S2     B16,10,26,B19     ; |541| 
||         MV      .L1X    B16,A7            ; |541| Define a twin register

           LDW     .D2T2   *+B7[B19],B19     ; |541| 
||         EXTU    .S2     B17,10,26,B21     ; |541| 

           LDW     .D2T2   *+B5[B21],B22     ; |541| 
           EXTU    .S1     A7,18,26,A16      ; |541| 

           LDW     .D1T1   *+A5[A16],A16     ; |541| 
||         EXTU    .S2     B17,18,26,B21     ; |541| 

           LDW     .D2T2   *+B4[B21],B20     ; |541| 
||         OR      .L2     B20,B16,B16       ; |541| 
||         EXTU    .S1     A7,26,26,A7       ; |541| 

           LDW     .D1T1   *+A3[A7],A7       ; |541| 
||         OR      .L2     B19,B16,B16       ; |541| 
||         EXTU    .S2     B17,26,26,B17     ; |541| 

           LDW     .D2T2   *+B18[B17],B17    ; |541| 
||         OR      .L2     B22,B16,B16       ; |541| 

           NOP             1
           OR      .L1X    A16,B16,A16       ; |541| 
           OR      .L1X    B20,A16,A16       ; |541| 

           OR      .L1     A7,A16,A7         ; |541| 
||         LDW     .D2T2   *+B6(36),B16      ; |542| 

           LDW     .D2T2   *+B6(100),B17     ; |542| 
||         OR      .L1X    B17,A7,A7         ; |541| 

           NOP             1
           XOR     .L1     A7,A9,A9          ; |541| 
           NOP             1
           XOR     .L2X    A9,B16,B16        ; |542| 

           ROTL    .M2     B16,28,B16        ; |542| 
||         XOR     .L2X    A9,B17,B17        ; |542| 

           EXTU    .S2     B17,2,26,B19      ; |542| 

           EXTU    .S2     B16,2,26,B19      ; |542| 
||         LDW     .D2T2   *+B8[B19],B20     ; |542| 

           LDW     .D2T2   *+B9[B19],B16     ; |542| 
||         EXTU    .S2     B16,10,26,B19     ; |542| 
||         MV      .L1X    B16,A7            ; |542| Define a twin register

           LDW     .D2T2   *+B7[B19],B19     ; |542| 
||         EXTU    .S2     B17,10,26,B21     ; |542| 

           LDW     .D2T2   *+B5[B21],B22     ; |542| 
           EXTU    .S1     A7,18,26,A16      ; |542| 

           LDW     .D1T1   *+A5[A16],A16     ; |542| 
||         EXTU    .S2     B17,18,26,B21     ; |542| 

           LDW     .D2T2   *+B4[B21],B20     ; |542| 
||         OR      .L2     B20,B16,B16       ; |542| 
||         EXTU    .S1     A7,26,26,A7       ; |542| 

           LDW     .D1T1   *+A3[A7],A17      ; |542| 
||         OR      .L2     B19,B16,B16       ; |542| 
||         EXTU    .S2     B17,26,26,B17     ; |542| 

           LDW     .D2T2   *+B18[B17],B17    ; |542| 
||         OR      .L2     B22,B16,B16       ; |542| 

           NOP             1
           OR      .L1X    A16,B16,A7        ; |542| 

           OR      .L1X    B20,A7,A7         ; |542| 
||         LDW     .D2T2   *+B6(40),B16      ; |543| 

           OR      .L1     A17,A7,A7         ; |542| 
           OR      .L1X    B17,A7,A7         ; |542| 

           XOR     .L1     A7,A8,A8          ; |542| 
||         LDW     .D2T2   *+B6(104),B17     ; |543| 

           NOP             1
           XOR     .L2X    A8,B16,B16        ; |543| 
           ROTL    .M2     B16,28,B16        ; |543| 
           NOP             1

           XOR     .L2X    A8,B17,B17        ; |543| 
||         EXTU    .S2     B16,2,26,B20      ; |543| 

           EXTU    .S2     B17,2,26,B19      ; |543| 
||         LDW     .D2T2   *+B9[B20],B22     ; |543| 

           EXTU    .S2     B16,10,26,B16     ; |543| 
||         MV      .L1X    B16,A7            ; |543| Define a twin register
||         LDW     .D2T2   *+B8[B19],B19     ; |543| 

           EXTU    .S2     B17,10,26,B20     ; |543| 
||         LDW     .D2T2   *+B7[B16],B16     ; |543| 

           LDW     .D2T2   *+B5[B20],B21     ; |543| 
           EXTU    .S1     A7,18,26,A16      ; |543| 

           EXTU    .S2     B17,18,26,B20     ; |543| 
||         LDW     .D1T1   *+A5[A16],A16     ; |543| 

           EXTU    .S1     A7,26,26,A7       ; |543| 
||         LDW     .D2T2   *+B4[B20],B19     ; |543| 
||         OR      .L2     B19,B22,B20       ; |543| 

           OR      .L2     B16,B20,B16       ; |543| 
||         LDW     .D1T1   *+A3[A7],A7       ; |543| 

           OR      .L2     B21,B16,B17       ; |543| 
||         EXTU    .S2     B17,26,26,B16     ; |543| 

           LDW     .D2T2   *+B18[B16],B16    ; |543| 
           OR      .L1X    A16,B17,A16       ; |543| 

           OR      .L1X    B19,A16,A16       ; |543| 
||         LDW     .D2T2   *+B6(44),B20      ; |544| 

           OR      .L1     A7,A16,A7         ; |543| 
||         LDW     .D2T2   *+B6(108),B17     ; |544| 

           NOP             1
           OR      .L2X    B16,A7,B16        ; |543| 
           XOR     .L2X    B16,A9,B19        ; |543| 
           XOR     .L2     B19,B20,B16       ; |544| 

           ROTL    .M2     B16,28,B16        ; |544| 
||         XOR     .L2     B19,B17,B17       ; |544| 

           EXTU    .S2     B17,2,26,B20      ; |544| 

           EXTU    .S2     B16,2,26,B20      ; |544| 
||         LDW     .D2T2   *+B8[B20],B21     ; |544| 

           LDW     .D2T2   *+B9[B20],B16     ; |544| 
||         EXTU    .S2     B16,10,26,B20     ; |544| 
||         MV      .L1X    B16,A7            ; |544| Define a twin register

           LDW     .D2T2   *+B7[B20],B20     ; |544| 
||         EXTU    .S2     B17,10,26,B22     ; |544| 

           LDW     .D2T2   *+B5[B22],B22     ; |544| 
           EXTU    .S1     A7,18,26,A9       ; |544| 

           LDW     .D1T1   *+A5[A9],A9       ; |544| 
||         EXTU    .S2     B17,18,26,B23     ; |544| 

           LDW     .D2T2   *+B4[B23],B21     ; |544| 
||         OR      .L2     B21,B16,B16       ; |544| 
||         EXTU    .S1     A7,26,26,A7       ; |544| 

           LDW     .D1T1   *+A3[A7],A16      ; |544| 
||         OR      .L2     B20,B16,B16       ; |544| 
||         EXTU    .S2     B17,26,26,B17     ; |544| 

           OR      .L2     B22,B16,B16       ; |544| 
||         LDW     .D2T2   *+B18[B17],B20    ; |544| 

           LDW     .D2T2   *+B6(48),B17      ; |545| 
           OR      .L1X    A9,B16,A7         ; |544| 
           OR      .L1X    B21,A7,A7         ; |544| 
           OR      .L1     A16,A7,A7         ; |544| 

           LDW     .D2T2   *+B6(112),B16     ; |545| 
||         OR      .L1X    B20,A7,A7         ; |544| 

           XOR     .L1     A7,A8,A8          ; |544| 
           XOR     .L1X    A8,B17,A7         ; |545| 
           ROTL    .M1     A7,28,A7          ; |545| 
           MV      .L2X    A4,B21            ; |525| 
           XOR     .L2X    A8,B16,B16        ; |545| 

           EXTU    .S2     B16,2,26,B20      ; |545| 
||         EXTU    .S1     A7,2,26,A9        ; |545| 
||         MV      .L2X    A7,B17            ; |545| Define a twin register

           EXTU    .S2     B17,10,26,B20     ; |545| 
||         LDW     .D2T2   *+B8[B20],B17     ; |545| 
||         LDW     .D1T1   *+A6[A9],A6       ; |545| 

           LDW     .D2T2   *+B7[B20],B20     ; |545| 
           NOP             3

           EXTU    .S2     B16,10,26,B17     ; |545| 
||         OR      .L1X    B17,A6,A4         ; |545| 

           OR      .L1X    B20,A4,A4         ; |545| 
||         LDW     .D2T1   *+B5[B17],A6      ; |545| 

;** --------------------------------------------------------------------------*
;** 546	-----------------------    C$15 = *((unsigned (* const)[16])sched+116)^L;
;** 546	-----------------------    C$14 = _rotl(*((unsigned * const)sched+52)^L, 28);
;** 546	-----------------------    R ^= C$2[_extu(C$14, 2u, 26u)]|C$4[_extu(C$15, 2u, 26u)]|C$6[_extu(C$14, 10u, 26u)]|C$7[_extu(C$15, 10u, 26u)]|C$8[_extu(C$14, 18u, 26u)]|C$9[_extu(C$15, 18u, 26u)]|C$10[_extu(C$14, 26u, 26u)]|C$11[_extu(C$15, 26u, 26u)];
;** 547	-----------------------    C$13 = *((unsigned (* const)[16])sched+120)^R;
;** 547	-----------------------    C$12 = _rotl(*((unsigned * const)sched+56)^R, 28);
;** 547	-----------------------    L ^= C$2[_extu(C$12, 2u, 26u)]|C$4[_extu(C$13, 2u, 26u)]|C$6[_extu(C$12, 10u, 26u)]|C$7[_extu(C$13, 10u, 26u)]|C$8[_extu(C$12, 18u, 26u)]|C$9[_extu(C$13, 18u, 26u)]|C$10[_extu(C$12, 26u, 26u)]|C$11[_extu(C$13, 26u, 26u)];
;** 548	-----------------------    C$5 = *((unsigned (* const)[16])sched+124)^L;
;** 548	-----------------------    C$3 = _rotl(*((unsigned * const)sched+60)^L, 28);
;** 548	-----------------------    R ^= C$2[_extu(C$3, 2u, 26u)]|C$4[_extu(C$5, 2u, 26u)]|C$6[_extu(C$3, 10u, 26u)]|C$7[_extu(C$5, 10u, 26u)]|C$8[_extu(C$3, 18u, 26u)]|C$9[_extu(C$5, 18u, 26u)]|C$10[_extu(C$3, 26u, 26u)]|C$11[_extu(C$5, 26u, 26u)];
;** 550	-----------------------    L = _rotl(L, 31);
;** 551	-----------------------    R = _rotl(R, 31);
;** 553	-----------------------    swap = L;
;** 554	-----------------------    L = R;
;** 555	-----------------------    R = swap;
;** 557	-----------------------    swap = (L>>1^R)&0x55555555u;
;** 557	-----------------------    L ^= swap*2u;
;** 557	-----------------------    R ^= swap;
;** 557	-----------------------    swap = (R>>8^L)&0xff00ffu;
;** 557	-----------------------    R ^= swap<<8;
;** 557	-----------------------    L ^= swap;
;** 557	-----------------------    swap = (R>>2^L)&0x33333333u;
;** 557	-----------------------    R ^= swap*4u;
;** 557	-----------------------    L ^= swap;
;** 557	-----------------------    swap = C$1 = (unsigned short)(L>>16^R);
;** 557	-----------------------    L ^= (unsigned)C$1<<16;
;** 557	-----------------------    R ^= swap;
;** 557	-----------------------    swap = (L>>4^R)&0xf0f0f0fu;
;** 557	-----------------------    L ^= swap<<4;
;** 557	-----------------------    R ^= swap;
;** 559	-----------------------    *output = L;
;** 560	-----------------------    output[1] = R;
;** 560	-----------------------    return;
           EXTU    .S1     A7,18,26,A9       ; |545| 
           LDW     .D1T1   *+A5[A9],A9       ; |545| 
           EXTU    .S2     B16,18,26,B17     ; |545| 

           LDW     .D2T2   *+B4[B17],B17     ; |545| 
||         EXTU    .S1     A7,26,26,A7       ; |545| 

           LDW     .D1T1   *+A3[A7],A7       ; |545| 
||         EXTU    .S2     B16,26,26,B16     ; |545| 

           LDW     .D2T2   *+B18[B16],B16    ; |545| 
||         OR      .L1     A6,A4,A4          ; |545| 

           OR      .L1     A9,A4,A4          ; |545| 
           LDW     .D2T2   *+B6(52),B20      ; |546| 
           OR      .L2X    B17,A4,B17        ; |545| 
           OR      .L2X    A7,B17,B22        ; |545| 

           LDW     .D2T2   *+B6(116),B17     ; |546| 
||         OR      .L2     B16,B22,B16       ; |545| 

           XOR     .L2     B16,B19,B19       ; |545| 
           XOR     .L2     B19,B20,B16       ; |546| 
           ROTL    .M2     B16,28,B16        ; |546| 
           NOP             1

           XOR     .L2     B19,B17,B17       ; |546| 
||         EXTU    .S2     B16,2,26,B22      ; |546| 

           EXTU    .S2     B17,2,26,B20      ; |546| 
||         LDW     .D2T2   *+B9[B22],B24     ; |546| 

           EXTU    .S2     B16,10,26,B16     ; |546| 
||         MV      .L1X    B16,A4            ; |546| Define a twin register
||         LDW     .D2T2   *+B8[B20],B20     ; |546| 

           EXTU    .S2     B17,10,26,B16     ; |546| 
||         LDW     .D2T2   *+B7[B16],B23     ; |546| 

           LDW     .D2T2   *+B5[B16],B22     ; |546| 
           EXTU    .S1     A4,18,26,A6       ; |546| 

           EXTU    .S2     B17,18,26,B16     ; |546| 
||         LDW     .D1T1   *+A5[A6],A6       ; |546| 

           EXTU    .S1     A4,26,26,A4       ; |546| 
||         LDW     .D2T2   *+B4[B16],B20     ; |546| 
||         OR      .L2     B20,B24,B16       ; |546| 

           OR      .L2     B23,B16,B17       ; |546| 
||         EXTU    .S2     B17,26,26,B16     ; |546| 
||         LDW     .D1T1   *+A3[A4],A4       ; |546| 

           LDW     .D2T2   *+B18[B16],B17    ; |546| 
||         OR      .L2     B22,B17,B16       ; |546| 

           NOP             1

           LDW     .D2T2   *+B6(56),B16      ; |547| 
||         OR      .L1X    A6,B16,A6         ; |546| 

           OR      .L1X    B20,A6,A6         ; |546| 
           OR      .L1     A4,A6,A4          ; |546| 

           LDW     .D2T2   *+B6(120),B17     ; |547| 
||         OR      .L1X    B17,A4,A4         ; |546| 

           XOR     .L1     A4,A8,A9          ; |546| 
           XOR     .L1X    A9,B16,A4         ; |547| 
           ROTL    .M1     A4,28,A4          ; |547| 
           MV      .L1X    B9,A6
           XOR     .L2X    A9,B17,B16        ; |547| 

           EXTU    .S1     A4,2,26,A7        ; |547| 
||         EXTU    .S2     B16,2,26,B17      ; |547| 
||         MV      .L2X    A4,B9             ; |547| Define a twin register

           LDW     .D2T2   *+B8[B17],B17     ; |547| 
||         LDW     .D1T1   *+A6[A7],A8       ; |547| 
||         EXTU    .S2     B9,10,26,B9       ; |547| 

           EXTU    .S2     B16,10,26,B9      ; |547| 
||         LDW     .D2T2   *+B7[B9],B22      ; |547| 

           LDW     .D2T2   *+B5[B9],B20      ; |547| 
||         EXTU    .S1     A4,18,26,A7       ; |547| 

           LDW     .D1T1   *+A5[A7],A7       ; |547| 
||         EXTU    .S2     B16,18,26,B9      ; |547| 

           LDW     .D2T2   *+B4[B9],B9       ; |547| 
||         EXTU    .S1     A4,26,26,A4       ; |547| 

           LDW     .D1T1   *+A3[A4],A4       ; |547| 
||         OR      .L1X    B17,A8,A8         ; |547| 
||         EXTU    .S2     B16,26,26,B16     ; |547| 

           LDW     .D2T2   *+B18[B16],B17    ; |547| 
||         OR      .L1X    B22,A8,A8         ; |547| 

           OR      .L1X    B20,A8,A8         ; |547| 

           LDW     .D2T2   *+B6(60),B16      ; |548| 
||         OR      .L1     A7,A8,A7          ; |547| 

           OR      .L1X    B9,A7,A7          ; |547| 
           OR      .L1     A4,A7,A4          ; |547| 

           LDW     .D2T2   *+B6(124),B6      ; |548| 
||         OR      .L1X    B17,A4,A4         ; |547| 

           XOR     .L1X    A4,B19,A8         ; |547| 
           XOR     .L1X    A8,B16,A4         ; |548| 
           ROTL    .M1     A4,28,A4          ; |548| 
           NOP             1
           XOR     .L2X    A8,B6,B9          ; |548| 

           EXTU    .S1     A4,2,26,A7        ; |548| 
||         EXTU    .S2     B9,2,26,B16       ; |548| 
||         MV      .L2X    A4,B6             ; |548| Define a twin register

           EXTU    .S2     B6,10,26,B8       ; |548| 
||         LDW     .D2T2   *+B8[B16],B6      ; |548| 
||         LDW     .D1T1   *+A6[A7],A6       ; |548| 

           EXTU    .S2     B9,10,26,B8       ; |548| 
||         LDW     .D2T2   *+B7[B8],B7       ; |548| 

           EXTU    .S1     A4,18,26,A7       ; |548| 
||         LDW     .D2T2   *+B5[B8],B5       ; |548| 

           EXTU    .S2     B9,18,26,B8       ; |548| 
||         LDW     .D1T1   *+A5[A7],A5       ; |548| 

           EXTU    .S1     A4,26,26,A4       ; |548| 
||         LDW     .D2T2   *+B4[B8],B4       ; |548| 

           EXTU    .S2     B9,26,26,B6       ; |548| 
||         OR      .L1X    B6,A6,A3          ; |548| 
||         LDW     .D1T1   *+A3[A4],A4       ; |548| 

           OR      .L1X    B7,A3,A3          ; |548| 
||         LDW     .D2T2   *+B18[B6],B6      ; |548| 

           OR      .L1X    B5,A3,A3          ; |548| 
           OR      .L1     A5,A3,A3          ; |548| 
           OR      .L1X    B4,A3,A3          ; |548| 
           OR      .L1     A4,A3,A3          ; |548| 
           OR      .L1X    B6,A3,A3          ; |548| 
           XOR     .L1     A3,A9,A3          ; |548| 
           ROTL    .M1     A3,31,A5          ; |551| 
           ROTL    .M1     A8,31,A4          ; |550| 
           MVKL    .S1     0x55555555,A3     ; |557| 

           SHRU    .S1     A5,1,A4           ; |557| 
||         MV      .L1     A4,A6             ; |553| 

           MVKH    .S1     0x55555555,A3     ; |557| 
||         XOR     .L1     A6,A4,A4          ; |557| 

           AND     .L1     A3,A4,A3          ; |557| 

           ADD     .L1     A3,A3,A3          ; |557| 
||         XOR     .S1     A3,A6,A6          ; |557| 

           SHRU    .S1     A6,8,A3           ; |557| 
||         XOR     .L1     A3,A5,A4          ; |557| 

           MVKL    .S2     0xff00ff,B4       ; |557| 
||         XOR     .L1     A4,A3,A3          ; |557| 

           MVKH    .S2     0xff00ff,B4       ; |557| 
           AND     .L2X    B4,A3,B5          ; |557| 
           SHL     .S2     B5,8,B4           ; |557| 
           XOR     .L2X    B4,A6,B6          ; |557| 

           XOR     .L2X    B5,A4,B5          ; |557| 
||         SHRU    .S2     B6,2,B4           ; |557| 

           MVKL    .S1     0x33333333,A3     ; |557| 
||         XOR     .L2     B5,B4,B4          ; |557| 

           MVKH    .S1     0x33333333,A3     ; |557| 
           AND     .L1X    A3,B4,A3          ; |557| 

           SHL     .S1     A3,2,A3           ; |557| 
||         XOR     .L1X    A3,B5,A5          ; |557| 

           SHRU    .S1     A5,16,A3          ; |557| 
||         XOR     .L1X    A3,B6,A6          ; |557| 

           XOR     .L1     A6,A3,A3          ; |557| 
           EXTU    .S1     A3,16,16,A4       ; |557| 
           SHL     .S1     A3,16,A3          ; |557| 
           XOR     .L1     A3,A5,A5          ; |557| 

           XOR     .L1     A4,A6,A4          ; |557| 
||         SHRU    .S1     A5,4,A3           ; |557| 
||         MVKL    .S2     0xf0f0f0f,B4      ; |557| 

           XOR     .L1     A4,A3,A3          ; |557| 
||         RET     .S2     B3                ; |561| 

           MVKH    .S2     0xf0f0f0f,B4      ; |557| 
           AND     .L2X    B4,A3,B4          ; |557| 

           SHL     .S2     B4,4,B4           ; |557| 
||         XOR     .L2X    B4,A4,B5          ; |557| 

           XOR     .L2X    B4,A5,B4          ; |557| 
||         STW     .D2T2   B5,*+B21(4)       ; |560| 

	.dwpsn	"sshdes.c",561,1
           STW     .D2T2   B4,*B21           ; |559| 
           ; BRANCH OCCURS {B3}              ; |561| 
	.dwattr DW$24, DW_AT_end_file("sshdes.c")
	.dwattr DW$24, DW_AT_end_line(0x231)
	.dwattr DW$24, DW_AT_end_column(0x01)
	.dwendtag DW$24

	.sect	".text"

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("des_cbc_encrypt"), DW_AT_symbol_name("_des_cbc_encrypt")
	.dwattr DW$29, DW_AT_low_pc(_des_cbc_encrypt)
	.dwattr DW$29, DW_AT_high_pc(0x00)
	.dwattr DW$29, DW_AT_begin_file("sshdes.c")
	.dwattr DW$29, DW_AT_begin_line(0x25b)
	.dwattr DW$29, DW_AT_begin_column(0x0d)
	.dwattr DW$29, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$29, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",605,1

;******************************************************************************
;* FUNCTION NAME: _des_cbc_encrypt                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 16 Save = 28 byte                 *
;******************************************************************************
_des_cbc_encrypt:
;** --------------------------------------------------------------------------*
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$30, DW_AT_type(*DW$T$26)
	.dwattr DW$30, DW_AT_location[DW_OP_reg4]
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$31, DW_AT_type(*DW$T$11)
	.dwattr DW$31, DW_AT_location[DW_OP_reg20]
DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sched"), DW_AT_symbol_name("_sched")
	.dwattr DW$32, DW_AT_type(*DW$T$50)
	.dwattr DW$32, DW_AT_location[DW_OP_reg6]
;** 605	-----------------------    blk = blk;
;** 609	-----------------------    assert((len&7u) == 0u);

           MV      .L1X    B4,A3             ; |605| 
||         STW     .D2T2   B10,*SP--(32)     ; |605| 
||         MV      .L2X    A6,B10            ; |605| 

           AND     .L1     7,A3,A0           ; |609| 
||         STDW    .D2T1   A11:A10,*+SP(24)  ; |605| 
||         MV      .S1X    B4,A11            ; |605| 
||         MV      .D1     A4,A10            ; |605| 

   [!A0]   B       .S1     L1                ; |609| 
|| [!A0]   MV      .L1     A11,A1            ; |612| 
|| [ A0]   MVK     .D1     0x1,A1            ; |612| nullify predicate
|| [!A0]   MVK     .S2     33,B4             ; |612| 
||         STW     .D2T2   B13,*+SP(20)      ; |605| 
||         MV      .L2     B3,B13            ; |605| 

   [ A0]   CALL    .S1     __abort_msg       ; |609| 
|| [!A0]   MVK     .S2     32,B31            ; |611| 

   [!A1]   B       .S2     L3                ; |613| 
||         MVKL    .S1     SL9+0,A4          ; |609| 
|| [!A0]   LDW     .D2T1   *+B10[B31],A3     ; |611| 

           MVKH    .S1     SL9+0,A4          ; |609| 
|| [!A0]   LDW     .D2T1   *+B10[B4],A4      ; |612| 

   [!A0]   SHRU    .S1     A1,3,A0           ; |614| 
           NOP             1
           ; BRANCHCC OCCURS {L1}            ; |609| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL0,B3,0          ; |609| 
RL0:       ; CALL OCCURS {__abort_msg}       ; |609| 

           MV      .L1     A11,A1            ; |612| 
||         MVK     .S2     32,B31            ; |611| 

   [!A1]   BNOP    .S1     L3,1              ; |613| 
||         MVK     .S2     33,B4             ; |612| 
||         LDW     .D2T1   *+B10[B31],A3     ; |611| 

           SHRU    .S1     A1,3,A0           ; |614| 
||         LDW     .D2T1   *+B10[B4],A4      ; |612| 

           NOP             1
;** --------------------------------------------------------------------------*
L1:    
;** 611	-----------------------    iv0 = (*sched).iv0;
;** 612	-----------------------    iv1 = (*sched).iv1;
;** 613	-----------------------    if ( !len ) goto g4;
;** 614	-----------------------    L$1 = len>>3;
;**  	-----------------------    #pragma MUST_ITERATE(1, 536870911, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           NOP             2
           ; BRANCHCC OCCURS {L3}            ; |613| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L2:    
DW$L$_des_cbc_encrypt$4$B:
	.dwpsn	"sshdes.c",613,0
;**	-----------------------g3:
;** 614	-----------------------    iv0 ^= (unsigned)blk[3]|(unsigned)blk[2]<<8|(unsigned)blk[1]<<16|(unsigned)*blk<<24;
;** 615	-----------------------    iv1 ^= (unsigned)blk[7]|(unsigned)blk[6]<<8|(unsigned)blk[5]<<16|(unsigned)blk[4]<<24;
;** 616	-----------------------    des_encipher(&out, iv0, iv1, sched);
;** 617	-----------------------    C$1 = ((double *)out)[0];
;** 617	-----------------------    iv0 = _lo(C$1);
;** 618	-----------------------    iv1 = _hi(C$1);
;** 619	-----------------------    *blk = iv0>>24;
;** 619	-----------------------    blk[1] = iv0>>16;
;** 619	-----------------------    blk[2] = iv0>>8;
;** 619	-----------------------    blk[3] = iv0;
;** 620	-----------------------    blk[4] = iv1>>24;
;** 620	-----------------------    blk[5] = iv1>>16;
;** 620	-----------------------    blk[6] = iv1>>8;
;** 620	-----------------------    blk[7] = iv1;
;** 621	-----------------------    blk += 8;
;** 613	-----------------------    if ( --L$1 ) goto g3;
           LDBU    .D1T1   *+A10(6),A9       ; |615| 
           LDBU    .D1T1   *+A10(2),A6       ; |614| 
           LDBU    .D1T1   *+A10(1),A7       ; |614| 
           LDBU    .D1T1   *+A10(3),A8       ; |614| 
           LDBU    .D1T1   *A10,A5           ; |614| 

           LDBU    .D1T1   *+A10(5),A18      ; |615| 
||         SHL     .S1     A9,8,A17          ; |615| 

           LDBU    .D1T1   *+A10(7),A16      ; |615| 
||         SHL     .S1     A6,8,A6           ; |614| 

           LDBU    .D1T1   *+A10(4),A9       ; |615| 
||         SHL     .S1     A7,16,A7          ; |614| 

           OR      .L1     A6,A8,A6          ; |614| 

           CALL    .S2     _des_encipher     ; |616| 
||         OR      .L1     A7,A6,A7          ; |614| 
||         SHL     .S1     A5,24,A8          ; |614| 

           OR      .L1     A8,A7,A31         ; |614| 
||         SHL     .S1     A18,16,A18        ; |615| 

           OR      .L1     A17,A16,A5        ; |615| 
||         XOR     .S1     A31,A3,A3         ; |614| 

           SHL     .S1     A9,24,A6          ; |615| 
||         OR      .L1     A18,A5,A5         ; |615| 

           OR      .L1     A6,A5,A5          ; |615| 
||         MV      .L2X    A3,B4             ; |616| 

           XOR     .L1     A5,A4,A6          ; |615| 
||         ADD     .S1X    8,SP,A4           ; |616| 
||         ADDKPC  .S2     RL1,B3,0          ; |616| 
||         MV      .L2     B10,B6            ; |616| 

RL1:       ; CALL OCCURS {_des_encipher}     ; |616| 
DW$L$_des_cbc_encrypt$4$E:
;** --------------------------------------------------------------------------*
DW$L$_des_cbc_encrypt$5$B:

           LDDW    .D2T2   *+SP(8),B5:B4     ; |617| 
||         SUB     .L1     A0,1,A0           ; |613| 

           NOP             4
           MV      .L1X    B5,A4             ; |618| 

           STB     .D1T1   A4,*+A10(7)       ; |620| 
||         SHRU    .S1     A4,8,A5           ; |620| 
||         MV      .L1X    B4,A3             ; |617| 

           STB     .D1T1   A5,*+A10(6)       ; |620| 
||         SHRU    .S2X    A4,16,B29         ; |620| 

   [ A0]   B       .S1     L2                ; |613| 
||         STB     .D1T2   B29,*+A10(5)      ; |620| 
||         SHRU    .S2X    A3,16,B4          ; |619| 

           STB     .D1T2   B4,*+A10(1)       ; |619| 
||         SHRU    .S2X    A4,24,B30         ; |620| 

           STB     .D1T2   B30,*+A10(4)      ; |620| 
||         SHRU    .S2X    A3,24,B28         ; |619| 

           STB     .D1T2   B28,*A10          ; |619| 
||         SHRU    .S2X    A3,8,B31          ; |619| 

           STB     .D1T2   B31,*+A10(2)      ; |619| 
	.dwpsn	"sshdes.c",622,0

           ADD     .L1     8,A10,A10         ; |621| 
||         STB     .D1T1   A3,*+A10(3)       ; |619| 

           ; BRANCHCC OCCURS {L2}            ; |613| 
DW$L$_des_cbc_encrypt$5$E:
;** --------------------------------------------------------------------------*
L3:    
;**	-----------------------g4:
;** 623	-----------------------    (*sched).iv0 = iv0;
;** 624	-----------------------    (*sched).iv1 = iv1;
;** 624	-----------------------    return;
           MVK     .S2     33,B4             ; |624| 

           MVK     .S2     32,B4             ; |623| 
||         STW     .D2T1   A4,*+B10[B4]      ; |624| 

           STW     .D2T1   A3,*+B10[B4]      ; |623| 

           LDDW    .D2T1   *+SP(24),A11:A10  ; |625| 
||         MV      .L2     B13,B3            ; |625| 

           RET     .S2     B3                ; |625| 
||         LDW     .D2T2   *+SP(20),B13      ; |625| 

           LDW     .D2T2   *++SP(32),B10     ; |625| 
	.dwpsn	"sshdes.c",625,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |625| 

DW$33	.dwtag  DW_TAG_loop
	.dwattr DW$33, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\sshdes.asm:L2:1:1288598910")
	.dwattr DW$33, DW_AT_begin_file("sshdes.c")
	.dwattr DW$33, DW_AT_begin_line(0x265)
	.dwattr DW$33, DW_AT_end_line(0x26e)
DW$34	.dwtag  DW_TAG_loop_range
	.dwattr DW$34, DW_AT_low_pc(DW$L$_des_cbc_encrypt$4$B)
	.dwattr DW$34, DW_AT_high_pc(DW$L$_des_cbc_encrypt$4$E)
DW$35	.dwtag  DW_TAG_loop_range
	.dwattr DW$35, DW_AT_low_pc(DW$L$_des_cbc_encrypt$5$B)
	.dwattr DW$35, DW_AT_high_pc(DW$L$_des_cbc_encrypt$5$E)
	.dwendtag DW$33

	.dwattr DW$29, DW_AT_end_file("sshdes.c")
	.dwattr DW$29, DW_AT_end_line(0x271)
	.dwattr DW$29, DW_AT_end_column(0x01)
	.dwendtag DW$29

	.sect	".text"

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("des_ssh2_encrypt_blk"), DW_AT_symbol_name("_des_ssh2_encrypt_blk")
	.dwattr DW$36, DW_AT_low_pc(_des_ssh2_encrypt_blk)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("sshdes.c")
	.dwattr DW$36, DW_AT_begin_line(0x347)
	.dwattr DW$36, DW_AT_begin_column(0x0d)
	.dwattr DW$36, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$36, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",840,1

;******************************************************************************
;* FUNCTION NAME: _des_ssh2_encrypt_blk                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des_ssh2_encrypt_blk:
;** --------------------------------------------------------------------------*
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$37, DW_AT_type(*DW$T$3)
	.dwattr DW$37, DW_AT_location[DW_OP_reg4]
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$38, DW_AT_type(*DW$T$26)
	.dwattr DW$38, DW_AT_location[DW_OP_reg20]
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$39, DW_AT_type(*DW$T$10)
	.dwattr DW$39, DW_AT_location[DW_OP_reg6]
;** 842	-----------------------    des_cbc_encrypt(blk, (unsigned)len, (struct $$fake0 *)handle);
;** 842	-----------------------    return;
           CALLRET .S1     _des_cbc_encrypt  ; |842| 
           NOP             1
           MV      .L1X    B4,A3             ; |840| 
           MV      .L2X    A6,B4             ; |840| 
           MV      .S1     A4,A6             ; |840| 
	.dwpsn	"sshdes.c",843,1
           MV      .L1     A3,A4             ; |842| 
RL2:       ; CALL-RETURN OCCURS {_des_cbc_encrypt}  ; |842| 
	.dwattr DW$36, DW_AT_end_file("sshdes.c")
	.dwattr DW$36, DW_AT_end_line(0x34b)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendtag DW$36

	.sect	".text"

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("des_decipher"), DW_AT_symbol_name("_des_decipher")
	.dwattr DW$40, DW_AT_low_pc(_des_decipher)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("sshdes.c")
	.dwattr DW$40, DW_AT_begin_line(0x233)
	.dwattr DW$40, DW_AT_begin_column(0x0d)
	.dwattr DW$40, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$40, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",565,1

;******************************************************************************
;* FUNCTION NAME: _des_decipher                                               *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A8,A9,B4,B5,B6,B7,B8,B9,A16,A17,B16,  *
;*                           B17,B18,B19,B20,B21,B22,B23,B24                  *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,B3,B4,B5,B6,B7,B8,B9,A16,A17,   *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_des_decipher:
;** --------------------------------------------------------------------------*
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("output"), DW_AT_symbol_name("_output")
	.dwattr DW$41, DW_AT_type(*DW$T$53)
	.dwattr DW$41, DW_AT_location[DW_OP_reg4]
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("L"), DW_AT_symbol_name("_L")
	.dwattr DW$42, DW_AT_type(*DW$T$19)
	.dwattr DW$42, DW_AT_location[DW_OP_reg20]
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("R"), DW_AT_symbol_name("_R")
	.dwattr DW$43, DW_AT_type(*DW$T$19)
	.dwattr DW$43, DW_AT_location[DW_OP_reg6]
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sched"), DW_AT_symbol_name("_sched")
	.dwattr DW$44, DW_AT_type(*DW$T$50)
	.dwattr DW$44, DW_AT_location[DW_OP_reg22]
;** 568	-----------------------    C$48 = (L>>4^R)&0xf0f0f0fu;
;** 568	-----------------------    C$47 = R^C$48;
;** 568	-----------------------    C$46 = C$48<<4^L;
;** 568	-----------------------    C$45 = (unsigned short)(C$46>>16^C$47);
;** 568	-----------------------    C$44 = (unsigned)C$45^C$47;
;** 568	-----------------------    C$42 = (unsigned)C$45<<16^C$46;
;** 568	-----------------------    C$43 = (C$44>>2^C$42)&0x33333333u;
;** 568	-----------------------    R = C$43*4u^C$44;
;** 568	-----------------------    L = C$42^C$43;
;** 568	-----------------------    swap = (R>>8^L)&0xff00ffu;
;** 568	-----------------------    R ^= swap<<8;
;** 568	-----------------------    L ^= swap;
;** 568	-----------------------    swap = (L>>1^R)&0x55555555u;
;** 568	-----------------------    L ^= swap*2u;
;** 568	-----------------------    R ^= swap;
;** 570	-----------------------    L = _rotl(L, 1);
;** 571	-----------------------    R = _rotl(R, 1);
;** 573	-----------------------    C$41 = *((unsigned (* const)[16])sched+124)^R;
;** 573	-----------------------    C$2 = &SPboxes;
;** 573	-----------------------    C$11 = &C$2[448];
;** 573	-----------------------    C$40 = _rotl(*((unsigned * const)sched+60)^R, 28);
;** 573	-----------------------    C$10 = &SPboxes[384];
;** 573	-----------------------    C$9 = &SPboxes[320];
;** 573	-----------------------    C$8 = &SPboxes[256];
;** 573	-----------------------    C$7 = &SPboxes[192];
;** 573	-----------------------    C$6 = &SPboxes[128];
;** 573	-----------------------    C$4 = &SPboxes[64];
;** 573	-----------------------    L ^= C$2[_extu(C$40, 2u, 26u)]|C$4[_extu(C$41, 2u, 26u)]|C$6[_extu(C$40, 10u, 26u)]|C$7[_extu(C$41, 10u, 26u)]|C$8[_extu(C$40, 18u, 26u)]|C$9[_extu(C$41, 18u, 26u)]|C$10[_extu(C$40, 26u, 26u)]|C$11[_extu(C$41, 26u, 26u)];
;** 574	-----------------------    C$39 = *((unsigned (* const)[16])sched+120)^L;
;** 574	-----------------------    C$38 = _rotl(*((unsigned * const)sched+56)^L, 28);
;** 574	-----------------------    R ^= C$2[_extu(C$38, 2u, 26u)]|C$4[_extu(C$39, 2u, 26u)]|C$6[_extu(C$38, 10u, 26u)]|C$7[_extu(C$39, 10u, 26u)]|C$8[_extu(C$38, 18u, 26u)]|C$9[_extu(C$39, 18u, 26u)]|C$10[_extu(C$38, 26u, 26u)]|C$11[_extu(C$39, 26u, 26u)];
;** 575	-----------------------    C$37 = *((unsigned (* const)[16])sched+116)^R;
;** 575	-----------------------    C$36 = _rotl(*((unsigned * const)sched+52)^R, 28);
;** 575	-----------------------    L ^= C$2[_extu(C$36, 2u, 26u)]|C$4[_extu(C$37, 2u, 26u)]|C$6[_extu(C$36, 10u, 26u)]|C$7[_extu(C$37, 10u, 26u)]|C$8[_extu(C$36, 18u, 26u)]|C$9[_extu(C$37, 18u, 26u)]|C$10[_extu(C$36, 26u, 26u)]|C$11[_extu(C$37, 26u, 26u)];
;** 576	-----------------------    C$35 = *((unsigned (* const)[16])sched+112)^L;
;** 576	-----------------------    C$34 = _rotl(*((unsigned * const)sched+48)^L, 28);
;** 576	-----------------------    R ^= C$2[_extu(C$34, 2u, 26u)]|C$4[_extu(C$35, 2u, 26u)]|C$6[_extu(C$34, 10u, 26u)]|C$7[_extu(C$35, 10u, 26u)]|C$8[_extu(C$34, 18u, 26u)]|C$9[_extu(C$35, 18u, 26u)]|C$10[_extu(C$34, 26u, 26u)]|C$11[_extu(C$35, 26u, 26u)];
;** 577	-----------------------    C$33 = *((unsigned (* const)[16])sched+108)^R;
;** 577	-----------------------    C$32 = _rotl(*((unsigned * const)sched+44)^R, 28);
;** 577	-----------------------    L ^= C$2[_extu(C$32, 2u, 26u)]|C$4[_extu(C$33, 2u, 26u)]|C$6[_extu(C$32, 10u, 26u)]|C$7[_extu(C$33, 10u, 26u)]|C$8[_extu(C$32, 18u, 26u)]|C$9[_extu(C$33, 18u, 26u)]|C$10[_extu(C$32, 26u, 26u)]|C$11[_extu(C$33, 26u, 26u)];
;** 578	-----------------------    C$31 = *((unsigned (* const)[16])sched+104)^L;
;** 578	-----------------------    C$30 = _rotl(*((unsigned * const)sched+40)^L, 28);
;** 578	-----------------------    R ^= C$2[_extu(C$30, 2u, 26u)]|C$4[_extu(C$31, 2u, 26u)]|C$6[_extu(C$30, 10u, 26u)]|C$7[_extu(C$31, 10u, 26u)]|C$8[_extu(C$30, 18u, 26u)]|C$9[_extu(C$31, 18u, 26u)]|C$10[_extu(C$30, 26u, 26u)]|C$11[_extu(C$31, 26u, 26u)];
;** 579	-----------------------    C$29 = *((unsigned (* const)[16])sched+100)^R;
;** 579	-----------------------    C$28 = _rotl(*((unsigned * const)sched+36)^R, 28);
;** 579	-----------------------    L ^= C$2[_extu(C$28, 2u, 26u)]|C$4[_extu(C$29, 2u, 26u)]|C$6[_extu(C$28, 10u, 26u)]|C$7[_extu(C$29, 10u, 26u)]|C$8[_extu(C$28, 18u, 26u)]|C$9[_extu(C$29, 18u, 26u)]|C$10[_extu(C$28, 26u, 26u)]|C$11[_extu(C$29, 26u, 26u)];
;** 580	-----------------------    C$27 = *((unsigned (* const)[16])sched+96)^L;
;** 580	-----------------------    C$26 = _rotl(*((unsigned * const)sched+32)^L, 28);
;** 580	-----------------------    R ^= C$2[_extu(C$26, 2u, 26u)]|C$4[_extu(C$27, 2u, 26u)]|C$6[_extu(C$26, 10u, 26u)]|C$7[_extu(C$27, 10u, 26u)]|C$8[_extu(C$26, 18u, 26u)]|C$9[_extu(C$27, 18u, 26u)]|C$10[_extu(C$26, 26u, 26u)]|C$11[_extu(C$27, 26u, 26u)];
;** 581	-----------------------    C$25 = *((unsigned (* const)[16])sched+92)^R;
;** 581	-----------------------    C$24 = _rotl(*((unsigned * const)sched+28)^R, 28);
;** 581	-----------------------    L ^= C$2[_extu(C$24, 2u, 26u)]|C$4[_extu(C$25, 2u, 26u)]|C$6[_extu(C$24, 10u, 26u)]|C$7[_extu(C$25, 10u, 26u)]|C$8[_extu(C$24, 18u, 26u)]|C$9[_extu(C$25, 18u, 26u)]|C$10[_extu(C$24, 26u, 26u)]|C$11[_extu(C$25, 26u, 26u)];
;** 582	-----------------------    C$23 = *((unsigned (* const)[16])sched+88)^L;
;** 582	-----------------------    C$22 = _rotl(*((unsigned * const)sched+24)^L, 28);
;** 582	-----------------------    R ^= C$2[_extu(C$22, 2u, 26u)]|C$4[_extu(C$23, 2u, 26u)]|C$6[_extu(C$22, 10u, 26u)]|C$7[_extu(C$23, 10u, 26u)]|C$8[_extu(C$22, 18u, 26u)]|C$9[_extu(C$23, 18u, 26u)]|C$10[_extu(C$22, 26u, 26u)]|C$11[_extu(C$23, 26u, 26u)];
;** 583	-----------------------    C$21 = *((unsigned (* const)[16])sched+84)^R;
;** 583	-----------------------    C$20 = _rotl(*((unsigned * const)sched+20)^R, 28);
;** 583	-----------------------    L ^= C$2[_extu(C$20, 2u, 26u)]|C$4[_extu(C$21, 2u, 26u)]|C$6[_extu(C$20, 10u, 26u)]|C$7[_extu(C$21, 10u, 26u)]|C$8[_extu(C$20, 18u, 26u)]|C$9[_extu(C$21, 18u, 26u)]|C$10[_extu(C$20, 26u, 26u)]|C$11[_extu(C$21, 26u, 26u)];
;** 584	-----------------------    C$19 = *((unsigned (* const)[16])sched+80)^L;
;** 584	-----------------------    C$18 = _rotl(*((unsigned * const)sched+16)^L, 28);
;** 584	-----------------------    R ^= C$2[_extu(C$18, 2u, 26u)]|C$4[_extu(C$19, 2u, 26u)]|C$6[_extu(C$18, 10u, 26u)]|C$7[_extu(C$19, 10u, 26u)]|C$8[_extu(C$18, 18u, 26u)]|C$9[_extu(C$19, 18u, 26u)]|C$10[_extu(C$18, 26u, 26u)]|C$11[_extu(C$19, 26u, 26u)];
;** 585	-----------------------    C$17 = *((unsigned (* const)[16])sched+76)^R;
;** 585	-----------------------    C$16 = _rotl(*((unsigned * const)sched+12)^R, 28);
;** 585	-----------------------    L ^= C$2[_extu(C$16, 2u, 26u)]|C$4[_extu(C$17, 2u, 26u)]|C$6[_extu(C$16, 10u, 26u)]|C$7[_extu(C$17, 10u, 26u)]|C$8[_extu(C$16, 18u, 26u)]|C$9[_extu(C$17, 18u, 26u)]|C$10[_extu(C$16, 26u, 26u)]|C$11[_extu(C$17, 26u, 26u)];
           SHRU    .S2     B4,4,B5           ; |568| 
           MVKL    .S1     0xf0f0f0f,A3      ; |568| 

           XOR     .L1X    A6,B5,A5          ; |568| 
||         MVKH    .S1     0xf0f0f0f,A3      ; |568| 

           AND     .L1     A3,A5,A3          ; |568| 
           SHL     .S1     A3,4,A5           ; |568| 
           XOR     .L1     A3,A6,A3          ; |568| 
           XOR     .L2X    B4,A5,B4          ; |568| 
           SHRU    .S2     B4,16,B5          ; |568| 
           XOR     .L2X    A3,B5,B5          ; |568| 
           MVKL    .S1     _SPboxes+512,A8   ; |573| 

           EXTU    .S2     B5,16,16,B5       ; |568| 
||         SHL     .S1X    B5,16,A5          ; |568| 

           XOR     .L1X    B4,A5,A3          ; |568| 
||         XOR     .L2X    A3,B5,B4          ; |568| 

           SHRU    .S2     B4,2,B7           ; |568| 
           MVKL    .S2     0x33333333,B5     ; |568| 

           MVKH    .S2     0x33333333,B5     ; |568| 
||         XOR     .L2X    A3,B7,B7          ; |568| 

           AND     .L2     B5,B7,B5          ; |568| 
           SHL     .S2     B5,2,B7           ; |568| 
           XOR     .L2     B4,B7,B4          ; |568| 

           XOR     .L2X    B5,A3,B5          ; |568| 
||         SHRU    .S2     B4,8,B7           ; |568| 

           MVKL    .S1     0xff00ff,A3       ; |568| 
||         XOR     .L2     B5,B7,B7          ; |568| 

           MVKH    .S1     0xff00ff,A3       ; |568| 
           AND     .L1X    A3,B7,A3          ; |568| 

           SHL     .S1     A3,8,A3           ; |568| 
||         MVKL    .S2     0x55555555,B5     ; |568| 
||         XOR     .L1X    A3,B5,A9          ; |568| 

           SHRU    .S1     A9,1,A5           ; |568| 
||         XOR     .L1X    A3,B4,A3          ; |568| 
||         MVKH    .S2     0x55555555,B5     ; |568| 

           XOR     .L1     A3,A5,A5          ; |568| 

           AND     .L1X    B5,A5,A7          ; |568| 
||         LDW     .D2T2   *+B6(124),B4      ; |573| 

           XOR     .L1     A7,A3,A3          ; |568| 
||         LDW     .D2T2   *+B6(60),B7       ; |573| 

           ROTL    .M1     A3,1,A17          ; |571| 
           MVKL    .S2     _SPboxes+256,B8   ; |573| 
           MVKL    .S1     _SPboxes,A6       ; |573| 
           XOR     .L2X    A17,B4,B17        ; |573| 
           XOR     .L2X    A17,B7,B4         ; |573| 

           ROTL    .M2     B4,28,B16         ; |573| 
||         MVKH    .S2     _SPboxes+256,B8   ; |573| 

           MVKL    .S2     _SPboxes+768,B5   ; |573| 
||         MVKH    .S1     _SPboxes,A6       ; |573| 

           EXTU    .S2     B16,2,26,B18      ; |573| 
||         MVKL    .S1     _SPboxes+1280,A16 ; |573| 

           EXTU    .S2     B17,2,26,B4       ; |573| 
||         MV      .L2X    A6,B9             ; |573| 
||         MVKH    .S1     _SPboxes+512,A8   ; |573| 

           MVKH    .S2     _SPboxes+768,B5   ; |573| 
||         LDW     .D2T2   *+B9[B18],B21     ; |573| 
||         MVKH    .S1     _SPboxes+1280,A16 ; |573| 

           LDW     .D2T2   *+B8[B4],B19      ; |573| 
||         EXTU    .S2     B16,10,26,B16     ; |573| 
||         MV      .L1X    B16,A8            ; |573| Define a twin register
||         MV      .L2X    A8,B7             ; |573| 
||         MVKL    .S1     _SPboxes+1024,A5  ; |573| 

           MVKH    .S1     _SPboxes+1024,A5  ; |573| 
||         EXTU    .S2     B17,10,26,B16     ; |573| 
||         LDW     .D2T2   *+B7[B16],B18     ; |573| 

           LDW     .D2T2   *+B5[B16],B20     ; |573| 
||         MVKL    .S1     _SPboxes+1536,A3  ; |573| 

           EXTU    .S1     A8,18,26,A16      ; |573| 
||         MV      .L2X    A16,B4            ; |573| 

           LDW     .D1T1   *+A5[A16],A16     ; |573| 
||         EXTU    .S2     B17,18,26,B16     ; |573| 
||         MVKH    .S1     _SPboxes+1536,A3  ; |573| 

           MVK     .S2     1792,B16          ; |573| 
||         LDW     .D2T2   *+B4[B16],B19     ; |573| 
||         EXTU    .S1     A8,26,26,A8       ; |573| 
||         OR      .L2     B19,B21,B21       ; |573| 

           LDW     .D1T1   *+A3[A8],A8       ; |573| 
||         OR      .L2     B18,B21,B17       ; |573| 
||         EXTU    .S2     B17,26,26,B16     ; |573| 
||         ADD     .D2X    B16,A6,B18        ; |573| 

           LDW     .D2T2   *+B18[B16],B16    ; |573| 
||         OR      .L2     B20,B17,B17       ; |573| 

           ADD     .S1     A7,A7,A7          ; |568| 
           OR      .L1X    A16,B17,A16       ; |573| 

           LDW     .D2T2   *+B6(56),B17      ; |574| 
||         OR      .L1X    B19,A16,A9        ; |573| 
||         XOR     .S1     A7,A9,A7          ; |568| 

           OR      .L1     A8,A9,A8          ; |573| 
||         ROTL    .M1     A7,1,A7           ; |570| 

           OR      .L1X    B16,A8,A8         ; |573| 

           LDW     .D2T2   *+B6(120),B19     ; |574| 
||         XOR     .L1     A8,A7,A9          ; |573| 

           NOP             1
           XOR     .L2X    A9,B17,B16        ; |574| 
           ROTL    .M2     B16,28,B16        ; |574| 
           NOP             1

           XOR     .L2X    A9,B19,B17        ; |574| 
||         EXTU    .S2     B16,2,26,B20      ; |574| 

           LDW     .D2T2   *+B9[B20],B21     ; |574| 
||         EXTU    .S2     B17,2,26,B19      ; |574| 

           EXTU    .S2     B16,10,26,B16     ; |574| 
||         LDW     .D2T2   *+B8[B19],B19     ; |574| 
||         MV      .L1X    B16,A7            ; |574| Define a twin register

           EXTU    .S2     B17,10,26,B16     ; |574| 
||         LDW     .D2T2   *+B7[B16],B22     ; |574| 

           LDW     .D2T2   *+B5[B16],B20     ; |574| 
           EXTU    .S1     A7,18,26,A8       ; |574| 

           LDW     .D1T1   *+A5[A8],A16      ; |574| 
||         EXTU    .S2     B17,18,26,B16     ; |574| 

           LDW     .D2T2   *+B4[B16],B16     ; |574| 
||         OR      .L2     B19,B21,B19       ; |574| 
||         EXTU    .S1     A7,26,26,A7       ; |574| 

           LDW     .D1T1   *+A3[A7],A8       ; |574| 
||         OR      .L2     B22,B19,B19       ; |574| 
||         EXTU    .S2     B17,26,26,B17     ; |574| 

           LDW     .D2T2   *+B18[B17],B17    ; |574| 
||         OR      .L2     B20,B19,B19       ; |574| 

           NOP             1
           OR      .L1X    A16,B19,A7        ; |574| 

           LDW     .D2T2   *+B6(52),B16      ; |575| 
||         OR      .L1X    B16,A7,A7         ; |574| 

           OR      .L1     A8,A7,A7          ; |574| 
           OR      .L1X    B17,A7,A7         ; |574| 

           XOR     .L1     A7,A17,A8         ; |574| 
||         LDW     .D2T2   *+B6(116),B17     ; |575| 

           NOP             1
           XOR     .L2X    A8,B16,B16        ; |575| 
           ROTL    .M2     B16,28,B16        ; |575| 
           NOP             1

           XOR     .L2X    A8,B17,B17        ; |575| 
||         EXTU    .S2     B16,2,26,B20      ; |575| 

           EXTU    .S2     B17,2,26,B19      ; |575| 
||         LDW     .D2T2   *+B9[B20],B21     ; |575| 

           EXTU    .S2     B16,10,26,B16     ; |575| 
||         MV      .L1X    B16,A7            ; |575| Define a twin register
||         LDW     .D2T2   *+B8[B19],B19     ; |575| 

           EXTU    .S2     B17,10,26,B16     ; |575| 
||         LDW     .D2T2   *+B7[B16],B22     ; |575| 

           LDW     .D2T2   *+B5[B16],B20     ; |575| 
           EXTU    .S1     A7,18,26,A16      ; |575| 

           EXTU    .S2     B17,18,26,B16     ; |575| 
||         LDW     .D1T1   *+A5[A16],A16     ; |575| 

           EXTU    .S1     A7,26,26,A7       ; |575| 
||         OR      .L2     B19,B21,B19       ; |575| 
||         LDW     .D2T2   *+B4[B16],B16     ; |575| 

           OR      .L2     B22,B19,B19       ; |575| 
||         EXTU    .S2     B17,26,26,B17     ; |575| 
||         LDW     .D1T1   *+A3[A7],A7       ; |575| 

           LDW     .D2T2   *+B18[B17],B19    ; |575| 
||         OR      .L2     B20,B19,B17       ; |575| 

           NOP             1
           OR      .L1X    A16,B17,A16       ; |575| 

           LDW     .D2T2   *+B6(48),B16      ; |576| 
||         OR      .L1X    B16,A16,A16       ; |575| 

           OR      .L1     A7,A16,A7         ; |575| 
           OR      .L1X    B19,A7,A7         ; |575| 

           LDW     .D2T2   *+B6(112),B17     ; |576| 
||         XOR     .L1     A7,A9,A9          ; |575| 

           NOP             1
           XOR     .L2X    A9,B16,B16        ; |576| 
           ROTL    .M2     B16,28,B16        ; |576| 
           NOP             1

           EXTU    .S2     B16,2,26,B20      ; |576| 
||         XOR     .L2X    A9,B17,B17        ; |576| 

           LDW     .D2T2   *+B9[B20],B21     ; |576| 
||         EXTU    .S2     B17,2,26,B19      ; |576| 

           EXTU    .S2     B16,10,26,B16     ; |576| 
||         LDW     .D2T2   *+B8[B19],B19     ; |576| 
||         MV      .L1X    B16,A7            ; |576| Define a twin register

           EXTU    .S2     B17,10,26,B16     ; |576| 
||         LDW     .D2T2   *+B7[B16],B22     ; |576| 

           LDW     .D2T2   *+B5[B16],B20     ; |576| 
           EXTU    .S1     A7,18,26,A16      ; |576| 

           LDW     .D1T1   *+A5[A16],A17     ; |576| 
||         EXTU    .S2     B17,18,26,B16     ; |576| 

           LDW     .D2T2   *+B4[B16],B19     ; |576| 
||         OR      .L2     B19,B21,B16       ; |576| 
||         EXTU    .S1     A7,26,26,A7       ; |576| 

           LDW     .D1T1   *+A3[A7],A16      ; |576| 
||         OR      .L2     B22,B16,B16       ; |576| 
||         EXTU    .S2     B17,26,26,B17     ; |576| 

           LDW     .D2T2   *+B18[B17],B16    ; |576| 
||         OR      .L2     B20,B16,B17       ; |576| 

           NOP             1
           OR      .L1X    A17,B17,A7        ; |576| 

           OR      .L1X    B19,A7,A7         ; |576| 
||         LDW     .D2T2   *+B6(44),B17      ; |577| 

           OR      .L1     A16,A7,A7         ; |576| 
           OR      .L1X    B16,A7,A7         ; |576| 

           XOR     .L1     A7,A8,A8          ; |576| 
||         LDW     .D2T2   *+B6(108),B19     ; |577| 

           NOP             1
           XOR     .L2X    A8,B17,B16        ; |577| 
           ROTL    .M2     B16,28,B16        ; |577| 
           NOP             1

           EXTU    .S2     B16,2,26,B20      ; |577| 
||         XOR     .L2X    A8,B19,B17        ; |577| 

           EXTU    .S2     B17,2,26,B19      ; |577| 
||         LDW     .D2T2   *+B9[B20],B22     ; |577| 

           EXTU    .S2     B16,10,26,B16     ; |577| 
||         MV      .L1X    B16,A7            ; |577| Define a twin register
||         LDW     .D2T2   *+B8[B19],B19     ; |577| 

           EXTU    .S2     B17,10,26,B16     ; |577| 
||         LDW     .D2T2   *+B7[B16],B21     ; |577| 

           LDW     .D2T2   *+B5[B16],B20     ; |577| 
           EXTU    .S1     A7,18,26,A16      ; |577| 

           EXTU    .S2     B17,18,26,B16     ; |577| 
||         LDW     .D1T1   *+A5[A16],A16     ; |577| 

           EXTU    .S1     A7,26,26,A7       ; |577| 
||         LDW     .D2T2   *+B4[B16],B19     ; |577| 
||         OR      .L2     B19,B22,B16       ; |577| 

           OR      .L2     B21,B16,B17       ; |577| 
||         EXTU    .S2     B17,26,26,B16     ; |577| 
||         LDW     .D1T1   *+A3[A7],A7       ; |577| 

           OR      .L2     B20,B17,B17       ; |577| 
||         LDW     .D2T2   *+B18[B16],B16    ; |577| 

           NOP             1
           OR      .L1X    A16,B17,A16       ; |577| 

           LDW     .D2T2   *+B6(40),B17      ; |578| 
||         OR      .L1X    B19,A16,A16       ; |577| 

           LDW     .D2T2   *+B6(104),B19     ; |578| 
||         OR      .L1     A7,A16,A7         ; |577| 

           OR      .L1X    B16,A7,A7         ; |577| 
           XOR     .L1     A7,A9,A9          ; |577| 
           NOP             1
           XOR     .L2X    A9,B17,B16        ; |578| 

           XOR     .L2X    A9,B19,B17        ; |578| 
||         ROTL    .M2     B16,28,B16        ; |578| 

           EXTU    .S2     B17,2,26,B19      ; |578| 

           EXTU    .S2     B16,2,26,B19      ; |578| 
||         LDW     .D2T2   *+B8[B19],B21     ; |578| 

           EXTU    .S2     B16,10,26,B16     ; |578| 
||         MV      .L1X    B16,A7            ; |578| Define a twin register
||         LDW     .D2T2   *+B9[B19],B22     ; |578| 

           EXTU    .S2     B17,10,26,B16     ; |578| 
||         LDW     .D2T2   *+B7[B16],B20     ; |578| 

           LDW     .D2T2   *+B5[B16],B19     ; |578| 
           EXTU    .S1     A7,18,26,A16      ; |578| 

           EXTU    .S2     B17,18,26,B16     ; |578| 
||         LDW     .D1T1   *+A5[A16],A16     ; |578| 

           EXTU    .S1     A7,26,26,A7       ; |578| 
||         OR      .L2     B21,B22,B21       ; |578| 
||         LDW     .D2T2   *+B4[B16],B16     ; |578| 

           OR      .L2     B20,B21,B20       ; |578| 
||         EXTU    .S2     B17,26,26,B17     ; |578| 
||         LDW     .D1T1   *+A3[A7],A7       ; |578| 

           OR      .L2     B19,B20,B19       ; |578| 
||         LDW     .D2T2   *+B18[B17],B17    ; |578| 

           NOP             1
           OR      .L1X    A16,B19,A16       ; |578| 
           OR      .L1X    B16,A16,A16       ; |578| 

           LDW     .D2T2   *+B6(36),B16      ; |579| 
||         OR      .L1     A7,A16,A7         ; |578| 

           LDW     .D2T2   *+B6(100),B17     ; |579| 
||         OR      .L1X    B17,A7,A7         ; |578| 

           NOP             1
           XOR     .L1     A7,A8,A8          ; |578| 
           NOP             1
           XOR     .L2X    A8,B16,B16        ; |579| 

           XOR     .L2X    A8,B17,B17        ; |579| 
||         ROTL    .M2     B16,28,B16        ; |579| 

           EXTU    .S2     B17,2,26,B19      ; |579| 

           EXTU    .S2     B16,2,26,B19      ; |579| 
||         LDW     .D2T2   *+B8[B19],B20     ; |579| 

           LDW     .D2T2   *+B9[B19],B16     ; |579| 
||         EXTU    .S2     B16,10,26,B19     ; |579| 
||         MV      .L1X    B16,A7            ; |579| Define a twin register

           EXTU    .S2     B17,10,26,B21     ; |579| 
||         LDW     .D2T2   *+B7[B19],B19     ; |579| 

           LDW     .D2T2   *+B5[B21],B22     ; |579| 
           EXTU    .S1     A7,18,26,A16      ; |579| 

           EXTU    .S2     B17,18,26,B21     ; |579| 
||         LDW     .D1T1   *+A5[A16],A16     ; |579| 

           LDW     .D2T2   *+B4[B21],B20     ; |579| 
||         EXTU    .S1     A7,26,26,A7       ; |579| 
||         OR      .L2     B20,B16,B16       ; |579| 

           EXTU    .S2     B17,26,26,B17     ; |579| 
||         OR      .L2     B19,B16,B16       ; |579| 
||         LDW     .D1T1   *+A3[A7],A7       ; |579| 

           OR      .L2     B22,B16,B16       ; |579| 
||         LDW     .D2T2   *+B18[B17],B17    ; |579| 

           NOP             1
           OR      .L1X    A16,B16,A16       ; |579| 

           LDW     .D2T2   *+B6(32),B16      ; |580| 
||         OR      .L1X    B20,A16,A16       ; |579| 

           OR      .L1     A7,A16,A7         ; |579| 
           OR      .L1X    B17,A7,A7         ; |579| 

           LDW     .D2T2   *+B6(96),B17      ; |580| 
||         XOR     .L1     A7,A9,A9          ; |579| 

           NOP             1
           XOR     .L2X    A9,B16,B16        ; |580| 
           ROTL    .M2     B16,28,B16        ; |580| 
           NOP             1

           EXTU    .S2     B16,2,26,B20      ; |580| 
||         XOR     .L2X    A9,B17,B17        ; |580| 

           LDW     .D2T2   *+B9[B20],B22     ; |580| 
||         EXTU    .S2     B17,2,26,B19      ; |580| 

           EXTU    .S2     B16,10,26,B16     ; |580| 
||         LDW     .D2T2   *+B8[B19],B19     ; |580| 
||         MV      .L1X    B16,A7            ; |580| Define a twin register

           EXTU    .S2     B17,10,26,B16     ; |580| 
||         LDW     .D2T2   *+B7[B16],B21     ; |580| 

           LDW     .D2T2   *+B5[B16],B20     ; |580| 
           EXTU    .S1     A7,18,26,A16      ; |580| 

           LDW     .D1T1   *+A5[A16],A16     ; |580| 
||         EXTU    .S2     B17,18,26,B16     ; |580| 

           LDW     .D2T2   *+B4[B16],B19     ; |580| 
||         OR      .L2     B19,B22,B16       ; |580| 
||         EXTU    .S1     A7,26,26,A7       ; |580| 

           LDW     .D1T1   *+A3[A7],A7       ; |580| 
||         OR      .L2     B21,B16,B17       ; |580| 
||         EXTU    .S2     B17,26,26,B16     ; |580| 

           LDW     .D2T2   *+B18[B16],B16    ; |580| 
||         OR      .L2     B20,B17,B17       ; |580| 

           NOP             1
           OR      .L1X    A16,B17,A16       ; |580| 

           OR      .L1X    B19,A16,A16       ; |580| 
||         LDW     .D2T2   *+B6(28),B17      ; |581| 

           OR      .L1     A7,A16,A7         ; |580| 
||         LDW     .D2T2   *+B6(92),B19      ; |581| 

           OR      .L1X    B16,A7,A7         ; |580| 
           XOR     .L1     A7,A8,A8          ; |580| 
           NOP             1
           XOR     .L2X    A8,B17,B16        ; |581| 

           ROTL    .M2     B16,28,B16        ; |581| 
||         XOR     .L2X    A8,B19,B17        ; |581| 

           EXTU    .S2     B17,2,26,B19      ; |581| 

           EXTU    .S2     B16,2,26,B19      ; |581| 
||         LDW     .D2T2   *+B8[B19],B20     ; |581| 

           LDW     .D2T2   *+B9[B19],B16     ; |581| 
||         EXTU    .S2     B16,10,26,B19     ; |581| 
||         MV      .L1X    B16,A7            ; |581| Define a twin register

           LDW     .D2T2   *+B7[B19],B19     ; |581| 
||         EXTU    .S2     B17,10,26,B21     ; |581| 

           LDW     .D2T2   *+B5[B21],B22     ; |581| 
           EXTU    .S1     A7,18,26,A16      ; |581| 

           LDW     .D1T1   *+A5[A16],A16     ; |581| 
||         EXTU    .S2     B17,18,26,B21     ; |581| 

           LDW     .D2T2   *+B4[B21],B20     ; |581| 
||         OR      .L2     B20,B16,B16       ; |581| 
||         EXTU    .S1     A7,26,26,A7       ; |581| 

           LDW     .D1T1   *+A3[A7],A7       ; |581| 
||         OR      .L2     B19,B16,B16       ; |581| 
||         EXTU    .S2     B17,26,26,B17     ; |581| 

           LDW     .D2T2   *+B18[B17],B17    ; |581| 
||         OR      .L2     B22,B16,B16       ; |581| 

           NOP             1
           OR      .L1X    A16,B16,A16       ; |581| 
           OR      .L1X    B20,A16,A16       ; |581| 

           OR      .L1     A7,A16,A7         ; |581| 
||         LDW     .D2T2   *+B6(24),B16      ; |582| 

           LDW     .D2T2   *+B6(88),B17      ; |582| 
||         OR      .L1X    B17,A7,A7         ; |581| 

           NOP             1
           XOR     .L1     A7,A9,A9          ; |581| 
           NOP             1
           XOR     .L2X    A9,B16,B16        ; |582| 

           ROTL    .M2     B16,28,B16        ; |582| 
||         XOR     .L2X    A9,B17,B17        ; |582| 

           EXTU    .S2     B17,2,26,B19      ; |582| 

           EXTU    .S2     B16,2,26,B19      ; |582| 
||         LDW     .D2T2   *+B8[B19],B20     ; |582| 

           LDW     .D2T2   *+B9[B19],B16     ; |582| 
||         EXTU    .S2     B16,10,26,B19     ; |582| 
||         MV      .L1X    B16,A7            ; |582| Define a twin register

           LDW     .D2T2   *+B7[B19],B19     ; |582| 
||         EXTU    .S2     B17,10,26,B21     ; |582| 

           LDW     .D2T2   *+B5[B21],B22     ; |582| 
           EXTU    .S1     A7,18,26,A16      ; |582| 

           LDW     .D1T1   *+A5[A16],A16     ; |582| 
||         EXTU    .S2     B17,18,26,B21     ; |582| 

           LDW     .D2T2   *+B4[B21],B20     ; |582| 
||         OR      .L2     B20,B16,B16       ; |582| 
||         EXTU    .S1     A7,26,26,A7       ; |582| 

           LDW     .D1T1   *+A3[A7],A17      ; |582| 
||         OR      .L2     B19,B16,B16       ; |582| 
||         EXTU    .S2     B17,26,26,B17     ; |582| 

           LDW     .D2T2   *+B18[B17],B17    ; |582| 
||         OR      .L2     B22,B16,B16       ; |582| 

           NOP             1
           OR      .L1X    A16,B16,A7        ; |582| 

           OR      .L1X    B20,A7,A7         ; |582| 
||         LDW     .D2T2   *+B6(20),B16      ; |583| 

           OR      .L1     A17,A7,A7         ; |582| 
           OR      .L1X    B17,A7,A7         ; |582| 

           XOR     .L1     A7,A8,A8          ; |582| 
||         LDW     .D2T2   *+B6(84),B17      ; |583| 

           NOP             1
           XOR     .L2X    A8,B16,B16        ; |583| 
           ROTL    .M2     B16,28,B16        ; |583| 
           NOP             1

           XOR     .L2X    A8,B17,B17        ; |583| 
||         EXTU    .S2     B16,2,26,B20      ; |583| 

           EXTU    .S2     B17,2,26,B19      ; |583| 
||         LDW     .D2T2   *+B9[B20],B22     ; |583| 

           EXTU    .S2     B16,10,26,B16     ; |583| 
||         MV      .L1X    B16,A7            ; |583| Define a twin register
||         LDW     .D2T2   *+B8[B19],B19     ; |583| 

           EXTU    .S2     B17,10,26,B20     ; |583| 
||         LDW     .D2T2   *+B7[B16],B16     ; |583| 

           LDW     .D2T2   *+B5[B20],B21     ; |583| 
           EXTU    .S1     A7,18,26,A16      ; |583| 

           EXTU    .S2     B17,18,26,B20     ; |583| 
||         LDW     .D1T1   *+A5[A16],A16     ; |583| 

           EXTU    .S1     A7,26,26,A7       ; |583| 
||         LDW     .D2T2   *+B4[B20],B19     ; |583| 
||         OR      .L2     B19,B22,B20       ; |583| 

           OR      .L2     B16,B20,B16       ; |583| 
||         LDW     .D1T1   *+A3[A7],A7       ; |583| 

           OR      .L2     B21,B16,B17       ; |583| 
||         EXTU    .S2     B17,26,26,B16     ; |583| 

           LDW     .D2T2   *+B18[B16],B16    ; |583| 
           OR      .L1X    A16,B17,A16       ; |583| 

           OR      .L1X    B19,A16,A16       ; |583| 
||         LDW     .D2T2   *+B6(16),B20      ; |584| 

           OR      .L1     A7,A16,A7         ; |583| 
||         LDW     .D2T2   *+B6(80),B17      ; |584| 

           NOP             1
           OR      .L2X    B16,A7,B16        ; |583| 
           XOR     .L2X    B16,A9,B19        ; |583| 
           XOR     .L2     B19,B20,B16       ; |584| 

           ROTL    .M2     B16,28,B16        ; |584| 
||         XOR     .L2     B19,B17,B17       ; |584| 

           EXTU    .S2     B17,2,26,B20      ; |584| 

           EXTU    .S2     B16,2,26,B20      ; |584| 
||         LDW     .D2T2   *+B8[B20],B21     ; |584| 

           LDW     .D2T2   *+B9[B20],B16     ; |584| 
||         EXTU    .S2     B16,10,26,B20     ; |584| 
||         MV      .L1X    B16,A7            ; |584| Define a twin register

           LDW     .D2T2   *+B7[B20],B20     ; |584| 
||         EXTU    .S2     B17,10,26,B22     ; |584| 

           LDW     .D2T2   *+B5[B22],B22     ; |584| 
           EXTU    .S1     A7,18,26,A9       ; |584| 

           LDW     .D1T1   *+A5[A9],A9       ; |584| 
||         EXTU    .S2     B17,18,26,B23     ; |584| 

           LDW     .D2T2   *+B4[B23],B21     ; |584| 
||         OR      .L2     B21,B16,B16       ; |584| 
||         EXTU    .S1     A7,26,26,A7       ; |584| 

           LDW     .D1T1   *+A3[A7],A16      ; |584| 
||         OR      .L2     B20,B16,B16       ; |584| 
||         EXTU    .S2     B17,26,26,B17     ; |584| 

           OR      .L2     B22,B16,B16       ; |584| 
||         LDW     .D2T2   *+B18[B17],B20    ; |584| 

           LDW     .D2T2   *+B6(12),B17      ; |585| 
           OR      .L1X    A9,B16,A7         ; |584| 
           OR      .L1X    B21,A7,A7         ; |584| 
           OR      .L1     A16,A7,A7         ; |584| 

           LDW     .D2T2   *+B6(76),B16      ; |585| 
||         OR      .L1X    B20,A7,A7         ; |584| 

           XOR     .L1     A7,A8,A8          ; |584| 
           XOR     .L1X    A8,B17,A7         ; |585| 
           ROTL    .M1     A7,28,A7          ; |585| 
           MV      .L2X    A4,B21            ; |565| 
           XOR     .L2X    A8,B16,B16        ; |585| 

           EXTU    .S2     B16,2,26,B20      ; |585| 
||         EXTU    .S1     A7,2,26,A9        ; |585| 
||         MV      .L2X    A7,B17            ; |585| Define a twin register

           EXTU    .S2     B17,10,26,B20     ; |585| 
||         LDW     .D2T2   *+B8[B20],B17     ; |585| 
||         LDW     .D1T1   *+A6[A9],A6       ; |585| 

           LDW     .D2T2   *+B7[B20],B20     ; |585| 
           NOP             3

           EXTU    .S2     B16,10,26,B17     ; |585| 
||         OR      .L1X    B17,A6,A4         ; |585| 

           OR      .L1X    B20,A4,A4         ; |585| 
||         LDW     .D2T1   *+B5[B17],A6      ; |585| 

;** --------------------------------------------------------------------------*
;** 586	-----------------------    C$15 = *((unsigned (* const)[16])sched+72)^L;
;** 586	-----------------------    C$14 = _rotl(*((unsigned * const)sched+8)^L, 28);
;** 586	-----------------------    R ^= C$2[_extu(C$14, 2u, 26u)]|C$4[_extu(C$15, 2u, 26u)]|C$6[_extu(C$14, 10u, 26u)]|C$7[_extu(C$15, 10u, 26u)]|C$8[_extu(C$14, 18u, 26u)]|C$9[_extu(C$15, 18u, 26u)]|C$10[_extu(C$14, 26u, 26u)]|C$11[_extu(C$15, 26u, 26u)];
;** 587	-----------------------    C$13 = *((unsigned (* const)[16])sched+68)^R;
;** 587	-----------------------    C$12 = _rotl(*((unsigned * const)sched+4)^R, 28);
;** 587	-----------------------    L ^= C$2[_extu(C$12, 2u, 26u)]|C$4[_extu(C$13, 2u, 26u)]|C$6[_extu(C$12, 10u, 26u)]|C$7[_extu(C$13, 10u, 26u)]|C$8[_extu(C$12, 18u, 26u)]|C$9[_extu(C$13, 18u, 26u)]|C$10[_extu(C$12, 26u, 26u)]|C$11[_extu(C$13, 26u, 26u)];
;** 588	-----------------------    C$5 = *((unsigned (* const)[16])sched+64)^L;
;** 588	-----------------------    C$3 = _rotl(*(unsigned * const)sched^L, 28);
;** 588	-----------------------    R ^= C$2[_extu(C$3, 2u, 26u)]|C$4[_extu(C$5, 2u, 26u)]|C$6[_extu(C$3, 10u, 26u)]|C$7[_extu(C$5, 10u, 26u)]|C$8[_extu(C$3, 18u, 26u)]|C$9[_extu(C$5, 18u, 26u)]|C$10[_extu(C$3, 26u, 26u)]|C$11[_extu(C$5, 26u, 26u)];
;** 590	-----------------------    L = _rotl(L, 31);
;** 591	-----------------------    R = _rotl(R, 31);
;** 593	-----------------------    swap = L;
;** 594	-----------------------    L = R;
;** 595	-----------------------    R = swap;
;** 597	-----------------------    swap = (L>>1^R)&0x55555555u;
;** 597	-----------------------    L ^= swap*2u;
;** 597	-----------------------    R ^= swap;
;** 597	-----------------------    swap = (R>>8^L)&0xff00ffu;
;** 597	-----------------------    R ^= swap<<8;
;** 597	-----------------------    L ^= swap;
;** 597	-----------------------    swap = (R>>2^L)&0x33333333u;
;** 597	-----------------------    R ^= swap*4u;
;** 597	-----------------------    L ^= swap;
;** 597	-----------------------    swap = C$1 = (unsigned short)(L>>16^R);
;** 597	-----------------------    L ^= (unsigned)C$1<<16;
;** 597	-----------------------    R ^= swap;
;** 597	-----------------------    swap = (L>>4^R)&0xf0f0f0fu;
;** 597	-----------------------    L ^= swap<<4;
;** 597	-----------------------    R ^= swap;
;** 599	-----------------------    *output = L;
;** 600	-----------------------    output[1] = R;
;** 600	-----------------------    return;
           EXTU    .S1     A7,18,26,A9       ; |585| 
           LDW     .D1T1   *+A5[A9],A9       ; |585| 
           EXTU    .S2     B16,18,26,B17     ; |585| 

           LDW     .D2T2   *+B4[B17],B17     ; |585| 
||         EXTU    .S1     A7,26,26,A7       ; |585| 

           LDW     .D1T1   *+A3[A7],A7       ; |585| 
||         EXTU    .S2     B16,26,26,B16     ; |585| 

           LDW     .D2T2   *+B18[B16],B16    ; |585| 
||         OR      .L1     A6,A4,A4          ; |585| 

           OR      .L1     A9,A4,A4          ; |585| 
           LDW     .D2T2   *+B6(8),B20       ; |586| 
           OR      .L2X    B17,A4,B17        ; |585| 
           OR      .L2X    A7,B17,B22        ; |585| 

           LDW     .D2T2   *+B6(72),B17      ; |586| 
||         OR      .L2     B16,B22,B16       ; |585| 

           XOR     .L2     B16,B19,B19       ; |585| 
           XOR     .L2     B19,B20,B16       ; |586| 
           ROTL    .M2     B16,28,B16        ; |586| 
           NOP             1

           XOR     .L2     B19,B17,B17       ; |586| 
||         EXTU    .S2     B16,2,26,B22      ; |586| 

           EXTU    .S2     B17,2,26,B20      ; |586| 
||         LDW     .D2T2   *+B9[B22],B24     ; |586| 

           EXTU    .S2     B16,10,26,B16     ; |586| 
||         MV      .L1X    B16,A4            ; |586| Define a twin register
||         LDW     .D2T2   *+B8[B20],B20     ; |586| 

           EXTU    .S2     B17,10,26,B16     ; |586| 
||         LDW     .D2T2   *+B7[B16],B23     ; |586| 

           LDW     .D2T2   *+B5[B16],B22     ; |586| 
           EXTU    .S1     A4,18,26,A6       ; |586| 

           EXTU    .S2     B17,18,26,B16     ; |586| 
||         LDW     .D1T1   *+A5[A6],A6       ; |586| 

           EXTU    .S1     A4,26,26,A4       ; |586| 
||         LDW     .D2T2   *+B4[B16],B20     ; |586| 
||         OR      .L2     B20,B24,B16       ; |586| 

           OR      .L2     B23,B16,B17       ; |586| 
||         EXTU    .S2     B17,26,26,B16     ; |586| 
||         LDW     .D1T1   *+A3[A4],A4       ; |586| 

           LDW     .D2T2   *+B18[B16],B17    ; |586| 
||         OR      .L2     B22,B17,B16       ; |586| 

           NOP             1

           LDW     .D2T2   *+B6(4),B16       ; |587| 
||         OR      .L1X    A6,B16,A6         ; |586| 

           OR      .L1X    B20,A6,A6         ; |586| 
           OR      .L1     A4,A6,A4          ; |586| 

           LDW     .D2T2   *+B6(68),B17      ; |587| 
||         OR      .L1X    B17,A4,A4         ; |586| 

           XOR     .L1     A4,A8,A9          ; |586| 
           XOR     .L1X    A9,B16,A4         ; |587| 
           ROTL    .M1     A4,28,A4          ; |587| 
           MV      .L1X    B9,A6
           XOR     .L2X    A9,B17,B16        ; |587| 

           EXTU    .S1     A4,2,26,A7        ; |587| 
||         EXTU    .S2     B16,2,26,B17      ; |587| 
||         MV      .L2X    A4,B9             ; |587| Define a twin register

           LDW     .D2T2   *+B8[B17],B17     ; |587| 
||         LDW     .D1T1   *+A6[A7],A8       ; |587| 
||         EXTU    .S2     B9,10,26,B9       ; |587| 

           EXTU    .S2     B16,10,26,B9      ; |587| 
||         LDW     .D2T2   *+B7[B9],B22      ; |587| 

           LDW     .D2T2   *+B5[B9],B20      ; |587| 
||         EXTU    .S1     A4,18,26,A7       ; |587| 

           LDW     .D1T1   *+A5[A7],A7       ; |587| 
||         EXTU    .S2     B16,18,26,B9      ; |587| 

           LDW     .D2T2   *+B4[B9],B9       ; |587| 
||         EXTU    .S1     A4,26,26,A4       ; |587| 

           LDW     .D1T1   *+A3[A4],A4       ; |587| 
||         OR      .L1X    B17,A8,A8         ; |587| 
||         EXTU    .S2     B16,26,26,B16     ; |587| 

           LDW     .D2T2   *+B18[B16],B17    ; |587| 
||         OR      .L1X    B22,A8,A8         ; |587| 

           OR      .L1X    B20,A8,A8         ; |587| 

           LDW     .D2T2   *B6,B16           ; |588| 
||         OR      .L1     A7,A8,A7          ; |587| 

           OR      .L1X    B9,A7,A7          ; |587| 
           OR      .L1     A4,A7,A4          ; |587| 

           LDW     .D2T2   *+B6(64),B6       ; |588| 
||         OR      .L1X    B17,A4,A4         ; |587| 

           XOR     .L1X    A4,B19,A8         ; |587| 
           XOR     .L1X    A8,B16,A4         ; |588| 
           ROTL    .M1     A4,28,A4          ; |588| 
           NOP             1
           XOR     .L2X    A8,B6,B9          ; |588| 

           EXTU    .S1     A4,2,26,A7        ; |588| 
||         EXTU    .S2     B9,2,26,B16       ; |588| 
||         MV      .L2X    A4,B6             ; |588| Define a twin register

           EXTU    .S2     B6,10,26,B8       ; |588| 
||         LDW     .D2T2   *+B8[B16],B6      ; |588| 
||         LDW     .D1T1   *+A6[A7],A6       ; |588| 

           EXTU    .S2     B9,10,26,B8       ; |588| 
||         LDW     .D2T2   *+B7[B8],B7       ; |588| 

           EXTU    .S1     A4,18,26,A7       ; |588| 
||         LDW     .D2T2   *+B5[B8],B5       ; |588| 

           EXTU    .S2     B9,18,26,B8       ; |588| 
||         LDW     .D1T1   *+A5[A7],A5       ; |588| 

           EXTU    .S1     A4,26,26,A4       ; |588| 
||         LDW     .D2T2   *+B4[B8],B4       ; |588| 

           EXTU    .S2     B9,26,26,B6       ; |588| 
||         OR      .L1X    B6,A6,A3          ; |588| 
||         LDW     .D1T1   *+A3[A4],A4       ; |588| 

           OR      .L1X    B7,A3,A3          ; |588| 
||         LDW     .D2T2   *+B18[B6],B6      ; |588| 

           OR      .L1X    B5,A3,A3          ; |588| 
           OR      .L1     A5,A3,A3          ; |588| 
           OR      .L1X    B4,A3,A3          ; |588| 
           OR      .L1     A4,A3,A3          ; |588| 
           OR      .L1X    B6,A3,A3          ; |588| 
           XOR     .L1     A3,A9,A3          ; |588| 
           ROTL    .M1     A3,31,A5          ; |591| 
           ROTL    .M1     A8,31,A4          ; |590| 
           MVKL    .S1     0x55555555,A3     ; |597| 

           SHRU    .S1     A5,1,A4           ; |597| 
||         MV      .L1     A4,A6             ; |593| 

           MVKH    .S1     0x55555555,A3     ; |597| 
||         XOR     .L1     A6,A4,A4          ; |597| 

           AND     .L1     A3,A4,A3          ; |597| 

           ADD     .L1     A3,A3,A3          ; |597| 
||         XOR     .S1     A3,A6,A6          ; |597| 

           SHRU    .S1     A6,8,A3           ; |597| 
||         XOR     .L1     A3,A5,A4          ; |597| 

           MVKL    .S2     0xff00ff,B4       ; |597| 
||         XOR     .L1     A4,A3,A3          ; |597| 

           MVKH    .S2     0xff00ff,B4       ; |597| 
           AND     .L2X    B4,A3,B5          ; |597| 
           SHL     .S2     B5,8,B4           ; |597| 
           XOR     .L2X    B4,A6,B6          ; |597| 

           XOR     .L2X    B5,A4,B5          ; |597| 
||         SHRU    .S2     B6,2,B4           ; |597| 

           MVKL    .S1     0x33333333,A3     ; |597| 
||         XOR     .L2     B5,B4,B4          ; |597| 

           MVKH    .S1     0x33333333,A3     ; |597| 
           AND     .L1X    A3,B4,A3          ; |597| 

           SHL     .S1     A3,2,A3           ; |597| 
||         XOR     .L1X    A3,B5,A5          ; |597| 

           SHRU    .S1     A5,16,A3          ; |597| 
||         XOR     .L1X    A3,B6,A6          ; |597| 

           XOR     .L1     A6,A3,A3          ; |597| 
           EXTU    .S1     A3,16,16,A4       ; |597| 
           SHL     .S1     A3,16,A3          ; |597| 
           XOR     .L1     A3,A5,A5          ; |597| 

           XOR     .L1     A4,A6,A4          ; |597| 
||         SHRU    .S1     A5,4,A3           ; |597| 
||         MVKL    .S2     0xf0f0f0f,B4      ; |597| 

           XOR     .L1     A4,A3,A3          ; |597| 
||         RET     .S2     B3                ; |601| 

           MVKH    .S2     0xf0f0f0f,B4      ; |597| 
           AND     .L2X    B4,A3,B4          ; |597| 

           SHL     .S2     B4,4,B4           ; |597| 
||         XOR     .L2X    B4,A4,B5          ; |597| 

           XOR     .L2X    B4,A5,B4          ; |597| 
||         STW     .D2T2   B5,*+B21(4)       ; |600| 

	.dwpsn	"sshdes.c",601,1
           STW     .D2T2   B4,*B21           ; |599| 
           ; BRANCH OCCURS {B3}              ; |601| 
	.dwattr DW$40, DW_AT_end_file("sshdes.c")
	.dwattr DW$40, DW_AT_end_line(0x259)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendtag DW$40

	.sect	".text"

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("des_cbc_decrypt"), DW_AT_symbol_name("_des_cbc_decrypt")
	.dwattr DW$45, DW_AT_low_pc(_des_cbc_decrypt)
	.dwattr DW$45, DW_AT_high_pc(0x00)
	.dwattr DW$45, DW_AT_begin_file("sshdes.c")
	.dwattr DW$45, DW_AT_begin_line(0x273)
	.dwattr DW$45, DW_AT_begin_column(0x0d)
	.dwattr DW$45, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$45, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",629,1

;******************************************************************************
;* FUNCTION NAME: _des_cbc_decrypt                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 16 Save = 28 byte                 *
;******************************************************************************
_des_cbc_decrypt:
;** --------------------------------------------------------------------------*
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$46, DW_AT_type(*DW$T$26)
	.dwattr DW$46, DW_AT_location[DW_OP_reg4]
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$47, DW_AT_type(*DW$T$11)
	.dwattr DW$47, DW_AT_location[DW_OP_reg20]
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sched"), DW_AT_symbol_name("_sched")
	.dwattr DW$48, DW_AT_type(*DW$T$50)
	.dwattr DW$48, DW_AT_location[DW_OP_reg6]
;** 629	-----------------------    blk = blk;
;** 633	-----------------------    assert((len&7u) == 0u);

           MV      .L1X    B4,A3             ; |629| 
||         STW     .D2T2   B10,*SP--(32)     ; |629| 
||         MV      .L2X    A6,B10            ; |629| 

           AND     .L1     7,A3,A0           ; |633| 
||         STDW    .D2T1   A11:A10,*+SP(24)  ; |629| 
||         MV      .S1X    B4,A11            ; |629| 
||         MV      .D1     A4,A10            ; |629| 

   [!A0]   B       .S1     L4                ; |633| 
|| [!A0]   MV      .L1     A11,A1            ; |636| 
|| [ A0]   MVK     .D1     0x1,A1            ; |636| nullify predicate
|| [!A0]   MVK     .S2     33,B4             ; |636| 
||         STW     .D2T2   B13,*+SP(20)      ; |629| 
||         MV      .L2     B3,B13            ; |629| 

   [ A0]   CALL    .S1     __abort_msg       ; |633| 
|| [!A0]   MVK     .S2     32,B31            ; |635| 
|| [!A0]   LDW     .D2T1   *+B10[B4],A19     ; |636| 

   [!A1]   B       .S2     L6                ; |637| 
||         MVKL    .S1     SL10+0,A4         ; |633| 
|| [!A0]   LDW     .D2T1   *+B10[B31],A18    ; |635| 

   [!A0]   SHRU    .S1     A1,3,A0           ; |638| 
           MVKH    .S1     SL10+0,A4         ; |633| 
           NOP             1
           ; BRANCHCC OCCURS {L4}            ; |633| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL3,B3,0          ; |633| 
RL3:       ; CALL OCCURS {__abort_msg}       ; |633| 

           MV      .L1     A11,A1            ; |636| 
||         MVK     .S2     32,B31            ; |635| 

   [!A1]   BNOP    .S1     L6,1              ; |637| 
||         MVK     .S2     33,B4             ; |636| 
||         LDW     .D2T1   *+B10[B31],A18    ; |635| 

           SHRU    .S1     A1,3,A0           ; |638| 
||         LDW     .D2T1   *+B10[B4],A19     ; |636| 

           NOP             1
;** --------------------------------------------------------------------------*
L4:    
;** 635	-----------------------    iv0 = (*sched).iv0;
;** 636	-----------------------    iv1 = (*sched).iv1;
;** 637	-----------------------    if ( !len ) goto g4;
;** 638	-----------------------    L$1 = len>>3;
;**  	-----------------------    #pragma MUST_ITERATE(1, 536870911, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           NOP             2
           ; BRANCHCC OCCURS {L6}            ; |637| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L5:    
DW$L$_des_cbc_decrypt$4$B:
	.dwpsn	"sshdes.c",637,0
;**	-----------------------g3:
;** 638	-----------------------    xL = (unsigned)blk[3]|(unsigned)blk[2]<<8|(unsigned)blk[1]<<16|(unsigned)*blk<<24;
;** 639	-----------------------    xR = (unsigned)blk[7]|(unsigned)blk[6]<<8|(unsigned)blk[5]<<16|(unsigned)blk[4]<<24;
;** 640	-----------------------    des_decipher(&out, xL, xR, sched);
;** 641	-----------------------    C$1 = ((double *)out)[0];
;** 641	-----------------------    iv0 ^= _lo(C$1);
;** 642	-----------------------    iv1 ^= _hi(C$1);
;** 643	-----------------------    *blk = iv0>>24;
;** 643	-----------------------    blk[1] = iv0>>16;
;** 643	-----------------------    blk[2] = iv0>>8;
;** 643	-----------------------    blk[3] = iv0;
;** 644	-----------------------    blk[4] = iv1>>24;
;** 644	-----------------------    blk[5] = iv1>>16;
;** 644	-----------------------    blk[6] = iv1>>8;
;** 644	-----------------------    blk[7] = iv1;
;** 646	-----------------------    iv0 = xL;
;** 647	-----------------------    iv1 = xR;
;** 645	-----------------------    blk += 8;
;** 637	-----------------------    if ( --L$1 ) goto g3;
           LDBU    .D1T1   *+A10(2),A3       ; |638| 
           LDBU    .D1T1   *+A10(1),A6       ; |638| 
           LDBU    .D1T1   *+A10(3),A4       ; |638| 
           LDBU    .D1T1   *+A10(6),A17      ; |639| 
           LDBU    .D1T1   *+A10(5),A16      ; |639| 

           LDBU    .D1T1   *+A10(7),A9       ; |639| 
||         SHL     .S1     A3,8,A5           ; |638| 

           LDBU    .D1T1   *A10,A7           ; |638| 
||         SHL     .S1     A6,16,A6          ; |638| 

           LDBU    .D1T1   *+A10(4),A8       ; |639| 
||         OR      .L1     A5,A4,A5          ; |638| 
||         ADD     .S1X    8,SP,A4           ; |640| 

           SHL     .S1     A17,8,A3          ; |639| 
||         OR      .L1     A6,A5,A6          ; |638| 

           CALL    .S2     _des_decipher     ; |640| 
||         SHL     .S1     A16,16,A16        ; |639| 

           OR      .L1     A3,A9,A3          ; |639| 

           SHL     .S1     A7,24,A31         ; |638| 
||         OR      .L1     A16,A3,A3         ; |639| 

           OR      .L1     A31,A6,A20        ; |638| 
||         SHL     .S1     A8,24,A5          ; |639| 

           OR      .L1     A5,A3,A21         ; |639| 

           MV      .L2X    A20,B4            ; |640| 
||         MV      .L1     A21,A6            ; |640| 
||         ADDKPC  .S2     RL4,B3,0          ; |640| 
||         MV      .D2     B10,B6            ; |640| 

RL4:       ; CALL OCCURS {_des_decipher}     ; |640| 
DW$L$_des_cbc_decrypt$4$E:
;** --------------------------------------------------------------------------*
DW$L$_des_cbc_decrypt$5$B:

           LDDW    .D2T2   *+SP(8),B5:B4     ; |641| 
||         SUB     .L1     A0,1,A0           ; |637| 

           NOP             4

           MV      .D1     A21,A19           ; |647| 
||         XOR     .L2X    B5,A19,B5         ; |642| 
||         MV      .S1     A20,A18           ; |646| 
||         XOR     .L1X    B4,A18,A3         ; |641| 

           STB     .D1T1   A3,*+A10(3)       ; |643| 
||         SHRU    .S2     B5,24,B4          ; |644| 

           STB     .D1T2   B4,*+A10(4)       ; |644| 
||         SHRU    .S2X    A3,24,B28         ; |643| 
||         SHRU    .S1X    B5,16,A4          ; |644| 

   [ A0]   B       .S1     L5                ; |637| 
||         STB     .D1T2   B28,*A10          ; |643| 
||         SHRU    .S2X    A3,8,B29          ; |643| 

           STB     .D1T2   B29,*+A10(2)      ; |643| 
||         SHRU    .S2X    A3,16,B30         ; |643| 

           STB     .D1T2   B30,*+A10(1)      ; |643| 
||         SHRU    .S2     B5,8,B31          ; |644| 

           STB     .D1T1   A4,*+A10(5)       ; |644| 
           STB     .D1T2   B31,*+A10(6)      ; |644| 
	.dwpsn	"sshdes.c",648,0

           ADD     .L1     8,A10,A10         ; |645| 
||         STB     .D1T2   B5,*+A10(7)       ; |644| 

           ; BRANCHCC OCCURS {L5}            ; |637| 
DW$L$_des_cbc_decrypt$5$E:
;** --------------------------------------------------------------------------*
L6:    
;**	-----------------------g4:
;** 649	-----------------------    (*sched).iv0 = iv0;
;** 650	-----------------------    (*sched).iv1 = iv1;
;** 650	-----------------------    return;
           MVK     .S2     33,B4             ; |650| 

           MVK     .S2     32,B4             ; |649| 
||         STW     .D2T1   A19,*+B10[B4]     ; |650| 

           STW     .D2T1   A18,*+B10[B4]     ; |649| 

           LDDW    .D2T1   *+SP(24),A11:A10  ; |651| 
||         MV      .L2     B13,B3            ; |651| 

           RET     .S2     B3                ; |651| 
||         LDW     .D2T2   *+SP(20),B13      ; |651| 

           LDW     .D2T2   *++SP(32),B10     ; |651| 
	.dwpsn	"sshdes.c",651,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |651| 

DW$49	.dwtag  DW_TAG_loop
	.dwattr DW$49, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\sshdes.asm:L5:1:1288598910")
	.dwattr DW$49, DW_AT_begin_file("sshdes.c")
	.dwattr DW$49, DW_AT_begin_line(0x27d)
	.dwattr DW$49, DW_AT_end_line(0x288)
DW$50	.dwtag  DW_TAG_loop_range
	.dwattr DW$50, DW_AT_low_pc(DW$L$_des_cbc_decrypt$4$B)
	.dwattr DW$50, DW_AT_high_pc(DW$L$_des_cbc_decrypt$4$E)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_des_cbc_decrypt$5$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_des_cbc_decrypt$5$E)
	.dwendtag DW$49

	.dwattr DW$45, DW_AT_end_file("sshdes.c")
	.dwattr DW$45, DW_AT_end_line(0x28b)
	.dwattr DW$45, DW_AT_end_column(0x01)
	.dwendtag DW$45

	.sect	".text"

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("des_ssh2_decrypt_blk"), DW_AT_symbol_name("_des_ssh2_decrypt_blk")
	.dwattr DW$52, DW_AT_low_pc(_des_ssh2_decrypt_blk)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("sshdes.c")
	.dwattr DW$52, DW_AT_begin_line(0x34d)
	.dwattr DW$52, DW_AT_begin_column(0x0d)
	.dwattr DW$52, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$52, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",846,1

;******************************************************************************
;* FUNCTION NAME: _des_ssh2_decrypt_blk                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des_ssh2_decrypt_blk:
;** --------------------------------------------------------------------------*
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$53, DW_AT_type(*DW$T$3)
	.dwattr DW$53, DW_AT_location[DW_OP_reg4]
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$54, DW_AT_type(*DW$T$26)
	.dwattr DW$54, DW_AT_location[DW_OP_reg20]
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$55, DW_AT_type(*DW$T$10)
	.dwattr DW$55, DW_AT_location[DW_OP_reg6]
;** 848	-----------------------    des_cbc_decrypt(blk, (unsigned)len, (struct $$fake0 *)handle);
;** 848	-----------------------    return;
           CALLRET .S1     _des_cbc_decrypt  ; |848| 
           NOP             1
           MV      .L1X    B4,A3             ; |846| 
           MV      .L2X    A6,B4             ; |846| 
           MV      .S1     A4,A6             ; |846| 
	.dwpsn	"sshdes.c",849,1
           MV      .L1     A3,A4             ; |848| 
RL5:       ; CALL-RETURN OCCURS {_des_cbc_decrypt}  ; |848| 
	.dwattr DW$52, DW_AT_end_file("sshdes.c")
	.dwattr DW$52, DW_AT_end_line(0x351)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendtag DW$52

	.sect	".text"

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("des_ssh1_make_context"), DW_AT_symbol_name("_des_ssh1_make_context")
	.dwattr DW$56, DW_AT_low_pc(_des_ssh1_make_context)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("sshdes.c")
	.dwattr DW$56, DW_AT_begin_line(0x2fe)
	.dwattr DW$56, DW_AT_begin_column(0x0e)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",767,1

;******************************************************************************
;* FUNCTION NAME: _des_ssh1_make_context                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des_ssh1_make_context:
;** --------------------------------------------------------------------------*
;** 769	-----------------------    return safemalloc(2u, 136u);
           CALLRET .S1     _safemalloc       ; |769| 
           NOP             3
           MVK     .L1     0x2,A4            ; |769| 
	.dwpsn	"sshdes.c",770,1
           MVK     .S2     0x88,B4           ; |769| 
RL6:       ; CALL-RETURN OCCURS {_safemalloc}  ; |769| 
	.dwattr DW$56, DW_AT_end_file("sshdes.c")
	.dwattr DW$56, DW_AT_end_line(0x302)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("bitsel"), DW_AT_symbol_name("_bitsel")
	.dwattr DW$57, DW_AT_low_pc(_bitsel)
	.dwattr DW$57, DW_AT_high_pc(0x00)
	.dwattr DW$57, DW_AT_begin_file("sshdes.c")
	.dwattr DW$57, DW_AT_begin_line(0x11f)
	.dwattr DW$57, DW_AT_begin_column(0x0f)
	.dwattr DW$57, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$57, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",288,1

;******************************************************************************
;* FUNCTION NAME: _bitsel                                                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B4,B5,B6,B7,B8,  *
;*                           B9,A16,A17,A18,B16                               *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,DP,SP,A16,A17,A18,B16                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_bitsel:
;** --------------------------------------------------------------------------*
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("input"), DW_AT_symbol_name("_input")
	.dwattr DW$58, DW_AT_type(*DW$T$53)
	.dwattr DW$58, DW_AT_location[DW_OP_reg4]
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bitnums"), DW_AT_symbol_name("_bitnums")
	.dwattr DW$59, DW_AT_type(*DW$T$69)
	.dwattr DW$59, DW_AT_location[DW_OP_reg20]
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$60, DW_AT_type(*DW$T$10)
	.dwattr DW$60, DW_AT_location[DW_OP_reg6]
;** 288	-----------------------    bitnums = bitnums;
;** 291	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;** 291	-----------------------    L$1 = size>>1;
;** 289	-----------------------    ret = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(14, 16, 2)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g2:
;** 291	-----------------------    C$4 = *(double *)bitnums++{2};
;** 291	-----------------------    s$2 = _hi(C$4);
;** 292	-----------------------    ret *= 2u;
;**  	-----------------------    if ( (int)_lo(C$4) < 0 ) goto g4;
;** 294	-----------------------    ret |= input[((int)_lo(C$4)>>3>>2)]>>(_lo(C$4)&0x1fu)&1u;
;**	-----------------------g4:
;** 292	-----------------------    ret *= 2u;
;**  	-----------------------    if ( s$2 < 0 ) goto g6;
;** 294	-----------------------    ret |= input[(s$2>>3>>2)]>>(s$2&0x1f)&1u;
;**	-----------------------g6:
;** 295	-----------------------    if ( --L$1 ) goto g2;
;** 296	-----------------------    return ret;
           MV      .L1X    B4,A18

           LDDW    .D1T1   *A18++,A5:A4      ; |291| (P) <0,0> 
||         MV      .L1     A4,A17

           MVC     .S2     CSR,B16
           AND     .L2     -2,B16,B4
           SHR     .S2X    A6,1,B5           ; |291| 
           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 290
;*      Loop opening brace source line   : 290
;*      Loop closing brace source line   : 295
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 14                    
;*      Known Maximum Trip Count         : 16                    
;*      Known Max Trip Count Factor      : 2
;*      Loop Carried Dependency Bound(^) : 4
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     4*       3     
;*      .D units                     3        0     
;*      .M units                     0        0     
;*      .X cross paths               0        4*    
;*      .T address paths             3        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          2        6     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        2     
;*      Bound(.L .S .D .LS .LSD)     4*       4*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 4  Too many predicates live on one side
;*                   Regs Live Always   :  2/1  (A/B-side)
;*                   Max Regs Live      : 13/8 
;*                   Max Cond Regs Live :  2/4 
;*         ii = 4  Too many predicates live on one side
;*                   Regs Live Always   :  2/1  (A/B-side)
;*                   Max Regs Live      : 15/8 
;*                   Max Cond Regs Live :  3/4 
;*         ii = 4  Too many predicates live on one side
;*                   Regs Live Always   :  2/1  (A/B-side)
;*                   Max Regs Live      : 13/8 
;*                   Max Cond Regs Live :  2/4 
;*         ii = 4  Did not find schedule
;*         ii = 5  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh24
;*
;*      Minimum safe trip count     : 4 (after unrolling)
;*----------------------------------------------------------------------------*
L7:    ; PIPED LOOP PROLOG

           MV      .L2X    A5,B4             ; |291| (P) <0,5> Define a twin register
||         CMPLT   .L1     A4,0,A1           ; (P) <0,5> 
||         LDDW    .D1T1   *A18++,A5:A4      ; |291| (P) <1,0> 
||         SHR     .S1     A4,5,A6           ; |294| (P) <0,5> 

           MVD     .M1     A1,A0             ; (P) <0,6> Split a long life
||         MV      .L1     A5,A3             ; |291| (P) <0,6> 
|| [!A1]   LDW     .D1T1   *+A17[A6],A16     ; |294| (P) <0,6> 

           CMPLT   .L2X    A5,0,B1           ; (P) <0,7> 
||         SHR     .S1     A3,5,A3           ; |294| (P) <0,7> 
||         EXTU    .S2     B4,27,27,B4       ; |294| (P) <0,7> 

           EXTU    .S1     A4,27,27,A3       ; |294| (P) <0,8> 
|| [!B1]   LDW     .D1T1   *+A17[A3],A7      ; |294| (P) <0,8> 
||         MVD     .M2     B1,B0             ; (P) <0,8> Split a long life

           MVD     .M2     B4,B9             ; |294| (P) <0,9> Split a long life

           SUB     .L2     B5,4,B2
||         MV      .S2X    A5,B4             ; |291| (P) <1,5> Define a twin register
||         CMPLT   .L1     A4,0,A1           ; (P) <1,5> 
||         LDDW    .D1T1   *A18++,A5:A4      ; |291| (P) <2,0> 
||         SHR     .S1     A4,5,A6           ; |294| (P) <1,5> 

	.dwpsn	"sshdes.c",290,0

           ZERO    .L2     B8                ; |289| 
|| [ B2]   BDEC    .S2     L8,B2             ; |295| (P) <0,11> 
||         MVD     .M1     A1,A0             ; (P) <1,6> Split a long life
||         MV      .L1     A5,A3             ; |291| (P) <1,6> 
|| [!A1]   LDW     .D1T1   *+A17[A6],A16     ; |294| (P) <1,6> 
|| [!A0]   SHRU    .S1     A16,A3,A9         ; |294| (P) <0,11> 

;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP KERNEL
DW$L$_bitsel$3$B:

           ADD     .D2     B8,B8,B5          ; |292| <0,12>  ^ 
|| [!A0]   AND     .L1     1,A9,A8           ; |294| <0,12> 
||         EXTU    .S2     B4,27,27,B4       ; |294| <1,7> 
||         CMPLT   .L2X    A5,0,B1           ; <1,7> 
||         SHR     .S1     A3,5,A3           ; |294| <1,7> 

   [!B0]   SHRU    .S2X    A7,B9,B7          ; |294| <0,13> 
||         MVD     .M2     B1,B0             ; <1,8> Split a long life
||         EXTU    .S1     A4,27,27,A3       ; |294| <1,8> 
|| [!B1]   LDW     .D1T1   *+A17[A3],A7      ; |294| <1,8> 

   [!B0]   AND     .L2     1,B7,B6           ; |294| <0,14> 
|| [!A0]   OR      .S2X    A8,B5,B5          ; |294| <0,14>  ^ 
||         MVD     .M2     B4,B9             ; |294| <1,9> Split a long life

           ADD     .S2     B5,B5,B8          ; |292| <0,15>  ^ 
||         MV      .L2X    A5,B4             ; |291| <2,5> Define a twin register
||         CMPLT   .L1     A4,0,A1           ; <2,5> 
||         SHR     .S1     A4,5,A6           ; |294| <2,5> 
||         LDDW    .D1T1   *A18++,A5:A4      ; |291| <3,0> 

	.dwpsn	"sshdes.c",295,0

   [!B0]   OR      .L2     B6,B8,B8          ; |294| <0,16>  ^ 
|| [ B2]   BDEC    .S2     L8,B2             ; |295| <1,11> 
|| [!A0]   SHRU    .S1     A16,A3,A9         ; |294| <1,11> 
||         MVD     .M1     A1,A0             ; <2,6> Split a long life
||         MV      .L1     A5,A3             ; |291| <2,6> 
|| [!A1]   LDW     .D1T1   *+A17[A6],A16     ; |294| <2,6> 

DW$L$_bitsel$3$E:
;** --------------------------------------------------------------------------*
L9:    ; PIPED LOOP EPILOG

           ADD     .D2     B8,B8,B5          ; |292| (E) <1,12>  ^ 
|| [!A0]   AND     .L1     1,A9,A8           ; |294| (E) <1,12> 
||         CMPLT   .L2X    A5,0,B1           ; (E) <2,7> 
||         SHR     .S1     A3,5,A3           ; |294| (E) <2,7> 
||         EXTU    .S2     B4,27,27,B4       ; |294| (E) <2,7> 

           MVD     .M2     B1,B0             ; (E) <2,8> Split a long life
||         EXTU    .S1     A4,27,27,A3       ; |294| (E) <2,8> 
|| [!B1]   LDW     .D1T1   *+A17[A3],A7      ; |294| (E) <2,8> 
|| [!B0]   SHRU    .S2X    A7,B9,B7          ; |294| (E) <1,13> 

   [!B0]   AND     .L2     1,B7,B6           ; |294| (E) <1,14> 
|| [!A0]   OR      .S2X    A8,B5,B5          ; |294| (E) <1,14>  ^ 
||         MVD     .M2     B4,B9             ; |294| (E) <2,9> Split a long life

           ADD     .L2     B5,B5,B8          ; |292| (E) <1,15>  ^ 
||         MV      .S2X    A5,B4             ; |291| (E) <3,5> Define a twin register
||         SHR     .S1     A4,5,A6           ; |294| (E) <3,5> 
||         CMPLT   .L1     A4,0,A1           ; (E) <3,5> 

   [!B0]   OR      .L2     B6,B8,B8          ; |294| (E) <1,16>  ^ 
||         MVD     .M1     A1,A0             ; (E) <3,6> Split a long life
||         MV      .L1     A5,A3             ; |291| (E) <3,6> 
|| [!A1]   LDW     .D1T1   *+A17[A6],A16     ; |294| (E) <3,6> 
|| [!A0]   SHRU    .S1     A16,A3,A9         ; |294| (E) <2,11> 

           ADD     .D2     B8,B8,B5          ; |292| (E) <2,12>  ^ 
|| [!A0]   AND     .L1     1,A9,A8           ; |294| (E) <2,12> 
||         CMPLT   .L2X    A5,0,B1           ; (E) <3,7> 
||         SHR     .S1     A3,5,A3           ; |294| (E) <3,7> 
||         EXTU    .S2     B4,27,27,B4       ; |294| (E) <3,7> 

   [!B0]   SHRU    .S2X    A7,B9,B7          ; |294| (E) <2,13> 
||         EXTU    .S1     A4,27,27,A3       ; |294| (E) <3,8> 
|| [!B1]   LDW     .D1T1   *+A17[A3],A7      ; |294| (E) <3,8> 
||         MVD     .M2     B1,B0             ; (E) <3,8> Split a long life

   [!B0]   AND     .L2     1,B7,B6           ; |294| (E) <2,14> 
|| [!A0]   OR      .S2X    A8,B5,B5          ; |294| (E) <2,14>  ^ 
||         MVD     .M2     B4,B9             ; |294| (E) <3,9> Split a long life

           ADD     .L2     B5,B5,B8          ; |292| (E) <2,15>  ^ 

   [!B0]   OR      .L2     B6,B8,B8          ; |294| (E) <2,16>  ^ 
|| [!A0]   SHRU    .S1     A16,A3,A9         ; |294| (E) <3,11> 

           MVC     .S2     B16,CSR           ; interrupts on
||         ADD     .L2     B8,B8,B5          ; |292| (E) <3,12>  ^ 
|| [!A0]   AND     .L1     1,A9,A8           ; |294| (E) <3,12> 

   [!B0]   SHRU    .S2X    A7,B9,B7          ; |294| (E) <3,13> 

   [!B0]   AND     .L2     1,B7,B6           ; |294| (E) <3,14> 
||         RET     .S2     B3                ; |297| 
|| [!A0]   OR      .D2X    A8,B5,B5          ; |294| (E) <3,14>  ^ 

           ADD     .L2     B5,B5,B8          ; |292| (E) <3,15>  ^ 
   [!B0]   OR      .L2     B6,B8,B8          ; |294| (E) <3,16>  ^ 
           NOP             1
           MV      .L1X    B8,A4             ; |296| 
	.dwpsn	"sshdes.c",297,1
           NOP             1
           ; BRANCH OCCURS {B3}              ; |297| 

DW$61	.dwtag  DW_TAG_loop
	.dwattr DW$61, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\sshdes.asm:L8:1:1288598910")
	.dwattr DW$61, DW_AT_begin_file("sshdes.c")
	.dwattr DW$61, DW_AT_begin_line(0x122)
	.dwattr DW$61, DW_AT_end_line(0x127)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_bitsel$3$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_bitsel$3$E)
	.dwendtag DW$61

	.dwattr DW$57, DW_AT_end_file("sshdes.c")
	.dwattr DW$57, DW_AT_end_line(0x129)
	.dwattr DW$57, DW_AT_end_column(0x01)
	.dwendtag DW$57

	.sect	".text"

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("des_key_setup"), DW_AT_symbol_name("_des_key_setup")
	.dwattr DW$63, DW_AT_low_pc(_des_key_setup)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("sshdes.c")
	.dwattr DW$63, DW_AT_begin_line(0x12b)
	.dwattr DW$63, DW_AT_begin_column(0x0d)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",300,1
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("PC1_Cbits"), DW_AT_symbol_name("_PC1_Cbits$1")
	.dwattr DW$64, DW_AT_type(*DW$T$71)
	.dwattr DW$64, DW_AT_location[DW_OP_addr _PC1_Cbits$1]
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("PC1_Dbits"), DW_AT_symbol_name("_PC1_Dbits$2")
	.dwattr DW$65, DW_AT_type(*DW$T$71)
	.dwattr DW$65, DW_AT_location[DW_OP_addr _PC1_Dbits$2]
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("PC2_0246"), DW_AT_symbol_name("_PC2_0246$3")
	.dwattr DW$66, DW_AT_type(*DW$T$72)
	.dwattr DW$66, DW_AT_location[DW_OP_addr _PC2_0246$3]
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("PC2_1357"), DW_AT_symbol_name("_PC2_1357$4")
	.dwattr DW$67, DW_AT_type(*DW$T$72)
	.dwattr DW$67, DW_AT_location[DW_OP_addr _PC2_1357$4]
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("leftshifts"), DW_AT_symbol_name("_leftshifts$5")
	.dwattr DW$68, DW_AT_type(*DW$T$73)
	.dwattr DW$68, DW_AT_location[DW_OP_addr _leftshifts$5]

;******************************************************************************
;* FUNCTION NAME: _des_key_setup                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,B16,B17,B31                      *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,B16,B17,B31                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                  *
;******************************************************************************
_des_key_setup:
;** --------------------------------------------------------------------------*
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key_msw"), DW_AT_symbol_name("_key_msw")
	.dwattr DW$69, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_location[DW_OP_reg4]
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key_lsw"), DW_AT_symbol_name("_key_lsw")
	.dwattr DW$70, DW_AT_type(*DW$T$19)
	.dwattr DW$70, DW_AT_location[DW_OP_reg20]
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sched"), DW_AT_symbol_name("_sched")
	.dwattr DW$71, DW_AT_type(*DW$T$50)
	.dwattr DW$71, DW_AT_location[DW_OP_reg6]
;** 333	-----------------------    ((double *)buf)[0] = _itod(key_msw, key_lsw);
;** 336	-----------------------    C = bitsel(&buf, &PC1_Cbits, 28);
;** 337	-----------------------    D = bitsel(&buf, &PC1_Dbits, 28);
;**  	-----------------------    K$32 = 32;
;**  	-----------------------    U$35 = (unsigned * const)sched-4;
;** 339	-----------------------    L$1 = 16;
;**  	-----------------------    K$38 = &PC2_1357[0];
;**  	-----------------------    K$34 = &PC2_0246[0];
;**  	-----------------------    U$20 = &leftshifts[0];
;**  	-----------------------    #pragma MUST_ITERATE(16, 16, 16)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _bitsel           ; |336| 
           SUB     .D2     SP,16,SP          ; |300| 
           MVKL    .S2     _PC1_Cbits$1,B5   ; |336| 
           MVKH    .S2     _PC1_Cbits$1,B5   ; |336| 

           MV      .L2     B3,B31            ; |300| 
||         SUB     .S1     A6,4,A24
||         MV      .D1     A4,A5             ; |300| 
||         MV      .L1X    B4,A4             ; |300| 

           ADDKPC  .S2     RL7,B3,0          ; |336| 
||         ADD     .L1X    8,SP,A4           ; |336| 
||         STDW    .D2T1   A5:A4,*+SP(8)     ; |333| 
||         MV      .L2     B5,B4             ; |336| 
||         MVK     .S1     0x1c,A6           ; |336| 
||         MV      .D1     A6,A27            ; |300| 

RL7:       ; CALL OCCURS {_bitsel}           ; |336| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bitsel           ; |337| 
           MVKL    .S1     _PC1_Dbits$2,A3   ; |337| 
           MVKH    .S1     _PC1_Dbits$2,A3   ; |337| 
           ADDKPC  .S2     RL8,B3,0          ; |337| 
           MV      .L2X    A3,B4             ; |337| 

           MVK     .S1     0x1c,A6           ; |337| 
||         MV      .D1     A4,A20            ; |336| 
||         ADD     .L1X    8,SP,A4           ; |337| 

RL8:       ; CALL OCCURS {_bitsel}           ; |337| 
;** --------------------------------------------------------------------------*
           MVKL    .S2     _leftshifts$5,B5
           MVKH    .S2     _leftshifts$5,B5
           MVKL    .S1     _PC2_1357$4,A23
           MV      .L1X    B5,A25
           LDW     .D1T1   *A25++,A3         ; |340| 
           MVKL    .S2     _PC2_0246$3,B6

           MVK     .S1     28,A28            ; |340| 
||         MVK     .S2     0x10,B4           ; |339| 

           MVKH    .S2     _PC2_0246$3,B6
||         MVK     .S1     0x20,A26

           MVKH    .S1     _PC2_1357$4,A23
||         MV      .L1X    B4,A21            ; |339| 
||         MV      .D1     A4,A19            ; |337| 

	.dwpsn	"sshdes.c",339,0

           SUB     .L1     A28,A3,A3         ; |340| 
||         MV      .L2X    A3,B4             ; |340| Define a twin register
||         SHL     .S1     A20,A3,A4         ; |340| 
||         MV      .D1X    B6,A22

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L10:    
DW$L$_des_key_setup$4$B:
;**	-----------------------g2:
;** 340	-----------------------    C$2 = *U$20++;
;** 340	-----------------------    C$3 = 28-C$2;
;** 340	-----------------------    C = _extu(C<<C$2|C>>C$3, 4u, 4u);
;** 341	-----------------------    D = _extu(D<<C$2|D>>C$3, 4u, 4u);
;** 343	-----------------------    ((double *)buf)[0] = _itod(C, D);
;** 344	-----------------------    *(++U$35) = bitsel(&buf, K$34, K$32);
;** 345	-----------------------    U$35[16] = bitsel(&buf, K$38, K$32);
;** 339	-----------------------    if ( --L$1 ) goto g2;
;** 348	-----------------------    (*sched).iv1 = C$1 = 0u;

           SHRU    .S1     A20,A3,A5         ; |340| 
||         SHL     .S2X    A19,B4,B17        ; |341| 

           CALL    .S2     _bitsel           ; |344| 
||         SHRU    .S1     A19,A3,A29        ; |341| 
||         OR      .L1     A5,A4,A3          ; |340| 

           EXTU    .S1     A3,4,4,A20        ; |340| 
||         OR      .L1X    A29,B17,A3        ; |341| Define a twin register

           EXTU    .S1     A3,4,4,A19        ; |341| 
||         MV      .L1     A20,A5            ; |343| 

           MV      .L1     A19,A4            ; |343| 

           STDW    .D2T1   A5:A4,*+SP(8)     ; |343| 
||         ADD     .L1X    8,SP,A4           ; |344| 

           ADDKPC  .S2     RL9,B3,0          ; |344| 
||         MV      .L1     A26,A6            ; |344| 
||         MV      .L2X    A22,B4            ; |344| 

RL9:       ; CALL OCCURS {_bitsel}           ; |344| 
DW$L$_des_key_setup$4$E:
;** --------------------------------------------------------------------------*
DW$L$_des_key_setup$5$B:
           CALL    .S1     _bitsel           ; |345| 
           ADDKPC  .S2     RL10,B3,0         ; |345| 
           MV      .S1     A26,A6            ; |345| 
           MV      .L2X    A23,B4            ; |345| 
           STW     .D1T1   A4,*++A24         ; |344| 
           ADD     .L1X    8,SP,A4           ; |345| 
RL10:      ; CALL OCCURS {_bitsel}           ; |345| 
DW$L$_des_key_setup$5$E:
;** --------------------------------------------------------------------------*
DW$L$_des_key_setup$6$B:

           SUB     .L1     A21,1,A0          ; |339| 
||         SUB     .S1     A21,1,A21         ; |339| 
||         STW     .D1T1   A4,*+A24(64)      ; |345| 

   [ A0]   BNOP    .S1     L10,2             ; |339| 
|| [ A0]   LDW     .D1T1   *A25++,A3         ; |340| 

   [!A0]   RETNOP  .S2     B31,1             ; |349| 
	.dwpsn	"sshdes.c",346,0

           MV      .L2X    A3,B4             ; |340| Define a twin register
||         SHL     .S1     A20,A3,A4         ; |340| 
||         SUB     .L1     A28,A3,A3         ; |340| 

           ; BRANCHCC OCCURS {L10}           ; |339| 
DW$L$_des_key_setup$6$E:
;** --------------------------------------------------------------------------*
;** 348	-----------------------    (*sched).iv0 = C$1;
;** 348	-----------------------    return;

           MVK     .S1     32,A4             ; |348| 
||         ZERO    .L1     A3                ; |348| 
||         ADDK    .S2     16,SP             ; |349| 

           STW     .D1T1   A3,*+A27[A4]      ; |348| 
||         MVK     .S1     33,A4             ; |348| 

	.dwpsn	"sshdes.c",349,1
           STW     .D1T1   A3,*+A27[A4]      ; |348| 
           ; BRANCH OCCURS {B31}             ; |349| 

DW$72	.dwtag  DW_TAG_loop
	.dwattr DW$72, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\sshdes.asm:L10:1:1288598910")
	.dwattr DW$72, DW_AT_begin_file("sshdes.c")
	.dwattr DW$72, DW_AT_begin_line(0x153)
	.dwattr DW$72, DW_AT_end_line(0x15a)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$_des_key_setup$4$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$_des_key_setup$4$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_des_key_setup$5$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_des_key_setup$5$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_des_key_setup$6$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_des_key_setup$6$E)
	.dwendtag DW$72

	.dwattr DW$63, DW_AT_end_file("sshdes.c")
	.dwattr DW$63, DW_AT_end_line(0x15d)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"

DW$76	.dwtag  DW_TAG_subprogram, DW_AT_name("des_key"), DW_AT_symbol_name("_des_key")
	.dwattr DW$76, DW_AT_low_pc(_des_key)
	.dwattr DW$76, DW_AT_high_pc(0x00)
	.dwattr DW$76, DW_AT_begin_file("sshdes.c")
	.dwattr DW$76, DW_AT_begin_line(0x31b)
	.dwattr DW$76, DW_AT_begin_column(0x0d)
	.dwattr DW$76, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$76, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",796,1

;******************************************************************************
;* FUNCTION NAME: _des_key                                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,   *
;*                           A26,A27,A28,A29,B16,B17,B30,B31                  *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,B16,B17,B30,B31                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_des_key:
;** --------------------------------------------------------------------------*
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$77, DW_AT_type(*DW$T$3)
	.dwattr DW$77, DW_AT_location[DW_OP_reg4]
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$78, DW_AT_type(*DW$T$26)
	.dwattr DW$78, DW_AT_location[DW_OP_reg20]
;** 798	-----------------------    des_key_setup((((unsigned)(unsigned long)*key<<8|(unsigned)(unsigned long)key[1])<<8|(unsigned)(unsigned long)key[2])<<8|(unsigned)(unsigned long)key[3], (((unsigned)(unsigned long)key[4]<<8|(unsigned)(unsigned long)key[5])<<8|(unsigned)(unsigned long)key[6])<<8|(unsigned)(unsigned long)key[7], (struct $$fake0 *)handle);
;** 798	-----------------------    return;
           LDBU    .D2T2   *B4,B8            ; |798| 
           LDBU    .D2T2   *+B4(4),B5        ; |798| 
           LDBU    .D2T2   *+B4(5),B6        ; |798| 
           LDBU    .D2T2   *+B4(1),B16       ; |798| 
           LDBU    .D2T2   *+B4(6),B7        ; |798| 
           LDBU    .D2T2   *+B4(2),B9        ; |798| 

           LDBU    .D2T2   *+B4(3),B8        ; |798| 
||         SHL     .S2     B5,8,B5           ; |798| 
||         SHL     .S1X    B8,8,A3           ; |798| 

           CALL    .S1     _des_key_setup    ; |798| 
||         OR      .L2     B6,B5,B4          ; |798| 
||         LDBU    .D2T2   *+B4(7),B5        ; |798| 

           OR      .L1X    B16,A3,A3         ; |798| 

           SHL     .S2     B4,8,B4           ; |798| 
||         SHL     .S1     A3,8,A3           ; |798| 

           OR      .L2     B7,B4,B4          ; |798| 
||         OR      .L1X    B9,A3,A3          ; |798| 

           SHL     .S2     B4,8,B4           ; |798| 
||         SHL     .S1     A3,8,A3           ; |798| 

           ADDKPC  .S2     RL11,B3,0         ; |798| 
||         OR      .L2     B5,B4,B4          ; |798| 
||         OR      .L1X    B8,A3,A4          ; |798| 
||         MV      .D2     B3,B30            ; |796| 
||         MV      .S1     A4,A6             ; |796| 

RL11:      ; CALL OCCURS {_des_key_setup}    ; |798| 
;** --------------------------------------------------------------------------*
	.dwpsn	"sshdes.c",800,1
           RETNOP  .S2     B30,5             ; |800| 
           ; BRANCH OCCURS {B30}             ; |800| 
	.dwattr DW$76, DW_AT_end_file("sshdes.c")
	.dwattr DW$76, DW_AT_end_line(0x320)
	.dwattr DW$76, DW_AT_end_column(0x01)
	.dwendtag DW$76

	.sect	".text"

DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("des_sesskey"), DW_AT_symbol_name("_des_sesskey")
	.dwattr DW$79, DW_AT_low_pc(_des_sesskey)
	.dwattr DW$79, DW_AT_high_pc(0x00)
	.dwattr DW$79, DW_AT_begin_file("sshdes.c")
	.dwattr DW$79, DW_AT_begin_line(0x3f0)
	.dwattr DW$79, DW_AT_begin_column(0x0d)
	.dwattr DW$79, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$79, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",1009,1

;******************************************************************************
;* FUNCTION NAME: _des_sesskey                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,   *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B29,B30,B31      *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_des_sesskey:
;** --------------------------------------------------------------------------*
DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$80, DW_AT_type(*DW$T$3)
	.dwattr DW$80, DW_AT_location[DW_OP_reg4]
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$81, DW_AT_type(*DW$T$26)
	.dwattr DW$81, DW_AT_location[DW_OP_reg20]
;* 1011	-----------------------    des_key(handle, key);
;* 1012	-----------------------    des_key((struct $$fake0 *)handle+136, key);
;* 1012	-----------------------    return;
           CALL    .S1     _des_key          ; |1011| 
           MV      .L1X    B4,A31            ; |1009| 
           MV      .S1     A4,A30            ; |1009| 
           MV      .L2     B3,B29            ; |1009| 
           ADDKPC  .S2     RL12,B3,1         ; |1011| 
RL12:      ; CALL OCCURS {_des_key}          ; |1011| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _des_key          ; |1012| 
           ADDKPC  .S2     RL13,B3,2         ; |1012| 
           MV      .L2X    A31,B4            ; |1012| 
           ADDAD   .D1     A30,17,A4         ; |1012| 
RL13:      ; CALL OCCURS {_des_key}          ; |1012| 
;** --------------------------------------------------------------------------*
	.dwpsn	"sshdes.c",1013,1
           RETNOP  .S2     B29,5             ; |1013| 
           ; BRANCH OCCURS {B29}             ; |1013| 
	.dwattr DW$79, DW_AT_end_file("sshdes.c")
	.dwattr DW$79, DW_AT_end_line(0x3f5)
	.dwattr DW$79, DW_AT_end_column(0x01)
	.dwendtag DW$79

	.sect	".text"

DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("des_make_context"), DW_AT_symbol_name("_des_make_context")
	.dwattr DW$82, DW_AT_low_pc(_des_make_context)
	.dwattr DW$82, DW_AT_high_pc(0x00)
	.dwattr DW$82, DW_AT_begin_file("sshdes.c")
	.dwattr DW$82, DW_AT_begin_line(0x2f9)
	.dwattr DW$82, DW_AT_begin_column(0x0e)
	.dwattr DW$82, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$82, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",762,1

;******************************************************************************
;* FUNCTION NAME: _des_make_context                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des_make_context:
;** --------------------------------------------------------------------------*
;** 763	-----------------------    return safemalloc(1u, 136u);
           CALLRET .S1     _safemalloc       ; |763| 
           NOP             3
           MVK     .L1     0x1,A4            ; |763| 
	.dwpsn	"sshdes.c",764,1
           MVK     .S2     0x88,B4           ; |763| 
RL14:      ; CALL-RETURN OCCURS {_safemalloc}  ; |763| 
	.dwattr DW$82, DW_AT_end_file("sshdes.c")
	.dwattr DW$82, DW_AT_end_line(0x2fc)
	.dwattr DW$82, DW_AT_end_column(0x01)
	.dwendtag DW$82

	.sect	".text"

DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("des_keysetup_xdmauth"), DW_AT_symbol_name("_des_keysetup_xdmauth")
	.dwattr DW$83, DW_AT_low_pc(_des_keysetup_xdmauth)
	.dwattr DW$83, DW_AT_high_pc(0x00)
	.dwattr DW$83, DW_AT_begin_file("sshdes.c")
	.dwattr DW$83, DW_AT_begin_line(0x38d)
	.dwattr DW$83, DW_AT_begin_column(0x0d)
	.dwattr DW$83, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$83, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",910,1

;******************************************************************************
;* FUNCTION NAME: _des_keysetup_xdmauth                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,B16,B17,B18,B30,B31              *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,B16,B17,B18,B30,B31          *
;*   Local Frame Size  : 0 Args + 12 Auto + 0 Save = 12 byte                  *
;******************************************************************************
_des_keysetup_xdmauth:
;** --------------------------------------------------------------------------*
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_name("keydata"), DW_AT_symbol_name("_keydata")
	.dwattr DW$84, DW_AT_type(*DW$T$26)
	.dwattr DW$84, DW_AT_location[DW_OP_reg4]
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dc"), DW_AT_symbol_name("_dc")
	.dwattr DW$85, DW_AT_type(*DW$T$50)
	.dwattr DW$85, DW_AT_location[DW_OP_reg20]
;**  	-----------------------    K$30 = 127u;
;**  	-----------------------    K$32 = 0xffffffffu;
;** 918	-----------------------    L$1 = 8;
;**  	-----------------------    U$28 = &key[0];
;** 915	-----------------------    bits = 0u;
;** 916	-----------------------    nbits = 0;
;** 917	-----------------------    j = 0;
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 919	-----------------------    if ( nbits >= 7 ) goto g4;
;** 920	-----------------------    bits = bits<<8|(unsigned)keydata[j];
;** 921	-----------------------    nbits += 8;
;** 922	-----------------------    ++j;
;**	-----------------------g4:
;** 924	-----------------------    C$1 = nbits-7;
;** 924	-----------------------    *U$28++ = (bits>>C$1)*2u;
;** 925	-----------------------    bits &= K$30<<C$1^K$32;
;** 926	-----------------------    nbits = C$1;
;** 918	-----------------------    if ( --L$1 ) goto g2;
;** 929	-----------------------    des_key_setup((unsigned)key[3]|(unsigned)key[2]<<8|(unsigned)key[1]<<16|(unsigned)key[0]<<24, (unsigned)key[7]|(unsigned)key[6]<<8|(unsigned)key[5]<<16|(unsigned)key[4]<<24, dc);

           ZERO    .L2     B5                ; |916| 
||         MVC     .S2     CSR,B17

           AND     .L2     -2,B17,B4
||         MVK     .S2     6,B2              ; |918| 
||         MVK     .D2     0xffffffff,B9
||         MV      .L1X    B4,A8             ; |910| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 918
;*      Loop opening brace source line   : 918
;*      Loop closing brace source line   : 927
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 4
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        3     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          3        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        2     
;*      Bound(.L .S .D .LS .LSD)     2        4*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 4  Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*
;*      Prolog not entirely removed
;*      Collapsed prolog stages     : 1
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh2
;*
;*      Minimum safe trip count     : 2
;*----------------------------------------------------------------------------*
L11:    ; PIPED LOOP PROLOG

           MV      .L1     A4,A7
||         ZERO    .S1     A6                ; |917| 
||         SUB     .D2     SP,16,SP          ; |910| 
||         CMPLT   .L2     B5,7,B1           ; |919| (P) <0,0>  ^ 
||         MVC     .S2     B4,CSR            ; interrupts off

           MV      .L2     B3,B30            ; |910| 
|| [ B1]   ADD     .D2     8,B5,B5           ; |921| (P) <0,1>  ^ 
|| [ B1]   LDBU    .D1T1   *+A6[A7],A4       ; |920| (P) <0,1> 
|| [ B2]   BDEC    .S2     L12,B2            ; |918| (P) <0,5> 
||         ROTL    .M2     B1,0,B0           ; |919| (P) <0,1> Split a long life

	.dwpsn	"sshdes.c",918,0

           ZERO    .L1     A5                ; |915| 
||         MVK     .S1     0x1,A0            ; init prolog collapse predicate
||         MVK     .S2     0x7f,B16
||         ADD     .L2     8,SP,B8
||         SUB     .D2     B5,7,B5           ; |924| (P) <0,2>  ^ 

;** --------------------------------------------------------------------------*
L12:    ; PIPED LOOP KERNEL
DW$L$_des_keysetup_xdmauth$3$B:

           MVD     .M2     B5,B4             ; |924| <1,3> Split a long life
||         SHL     .S2     B16,B5,B7         ; |925| <1,3> 

   [!A0]   AND     .S1X    B6,A5,A5          ; |925| <0,8>  ^ 
||         SHRU    .S2X    A5,B4,B4          ; |924| <0,8>  ^ 
|| [ B0]   ADD     .L1     1,A6,A6           ; |922| <1,4> 
||         XOR     .D2     B9,B7,B6          ; |925| <1,4> 
||         CMPLT   .L2     B5,7,B1           ; |919| <2,0>  ^ 

           ADD     .L2     B4,B4,B4          ; |924| <0,9> 
|| [ B2]   BDEC    .S2     L12,B2            ; |918| <1,5> 
||         SHL     .S1     A5,8,A3           ; |920| <1,5>  ^ 
||         ROTL    .M2     B1,0,B0           ; |919| <2,1> Split a long life
|| [ B1]   ADD     .D2     8,B5,B5           ; |921| <2,1>  ^ 
|| [ B1]   LDBU    .D1T1   *+A6[A7],A4       ; |920| <2,1> 

	.dwpsn	"sshdes.c",927,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,10> 
|| [!A0]   STB     .D2T2   B4,*B8++          ; |924| <0,10> 
|| [ B0]   OR      .S1     A4,A3,A5          ; |920| <1,6>  ^ 
||         SUB     .L2     B5,7,B5           ; |924| <2,2>  ^ 

DW$L$_des_keysetup_xdmauth$3$E:
;** --------------------------------------------------------------------------*
L13:    ; PIPED LOOP EPILOG
;** 929	-----------------------    return;

           SHL     .S2     B16,B5,B7         ; |925| (E) <2,3> 
||         MVD     .M2     B5,B4             ; |924| (E) <2,3> Split a long life

           AND     .L1X    B6,A5,A5          ; |925| (E) <1,8>  ^ 
|| [ B0]   ADD     .S1     1,A6,A6           ; |922| (E) <2,4> 
||         XOR     .L2     B9,B7,B6          ; |925| (E) <2,4> 
||         SHRU    .S2X    A5,B4,B4          ; |924| (E) <1,8>  ^ 

           MV      .L1     A8,A6             ; |929| 
||         ADD     .L2     B4,B4,B4          ; |924| (E) <1,9> 
||         SHL     .S1     A5,8,A3           ; |920| (E) <2,5>  ^ 

           MVC     .S2     B17,CSR           ; interrupts on
|| [ B0]   OR      .L1     A4,A3,A5          ; |920| (E) <2,6>  ^ 
||         STB     .D2T2   B4,*B8++          ; |924| (E) <1,10> 

           NOP             1
           SHRU    .S2X    A5,B4,B4          ; |924| (E) <2,8>  ^ 
           ADD     .L2     B4,B4,B4          ; |924| (E) <2,9> 
           STB     .D2T2   B4,*B8++          ; |924| (E) <2,10> 
           LDBU    .D2T2   *+SP(10),B17      ; |929| 
           LDBU    .D2T2   *+SP(14),B5       ; |929| 
           LDBU    .D2T2   *+SP(15),B7       ; |929| 
           LDBU    .D2T2   *+SP(11),B4       ; |929| 
           LDBU    .D2T2   *+SP(13),B9       ; |929| 

           SHL     .S2     B17,8,B17         ; |929| 
||         LDBU    .D2T2   *+SP(9),B18       ; |929| 

           SHL     .S2     B5,8,B8           ; |929| 
||         LDBU    .D2T2   *+SP(12),B6       ; |929| 

           LDBU    .D2T2   *+SP(8),B16       ; |929| 

           OR      .L2     B17,B4,B8         ; |929| 
||         OR      .S2     B8,B7,B4          ; |929| 

           SHL     .S2     B9,16,B5          ; |929| 
           OR      .L2     B5,B4,B5          ; |929| 
           SHL     .S2     B18,16,B9         ; |929| 
           SHL     .S2     B16,24,B7         ; |929| 

           OR      .L2     B9,B8,B6          ; |929| 
||         SHL     .S2     B6,24,B4          ; |929| 

           OR      .L2     B7,B6,B5          ; |929| 
||         OR      .D2     B4,B5,B4          ; |929| 
||         CALL    .S2     _des_key_setup    ; |929| 

           ADDKPC  .S2     RL15,B3,0         ; |929| 
           MV      .L1X    B5,A4             ; |929| 
           NOP             3
RL15:      ; CALL OCCURS {_des_key_setup}    ; |929| 
           RET     .S2     B30               ; |930| 
           ADDK    .S2     16,SP             ; |930| 
	.dwpsn	"sshdes.c",930,1
           NOP             4
           ; BRANCH OCCURS {B30}             ; |930| 

DW$86	.dwtag  DW_TAG_loop
	.dwattr DW$86, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\sshdes.asm:L12:1:1288598910")
	.dwattr DW$86, DW_AT_begin_file("sshdes.c")
	.dwattr DW$86, DW_AT_begin_line(0x396)
	.dwattr DW$86, DW_AT_end_line(0x39f)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_des_keysetup_xdmauth$3$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_des_keysetup_xdmauth$3$E)
	.dwendtag DW$86

	.dwattr DW$83, DW_AT_end_file("sshdes.c")
	.dwattr DW$83, DW_AT_end_line(0x3a2)
	.dwattr DW$83, DW_AT_end_column(0x01)
	.dwendtag DW$83

	.sect	".text"
	.global	_des_encrypt_xdmauth

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("des_encrypt_xdmauth"), DW_AT_symbol_name("_des_encrypt_xdmauth")
	.dwattr DW$88, DW_AT_low_pc(_des_encrypt_xdmauth)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("sshdes.c")
	.dwattr DW$88, DW_AT_begin_line(0x3a4)
	.dwattr DW$88, DW_AT_begin_column(0x06)
	.dwattr DW$88, DW_AT_frame_base[DW_OP_breg31 144]
	.dwattr DW$88, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",933,1

;******************************************************************************
;* FUNCTION NAME: _des_encrypt_xdmauth                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 136 Auto + 4 Save = 140 byte                *
;******************************************************************************
_des_encrypt_xdmauth:
;** --------------------------------------------------------------------------*
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("keydata"), DW_AT_symbol_name("_keydata")
	.dwattr DW$89, DW_AT_type(*DW$T$26)
	.dwattr DW$89, DW_AT_location[DW_OP_reg4]
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$90, DW_AT_type(*DW$T$26)
	.dwattr DW$90, DW_AT_location[DW_OP_reg20]
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$91, DW_AT_type(*DW$T$10)
	.dwattr DW$91, DW_AT_location[DW_OP_reg6]
;** 935	-----------------------    des_keysetup_xdmauth(keydata, &dc);
;** 936	-----------------------    des_cbc_encrypt(blk, 24u, &dc);
;** 936	-----------------------    return;
           CALL    .S1     _des_keysetup_xdmauth ; |935| 
           MV      .L1X    B4,A30            ; |933| 
           NOP             2
           ADDK    .S2     -144,SP           ; |933| 

           ADDKPC  .S2     RL16,B3,0         ; |935| 
||         ADD     .L2     4,SP,B4           ; |935| 
||         STW     .D2T2   B3,*+SP(144)      ; |933| 

RL16:      ; CALL OCCURS {_des_keysetup_xdmauth}  ; |935| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _des_cbc_encrypt  ; |936| 
           MVK     .S2     0x18,B4           ; |936| 
           ADDKPC  .S2     RL17,B3,1         ; |936| 
           MV      .L1     A30,A4            ; |936| 
           ADD     .S1X    4,SP,A6           ; |936| 
RL17:      ; CALL OCCURS {_des_cbc_encrypt}  ; |936| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(144),B3      ; |937| 
           NOP             3
           ADDK    .S2     144,SP            ; |937| 
	.dwpsn	"sshdes.c",937,1
           RETNOP  .S2     B3,5              ; |937| 
           ; BRANCH OCCURS {B3}              ; |937| 
	.dwattr DW$88, DW_AT_end_file("sshdes.c")
	.dwattr DW$88, DW_AT_end_line(0x3a9)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendtag DW$88

	.sect	".text"

DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("des_encrypt_blk"), DW_AT_symbol_name("_des_encrypt_blk")
	.dwattr DW$92, DW_AT_low_pc(_des_encrypt_blk)
	.dwattr DW$92, DW_AT_high_pc(0x00)
	.dwattr DW$92, DW_AT_begin_file("sshdes.c")
	.dwattr DW$92, DW_AT_begin_line(0x3f7)
	.dwattr DW$92, DW_AT_begin_column(0x0d)
	.dwattr DW$92, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$92, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",1016,1

;******************************************************************************
;* FUNCTION NAME: _des_encrypt_blk                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des_encrypt_blk:
;** --------------------------------------------------------------------------*
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$93, DW_AT_type(*DW$T$3)
	.dwattr DW$93, DW_AT_location[DW_OP_reg4]
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$94, DW_AT_type(*DW$T$26)
	.dwattr DW$94, DW_AT_location[DW_OP_reg20]
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$95, DW_AT_type(*DW$T$10)
	.dwattr DW$95, DW_AT_location[DW_OP_reg6]
;* 1018	-----------------------    des_cbc_encrypt(blk, (unsigned)len, (struct $$fake0 *)handle);
;* 1018	-----------------------    return;
           CALLRET .S1     _des_cbc_encrypt  ; |1018| 
           NOP             1
           MV      .L1X    B4,A3             ; |1016| 
           MV      .L2X    A6,B4             ; |1016| 
           MV      .S1     A4,A6             ; |1016| 
	.dwpsn	"sshdes.c",1019,1
           MV      .L1     A3,A4             ; |1018| 
RL18:      ; CALL-RETURN OCCURS {_des_cbc_encrypt}  ; |1018| 
	.dwattr DW$92, DW_AT_end_file("sshdes.c")
	.dwattr DW$92, DW_AT_end_line(0x3fb)
	.dwattr DW$92, DW_AT_end_column(0x01)
	.dwendtag DW$92

	.sect	".text"
	.global	_des_decrypt_xdmauth

DW$96	.dwtag  DW_TAG_subprogram, DW_AT_name("des_decrypt_xdmauth"), DW_AT_symbol_name("_des_decrypt_xdmauth")
	.dwattr DW$96, DW_AT_low_pc(_des_decrypt_xdmauth)
	.dwattr DW$96, DW_AT_high_pc(0x00)
	.dwattr DW$96, DW_AT_begin_file("sshdes.c")
	.dwattr DW$96, DW_AT_begin_line(0x3ab)
	.dwattr DW$96, DW_AT_begin_column(0x06)
	.dwattr DW$96, DW_AT_frame_base[DW_OP_breg31 144]
	.dwattr DW$96, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",940,1

;******************************************************************************
;* FUNCTION NAME: _des_decrypt_xdmauth                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 136 Auto + 4 Save = 140 byte                *
;******************************************************************************
_des_decrypt_xdmauth:
;** --------------------------------------------------------------------------*
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("keydata"), DW_AT_symbol_name("_keydata")
	.dwattr DW$97, DW_AT_type(*DW$T$26)
	.dwattr DW$97, DW_AT_location[DW_OP_reg4]
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$98, DW_AT_type(*DW$T$26)
	.dwattr DW$98, DW_AT_location[DW_OP_reg20]
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$99, DW_AT_type(*DW$T$10)
	.dwattr DW$99, DW_AT_location[DW_OP_reg6]
;** 942	-----------------------    des_keysetup_xdmauth(keydata, &dc);
;** 943	-----------------------    des_cbc_decrypt(blk, 24u, &dc);
;** 943	-----------------------    return;
           CALL    .S1     _des_keysetup_xdmauth ; |942| 
           MV      .L1X    B4,A30            ; |940| 
           NOP             2
           ADDK    .S2     -144,SP           ; |940| 

           ADDKPC  .S2     RL19,B3,0         ; |942| 
||         ADD     .L2     4,SP,B4           ; |942| 
||         STW     .D2T2   B3,*+SP(144)      ; |940| 

RL19:      ; CALL OCCURS {_des_keysetup_xdmauth}  ; |942| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _des_cbc_decrypt  ; |943| 
           MVK     .S2     0x18,B4           ; |943| 
           ADDKPC  .S2     RL20,B3,1         ; |943| 
           MV      .L1     A30,A4            ; |943| 
           ADD     .S1X    4,SP,A6           ; |943| 
RL20:      ; CALL OCCURS {_des_cbc_decrypt}  ; |943| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(144),B3      ; |944| 
           NOP             3
           ADDK    .S2     144,SP            ; |944| 
	.dwpsn	"sshdes.c",944,1
           RETNOP  .S2     B3,5              ; |944| 
           ; BRANCH OCCURS {B3}              ; |944| 
	.dwattr DW$96, DW_AT_end_file("sshdes.c")
	.dwattr DW$96, DW_AT_end_line(0x3b0)
	.dwattr DW$96, DW_AT_end_column(0x01)
	.dwendtag DW$96

	.sect	".text"

DW$100	.dwtag  DW_TAG_subprogram, DW_AT_name("des_decrypt_blk"), DW_AT_symbol_name("_des_decrypt_blk")
	.dwattr DW$100, DW_AT_low_pc(_des_decrypt_blk)
	.dwattr DW$100, DW_AT_high_pc(0x00)
	.dwattr DW$100, DW_AT_begin_file("sshdes.c")
	.dwattr DW$100, DW_AT_begin_line(0x3fd)
	.dwattr DW$100, DW_AT_begin_column(0x0d)
	.dwattr DW$100, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$100, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",1022,1

;******************************************************************************
;* FUNCTION NAME: _des_decrypt_blk                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des_decrypt_blk:
;** --------------------------------------------------------------------------*
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$101, DW_AT_type(*DW$T$3)
	.dwattr DW$101, DW_AT_location[DW_OP_reg4]
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$102, DW_AT_type(*DW$T$26)
	.dwattr DW$102, DW_AT_location[DW_OP_reg20]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$103, DW_AT_type(*DW$T$10)
	.dwattr DW$103, DW_AT_location[DW_OP_reg6]
;* 1024	-----------------------    des_cbc_decrypt(blk, (unsigned)len, (struct $$fake0 *)handle+136);
;* 1024	-----------------------    return;
           CALLRET .S1     _des_cbc_decrypt  ; |1024| 
           NOP             1
           MV      .L1X    B4,A3             ; |1022| 
           MV      .L2X    A6,B4             ; |1022| 
           ADDAD   .D1     A4,17,A6          ; |1024| 
	.dwpsn	"sshdes.c",1025,1
           MV      .L1     A3,A4             ; |1024| 
RL21:      ; CALL-RETURN OCCURS {_des_cbc_decrypt}  ; |1024| 
	.dwattr DW$100, DW_AT_end_file("sshdes.c")
	.dwattr DW$100, DW_AT_end_line(0x401)
	.dwattr DW$100, DW_AT_end_column(0x01)
	.dwendtag DW$100

	.sect	".text"

DW$104	.dwtag  DW_TAG_subprogram, DW_AT_name("des_sdctr3"), DW_AT_symbol_name("_des_sdctr3")
	.dwattr DW$104, DW_AT_low_pc(_des_sdctr3)
	.dwattr DW$104, DW_AT_high_pc(0x00)
	.dwattr DW$104, DW_AT_begin_file("sshdes.c")
	.dwattr DW$104, DW_AT_begin_line(0x2d3)
	.dwattr DW$104, DW_AT_begin_column(0x0d)
	.dwattr DW$104, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$104, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",725,1

;******************************************************************************
;* FUNCTION NAME: _des_sdctr3                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 16 Save = 28 byte                 *
;******************************************************************************
_des_sdctr3:
;** --------------------------------------------------------------------------*
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$105, DW_AT_type(*DW$T$26)
	.dwattr DW$105, DW_AT_location[DW_OP_reg4]
DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$106, DW_AT_type(*DW$T$11)
	.dwattr DW$106, DW_AT_location[DW_OP_reg20]
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scheds"), DW_AT_symbol_name("_scheds")
	.dwattr DW$107, DW_AT_type(*DW$T$50)
	.dwattr DW$107, DW_AT_location[DW_OP_reg6]
;** 725	-----------------------    blk = blk;
;** 729	-----------------------    assert((len&7u) == 0u);

           AND     .L2     7,B4,B0           ; |729| 
||         STW     .D2T2   B10,*SP--(32)     ; |725| 
||         MV      .S2X    A6,B10            ; |725| 

           STDW    .D2T1   A11:A10,*+SP(24)  ; |725| 
|| [!B0]   B       .S2     L14               ; |729| 
||         MV      .L1     A4,A11            ; |725| 
||         MVKL    .S1     SL11+0,A4         ; |729| 
||         MV      .D1X    B4,A10            ; |725| 
||         MV      .L2     B0,B1             ; guard predicate rewrite

           MVKH    .S1     SL11+0,A4         ; |729| 
||         STW     .D2T2   B13,*+SP(20)      ; |725| 
|| [!B0]   MV      .L1     A10,A0            ; |732| 
|| [ B0]   CALL    .S2     __abort_msg       ; |729| 
|| [ B0]   MVK     .D1     0x1,A0            ; |732| nullify predicate
||         MV      .L2     B3,B13            ; |725| 

   [!A0]   B       .S1     L16               ; |733| 
|| [!B0]   MVK     .S2     32,B6             ; |731| 
|| [!B0]   MV      .L2X    A10,B31           ; |732| 
|| [!B0]   ADDAD   .D2     B10,17,B25

   [!B0]   MVK     .S2     272,B5
|| [!B1]   LDW     .D2T1   *+B10[B6],A18     ; |731| 

   [!B0]   MVK     .S2     33,B4             ; |732| 
|| [!B1]   ADD     .L2     B5,B10,B26

   [!B0]   LDW     .D2T1   *+B10[B4],A19     ; |732| 
|| [!B0]   SHRU    .S2     B31,3,B0          ; |734| 

           ; BRANCHCC OCCURS {L14}           ; |729| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL22,B3,0         ; |729| 
RL22:      ; CALL OCCURS {__abort_msg}       ; |729| 

           MV      .L1     A10,A0            ; |732| 
||         MVK     .S2     32,B6             ; |731| 
||         MV      .L2X    A10,B31           ; |732| 
||         ADDAD   .D2     B10,17,B25

   [!A0]   BNOP    .S1     L16,1             ; |733| 
||         MVK     .S2     272,B5
||         LDW     .D2T1   *+B10[B6],A18     ; |731| 

           MVK     .S2     33,B4             ; |732| 
||         ADD     .L2     B5,B10,B26

           SHRU    .S2     B31,3,B0          ; |734| 
||         LDW     .D2T1   *+B10[B4],A19     ; |732| 

;** --------------------------------------------------------------------------*
L14:    
;** 731	-----------------------    iv0 = (*scheds).iv0;
;** 732	-----------------------    iv1 = (*scheds).iv1;
;** 733	-----------------------    if ( !len ) goto g4;
;**  	-----------------------    K$20 = &scheds[1];
;**  	-----------------------    K$25 = &scheds[2];
;** 734	-----------------------    L$1 = len>>3;
;**  	-----------------------    #pragma MUST_ITERATE(1, 536870911, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           NOP             2
           ; BRANCHCC OCCURS {L16}           ; |733| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _des_encipher     ; |734| 
	.dwpsn	"sshdes.c",733,0
           NOP             4
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L15:    
DW$L$_des_sdctr3$5$B:
;**	-----------------------g3:
;** 734	-----------------------    des_encipher(&b, iv0, iv1, scheds);
;** 735	-----------------------    C$5 = ((double *)b)[0];
;** 735	-----------------------    des_decipher(&b, _lo(C$5), _hi(C$5), K$20);
;** 736	-----------------------    C$4 = ((double *)b)[0];
;** 736	-----------------------    des_encipher(&b, _lo(C$4), _hi(C$4), K$25);
;** 737	-----------------------    tmp = (unsigned)blk[3]|(unsigned)blk[2]<<8|(unsigned)blk[1]<<16|(unsigned)*blk<<24;
;** 738	-----------------------    C$3 = ((double *)b)[0];
;** 738	-----------------------    s$17 = _lo(C$3);
;** 738	-----------------------    s$22 = _hi(C$3);
;** 738	-----------------------    C$2 = s$17^tmp;
;** 738	-----------------------    *blk = C$2>>24;
;** 738	-----------------------    blk[1] = C$2>>16;
;** 738	-----------------------    blk[2] = C$2>>8;
;** 738	-----------------------    blk[3] = C$2;
;** 740	-----------------------    tmp = (unsigned)blk[7]|(unsigned)blk[6]<<8|(unsigned)blk[5]<<16|(unsigned)blk[4]<<24;
;** 741	-----------------------    C$1 = s$22^tmp;
;** 741	-----------------------    blk[4] = C$1>>24;
;** 741	-----------------------    blk[5] = C$1>>16;
;** 741	-----------------------    blk[6] = C$1>>8;
;** 741	-----------------------    blk[7] = C$1;
;** 742	-----------------------    blk += 8;
;**  	-----------------------    iv0 += (++iv1) == 0u;
;** 733	-----------------------    if ( --L$1 ) goto g3;

           MV      .L1     A19,A6            ; |734| 
||         MV      .L2     B10,B6            ; |734| 
||         MV      .D2X    A18,B4            ; |734| 
||         ADD     .S1X    8,SP,A4           ; |734| 
||         ADDKPC  .S2     RL23,B3,0         ; |734| 

RL23:      ; CALL OCCURS {_des_encipher}     ; |734| 
DW$L$_des_sdctr3$5$E:
;** --------------------------------------------------------------------------*
DW$L$_des_sdctr3$6$B:

           CALL    .S1     _des_decipher     ; |735| 
||         LDDW    .D2T2   *+SP(8),B5:B4     ; |735| 

           ADD     .L1X    8,SP,A4           ; |735| 
           ADDKPC  .S2     RL24,B3,1         ; |735| 
           MV      .L2     B25,B6            ; |735| 
           MV      .L1X    B5,A6             ; |735| 
RL24:      ; CALL OCCURS {_des_decipher}     ; |735| 

           LDDW    .D2T2   *+SP(8),B5:B4     ; |736| 
||         CALL    .S1     _des_encipher     ; |736| 

           ADD     .L1X    8,SP,A4           ; |736| 
           MV      .L2     B26,B6            ; |736| 
           ADDKPC  .S2     RL25,B3,1         ; |736| 
           MV      .L1X    B5,A6             ; |736| 
RL25:      ; CALL OCCURS {_des_encipher}     ; |736| 
DW$L$_des_sdctr3$6$E:
;** --------------------------------------------------------------------------*
DW$L$_des_sdctr3$7$B:

           LDBU    .D1T1   *+A11(6),A4       ; |740| 
||         LDDW    .D2T2   *+SP(8),B5:B4     ; |738| 
||         SUB     .L2     B0,1,B0           ; |733| 
||         ADD     .L1     1,A19,A19

           LDBU    .D1T1   *+A11(2),A6       ; |737| 
||         CMPEQ   .L1     A19,0,A29

           LDBU    .D1T1   *+A11(5),A5       ; |740| 
||         ADD     .L1     A29,A18,A18

           LDBU    .D1T1   *+A11(7),A3       ; |740| 
           LDBU    .D1T1   *+A11(3),A16      ; |737| 

           LDBU    .D1T1   *+A11(1),A8       ; |737| 
||         SHL     .S1     A4,8,A4           ; |740| 

           LDBU    .D1T1   *+A11(4),A31      ; |740| 
||         SHL     .S1     A6,8,A17          ; |737| 

           LDBU    .D1T1   *A11,A7           ; |737| 
||         SHL     .S1     A5,16,A30         ; |740| 

           OR      .L1     A4,A3,A3          ; |740| 
           OR      .L1     A30,A3,A3         ; |740| 

           SHL     .S1     A8,16,A9          ; |737| 
||         OR      .L1     A17,A16,A8        ; |737| 

           OR      .L1     A9,A8,A5          ; |737| 
||         SHL     .S1     A31,24,A4         ; |740| 

           SHL     .S1     A7,24,A7          ; |737| 
||         OR      .L1     A4,A3,A3          ; |740| 

           OR      .L1     A7,A5,A5          ; |737| 
           XOR     .L2X    A3,B5,B5          ; |741| 

           XOR     .L2X    A5,B4,B6          ; |738| 
||         SHRU    .S2     B5,8,B30          ; |741| 
||         STB     .D1T2   B5,*+A11(7)       ; |741| 

           SHRU    .S1X    B5,16,A3          ; |741| 
||         SHRU    .S2     B6,24,B4          ; |738| 
||         STB     .D1T2   B30,*+A11(6)      ; |741| 

           STB     .D1T2   B4,*A11           ; |738| 
||         SHRU    .S1X    B6,16,A4          ; |738| 
||         SHRU    .S2     B5,24,B4          ; |741| 

           SHRU    .S2     B6,8,B31          ; |738| 
||         STB     .D1T1   A3,*+A11(5)       ; |741| 
|| [ B0]   B       .S1     L15               ; |733| 

           STB     .D1T1   A4,*+A11(1)       ; |738| 
|| [ B0]   CALL    .S1     _des_encipher     ; |734| 

           STB     .D1T2   B4,*+A11(4)       ; |741| 
           STB     .D1T2   B31,*+A11(2)      ; |738| 

           STB     .D1T2   B6,*+A11(3)       ; |738| 
||         ADD     .L1     8,A11,A11         ; |742| 

	.dwpsn	"sshdes.c",745,0
           NOP             1
           ; BRANCHCC OCCURS {L15}           ; |733| 
DW$L$_des_sdctr3$7$E:
;** --------------------------------------------------------------------------*
L16:    
;**	-----------------------g4:
;** 746	-----------------------    (*scheds).iv0 = iv0;
;** 747	-----------------------    (*scheds).iv1 = iv1;
;** 747	-----------------------    return;
           MVK     .S2     33,B4             ; |747| 
           MV      .L2     B13,B3            ; |748| 

           MVK     .S2     32,B4             ; |746| 
||         STW     .D2T1   A19,*+B10[B4]     ; |747| 

           STW     .D2T1   A18,*+B10[B4]     ; |746| 
           LDDW    .D2T1   *+SP(24),A11:A10  ; |748| 

           RET     .S2     B3                ; |748| 
||         LDW     .D2T2   *+SP(20),B13      ; |748| 

           LDW     .D2T2   *++SP(32),B10     ; |748| 
	.dwpsn	"sshdes.c",748,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |748| 

DW$108	.dwtag  DW_TAG_loop
	.dwattr DW$108, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\sshdes.asm:L15:1:1288598910")
	.dwattr DW$108, DW_AT_begin_file("sshdes.c")
	.dwattr DW$108, DW_AT_begin_line(0x2dd)
	.dwattr DW$108, DW_AT_end_line(0x2e9)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_des_sdctr3$5$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_des_sdctr3$5$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_des_sdctr3$6$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_des_sdctr3$6$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_des_sdctr3$7$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_des_sdctr3$7$E)
	.dwendtag DW$108

	.dwattr DW$104, DW_AT_end_file("sshdes.c")
	.dwattr DW$104, DW_AT_end_line(0x2ec)
	.dwattr DW$104, DW_AT_end_column(0x01)
	.dwendtag DW$104

	.sect	".text"

DW$112	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_ssh2_sdctr"), DW_AT_symbol_name("_des3_ssh2_sdctr")
	.dwattr DW$112, DW_AT_low_pc(_des3_ssh2_sdctr)
	.dwattr DW$112, DW_AT_high_pc(0x00)
	.dwattr DW$112, DW_AT_begin_file("sshdes.c")
	.dwattr DW$112, DW_AT_begin_line(0x341)
	.dwattr DW$112, DW_AT_begin_column(0x0d)
	.dwattr DW$112, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$112, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",834,1

;******************************************************************************
;* FUNCTION NAME: _des3_ssh2_sdctr                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des3_ssh2_sdctr:
;** --------------------------------------------------------------------------*
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$113, DW_AT_type(*DW$T$3)
	.dwattr DW$113, DW_AT_location[DW_OP_reg4]
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$114, DW_AT_type(*DW$T$26)
	.dwattr DW$114, DW_AT_location[DW_OP_reg20]
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$115, DW_AT_type(*DW$T$10)
	.dwattr DW$115, DW_AT_location[DW_OP_reg6]
;** 836	-----------------------    des_sdctr3(blk, (unsigned)len, (struct $$fake0 *)handle);
;** 836	-----------------------    return;
           CALLRET .S1     _des_sdctr3       ; |836| 
           NOP             1
           MV      .L1X    B4,A3             ; |834| 
           MV      .L2X    A6,B4             ; |834| 
           MV      .S1     A4,A6             ; |834| 
	.dwpsn	"sshdes.c",837,1
           MV      .L1     A3,A4             ; |836| 
RL26:      ; CALL-RETURN OCCURS {_des_sdctr3}  ; |836| 
	.dwattr DW$112, DW_AT_end_file("sshdes.c")
	.dwattr DW$112, DW_AT_end_line(0x345)
	.dwattr DW$112, DW_AT_end_column(0x01)
	.dwendtag DW$112

	.sect	".text"

DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("des_cbc3_encrypt"), DW_AT_symbol_name("_des_cbc3_encrypt")
	.dwattr DW$116, DW_AT_low_pc(_des_cbc3_encrypt)
	.dwattr DW$116, DW_AT_high_pc(0x00)
	.dwattr DW$116, DW_AT_begin_file("sshdes.c")
	.dwattr DW$116, DW_AT_begin_line(0x295)
	.dwattr DW$116, DW_AT_begin_column(0x0d)
	.dwattr DW$116, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$116, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",663,1

;******************************************************************************
;* FUNCTION NAME: _des_cbc3_encrypt                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 16 Save = 28 byte                 *
;******************************************************************************
_des_cbc3_encrypt:
;** --------------------------------------------------------------------------*
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$117, DW_AT_type(*DW$T$26)
	.dwattr DW$117, DW_AT_location[DW_OP_reg4]
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$118, DW_AT_type(*DW$T$11)
	.dwattr DW$118, DW_AT_location[DW_OP_reg20]
DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scheds"), DW_AT_symbol_name("_scheds")
	.dwattr DW$119, DW_AT_type(*DW$T$50)
	.dwattr DW$119, DW_AT_location[DW_OP_reg6]
;** 663	-----------------------    blk = blk;
;** 667	-----------------------    assert((len&7u) == 0u);

           AND     .L2     7,B4,B0           ; |667| 
||         STW     .D2T2   B10,*SP--(32)     ; |663| 
||         MV      .S2X    A6,B10            ; |663| 

           STDW    .D2T1   A11:A10,*+SP(24)  ; |663| 
|| [!B0]   B       .S2     L17               ; |667| 
||         MV      .L1     A4,A11            ; |663| 
||         MVKL    .S1     SL12+0,A4         ; |667| 
||         MV      .D1X    B4,A10            ; |663| 
||         MV      .L2     B0,B1             ; guard predicate rewrite

           MVKH    .S1     SL12+0,A4         ; |667| 
||         STW     .D2T2   B13,*+SP(20)      ; |663| 
|| [!B0]   MV      .L1     A10,A0            ; |670| 
|| [ B0]   CALL    .S2     __abort_msg       ; |667| 
|| [ B0]   MVK     .D1     0x1,A0            ; |670| nullify predicate
||         MV      .L2     B3,B13            ; |663| 

   [!A0]   B       .S1     L19               ; |671| 
|| [!B0]   MVK     .S2     272,B31
|| [!B0]   MV      .L2X    A10,B6            ; |670| 
|| [!B0]   ADDAD   .D2     B10,17,B26

   [!B0]   MVK     .S2     32,B5             ; |669| 
|| [!B0]   ADD     .L2     B31,B10,B25

   [!B0]   MVK     .S2     33,B4             ; |670| 
|| [!B1]   LDW     .D2T1   *+B10[B5],A3      ; |669| 

   [!B0]   LDW     .D2T1   *+B10[B4],A4      ; |670| 
|| [!B0]   SHRU    .S2     B6,3,B0           ; |672| 

           ; BRANCHCC OCCURS {L17}           ; |667| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL27,B3,0         ; |667| 
RL27:      ; CALL OCCURS {__abort_msg}       ; |667| 

           MV      .L1     A10,A0            ; |670| 
||         MVK     .S2     272,B31
||         MV      .L2X    A10,B6            ; |670| 
||         ADDAD   .D2     B10,17,B26

   [!A0]   BNOP    .S1     L19,1             ; |671| 
||         MVK     .S2     32,B5             ; |669| 
||         ADD     .L2     B31,B10,B25

           MVK     .S2     33,B4             ; |670| 
||         LDW     .D2T1   *+B10[B5],A3      ; |669| 

           SHRU    .S2     B6,3,B0           ; |672| 
||         LDW     .D2T1   *+B10[B4],A4      ; |670| 

;** --------------------------------------------------------------------------*
L17:    
;** 669	-----------------------    iv0 = (*scheds).iv0;
;** 670	-----------------------    iv1 = (*scheds).iv1;
;** 671	-----------------------    if ( !len ) goto g4;
;**  	-----------------------    K$60 = &scheds[1];
;**  	-----------------------    K$65 = &scheds[2];
;** 672	-----------------------    L$1 = len>>3;
;**  	-----------------------    #pragma MUST_ITERATE(1, 536870911, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           NOP             2
           ; BRANCHCC OCCURS {L19}           ; |671| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L18:    
DW$L$_des_cbc3_encrypt$4$B:
	.dwpsn	"sshdes.c",671,0
;**	-----------------------g3:
;** 672	-----------------------    iv0 ^= (unsigned)blk[3]|(unsigned)blk[2]<<8|(unsigned)blk[1]<<16|(unsigned)*blk<<24;
;** 673	-----------------------    iv1 ^= (unsigned)blk[7]|(unsigned)blk[6]<<8|(unsigned)blk[5]<<16|(unsigned)blk[4]<<24;
;** 674	-----------------------    des_encipher(&out, iv0, iv1, scheds);
;** 675	-----------------------    C$3 = ((double *)out)[0];
;** 675	-----------------------    des_decipher(&out, _lo(C$3), _hi(C$3), K$60);
;** 676	-----------------------    C$2 = ((double *)out)[0];
;** 676	-----------------------    des_encipher(&out, _lo(C$2), _hi(C$2), K$65);
;** 677	-----------------------    C$1 = ((double *)out)[0];
;** 677	-----------------------    iv0 = _lo(C$1);
;** 678	-----------------------    iv1 = _hi(C$1);
;** 679	-----------------------    *blk = iv0>>24;
;** 679	-----------------------    blk[1] = iv0>>16;
;** 679	-----------------------    blk[2] = iv0>>8;
;** 679	-----------------------    blk[3] = iv0;
;** 680	-----------------------    blk[4] = iv1>>24;
;** 680	-----------------------    blk[5] = iv1>>16;
;** 680	-----------------------    blk[6] = iv1>>8;
;** 680	-----------------------    blk[7] = iv1;
;** 681	-----------------------    blk += 8;
;** 671	-----------------------    if ( --L$1 ) goto g3;
           LDBU    .D1T1   *+A11(6),A6       ; |673| 
           LDBU    .D1T1   *+A11(2),A8       ; |672| 
           LDBU    .D1T1   *+A11(3),A7       ; |672| 
           LDBU    .D1T1   *+A11(1),A9       ; |672| 
           LDBU    .D1T1   *A11,A16          ; |672| 

           LDBU    .D1T1   *+A11(5),A19      ; |673| 
||         SHL     .S1     A6,8,A18          ; |673| 

           LDBU    .D1T1   *+A11(7),A5       ; |673| 
||         SHL     .S1     A8,8,A6           ; |672| 

           LDBU    .D1T1   *+A11(4),A17      ; |673| 
||         OR      .L1     A6,A7,A7          ; |672| 

           SHL     .S1     A9,16,A8          ; |672| 

           CALL    .S2     _des_encipher     ; |674| 
||         OR      .L1     A8,A7,A8          ; |672| 
||         SHL     .S1     A16,24,A31        ; |672| 

           OR      .L1     A31,A8,A6         ; |672| 
||         SHL     .S1     A19,16,A19        ; |673| 

           OR      .L1     A18,A5,A5         ; |673| 
||         XOR     .S1     A6,A3,A3          ; |672| 

           SHL     .S1     A17,24,A7         ; |673| 
||         OR      .L1     A19,A5,A5         ; |673| 

           OR      .L1     A7,A5,A5          ; |673| 
||         MV      .L2X    A3,B4             ; |674| 

           XOR     .L1     A5,A4,A6          ; |673| 
||         ADD     .S1X    8,SP,A4           ; |674| 
||         ADDKPC  .S2     RL28,B3,0         ; |674| 
||         MV      .L2     B10,B6            ; |674| 

RL28:      ; CALL OCCURS {_des_encipher}     ; |674| 
DW$L$_des_cbc3_encrypt$4$E:
;** --------------------------------------------------------------------------*
DW$L$_des_cbc3_encrypt$5$B:

           CALL    .S1     _des_decipher     ; |675| 
||         LDDW    .D2T2   *+SP(8),B5:B4     ; |675| 

           ADD     .L1X    8,SP,A4           ; |675| 
           ADDKPC  .S2     RL29,B3,1         ; |675| 
           MV      .L2     B26,B6            ; |675| 
           MV      .L1X    B5,A6             ; |675| 
RL29:      ; CALL OCCURS {_des_decipher}     ; |675| 

           LDDW    .D2T2   *+SP(8),B5:B4     ; |676| 
||         CALL    .S1     _des_encipher     ; |676| 

           ADD     .L1X    8,SP,A4           ; |676| 
           MV      .L2     B25,B6            ; |676| 
           ADDKPC  .S2     RL30,B3,1         ; |676| 
           MV      .L1X    B5,A6             ; |676| 
RL30:      ; CALL OCCURS {_des_encipher}     ; |676| 
DW$L$_des_cbc3_encrypt$5$E:
;** --------------------------------------------------------------------------*
DW$L$_des_cbc3_encrypt$6$B:

           LDDW    .D2T2   *+SP(8),B5:B4     ; |677| 
||         SUB     .L2     B0,1,B0           ; |671| 

           NOP             4
           MV      .L1X    B5,A4             ; |678| 

           STB     .D1T1   A4,*+A11(7)       ; |680| 
||         SHRU    .S1     A4,8,A5           ; |680| 
||         MV      .L1X    B4,A3             ; |677| 

           STB     .D1T1   A5,*+A11(6)       ; |680| 
||         SHRU    .S2X    A4,16,B29         ; |680| 

   [ B0]   B       .S1     L18               ; |671| 
||         STB     .D1T2   B29,*+A11(5)      ; |680| 
||         SHRU    .S2X    A3,16,B4          ; |679| 

           STB     .D1T2   B4,*+A11(1)       ; |679| 
||         SHRU    .S2X    A4,24,B30         ; |680| 

           STB     .D1T2   B30,*+A11(4)      ; |680| 
||         SHRU    .S2X    A3,24,B28         ; |679| 

           STB     .D1T2   B28,*A11          ; |679| 
||         SHRU    .S2X    A3,8,B31          ; |679| 

           STB     .D1T2   B31,*+A11(2)      ; |679| 
	.dwpsn	"sshdes.c",682,0

           ADD     .L1     8,A11,A11         ; |681| 
||         STB     .D1T1   A3,*+A11(3)       ; |679| 

           ; BRANCHCC OCCURS {L18}           ; |671| 
DW$L$_des_cbc3_encrypt$6$E:
;** --------------------------------------------------------------------------*
L19:    
;**	-----------------------g4:
;** 683	-----------------------    (*scheds).iv0 = iv0;
;** 684	-----------------------    (*scheds).iv1 = iv1;
;** 684	-----------------------    return;
           MVK     .S2     33,B4             ; |684| 
           MV      .L2     B13,B3            ; |685| 

           MVK     .S2     32,B4             ; |683| 
||         STW     .D2T1   A4,*+B10[B4]      ; |684| 

           STW     .D2T1   A3,*+B10[B4]      ; |683| 
           LDDW    .D2T1   *+SP(24),A11:A10  ; |685| 

           RET     .S2     B3                ; |685| 
||         LDW     .D2T2   *+SP(20),B13      ; |685| 

           LDW     .D2T2   *++SP(32),B10     ; |685| 
	.dwpsn	"sshdes.c",685,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |685| 

DW$120	.dwtag  DW_TAG_loop
	.dwattr DW$120, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\sshdes.asm:L18:1:1288598910")
	.dwattr DW$120, DW_AT_begin_file("sshdes.c")
	.dwattr DW$120, DW_AT_begin_line(0x29f)
	.dwattr DW$120, DW_AT_end_line(0x2aa)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_des_cbc3_encrypt$4$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_des_cbc3_encrypt$4$E)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_des_cbc3_encrypt$5$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_des_cbc3_encrypt$5$E)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_des_cbc3_encrypt$6$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_des_cbc3_encrypt$6$E)
	.dwendtag DW$120

	.dwattr DW$116, DW_AT_end_file("sshdes.c")
	.dwattr DW$116, DW_AT_end_line(0x2ad)
	.dwattr DW$116, DW_AT_end_column(0x01)
	.dwendtag DW$116

	.sect	".text"

DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_ssh2_encrypt_blk"), DW_AT_symbol_name("_des3_ssh2_encrypt_blk")
	.dwattr DW$124, DW_AT_low_pc(_des3_ssh2_encrypt_blk)
	.dwattr DW$124, DW_AT_high_pc(0x00)
	.dwattr DW$124, DW_AT_begin_file("sshdes.c")
	.dwattr DW$124, DW_AT_begin_line(0x335)
	.dwattr DW$124, DW_AT_begin_column(0x0d)
	.dwattr DW$124, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$124, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",822,1

;******************************************************************************
;* FUNCTION NAME: _des3_ssh2_encrypt_blk                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des3_ssh2_encrypt_blk:
;** --------------------------------------------------------------------------*
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$125, DW_AT_type(*DW$T$3)
	.dwattr DW$125, DW_AT_location[DW_OP_reg4]
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$126, DW_AT_type(*DW$T$26)
	.dwattr DW$126, DW_AT_location[DW_OP_reg20]
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$127, DW_AT_type(*DW$T$10)
	.dwattr DW$127, DW_AT_location[DW_OP_reg6]
;** 824	-----------------------    des_cbc3_encrypt(blk, (unsigned)len, (struct $$fake0 *)handle);
;** 824	-----------------------    return;
           CALLRET .S1     _des_cbc3_encrypt ; |824| 
           NOP             1
           MV      .L1X    B4,A3             ; |822| 
           MV      .L2X    A6,B4             ; |822| 
           MV      .S1     A4,A6             ; |822| 
	.dwpsn	"sshdes.c",825,1
           MV      .L1     A3,A4             ; |824| 
RL31:      ; CALL-RETURN OCCURS {_des_cbc3_encrypt}  ; |824| 
	.dwattr DW$124, DW_AT_end_file("sshdes.c")
	.dwattr DW$124, DW_AT_end_line(0x339)
	.dwattr DW$124, DW_AT_end_column(0x01)
	.dwendtag DW$124

	.sect	".text"

DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("des_cbc3_decrypt"), DW_AT_symbol_name("_des_cbc3_decrypt")
	.dwattr DW$128, DW_AT_low_pc(_des_cbc3_decrypt)
	.dwattr DW$128, DW_AT_high_pc(0x00)
	.dwattr DW$128, DW_AT_begin_file("sshdes.c")
	.dwattr DW$128, DW_AT_begin_line(0x2b7)
	.dwattr DW$128, DW_AT_begin_column(0x0d)
	.dwattr DW$128, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$128, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",697,1

;******************************************************************************
;* FUNCTION NAME: _des_cbc3_decrypt                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 16 Save = 28 byte                 *
;******************************************************************************
_des_cbc3_decrypt:
;** --------------------------------------------------------------------------*
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$129, DW_AT_type(*DW$T$26)
	.dwattr DW$129, DW_AT_location[DW_OP_reg4]
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$130, DW_AT_type(*DW$T$11)
	.dwattr DW$130, DW_AT_location[DW_OP_reg20]
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scheds"), DW_AT_symbol_name("_scheds")
	.dwattr DW$131, DW_AT_type(*DW$T$50)
	.dwattr DW$131, DW_AT_location[DW_OP_reg6]
;** 697	-----------------------    blk = blk;
;** 701	-----------------------    assert((len&7u) == 0u);

           AND     .L2     7,B4,B0           ; |701| 
||         STW     .D2T2   B10,*SP--(32)     ; |697| 
||         MV      .S2X    A6,B10            ; |697| 

           STDW    .D2T1   A11:A10,*+SP(24)  ; |697| 
|| [!B0]   B       .S2     L20               ; |701| 
||         MV      .L1     A4,A11            ; |697| 
||         MVKL    .S1     SL13+0,A4         ; |701| 
||         MV      .D1X    B4,A10            ; |697| 
||         MV      .L2     B0,B1             ; guard predicate rewrite

           MVKH    .S1     SL13+0,A4         ; |701| 
||         STW     .D2T2   B13,*+SP(20)      ; |697| 
|| [!B0]   MV      .L1     A10,A0            ; |704| 
|| [ B0]   CALL    .S2     __abort_msg       ; |701| 
|| [ B0]   MVK     .D1     0x1,A0            ; |704| nullify predicate
||         MV      .L2     B3,B13            ; |697| 

   [!A0]   B       .S1     L22               ; |705| 
|| [!B0]   MVK     .S2     32,B6             ; |703| 
|| [!B0]   MV      .L2X    A10,B31           ; |704| 
|| [!B0]   ADDAD   .D2     B10,17,B25

   [!B0]   MVK     .S2     272,B5
|| [!B1]   LDW     .D2T1   *+B10[B6],A19     ; |703| 

   [!B0]   MVK     .S2     33,B4             ; |704| 
|| [!B1]   ADD     .L2     B5,B10,B26

   [!B0]   LDW     .D2T1   *+B10[B4],A21     ; |704| 
|| [!B0]   SHRU    .S2     B31,3,B0          ; |706| 

           ; BRANCHCC OCCURS {L20}           ; |701| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL32,B3,0         ; |701| 
RL32:      ; CALL OCCURS {__abort_msg}       ; |701| 

           MV      .L1     A10,A0            ; |704| 
||         MVK     .S2     32,B6             ; |703| 
||         MV      .L2X    A10,B31           ; |704| 
||         ADDAD   .D2     B10,17,B25

   [!A0]   BNOP    .S1     L22,1             ; |705| 
||         MVK     .S2     272,B5
||         LDW     .D2T1   *+B10[B6],A19     ; |703| 

           MVK     .S2     33,B4             ; |704| 
||         ADD     .L2     B5,B10,B26

           SHRU    .S2     B31,3,B0          ; |706| 
||         LDW     .D2T1   *+B10[B4],A21     ; |704| 

;** --------------------------------------------------------------------------*
L20:    
;** 703	-----------------------    iv0 = (*scheds).iv0;
;** 704	-----------------------    iv1 = (*scheds).iv1;
;** 705	-----------------------    if ( !len ) goto g4;
;**  	-----------------------    K$58 = &scheds[2];
;**  	-----------------------    K$62 = &scheds[1];
;** 706	-----------------------    L$1 = len>>3;
;**  	-----------------------    #pragma MUST_ITERATE(1, 536870911, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           NOP             2
           ; BRANCHCC OCCURS {L22}           ; |705| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L21:    
DW$L$_des_cbc3_decrypt$4$B:
	.dwpsn	"sshdes.c",705,0
;**	-----------------------g3:
;** 706	-----------------------    xL = (unsigned)blk[3]|(unsigned)blk[2]<<8|(unsigned)blk[1]<<16|(unsigned)*blk<<24;
;** 707	-----------------------    xR = (unsigned)blk[7]|(unsigned)blk[6]<<8|(unsigned)blk[5]<<16|(unsigned)blk[4]<<24;
;** 708	-----------------------    des_decipher(&out, xL, xR, K$58);
;** 709	-----------------------    C$3 = ((double *)out)[0];
;** 709	-----------------------    des_encipher(&out, _lo(C$3), _hi(C$3), K$62);
;** 710	-----------------------    C$2 = ((double *)out)[0];
;** 710	-----------------------    des_decipher(&out, _lo(C$2), _hi(C$2), scheds);
;** 711	-----------------------    C$1 = ((double *)out)[0];
;** 711	-----------------------    iv0 ^= _lo(C$1);
;** 712	-----------------------    iv1 ^= _hi(C$1);
;** 713	-----------------------    *blk = iv0>>24;
;** 713	-----------------------    blk[1] = iv0>>16;
;** 713	-----------------------    blk[2] = iv0>>8;
;** 713	-----------------------    blk[3] = iv0;
;** 714	-----------------------    blk[4] = iv1>>24;
;** 714	-----------------------    blk[5] = iv1>>16;
;** 714	-----------------------    blk[6] = iv1>>8;
;** 714	-----------------------    blk[7] = iv1;
;** 716	-----------------------    iv0 = xL;
;** 717	-----------------------    iv1 = xR;
;** 715	-----------------------    blk += 8;
;** 705	-----------------------    if ( --L$1 ) goto g3;
           LDBU    .D1T1   *+A11(2),A5       ; |706| 
           LDBU    .D1T1   *+A11(1),A6       ; |706| 
           LDBU    .D1T1   *+A11(6),A9       ; |707| 
           LDBU    .D1T1   *+A11(3),A4       ; |706| 
           LDBU    .D1T1   *+A11(5),A16      ; |707| 

           LDBU    .D1T1   *+A11(7),A3       ; |707| 
||         SHL     .S1     A5,8,A5           ; |706| 

           LDBU    .D1T1   *A11,A7           ; |706| 
||         SHL     .S1     A6,16,A6          ; |706| 

           LDBU    .D1T1   *+A11(4),A8       ; |707| 
||         SHL     .S1     A9,8,A9           ; |707| 

           OR      .L1     A5,A4,A5          ; |706| 
||         ADD     .S1X    8,SP,A4           ; |708| 

           CALL    .S2     _des_decipher     ; |708| 
||         OR      .L1     A6,A5,A6          ; |706| 
||         SHL     .S1     A16,16,A16        ; |707| 

           OR      .L1     A9,A3,A3          ; |707| 

           SHL     .S1     A7,24,A31         ; |706| 
||         OR      .L1     A16,A3,A3         ; |707| 

           OR      .L1     A31,A6,A18        ; |706| 
||         SHL     .S1     A8,24,A5          ; |707| 

           OR      .L1     A5,A3,A20         ; |707| 

           MV      .L2X    A18,B4            ; |708| 
||         MV      .L1     A20,A6            ; |708| 
||         ADDKPC  .S2     RL33,B3,0         ; |708| 
||         MV      .D2     B26,B6            ; |708| 

RL33:      ; CALL OCCURS {_des_decipher}     ; |708| 
DW$L$_des_cbc3_decrypt$4$E:
;** --------------------------------------------------------------------------*
DW$L$_des_cbc3_decrypt$5$B:

           CALL    .S1     _des_encipher     ; |709| 
||         LDDW    .D2T2   *+SP(8),B5:B4     ; |709| 

           ADD     .L1X    8,SP,A4           ; |709| 
           ADDKPC  .S2     RL34,B3,1         ; |709| 
           MV      .L2     B25,B6            ; |709| 
           MV      .L1X    B5,A6             ; |709| 
RL34:      ; CALL OCCURS {_des_encipher}     ; |709| 

           LDDW    .D2T2   *+SP(8),B5:B4     ; |710| 
||         CALL    .S1     _des_decipher     ; |710| 

           ADD     .L1X    8,SP,A4           ; |710| 
           MV      .L2     B10,B6            ; |710| 
           ADDKPC  .S2     RL35,B3,1         ; |710| 
           MV      .L1X    B5,A6             ; |710| 
RL35:      ; CALL OCCURS {_des_decipher}     ; |710| 
DW$L$_des_cbc3_decrypt$5$E:
;** --------------------------------------------------------------------------*
DW$L$_des_cbc3_decrypt$6$B:

           LDDW    .D2T2   *+SP(8),B5:B4     ; |711| 
||         SUB     .L2     B0,1,B0           ; |705| 

           NOP             4

           MV      .D1     A20,A21           ; |717| 
||         XOR     .L2X    B5,A21,B5         ; |712| 
||         MV      .S1     A18,A19           ; |716| 
||         XOR     .L1X    B4,A19,A4         ; |711| 

           STB     .D1T1   A4,*+A11(3)       ; |713| 
||         SHRU    .S2     B5,24,B4          ; |714| 

           STB     .D1T2   B4,*+A11(4)       ; |714| 
||         SHRU    .S2X    A4,24,B28         ; |713| 
||         SHRU    .S1X    B5,16,A3          ; |714| 

   [ B0]   B       .S1     L21               ; |705| 
||         STB     .D1T2   B28,*A11          ; |713| 
||         SHRU    .S2X    A4,8,B29          ; |713| 

           STB     .D1T2   B29,*+A11(2)      ; |713| 
||         SHRU    .S2X    A4,16,B30         ; |713| 

           STB     .D1T2   B30,*+A11(1)      ; |713| 
||         SHRU    .S2     B5,8,B31          ; |714| 

           STB     .D1T1   A3,*+A11(5)       ; |714| 
           STB     .D1T2   B31,*+A11(6)      ; |714| 
	.dwpsn	"sshdes.c",718,0

           ADD     .L1     8,A11,A11         ; |715| 
||         STB     .D1T2   B5,*+A11(7)       ; |714| 

           ; BRANCHCC OCCURS {L21}           ; |705| 
DW$L$_des_cbc3_decrypt$6$E:
;** --------------------------------------------------------------------------*
L22:    
;**	-----------------------g4:
;** 719	-----------------------    (*scheds).iv0 = iv0;
;** 720	-----------------------    (*scheds).iv1 = iv1;
;** 720	-----------------------    return;
           MVK     .S2     33,B4             ; |720| 
           MV      .L2     B13,B3            ; |721| 

           MVK     .S2     32,B4             ; |719| 
||         STW     .D2T1   A21,*+B10[B4]     ; |720| 

           STW     .D2T1   A19,*+B10[B4]     ; |719| 
           LDDW    .D2T1   *+SP(24),A11:A10  ; |721| 

           RET     .S2     B3                ; |721| 
||         LDW     .D2T2   *+SP(20),B13      ; |721| 

           LDW     .D2T2   *++SP(32),B10     ; |721| 
	.dwpsn	"sshdes.c",721,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |721| 

DW$132	.dwtag  DW_TAG_loop
	.dwattr DW$132, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\sshdes.asm:L21:1:1288598910")
	.dwattr DW$132, DW_AT_begin_file("sshdes.c")
	.dwattr DW$132, DW_AT_begin_line(0x2c1)
	.dwattr DW$132, DW_AT_end_line(0x2ce)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_des_cbc3_decrypt$4$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_des_cbc3_decrypt$4$E)
DW$134	.dwtag  DW_TAG_loop_range
	.dwattr DW$134, DW_AT_low_pc(DW$L$_des_cbc3_decrypt$5$B)
	.dwattr DW$134, DW_AT_high_pc(DW$L$_des_cbc3_decrypt$5$E)
DW$135	.dwtag  DW_TAG_loop_range
	.dwattr DW$135, DW_AT_low_pc(DW$L$_des_cbc3_decrypt$6$B)
	.dwattr DW$135, DW_AT_high_pc(DW$L$_des_cbc3_decrypt$6$E)
	.dwendtag DW$132

	.dwattr DW$128, DW_AT_end_file("sshdes.c")
	.dwattr DW$128, DW_AT_end_line(0x2d1)
	.dwattr DW$128, DW_AT_end_column(0x01)
	.dwendtag DW$128

	.sect	".text"

DW$136	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_ssh2_decrypt_blk"), DW_AT_symbol_name("_des3_ssh2_decrypt_blk")
	.dwattr DW$136, DW_AT_low_pc(_des3_ssh2_decrypt_blk)
	.dwattr DW$136, DW_AT_high_pc(0x00)
	.dwattr DW$136, DW_AT_begin_file("sshdes.c")
	.dwattr DW$136, DW_AT_begin_line(0x33b)
	.dwattr DW$136, DW_AT_begin_column(0x0d)
	.dwattr DW$136, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$136, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",828,1

;******************************************************************************
;* FUNCTION NAME: _des3_ssh2_decrypt_blk                                      *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des3_ssh2_decrypt_blk:
;** --------------------------------------------------------------------------*
DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$137, DW_AT_type(*DW$T$3)
	.dwattr DW$137, DW_AT_location[DW_OP_reg4]
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$138, DW_AT_type(*DW$T$26)
	.dwattr DW$138, DW_AT_location[DW_OP_reg20]
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$139, DW_AT_type(*DW$T$10)
	.dwattr DW$139, DW_AT_location[DW_OP_reg6]
;** 830	-----------------------    des_cbc3_decrypt(blk, (unsigned)len, (struct $$fake0 *)handle);
;** 830	-----------------------    return;
           CALLRET .S1     _des_cbc3_decrypt ; |830| 
           NOP             1
           MV      .L1X    B4,A3             ; |828| 
           MV      .L2X    A6,B4             ; |828| 
           MV      .S1     A4,A6             ; |828| 
	.dwpsn	"sshdes.c",831,1
           MV      .L1     A3,A4             ; |830| 
RL36:      ; CALL-RETURN OCCURS {_des_cbc3_decrypt}  ; |830| 
	.dwattr DW$136, DW_AT_end_file("sshdes.c")
	.dwattr DW$136, DW_AT_end_line(0x33f)
	.dwattr DW$136, DW_AT_end_column(0x01)
	.dwendtag DW$136

	.sect	".text"

DW$140	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_ssh1_make_context"), DW_AT_symbol_name("_des3_ssh1_make_context")
	.dwattr DW$140, DW_AT_low_pc(_des3_ssh1_make_context)
	.dwattr DW$140, DW_AT_high_pc(0x00)
	.dwattr DW$140, DW_AT_begin_file("sshdes.c")
	.dwattr DW$140, DW_AT_begin_line(0x2f3)
	.dwattr DW$140, DW_AT_begin_column(0x0e)
	.dwattr DW$140, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$140, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",756,1

;******************************************************************************
;* FUNCTION NAME: _des3_ssh1_make_context                                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des3_ssh1_make_context:
;** --------------------------------------------------------------------------*
;** 758	-----------------------    return safemalloc(6u, 136u);
           CALLRET .S1     _safemalloc       ; |758| 
           NOP             3
           MVK     .L1     0x6,A4            ; |758| 
	.dwpsn	"sshdes.c",759,1
           MVK     .S2     0x88,B4           ; |758| 
RL37:      ; CALL-RETURN OCCURS {_safemalloc}  ; |758| 
	.dwattr DW$140, DW_AT_end_file("sshdes.c")
	.dwattr DW$140, DW_AT_end_line(0x2f7)
	.dwattr DW$140, DW_AT_end_column(0x01)
	.dwendtag DW$140

	.sect	".text"

DW$141	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_key"), DW_AT_symbol_name("_des3_key")
	.dwattr DW$141, DW_AT_low_pc(_des3_key)
	.dwattr DW$141, DW_AT_high_pc(0x00)
	.dwattr DW$141, DW_AT_begin_file("sshdes.c")
	.dwattr DW$141, DW_AT_begin_line(0x309)
	.dwattr DW$141, DW_AT_begin_column(0x0d)
	.dwattr DW$141, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$141, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",778,1

;******************************************************************************
;* FUNCTION NAME: _des3_key                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,   *
;*                           A26,A27,A28,A29,A30,B16,B17,B18,B30,B31          *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,B16,B17,B18,B30,B31          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_des3_key:
;** --------------------------------------------------------------------------*
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$142, DW_AT_type(*DW$T$3)
	.dwattr DW$142, DW_AT_location[DW_OP_reg4]
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$143, DW_AT_type(*DW$T$26)
	.dwattr DW$143, DW_AT_location[DW_OP_reg20]
;** 780	-----------------------    des_key_setup((((unsigned)(unsigned long)*key<<8|(unsigned)(unsigned long)key[1])<<8|(unsigned)(unsigned long)key[2])<<8|(unsigned)(unsigned long)key[3], (((unsigned)(unsigned long)key[4]<<8|(unsigned)(unsigned long)key[5])<<8|(unsigned)(unsigned long)key[6])<<8|(unsigned)(unsigned long)key[7], (struct $$fake0 *)handle);
;** 782	-----------------------    des_key_setup((((unsigned)(unsigned long)key[8]<<8|(unsigned)(unsigned long)key[9])<<8|(unsigned)(unsigned long)key[10])<<8|(unsigned)(unsigned long)key[11], (((unsigned)(unsigned long)key[12]<<8|(unsigned)(unsigned long)key[13])<<8|(unsigned)(unsigned long)key[14])<<8|(unsigned)(unsigned long)key[15], (struct $$fake0 *)handle+136);
;** 784	-----------------------    des_key_setup((((unsigned)(unsigned long)key[16]<<8|(unsigned)(unsigned long)key[17])<<8|(unsigned)(unsigned long)key[18])<<8|(unsigned)(unsigned long)key[19], (((unsigned)(unsigned long)key[20]<<8|(unsigned)(unsigned long)key[21])<<8|(unsigned)(unsigned long)key[22])<<8|(unsigned)(unsigned long)key[23], (struct $$fake0 *)handle+272);
;** 784	-----------------------    return;
           MV      .L2     B4,B18            ; |778| 
           LDBU    .D2T2   *+B18(4),B9       ; |780| 
           LDBU    .D2T2   *+B18(1),B5       ; |780| 
           LDBU    .D2T2   *B18,B4           ; |780| 
           LDBU    .D2T2   *+B18(5),B8       ; |780| 
           LDBU    .D2T2   *+B18(2),B6       ; |780| 
           LDBU    .D2T2   *+B18(6),B7       ; |780| 
           SHL     .S2     B9,8,B9           ; |780| 

           SHL     .S1X    B4,8,A3           ; |780| 
||         LDBU    .D2T2   *+B18(3),B4       ; |780| 

           CALL    .S1     _des_key_setup    ; |780| 
||         LDBU    .D2T2   *+B18(7),B8       ; |780| 
||         OR      .L2     B8,B9,B5          ; |780| 
||         OR      .L1X    B5,A3,A3          ; |780| 

           SHL     .S2     B5,8,B5           ; |780| 
           SHL     .S1     A3,8,A3           ; |780| 

           OR      .L2     B7,B5,B5          ; |780| 
||         OR      .L1X    B6,A3,A3          ; |780| 

           SHL     .S2     B5,8,B5           ; |780| 
||         SHL     .S1     A3,8,A3           ; |780| 

           ADDKPC  .S2     RL38,B3,0         ; |780| 
||         OR      .L2     B8,B5,B4          ; |780| 
||         OR      .L1X    B4,A3,A4          ; |780| 
||         MV      .D2     B3,B30            ; |778| 
||         MV      .S1     A4,A30            ; |778| 
||         MV      .D1     A4,A6             ; |778| 

RL38:      ; CALL OCCURS {_des_key_setup}    ; |780| 
;** --------------------------------------------------------------------------*
           LDBU    .D2T2   *+B18(8),B9       ; |782| 
           LDBU    .D2T2   *+B18(12),B4      ; |782| 
           LDBU    .D2T2   *+B18(9),B7       ; |782| 
           LDBU    .D2T2   *+B18(13),B6      ; |782| 
           LDBU    .D2T2   *+B18(10),B8      ; |782| 
           LDBU    .D2T2   *+B18(14),B5      ; |782| 

           SHL     .S1X    B9,8,A3           ; |782| 
||         LDBU    .D2T2   *+B18(15),B16     ; |782| 

           CALL    .S1     _des_key_setup    ; |782| 
||         LDBU    .D2T2   *+B18(11),B9      ; |782| 
||         SHL     .S2     B4,8,B4           ; |782| 

           OR      .L2     B6,B4,B4          ; |782| 
||         OR      .L1X    B7,A3,A3          ; |782| 

           SHL     .S2     B4,8,B4           ; |782| 
||         SHL     .S1     A3,8,A3           ; |782| 

           OR      .L2     B5,B4,B4          ; |782| 
||         OR      .L1X    B8,A3,A3          ; |782| 

           SHL     .S2     B4,8,B4           ; |782| 
||         SHL     .S1     A3,8,A3           ; |782| 

           ADDKPC  .S2     RL39,B3,0         ; |782| 
||         OR      .L2     B16,B4,B4         ; |782| 
||         OR      .L1X    B9,A3,A4          ; |782| 
||         ADDAD   .D1     A30,17,A6         ; |782| 

RL39:      ; CALL OCCURS {_des_key_setup}    ; |782| 
           LDBU    .D2T2   *+B18(20),B7      ; |784| 
           LDBU    .D2T2   *+B18(16),B9      ; |784| 
           LDBU    .D2T2   *+B18(17),B16     ; |784| 
           LDBU    .D2T2   *+B18(21),B4      ; |784| 
           LDBU    .D2T2   *+B18(22),B5      ; |784| 
           LDBU    .D2T2   *+B18(18),B8      ; |784| 

           LDBU    .D2T2   *+B18(23),B6      ; |784| 
||         SHL     .S2     B7,8,B7           ; |784| 

           CALL    .S2     _des_key_setup    ; |784| 
||         LDBU    .D2T2   *+B18(19),B9      ; |784| 
||         SHL     .S1X    B9,8,A3           ; |784| 

           OR      .L1X    B16,A3,A3         ; |784| 
||         OR      .L2     B4,B7,B4          ; |784| 

           SHL     .S1     A3,8,A3           ; |784| 
||         SHL     .S2     B4,8,B4           ; |784| 

           MVK     .S1     272,A4            ; |784| 
||         OR      .L1X    B8,A3,A3          ; |784| 
||         OR      .L2     B5,B4,B4          ; |784| 

           SHL     .S1     A3,8,A3           ; |784| 
||         SHL     .S2     B4,8,B4           ; |784| 

           ADDKPC  .S2     RL40,B3,0         ; |784| 
||         OR      .L1X    B9,A3,A4          ; |784| 
||         OR      .L2     B6,B4,B4          ; |784| 
||         ADD     .S1     A4,A30,A6         ; |784| 

RL40:      ; CALL OCCURS {_des_key_setup}    ; |784| 
;** --------------------------------------------------------------------------*
	.dwpsn	"sshdes.c",786,1
           RETNOP  .S2     B30,5             ; |786| 
           ; BRANCH OCCURS {B30}             ; |786| 
	.dwattr DW$141, DW_AT_end_file("sshdes.c")
	.dwattr DW$141, DW_AT_end_line(0x312)
	.dwattr DW$141, DW_AT_end_column(0x01)
	.dwendtag DW$141

	.sect	".text"

DW$144	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_sesskey"), DW_AT_symbol_name("_des3_sesskey")
	.dwattr DW$144, DW_AT_low_pc(_des3_sesskey)
	.dwattr DW$144, DW_AT_high_pc(0x00)
	.dwattr DW$144, DW_AT_begin_file("sshdes.c")
	.dwattr DW$144, DW_AT_begin_line(0x322)
	.dwattr DW$144, DW_AT_begin_column(0x0d)
	.dwattr DW$144, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$144, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",803,1

;******************************************************************************
;* FUNCTION NAME: _des3_sesskey                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,   *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_des3_sesskey:
;** --------------------------------------------------------------------------*
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$145, DW_AT_type(*DW$T$3)
	.dwattr DW$145, DW_AT_location[DW_OP_reg4]
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$146, DW_AT_type(*DW$T$26)
	.dwattr DW$146, DW_AT_location[DW_OP_reg20]
;** 805	-----------------------    des3_key(handle, key);
;** 806	-----------------------    des3_key((struct $$fake0 *)handle+408, key);
;** 806	-----------------------    return;
           CALL    .S1     _des3_key         ; |805| 
           MV      .L2     B4,B19            ; |803| 
           MV      .L1     A4,A31            ; |803| 
           MV      .D2     B3,B29            ; |803| 
           ADDKPC  .S2     RL41,B3,1         ; |805| 
RL41:      ; CALL OCCURS {_des3_key}         ; |805| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _des3_key         ; |806| 
           MVK     .S1     408,A3            ; |806| 
           ADDKPC  .S2     RL42,B3,1         ; |806| 
           ADD     .L1     A3,A31,A4         ; |806| 
           MV      .L2     B19,B4            ; |806| 
RL42:      ; CALL OCCURS {_des3_key}         ; |806| 
;** --------------------------------------------------------------------------*
	.dwpsn	"sshdes.c",807,1
           RETNOP  .S2     B29,5             ; |807| 
           ; BRANCH OCCURS {B29}             ; |807| 
	.dwattr DW$144, DW_AT_end_file("sshdes.c")
	.dwattr DW$144, DW_AT_end_line(0x327)
	.dwattr DW$144, DW_AT_end_column(0x01)
	.dwendtag DW$144

	.sect	".text"

DW$147	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_make_context"), DW_AT_symbol_name("_des3_make_context")
	.dwattr DW$147, DW_AT_low_pc(_des3_make_context)
	.dwattr DW$147, DW_AT_high_pc(0x00)
	.dwattr DW$147, DW_AT_begin_file("sshdes.c")
	.dwattr DW$147, DW_AT_begin_line(0x2ee)
	.dwattr DW$147, DW_AT_begin_column(0x0e)
	.dwattr DW$147, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$147, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",751,1

;******************************************************************************
;* FUNCTION NAME: _des3_make_context                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des3_make_context:
;** --------------------------------------------------------------------------*
;** 752	-----------------------    return safemalloc(3u, 136u);
           CALLRET .S1     _safemalloc       ; |752| 
           NOP             3
           MVK     .L1     0x3,A4            ; |752| 
	.dwpsn	"sshdes.c",753,1
           MVK     .S2     0x88,B4           ; |752| 
RL43:      ; CALL-RETURN OCCURS {_safemalloc}  ; |752| 
	.dwattr DW$147, DW_AT_end_file("sshdes.c")
	.dwattr DW$147, DW_AT_end_line(0x2f1)
	.dwattr DW$147, DW_AT_end_column(0x01)
	.dwendtag DW$147

	.sect	".text"

DW$148	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_iv"), DW_AT_symbol_name("_des3_iv")
	.dwattr DW$148, DW_AT_low_pc(_des3_iv)
	.dwattr DW$148, DW_AT_high_pc(0x00)
	.dwattr DW$148, DW_AT_begin_file("sshdes.c")
	.dwattr DW$148, DW_AT_begin_line(0x314)
	.dwattr DW$148, DW_AT_begin_column(0x0d)
	.dwattr DW$148, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$148, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",789,1

;******************************************************************************
;* FUNCTION NAME: _des3_iv                                                    *
;*                                                                            *
;*   Regs Modified     : A3,B4,B5,B6,B7,B8                                    *
;*   Regs Used         : A3,A4,B3,B4,B5,B6,B7,B8                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_des3_iv:
;** --------------------------------------------------------------------------*
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$149, DW_AT_type(*DW$T$3)
	.dwattr DW$149, DW_AT_location[DW_OP_reg4]
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$150, DW_AT_type(*DW$T$26)
	.dwattr DW$150, DW_AT_location[DW_OP_reg20]
;** 791	-----------------------    (*(struct $$fake0 *)handle).iv0 = (((unsigned)(unsigned long)*key<<8|(unsigned)(unsigned long)key[1])<<8|(unsigned)(unsigned long)key[2])<<8|(unsigned)(unsigned long)key[3];
;** 792	-----------------------    (*(struct $$fake0 *)handle).iv1 = (((unsigned)(unsigned long)key[4]<<8|(unsigned)(unsigned long)key[5])<<8|(unsigned)(unsigned long)key[6])<<8|(unsigned)(unsigned long)key[7];
;** 792	-----------------------    return;
           LDBU    .D2T2   *B4,B5            ; |791| 
           LDBU    .D2T2   *+B4(1),B6        ; |791| 
           NOP             1
           LDBU    .D2T2   *+B4(2),B7        ; |791| 
           NOP             1
           SHL     .S1X    B5,8,A3           ; |791| 

           LDBU    .D2T2   *+B4(3),B6        ; |791| 
||         OR      .L1X    B6,A3,A3          ; |791| 

           SHL     .S1     A3,8,A3           ; |791| 
           OR      .L1X    B7,A3,A3          ; |791| 
           SHL     .S1     A3,8,A3           ; |791| 
           MV      .L2X    A4,B5             ; |789| 

           MVK     .S2     32,B7             ; |791| 
||         OR      .L2X    B6,A3,B6          ; |791| 

           STW     .D2T2   B6,*+B5[B7]       ; |791| 
           LDBU    .D2T2   *+B4(4),B6        ; |792| 
           LDBU    .D2T2   *+B4(5),B8        ; |792| 
           NOP             1
           LDBU    .D2T2   *+B4(6),B7        ; |792| 
           NOP             1

           LDBU    .D2T2   *+B4(7),B6        ; |792| 
||         SHL     .S2     B6,8,B4           ; |792| 

           RET     .S2     B3                ; |793| 
||         OR      .L2     B8,B4,B4          ; |792| 

           SHL     .S2     B4,8,B4           ; |792| 
           OR      .L2     B7,B4,B4          ; |792| 
           SHL     .S2     B4,8,B4           ; |792| 

           MVK     .S2     33,B6             ; |792| 
||         OR      .L2     B6,B4,B4          ; |792| 

	.dwpsn	"sshdes.c",793,1
           STW     .D2T2   B4,*+B5[B6]       ; |792| 
           ; BRANCH OCCURS {B3}              ; |793| 
	.dwattr DW$148, DW_AT_end_file("sshdes.c")
	.dwattr DW$148, DW_AT_end_line(0x319)
	.dwattr DW$148, DW_AT_end_column(0x01)
	.dwendtag DW$148

	.sect	".text"

DW$151	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_free_context"), DW_AT_symbol_name("_des3_free_context")
	.dwattr DW$151, DW_AT_low_pc(_des3_free_context)
	.dwattr DW$151, DW_AT_high_pc(0x00)
	.dwattr DW$151, DW_AT_begin_file("sshdes.c")
	.dwattr DW$151, DW_AT_begin_line(0x304)
	.dwattr DW$151, DW_AT_begin_column(0x0d)
	.dwattr DW$151, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$151, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",773,1

;******************************************************************************
;* FUNCTION NAME: _des3_free_context                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des3_free_context:
;** --------------------------------------------------------------------------*
DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$152, DW_AT_type(*DW$T$3)
	.dwattr DW$152, DW_AT_location[DW_OP_reg4]
;** 774	-----------------------    safefree(handle);
;** 774	-----------------------    return;
           CALLRET .S1     _safefree         ; |774| 
	.dwpsn	"sshdes.c",775,1
           NOP             5
RL44:      ; CALL-RETURN OCCURS {_safefree}  ; |774| 
	.dwattr DW$151, DW_AT_end_file("sshdes.c")
	.dwattr DW$151, DW_AT_end_line(0x307)
	.dwattr DW$151, DW_AT_end_column(0x01)
	.dwendtag DW$151

	.sect	".text"
	.global	_des3_encrypt_pubkey_ossh

DW$153	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_encrypt_pubkey_ossh"), DW_AT_symbol_name("_des3_encrypt_pubkey_ossh")
	.dwattr DW$153, DW_AT_low_pc(_des3_encrypt_pubkey_ossh)
	.dwattr DW$153, DW_AT_high_pc(0x00)
	.dwattr DW$153, DW_AT_begin_file("sshdes.c")
	.dwattr DW$153, DW_AT_begin_line(0x37d)
	.dwattr DW$153, DW_AT_begin_column(0x06)
	.dwattr DW$153, DW_AT_frame_base[DW_OP_breg31 416]
	.dwattr DW$153, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",895,1

;******************************************************************************
;* FUNCTION NAME: _des3_encrypt_pubkey_ossh                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 412 Auto + 4 Save = 416 byte                *
;******************************************************************************
_des3_encrypt_pubkey_ossh:
;** --------------------------------------------------------------------------*
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$154, DW_AT_type(*DW$T$26)
	.dwattr DW$154, DW_AT_location[DW_OP_reg4]
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_name("iv"), DW_AT_symbol_name("_iv")
	.dwattr DW$155, DW_AT_type(*DW$T$26)
	.dwattr DW$155, DW_AT_location[DW_OP_reg20]
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$156, DW_AT_type(*DW$T$26)
	.dwattr DW$156, DW_AT_location[DW_OP_reg6]
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$157, DW_AT_type(*DW$T$10)
	.dwattr DW$157, DW_AT_location[DW_OP_reg22]
;** 897	-----------------------    des_key_setup((((unsigned)(unsigned long)*key<<8|(unsigned)(unsigned long)key[1])<<8|(unsigned)(unsigned long)key[2])<<8|(unsigned)(unsigned long)key[3], (((unsigned)(unsigned long)key[4]<<8|(unsigned)(unsigned long)key[5])<<8|(unsigned)(unsigned long)key[6])<<8|(unsigned)(unsigned long)key[7], (struct $$fake0 *)&ourkeys);
;** 899	-----------------------    des_key_setup((((unsigned)(unsigned long)key[8]<<8|(unsigned)(unsigned long)key[9])<<8|(unsigned)(unsigned long)key[10])<<8|(unsigned)(unsigned long)key[11], (((unsigned)(unsigned long)key[12]<<8|(unsigned)(unsigned long)key[13])<<8|(unsigned)(unsigned long)key[14])<<8|(unsigned)(unsigned long)key[15], (struct $$fake0 *)&ourkeys+136);
;** 901	-----------------------    des_key_setup((((unsigned)(unsigned long)key[16]<<8|(unsigned)(unsigned long)key[17])<<8|(unsigned)(unsigned long)key[18])<<8|(unsigned)(unsigned long)key[19], (((unsigned)(unsigned long)key[20]<<8|(unsigned)(unsigned long)key[21])<<8|(unsigned)(unsigned long)key[22])<<8|(unsigned)(unsigned long)key[23], (struct $$fake0 *)&ourkeys+272);
;** 903	-----------------------    (*(struct $$fake0 *)&ourkeys).iv0 = (((unsigned)(unsigned long)*iv<<8|(unsigned)(unsigned long)iv[1])<<8|(unsigned)(unsigned long)iv[2])<<8|(unsigned)(unsigned long)iv[3];
;** 904	-----------------------    (*(struct $$fake0 *)&ourkeys).iv1 = (((unsigned)(unsigned long)iv[4]<<8|(unsigned)(unsigned long)iv[5])<<8|(unsigned)(unsigned long)iv[6])<<8|(unsigned)(unsigned long)iv[7];
;** 905	-----------------------    des_cbc3_encrypt(blk, (unsigned)len, (struct $$fake0 *)&ourkeys);
;** 906	-----------------------    memset(&ourkeys, 0, 408u);
;** 906	-----------------------    return;
           MV      .L1     A4,A30            ; |895| 
           LDBU    .D1T1   *+A30(4),A9       ; |897| 
           LDBU    .D1T1   *+A30(5),A16      ; |897| 
           LDBU    .D1T1   *A30,A4           ; |897| 
           LDBU    .D1T1   *+A30(1),A5       ; |897| 
           LDBU    .D1T1   *+A30(6),A3       ; |897| 
           LDBU    .D1T1   *+A30(2),A7       ; |897| 

           LDBU    .D1T1   *+A30(3),A8       ; |897| 
||         SHL     .S2X    A9,8,B5           ; |897| 

           CALL    .S2     _des_key_setup    ; |897| 
||         LDBU    .D1T1   *+A30(7),A9       ; |897| 
||         SHL     .S1     A4,8,A4           ; |897| 

           OR      .L1     A5,A4,A4          ; |897| 
||         OR      .L2X    A16,B5,B4         ; |897| 
||         MV      .S2     B4,B18            ; |895| 

           SHL     .S1     A4,8,A4           ; |897| 
||         SHL     .S2     B4,8,B4           ; |897| 

           OR      .L1     A7,A4,A3          ; |897| 
||         OR      .L2X    A3,B4,B4          ; |897| 
||         ADDK    .S2     -416,SP           ; |895| 

           SHL     .S1     A3,8,A3           ; |897| 
||         SHL     .S2     B4,8,B4           ; |897| 
||         MV      .L2     B6,B19            ; |895| 

           ADDKPC  .S2     RL45,B3,0         ; |897| 
||         OR      .L1     A8,A3,A4          ; |897| 
||         OR      .L2X    A9,B4,B4          ; |897| 
||         ADD     .S1X    8,SP,A6           ; |897| 
||         STW     .D2T2   B3,*+SP(416)      ; |895| 
||         MV      .D1     A6,A31            ; |895| 

RL45:      ; CALL OCCURS {_des_key_setup}    ; |897| 
;** --------------------------------------------------------------------------*
           LDBU    .D1T1   *+A30(12),A6      ; |899| 
           LDBU    .D1T1   *+A30(8),A3       ; |899| 
           LDBU    .D1T1   *+A30(13),A8      ; |899| 
           LDBU    .D1T1   *+A30(9),A4       ; |899| 
           LDBU    .D1T1   *+A30(10),A5      ; |899| 
           LDBU    .D1T2   *+A30(14),B4      ; |899| 

           LDBU    .D1T1   *+A30(11),A6      ; |899| 
||         SHL     .S1     A6,8,A7           ; |899| 

           CALL    .S2     _des_key_setup    ; |899| 
||         LDBU    .D1T1   *+A30(15),A7      ; |899| 
||         OR      .L1     A8,A7,A8          ; |899| 
||         SHL     .S1     A3,8,A3           ; |899| 

           SHL     .S1     A8,8,A4           ; |899| 
||         OR      .L1     A4,A3,A3          ; |899| 

           SHL     .S1     A3,8,A3           ; |899| 

           OR      .L2X    B4,A4,B4          ; |899| 
||         OR      .L1     A5,A3,A3          ; |899| 
||         ADDAD   .D2     SP,18,B5          ; |899| 

           SHL     .S2     B4,8,B4           ; |899| 
||         SHL     .S1     A3,8,A3           ; |899| 

           ADDKPC  .S2     RL46,B3,0         ; |899| 
||         MV      .L1X    B5,A6             ; |899| 
||         OR      .S1     A6,A3,A4          ; |899| 
||         OR      .L2X    A7,B4,B4          ; |899| 

RL46:      ; CALL OCCURS {_des_key_setup}    ; |899| 
           LDBU    .D1T1   *+A30(16),A3      ; |901| 
           LDBU    .D1T1   *+A30(20),A9      ; |901| 
           LDBU    .D1T1   *+A30(17),A4      ; |901| 
           LDBU    .D1T1   *+A30(21),A8      ; |901| 
           LDBU    .D1T1   *+A30(18),A5      ; |901| 
           LDBU    .D1T1   *+A30(22),A6      ; |901| 

           LDBU    .D1T1   *+A30(23),A7      ; |901| 
||         SHL     .S2X    A3,8,B4           ; |901| 

           LDBU    .D1T1   *+A30(19),A3      ; |901| 
||         SHL     .S1     A9,8,A4           ; |901| 
||         OR      .L2X    A4,B4,B4          ; |901| 

           OR      .L1     A8,A4,A4          ; |901| 
||         SHL     .S2     B4,8,B4           ; |901| 

           CALL    .S2     _des_key_setup    ; |901| 
||         SHL     .S1     A4,8,A4           ; |901| 
||         OR      .L2X    A5,B4,B4          ; |901| 

           SHL     .S2     B4,8,B4           ; |901| 
||         OR      .L1     A6,A4,A4          ; |901| 

           SHL     .S1     A4,8,A4           ; |901| 

           OR      .L1X    A3,B4,A4          ; |901| 
||         OR      .S1     A7,A4,A3          ; |901| 

           MVK     .S1     280,A5            ; |901| 

           ADDKPC  .S2     RL47,B3,0         ; |901| 
||         MV      .L2X    A3,B4             ; |901| 
||         ADD     .L1X    A5,SP,A6          ; |901| 

RL47:      ; CALL OCCURS {_des_key_setup}    ; |901| 
           LDBU    .D2T2   *+B18(4),B4       ; |904| 
           LDBU    .D2T2   *B18,B7           ; |903| 
           LDBU    .D2T2   *+B18(5),B5       ; |904| 
           LDBU    .D2T2   *+B18(1),B8       ; |903| 
           LDBU    .D2T2   *+B18(6),B6       ; |904| 
           LDBU    .D2T2   *+B18(2),B9       ; |903| 
           SHL     .S2     B4,8,B4           ; |904| 

           LDBU    .D2T2   *+B18(7),B7       ; |904| 
||         OR      .L2     B5,B4,B4          ; |904| 
||         SHL     .S1X    B7,8,A3           ; |903| 

           LDBU    .D2T2   *+B18(3),B8       ; |903| 
||         SHL     .S2     B4,8,B4           ; |904| 
||         OR      .L1X    B8,A3,A3          ; |903| 

           CALL    .S2     _des_cbc3_encrypt ; |905| 
||         SHL     .S1     A3,8,A3           ; |903| 

           OR      .L2     B6,B4,B4          ; |904| 

           OR      .L2X    B9,A3,B5          ; |903| 
||         SHL     .S2     B4,8,B4           ; |904| 

           OR      .L2     B7,B4,B6          ; |904| 
||         SHL     .S2     B5,8,B5           ; |903| 

           STW     .D2T2   B6,*+SP(140)      ; |904| 
||         OR      .L2     B8,B5,B5          ; |903| 

           ADDKPC  .S2     RL48,B3,0         ; |905| 
||         STW     .D2T2   B5,*+SP(136)      ; |903| 
||         MV      .L2     B19,B4            ; |905| 
||         MV      .L1     A31,A4            ; |905| 
||         ADD     .S1X    8,SP,A6           ; |905| 

RL48:      ; CALL OCCURS {_des_cbc3_encrypt}  ; |905| 
           CALL    .S1     _memset           ; |906| 
           ADDKPC  .S2     RL49,B3,1         ; |906| 
           MVK     .S1     0x198,A6          ; |906| 
           ZERO    .L2     B4                ; |906| 
           ADD     .L1X    8,SP,A4           ; |906| 
RL49:      ; CALL OCCURS {_memset}           ; |906| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(416),B3      ; |907| 
           NOP             3
           ADDK    .S2     416,SP            ; |907| 
	.dwpsn	"sshdes.c",907,1
           RETNOP  .S2     B3,5              ; |907| 
           ; BRANCH OCCURS {B3}              ; |907| 
	.dwattr DW$153, DW_AT_end_file("sshdes.c")
	.dwattr DW$153, DW_AT_end_line(0x38b)
	.dwattr DW$153, DW_AT_end_column(0x01)
	.dwendtag DW$153

	.sect	".text"

DW$158	.dwtag  DW_TAG_subprogram, DW_AT_name("des_3cbc_encrypt"), DW_AT_symbol_name("_des_3cbc_encrypt")
	.dwattr DW$158, DW_AT_low_pc(_des_3cbc_encrypt)
	.dwattr DW$158, DW_AT_high_pc(0x00)
	.dwattr DW$158, DW_AT_begin_file("sshdes.c")
	.dwattr DW$158, DW_AT_begin_line(0x28d)
	.dwattr DW$158, DW_AT_begin_column(0x0d)
	.dwattr DW$158, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$158, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",655,1

;******************************************************************************
;* FUNCTION NAME: _des_3cbc_encrypt                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_des_3cbc_encrypt:
;** --------------------------------------------------------------------------*
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$159, DW_AT_type(*DW$T$26)
	.dwattr DW$159, DW_AT_location[DW_OP_reg4]
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$160, DW_AT_type(*DW$T$11)
	.dwattr DW$160, DW_AT_location[DW_OP_reg20]
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scheds"), DW_AT_symbol_name("_scheds")
	.dwattr DW$161, DW_AT_type(*DW$T$50)
	.dwattr DW$161, DW_AT_location[DW_OP_reg6]
;** 656	-----------------------    des_cbc_encrypt(blk, len, scheds);
;** 657	-----------------------    des_cbc_decrypt(blk, len, scheds+136);
;** 658	-----------------------    des_cbc_encrypt(blk, len, scheds+272);
;** 658	-----------------------    return;
           CALL    .S1     _des_cbc_encrypt  ; |656| 
           NOP             2
           STW     .D2T1   A12,*SP--(16)     ; |655| 
           STW     .D2T2   B13,*+SP(4)       ; |655| 

           ADDKPC  .S2     RL50,B3,0         ; |656| 
||         MV      .D1X    B4,A12            ; |655| 
||         MV      .S1     A6,A10            ; |655| 
||         MV      .L1     A4,A11            ; |655| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |655| 
||         MV      .L2     B3,B13            ; |655| 

RL50:      ; CALL OCCURS {_des_cbc_encrypt}  ; |656| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _des_cbc_decrypt  ; |657| 
           ADDKPC  .S2     RL51,B3,1         ; |657| 
           ADDAD   .D1     A10,17,A6         ; |657| 
           MV      .L2X    A12,B4            ; |657| 
           MV      .L1     A11,A4            ; |657| 
RL51:      ; CALL OCCURS {_des_cbc_decrypt}  ; |657| 
           CALL    .S1     _des_cbc_encrypt  ; |658| 
           MVK     .S1     272,A3            ; |658| 
           MV      .S1     A11,A4            ; |658| 
           MV      .L2X    A12,B4            ; |658| 
           ADD     .L1     A3,A10,A6         ; |658| 
           ADDKPC  .S2     RL52,B3,0         ; |658| 
RL52:      ; CALL OCCURS {_des_cbc_encrypt}  ; |658| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |659| 
||         MV      .L2     B13,B3            ; |659| 

           RET     .S2     B3                ; |659| 
||         LDW     .D2T2   *+SP(4),B13       ; |659| 

           LDW     .D2T1   *++SP(16),A12     ; |659| 
	.dwpsn	"sshdes.c",659,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |659| 
	.dwattr DW$158, DW_AT_end_file("sshdes.c")
	.dwattr DW$158, DW_AT_end_line(0x293)
	.dwattr DW$158, DW_AT_end_column(0x01)
	.dwendtag DW$158

	.sect	".text"
	.global	_des3_encrypt_pubkey

DW$162	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_encrypt_pubkey"), DW_AT_symbol_name("_des3_encrypt_pubkey")
	.dwattr DW$162, DW_AT_low_pc(_des3_encrypt_pubkey)
	.dwattr DW$162, DW_AT_high_pc(0x00)
	.dwattr DW$162, DW_AT_begin_file("sshdes.c")
	.dwattr DW$162, DW_AT_begin_line(0x360)
	.dwattr DW$162, DW_AT_begin_column(0x06)
	.dwattr DW$162, DW_AT_frame_base[DW_OP_breg31 416]
	.dwattr DW$162, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",865,1

;******************************************************************************
;* FUNCTION NAME: _des3_encrypt_pubkey                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 412 Auto + 4 Save = 416 byte                *
;******************************************************************************
_des3_encrypt_pubkey:
;** --------------------------------------------------------------------------*
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$163, DW_AT_type(*DW$T$26)
	.dwattr DW$163, DW_AT_location[DW_OP_reg4]
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$164, DW_AT_type(*DW$T$26)
	.dwattr DW$164, DW_AT_location[DW_OP_reg20]
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$165, DW_AT_type(*DW$T$10)
	.dwattr DW$165, DW_AT_location[DW_OP_reg6]
;** 867	-----------------------    des_key_setup((((unsigned)(unsigned long)*key<<8|(unsigned)(unsigned long)key[1])<<8|(unsigned)(unsigned long)key[2])<<8|(unsigned)(unsigned long)key[3], (((unsigned)(unsigned long)key[4]<<8|(unsigned)(unsigned long)key[5])<<8|(unsigned)(unsigned long)key[6])<<8|(unsigned)(unsigned long)key[7], (struct $$fake0 *)&ourkeys);
;** 869	-----------------------    des_key_setup((((unsigned)(unsigned long)key[8]<<8|(unsigned)(unsigned long)key[9])<<8|(unsigned)(unsigned long)key[10])<<8|(unsigned)(unsigned long)key[11], (((unsigned)(unsigned long)key[12]<<8|(unsigned)(unsigned long)key[13])<<8|(unsigned)(unsigned long)key[14])<<8|(unsigned)(unsigned long)key[15], (struct $$fake0 *)&ourkeys+136);
;** 871	-----------------------    des_key_setup((((unsigned)(unsigned long)*key<<8|(unsigned)(unsigned long)key[1])<<8|(unsigned)(unsigned long)key[2])<<8|(unsigned)(unsigned long)key[3], (((unsigned)(unsigned long)key[4]<<8|(unsigned)(unsigned long)key[5])<<8|(unsigned)(unsigned long)key[6])<<8|(unsigned)(unsigned long)key[7], (struct $$fake0 *)&ourkeys+272);
;** 873	-----------------------    des_3cbc_encrypt(blk, (unsigned)len, (struct $$fake0 *)&ourkeys);
;** 874	-----------------------    memset(&ourkeys, 0, 408u);
;** 874	-----------------------    return;
           MV      .L1     A4,A30            ; |865| 
           LDBU    .D1T1   *+A30(4),A9       ; |867| 
           LDBU    .D1T1   *A30,A3           ; |867| 
           LDBU    .D1T1   *+A30(5),A16      ; |867| 
           LDBU    .D1T1   *+A30(1),A4       ; |867| 
           LDBU    .D1T1   *+A30(2),A5       ; |867| 
           LDBU    .D1T1   *+A30(6),A8       ; |867| 

           LDBU    .D1T1   *+A30(3),A7       ; |867| 
||         SHL     .S2X    A9,8,B5           ; |867| 

           CALL    .S2     _des_key_setup    ; |867| 
||         LDBU    .D1T1   *+A30(7),A9       ; |867| 
||         SHL     .S1     A3,8,A3           ; |867| 

           OR      .L2X    A16,B5,B4         ; |867| 
||         OR      .L1     A4,A3,A3          ; |867| 
||         MV      .S2     B4,B18            ; |865| 

           SHL     .S2     B4,8,B4           ; |867| 
||         SHL     .S1     A3,8,A3           ; |867| 

           OR      .L2X    A8,B4,B4          ; |867| 
||         OR      .L1     A5,A3,A3          ; |867| 
||         ADDK    .S2     -416,SP           ; |865| 

           SHL     .S2     B4,8,B4           ; |867| 
||         SHL     .S1     A3,8,A3           ; |867| 

           ADDKPC  .S2     RL53,B3,0         ; |867| 
||         OR      .L1     A7,A3,A4          ; |867| 
||         OR      .L2X    A9,B4,B4          ; |867| 
||         ADD     .S1X    8,SP,A6           ; |867| 
||         STW     .D2T2   B3,*+SP(416)      ; |865| 
||         MV      .D1     A6,A31            ; |865| 

RL53:      ; CALL OCCURS {_des_key_setup}    ; |867| 
;** --------------------------------------------------------------------------*
           LDBU    .D1T1   *+A30(12),A6      ; |869| 
           LDBU    .D1T1   *+A30(8),A5       ; |869| 
           LDBU    .D1T1   *+A30(13),A8      ; |869| 
           LDBU    .D1T1   *+A30(9),A3       ; |869| 
           LDBU    .D1T1   *+A30(10),A4      ; |869| 
           LDBU    .D1T2   *+A30(14),B4      ; |869| 

           LDBU    .D1T1   *+A30(11),A6      ; |869| 
||         SHL     .S1     A6,8,A7           ; |869| 

           CALL    .S2     _des_key_setup    ; |869| 
||         LDBU    .D1T1   *+A30(15),A7      ; |869| 
||         OR      .L1     A8,A7,A8          ; |869| 
||         SHL     .S1     A5,8,A5           ; |869| 

           SHL     .S1     A8,8,A5           ; |869| 
||         OR      .L1     A3,A5,A3          ; |869| 

           SHL     .S1     A3,8,A3           ; |869| 

           OR      .L2X    B4,A5,B4          ; |869| 
||         OR      .L1     A4,A3,A3          ; |869| 
||         ADDAD   .D2     SP,18,B5          ; |869| 

           SHL     .S2     B4,8,B4           ; |869| 
||         SHL     .S1     A3,8,A3           ; |869| 

           ADDKPC  .S2     RL54,B3,0         ; |869| 
||         MV      .L1X    B5,A6             ; |869| 
||         OR      .S1     A6,A3,A4          ; |869| 
||         OR      .L2X    A7,B4,B4          ; |869| 

RL54:      ; CALL OCCURS {_des_key_setup}    ; |869| 
           LDBU    .D1T1   *+A30(4),A3       ; |871| 
           LDBU    .D1T1   *A30,A6           ; |871| 
           LDBU    .D1T1   *+A30(5),A4       ; |871| 
           LDBU    .D1T1   *+A30(1),A7       ; |871| 
           LDBU    .D1T1   *+A30(6),A5       ; |871| 
           LDBU    .D1T1   *+A30(2),A8       ; |871| 

           LDBU    .D1T1   *+A30(7),A6       ; |871| 
||         SHL     .S2X    A6,8,B4           ; |871| 
||         SHL     .S1     A3,8,A3           ; |871| 

           OR      .L1     A4,A3,A3          ; |871| 

           CALL    .S2     _des_key_setup    ; |871| 
||         LDBU    .D1T1   *+A30(3),A7       ; |871| 
||         OR      .L2X    A7,B4,B4          ; |871| 
||         SHL     .S1     A3,8,A3           ; |871| 

           OR      .L1     A5,A3,A3          ; |871| 
||         SHL     .S2     B4,8,B4           ; |871| 

           OR      .L2X    A8,B4,B4          ; |871| 
||         SHL     .S1     A3,8,A3           ; |871| 

           SHL     .S2     B4,8,B4           ; |871| 
||         OR      .L1     A6,A3,A3          ; |871| 
||         MVK     .S1     280,A5            ; |871| 

           ADD     .L1X    A5,SP,A6          ; |871| 

           ADDKPC  .S2     RL55,B3,0         ; |871| 
||         MV      .L2X    A3,B4             ; |871| 
||         OR      .L1X    A7,B4,A4          ; |871| 

RL55:      ; CALL OCCURS {_des_key_setup}    ; |871| 
           CALL    .S1     _des_3cbc_encrypt ; |873| 
           ADD     .L1X    8,SP,A6           ; |873| 
           ADDKPC  .S2     RL56,B3,1         ; |873| 
           MV      .L1X    B18,A4            ; |873| 
           MV      .L2X    A31,B4            ; |873| 
RL56:      ; CALL OCCURS {_des_3cbc_encrypt}  ; |873| 
           CALL    .S1     _memset           ; |874| 
           ADD     .L1X    8,SP,A4           ; |874| 
           ZERO    .L2     B4                ; |874| 
           MVK     .S1     0x198,A6          ; |874| 
           ADDKPC  .S2     RL57,B3,1         ; |874| 
RL57:      ; CALL OCCURS {_memset}           ; |874| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(416),B3      ; |875| 
           NOP             3
           ADDK    .S2     416,SP            ; |875| 
	.dwpsn	"sshdes.c",875,1
           RETNOP  .S2     B3,5              ; |875| 
           ; BRANCH OCCURS {B3}              ; |875| 
	.dwattr DW$162, DW_AT_end_file("sshdes.c")
	.dwattr DW$162, DW_AT_end_line(0x36b)
	.dwattr DW$162, DW_AT_end_column(0x01)
	.dwendtag DW$162

	.sect	".text"

DW$166	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_encrypt_blk"), DW_AT_symbol_name("_des3_encrypt_blk")
	.dwattr DW$166, DW_AT_low_pc(_des3_encrypt_blk)
	.dwattr DW$166, DW_AT_high_pc(0x00)
	.dwattr DW$166, DW_AT_begin_file("sshdes.c")
	.dwattr DW$166, DW_AT_begin_line(0x329)
	.dwattr DW$166, DW_AT_begin_column(0x0d)
	.dwattr DW$166, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$166, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",810,1

;******************************************************************************
;* FUNCTION NAME: _des3_encrypt_blk                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des3_encrypt_blk:
;** --------------------------------------------------------------------------*
DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$167, DW_AT_type(*DW$T$3)
	.dwattr DW$167, DW_AT_location[DW_OP_reg4]
DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$168, DW_AT_type(*DW$T$26)
	.dwattr DW$168, DW_AT_location[DW_OP_reg20]
DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$169, DW_AT_type(*DW$T$10)
	.dwattr DW$169, DW_AT_location[DW_OP_reg6]
;** 812	-----------------------    des_3cbc_encrypt(blk, (unsigned)len, (struct $$fake0 *)handle);
;** 812	-----------------------    return;
           CALLRET .S1     _des_3cbc_encrypt ; |812| 
           NOP             1
           MV      .L1X    B4,A3             ; |810| 
           MV      .L2X    A6,B4             ; |810| 
           MV      .S1     A4,A6             ; |810| 
	.dwpsn	"sshdes.c",813,1
           MV      .L1     A3,A4             ; |812| 
RL58:      ; CALL-RETURN OCCURS {_des_3cbc_encrypt}  ; |812| 
	.dwattr DW$166, DW_AT_end_file("sshdes.c")
	.dwattr DW$166, DW_AT_end_line(0x32d)
	.dwattr DW$166, DW_AT_end_column(0x01)
	.dwendtag DW$166

	.sect	".text"
	.global	_des3_decrypt_pubkey_ossh

DW$170	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_decrypt_pubkey_ossh"), DW_AT_symbol_name("_des3_decrypt_pubkey_ossh")
	.dwattr DW$170, DW_AT_low_pc(_des3_decrypt_pubkey_ossh)
	.dwattr DW$170, DW_AT_high_pc(0x00)
	.dwattr DW$170, DW_AT_begin_file("sshdes.c")
	.dwattr DW$170, DW_AT_begin_line(0x36d)
	.dwattr DW$170, DW_AT_begin_column(0x06)
	.dwattr DW$170, DW_AT_frame_base[DW_OP_breg31 416]
	.dwattr DW$170, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",879,1

;******************************************************************************
;* FUNCTION NAME: _des3_decrypt_pubkey_ossh                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 412 Auto + 4 Save = 416 byte                *
;******************************************************************************
_des3_decrypt_pubkey_ossh:
;** --------------------------------------------------------------------------*
DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$171, DW_AT_type(*DW$T$26)
	.dwattr DW$171, DW_AT_location[DW_OP_reg4]
DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_name("iv"), DW_AT_symbol_name("_iv")
	.dwattr DW$172, DW_AT_type(*DW$T$26)
	.dwattr DW$172, DW_AT_location[DW_OP_reg20]
DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$173, DW_AT_type(*DW$T$26)
	.dwattr DW$173, DW_AT_location[DW_OP_reg6]
DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$174, DW_AT_type(*DW$T$10)
	.dwattr DW$174, DW_AT_location[DW_OP_reg22]
;** 881	-----------------------    des_key_setup((((unsigned)(unsigned long)*key<<8|(unsigned)(unsigned long)key[1])<<8|(unsigned)(unsigned long)key[2])<<8|(unsigned)(unsigned long)key[3], (((unsigned)(unsigned long)key[4]<<8|(unsigned)(unsigned long)key[5])<<8|(unsigned)(unsigned long)key[6])<<8|(unsigned)(unsigned long)key[7], (struct $$fake0 *)&ourkeys);
;** 883	-----------------------    des_key_setup((((unsigned)(unsigned long)key[8]<<8|(unsigned)(unsigned long)key[9])<<8|(unsigned)(unsigned long)key[10])<<8|(unsigned)(unsigned long)key[11], (((unsigned)(unsigned long)key[12]<<8|(unsigned)(unsigned long)key[13])<<8|(unsigned)(unsigned long)key[14])<<8|(unsigned)(unsigned long)key[15], (struct $$fake0 *)&ourkeys+136);
;** 885	-----------------------    des_key_setup((((unsigned)(unsigned long)key[16]<<8|(unsigned)(unsigned long)key[17])<<8|(unsigned)(unsigned long)key[18])<<8|(unsigned)(unsigned long)key[19], (((unsigned)(unsigned long)key[20]<<8|(unsigned)(unsigned long)key[21])<<8|(unsigned)(unsigned long)key[22])<<8|(unsigned)(unsigned long)key[23], (struct $$fake0 *)&ourkeys+272);
;** 887	-----------------------    (*(struct $$fake0 *)&ourkeys).iv0 = (((unsigned)(unsigned long)*iv<<8|(unsigned)(unsigned long)iv[1])<<8|(unsigned)(unsigned long)iv[2])<<8|(unsigned)(unsigned long)iv[3];
;** 888	-----------------------    (*(struct $$fake0 *)&ourkeys).iv1 = (((unsigned)(unsigned long)iv[4]<<8|(unsigned)(unsigned long)iv[5])<<8|(unsigned)(unsigned long)iv[6])<<8|(unsigned)(unsigned long)iv[7];
;** 889	-----------------------    des_cbc3_decrypt(blk, (unsigned)len, (struct $$fake0 *)&ourkeys);
;** 890	-----------------------    memset(&ourkeys, 0, 408u);
;** 890	-----------------------    return;
           MV      .L1     A4,A30            ; |879| 
           LDBU    .D1T1   *+A30(4),A9       ; |881| 
           LDBU    .D1T1   *+A30(5),A16      ; |881| 
           LDBU    .D1T1   *A30,A4           ; |881| 
           LDBU    .D1T1   *+A30(1),A5       ; |881| 
           LDBU    .D1T1   *+A30(6),A3       ; |881| 
           LDBU    .D1T1   *+A30(2),A7       ; |881| 

           LDBU    .D1T1   *+A30(3),A8       ; |881| 
||         SHL     .S2X    A9,8,B5           ; |881| 

           CALL    .S2     _des_key_setup    ; |881| 
||         LDBU    .D1T1   *+A30(7),A9       ; |881| 
||         SHL     .S1     A4,8,A4           ; |881| 

           OR      .L1     A5,A4,A4          ; |881| 
||         OR      .L2X    A16,B5,B4         ; |881| 
||         MV      .S2     B4,B18            ; |879| 

           SHL     .S1     A4,8,A4           ; |881| 
||         SHL     .S2     B4,8,B4           ; |881| 

           OR      .L1     A7,A4,A3          ; |881| 
||         OR      .L2X    A3,B4,B4          ; |881| 
||         ADDK    .S2     -416,SP           ; |879| 

           SHL     .S1     A3,8,A3           ; |881| 
||         SHL     .S2     B4,8,B4           ; |881| 
||         MV      .L2     B6,B19            ; |879| 

           ADDKPC  .S2     RL59,B3,0         ; |881| 
||         OR      .L1     A8,A3,A4          ; |881| 
||         OR      .L2X    A9,B4,B4          ; |881| 
||         ADD     .S1X    8,SP,A6           ; |881| 
||         STW     .D2T2   B3,*+SP(416)      ; |879| 
||         MV      .D1     A6,A31            ; |879| 

RL59:      ; CALL OCCURS {_des_key_setup}    ; |881| 
;** --------------------------------------------------------------------------*
           LDBU    .D1T1   *+A30(12),A6      ; |883| 
           LDBU    .D1T1   *+A30(8),A3       ; |883| 
           LDBU    .D1T1   *+A30(13),A8      ; |883| 
           LDBU    .D1T1   *+A30(9),A4       ; |883| 
           LDBU    .D1T1   *+A30(10),A5      ; |883| 
           LDBU    .D1T2   *+A30(14),B4      ; |883| 

           LDBU    .D1T1   *+A30(11),A6      ; |883| 
||         SHL     .S1     A6,8,A7           ; |883| 

           CALL    .S2     _des_key_setup    ; |883| 
||         LDBU    .D1T1   *+A30(15),A7      ; |883| 
||         OR      .L1     A8,A7,A8          ; |883| 
||         SHL     .S1     A3,8,A3           ; |883| 

           SHL     .S1     A8,8,A4           ; |883| 
||         OR      .L1     A4,A3,A3          ; |883| 

           SHL     .S1     A3,8,A3           ; |883| 

           OR      .L2X    B4,A4,B4          ; |883| 
||         OR      .L1     A5,A3,A3          ; |883| 
||         ADDAD   .D2     SP,18,B5          ; |883| 

           SHL     .S2     B4,8,B4           ; |883| 
||         SHL     .S1     A3,8,A3           ; |883| 

           ADDKPC  .S2     RL60,B3,0         ; |883| 
||         MV      .L1X    B5,A6             ; |883| 
||         OR      .S1     A6,A3,A4          ; |883| 
||         OR      .L2X    A7,B4,B4          ; |883| 

RL60:      ; CALL OCCURS {_des_key_setup}    ; |883| 
           LDBU    .D1T1   *+A30(16),A3      ; |885| 
           LDBU    .D1T1   *+A30(20),A9      ; |885| 
           LDBU    .D1T1   *+A30(17),A4      ; |885| 
           LDBU    .D1T1   *+A30(21),A8      ; |885| 
           LDBU    .D1T1   *+A30(18),A5      ; |885| 
           LDBU    .D1T1   *+A30(22),A6      ; |885| 

           LDBU    .D1T1   *+A30(23),A7      ; |885| 
||         SHL     .S2X    A3,8,B4           ; |885| 

           LDBU    .D1T1   *+A30(19),A3      ; |885| 
||         SHL     .S1     A9,8,A4           ; |885| 
||         OR      .L2X    A4,B4,B4          ; |885| 

           OR      .L1     A8,A4,A4          ; |885| 
||         SHL     .S2     B4,8,B4           ; |885| 

           CALL    .S2     _des_key_setup    ; |885| 
||         SHL     .S1     A4,8,A4           ; |885| 
||         OR      .L2X    A5,B4,B4          ; |885| 

           SHL     .S2     B4,8,B4           ; |885| 
||         OR      .L1     A6,A4,A4          ; |885| 

           SHL     .S1     A4,8,A4           ; |885| 

           OR      .L1X    A3,B4,A4          ; |885| 
||         OR      .S1     A7,A4,A3          ; |885| 

           MVK     .S1     280,A5            ; |885| 

           ADDKPC  .S2     RL61,B3,0         ; |885| 
||         MV      .L2X    A3,B4             ; |885| 
||         ADD     .L1X    A5,SP,A6          ; |885| 

RL61:      ; CALL OCCURS {_des_key_setup}    ; |885| 
           LDBU    .D2T2   *+B18(4),B4       ; |888| 
           LDBU    .D2T2   *B18,B7           ; |887| 
           LDBU    .D2T2   *+B18(5),B5       ; |888| 
           LDBU    .D2T2   *+B18(1),B8       ; |887| 
           LDBU    .D2T2   *+B18(6),B6       ; |888| 
           LDBU    .D2T2   *+B18(2),B9       ; |887| 
           SHL     .S2     B4,8,B4           ; |888| 

           LDBU    .D2T2   *+B18(7),B7       ; |888| 
||         OR      .L2     B5,B4,B4          ; |888| 
||         SHL     .S1X    B7,8,A3           ; |887| 

           LDBU    .D2T2   *+B18(3),B8       ; |887| 
||         SHL     .S2     B4,8,B4           ; |888| 
||         OR      .L1X    B8,A3,A3          ; |887| 

           CALL    .S2     _des_cbc3_decrypt ; |889| 
||         SHL     .S1     A3,8,A3           ; |887| 

           OR      .L2     B6,B4,B4          ; |888| 

           OR      .L2X    B9,A3,B5          ; |887| 
||         SHL     .S2     B4,8,B4           ; |888| 

           OR      .L2     B7,B4,B6          ; |888| 
||         SHL     .S2     B5,8,B5           ; |887| 

           STW     .D2T2   B6,*+SP(140)      ; |888| 
||         OR      .L2     B8,B5,B5          ; |887| 

           ADDKPC  .S2     RL62,B3,0         ; |889| 
||         STW     .D2T2   B5,*+SP(136)      ; |887| 
||         MV      .L2     B19,B4            ; |889| 
||         MV      .L1     A31,A4            ; |889| 
||         ADD     .S1X    8,SP,A6           ; |889| 

RL62:      ; CALL OCCURS {_des_cbc3_decrypt}  ; |889| 
           CALL    .S1     _memset           ; |890| 
           ADDKPC  .S2     RL63,B3,1         ; |890| 
           MVK     .S1     0x198,A6          ; |890| 
           ZERO    .L2     B4                ; |890| 
           ADD     .L1X    8,SP,A4           ; |890| 
RL63:      ; CALL OCCURS {_memset}           ; |890| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(416),B3      ; |891| 
           NOP             3
           ADDK    .S2     416,SP            ; |891| 
	.dwpsn	"sshdes.c",891,1
           RETNOP  .S2     B3,5              ; |891| 
           ; BRANCH OCCURS {B3}              ; |891| 
	.dwattr DW$170, DW_AT_end_file("sshdes.c")
	.dwattr DW$170, DW_AT_end_line(0x37b)
	.dwattr DW$170, DW_AT_end_column(0x01)
	.dwendtag DW$170

	.sect	".text"

DW$175	.dwtag  DW_TAG_subprogram, DW_AT_name("des_3cbc_decrypt"), DW_AT_symbol_name("_des_3cbc_decrypt")
	.dwattr DW$175, DW_AT_low_pc(_des_3cbc_decrypt)
	.dwattr DW$175, DW_AT_high_pc(0x00)
	.dwattr DW$175, DW_AT_begin_file("sshdes.c")
	.dwattr DW$175, DW_AT_begin_line(0x2af)
	.dwattr DW$175, DW_AT_begin_column(0x0d)
	.dwattr DW$175, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$175, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",689,1

;******************************************************************************
;* FUNCTION NAME: _des_3cbc_decrypt                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                  *
;******************************************************************************
_des_3cbc_decrypt:
;** --------------------------------------------------------------------------*
DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$176, DW_AT_type(*DW$T$26)
	.dwattr DW$176, DW_AT_location[DW_OP_reg4]
DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$177, DW_AT_type(*DW$T$11)
	.dwattr DW$177, DW_AT_location[DW_OP_reg20]
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("scheds"), DW_AT_symbol_name("_scheds")
	.dwattr DW$178, DW_AT_type(*DW$T$50)
	.dwattr DW$178, DW_AT_location[DW_OP_reg6]
;** 690	-----------------------    des_cbc_decrypt(blk, len, scheds+272);
;** 691	-----------------------    des_cbc_encrypt(blk, len, scheds+136);
;** 692	-----------------------    des_cbc_decrypt(blk, len, scheds);
;** 692	-----------------------    return;
           CALL    .S1     _des_cbc_decrypt  ; |690| 
           MVK     .S1     272,A3            ; |690| 
           NOP             1
           STW     .D2T1   A12,*SP--(16)     ; |689| 

           STW     .D2T2   B13,*+SP(4)       ; |689| 
||         MV      .L1X    B4,A12            ; |689| 

           ADDKPC  .S2     RL64,B3,0         ; |690| 
||         ADD     .L1     A3,A6,A6          ; |690| 
||         MV      .D1     A6,A10            ; |689| 
||         MV      .S1     A4,A11            ; |689| 
||         STDW    .D2T1   A11:A10,*+SP(8)   ; |689| 
||         MV      .L2     B3,B13            ; |689| 

RL64:      ; CALL OCCURS {_des_cbc_decrypt}  ; |690| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _des_cbc_encrypt  ; |691| 
           ADDKPC  .S2     RL65,B3,1         ; |691| 
           ADDAD   .D1     A10,17,A6         ; |691| 
           MV      .L2X    A12,B4            ; |691| 
           MV      .L1     A11,A4            ; |691| 
RL65:      ; CALL OCCURS {_des_cbc_encrypt}  ; |691| 
           CALL    .S1     _des_cbc_decrypt  ; |692| 
           MV      .S1     A11,A4            ; |692| 
           MV      .L2X    A12,B4            ; |692| 
           MV      .L1     A10,A6            ; |692| 
           ADDKPC  .S2     RL66,B3,1         ; |692| 
RL66:      ; CALL OCCURS {_des_cbc_decrypt}  ; |692| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(8),A11:A10   ; |693| 
||         MV      .L2     B13,B3            ; |693| 

           RET     .S2     B3                ; |693| 
||         LDW     .D2T2   *+SP(4),B13       ; |693| 

           LDW     .D2T1   *++SP(16),A12     ; |693| 
	.dwpsn	"sshdes.c",693,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |693| 
	.dwattr DW$175, DW_AT_end_file("sshdes.c")
	.dwattr DW$175, DW_AT_end_line(0x2b5)
	.dwattr DW$175, DW_AT_end_column(0x01)
	.dwendtag DW$175

	.sect	".text"
	.global	_des3_decrypt_pubkey

DW$179	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_decrypt_pubkey"), DW_AT_symbol_name("_des3_decrypt_pubkey")
	.dwattr DW$179, DW_AT_low_pc(_des3_decrypt_pubkey)
	.dwattr DW$179, DW_AT_high_pc(0x00)
	.dwattr DW$179, DW_AT_begin_file("sshdes.c")
	.dwattr DW$179, DW_AT_begin_line(0x353)
	.dwattr DW$179, DW_AT_begin_column(0x06)
	.dwattr DW$179, DW_AT_frame_base[DW_OP_breg31 416]
	.dwattr DW$179, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",852,1

;******************************************************************************
;* FUNCTION NAME: _des3_decrypt_pubkey                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 412 Auto + 4 Save = 416 byte                *
;******************************************************************************
_des3_decrypt_pubkey:
;** --------------------------------------------------------------------------*
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$180, DW_AT_type(*DW$T$26)
	.dwattr DW$180, DW_AT_location[DW_OP_reg4]
DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$181, DW_AT_type(*DW$T$26)
	.dwattr DW$181, DW_AT_location[DW_OP_reg20]
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$182, DW_AT_type(*DW$T$10)
	.dwattr DW$182, DW_AT_location[DW_OP_reg6]
;** 854	-----------------------    des_key_setup((((unsigned)(unsigned long)*key<<8|(unsigned)(unsigned long)key[1])<<8|(unsigned)(unsigned long)key[2])<<8|(unsigned)(unsigned long)key[3], (((unsigned)(unsigned long)key[4]<<8|(unsigned)(unsigned long)key[5])<<8|(unsigned)(unsigned long)key[6])<<8|(unsigned)(unsigned long)key[7], (struct $$fake0 *)&ourkeys);
;** 856	-----------------------    des_key_setup((((unsigned)(unsigned long)key[8]<<8|(unsigned)(unsigned long)key[9])<<8|(unsigned)(unsigned long)key[10])<<8|(unsigned)(unsigned long)key[11], (((unsigned)(unsigned long)key[12]<<8|(unsigned)(unsigned long)key[13])<<8|(unsigned)(unsigned long)key[14])<<8|(unsigned)(unsigned long)key[15], (struct $$fake0 *)&ourkeys+136);
;** 858	-----------------------    des_key_setup((((unsigned)(unsigned long)*key<<8|(unsigned)(unsigned long)key[1])<<8|(unsigned)(unsigned long)key[2])<<8|(unsigned)(unsigned long)key[3], (((unsigned)(unsigned long)key[4]<<8|(unsigned)(unsigned long)key[5])<<8|(unsigned)(unsigned long)key[6])<<8|(unsigned)(unsigned long)key[7], (struct $$fake0 *)&ourkeys+272);
;** 860	-----------------------    des_3cbc_decrypt(blk, (unsigned)len, (struct $$fake0 *)&ourkeys);
;** 861	-----------------------    memset(&ourkeys, 0, 408u);
;** 861	-----------------------    return;
           MV      .L1     A4,A30            ; |852| 
           LDBU    .D1T1   *+A30(4),A9       ; |854| 
           LDBU    .D1T1   *A30,A3           ; |854| 
           LDBU    .D1T1   *+A30(5),A16      ; |854| 
           LDBU    .D1T1   *+A30(1),A4       ; |854| 
           LDBU    .D1T1   *+A30(2),A5       ; |854| 
           LDBU    .D1T1   *+A30(6),A8       ; |854| 

           LDBU    .D1T1   *+A30(3),A7       ; |854| 
||         SHL     .S2X    A9,8,B5           ; |854| 

           CALL    .S2     _des_key_setup    ; |854| 
||         LDBU    .D1T1   *+A30(7),A9       ; |854| 
||         SHL     .S1     A3,8,A3           ; |854| 

           OR      .L2X    A16,B5,B4         ; |854| 
||         OR      .L1     A4,A3,A3          ; |854| 
||         MV      .S2     B4,B18            ; |852| 

           SHL     .S2     B4,8,B4           ; |854| 
||         SHL     .S1     A3,8,A3           ; |854| 

           OR      .L2X    A8,B4,B4          ; |854| 
||         OR      .L1     A5,A3,A3          ; |854| 
||         ADDK    .S2     -416,SP           ; |852| 

           SHL     .S2     B4,8,B4           ; |854| 
||         SHL     .S1     A3,8,A3           ; |854| 

           ADDKPC  .S2     RL67,B3,0         ; |854| 
||         OR      .L1     A7,A3,A4          ; |854| 
||         OR      .L2X    A9,B4,B4          ; |854| 
||         ADD     .S1X    8,SP,A6           ; |854| 
||         STW     .D2T2   B3,*+SP(416)      ; |852| 
||         MV      .D1     A6,A31            ; |852| 

RL67:      ; CALL OCCURS {_des_key_setup}    ; |854| 
;** --------------------------------------------------------------------------*
           LDBU    .D1T1   *+A30(12),A6      ; |856| 
           LDBU    .D1T1   *+A30(8),A5       ; |856| 
           LDBU    .D1T1   *+A30(13),A8      ; |856| 
           LDBU    .D1T1   *+A30(9),A3       ; |856| 
           LDBU    .D1T1   *+A30(10),A4      ; |856| 
           LDBU    .D1T2   *+A30(14),B4      ; |856| 

           LDBU    .D1T1   *+A30(11),A6      ; |856| 
||         SHL     .S1     A6,8,A7           ; |856| 

           CALL    .S2     _des_key_setup    ; |856| 
||         LDBU    .D1T1   *+A30(15),A7      ; |856| 
||         OR      .L1     A8,A7,A8          ; |856| 
||         SHL     .S1     A5,8,A5           ; |856| 

           SHL     .S1     A8,8,A5           ; |856| 
||         OR      .L1     A3,A5,A3          ; |856| 

           SHL     .S1     A3,8,A3           ; |856| 

           OR      .L2X    B4,A5,B4          ; |856| 
||         OR      .L1     A4,A3,A3          ; |856| 
||         ADDAD   .D2     SP,18,B5          ; |856| 

           SHL     .S2     B4,8,B4           ; |856| 
||         SHL     .S1     A3,8,A3           ; |856| 

           ADDKPC  .S2     RL68,B3,0         ; |856| 
||         MV      .L1X    B5,A6             ; |856| 
||         OR      .S1     A6,A3,A4          ; |856| 
||         OR      .L2X    A7,B4,B4          ; |856| 

RL68:      ; CALL OCCURS {_des_key_setup}    ; |856| 
           LDBU    .D1T1   *+A30(4),A3       ; |858| 
           LDBU    .D1T1   *A30,A6           ; |858| 
           LDBU    .D1T1   *+A30(5),A4       ; |858| 
           LDBU    .D1T1   *+A30(1),A7       ; |858| 
           LDBU    .D1T1   *+A30(6),A5       ; |858| 
           LDBU    .D1T1   *+A30(2),A8       ; |858| 

           LDBU    .D1T1   *+A30(7),A6       ; |858| 
||         SHL     .S2X    A6,8,B4           ; |858| 
||         SHL     .S1     A3,8,A3           ; |858| 

           OR      .L1     A4,A3,A3          ; |858| 

           CALL    .S2     _des_key_setup    ; |858| 
||         LDBU    .D1T1   *+A30(3),A7       ; |858| 
||         OR      .L2X    A7,B4,B4          ; |858| 
||         SHL     .S1     A3,8,A3           ; |858| 

           OR      .L1     A5,A3,A3          ; |858| 
||         SHL     .S2     B4,8,B4           ; |858| 

           OR      .L2X    A8,B4,B4          ; |858| 
||         SHL     .S1     A3,8,A3           ; |858| 

           SHL     .S2     B4,8,B4           ; |858| 
||         OR      .L1     A6,A3,A3          ; |858| 
||         MVK     .S1     280,A5            ; |858| 

           ADD     .L1X    A5,SP,A6          ; |858| 

           ADDKPC  .S2     RL69,B3,0         ; |858| 
||         MV      .L2X    A3,B4             ; |858| 
||         OR      .L1X    A7,B4,A4          ; |858| 

RL69:      ; CALL OCCURS {_des_key_setup}    ; |858| 
           CALL    .S1     _des_3cbc_decrypt ; |860| 
           ADD     .L1X    8,SP,A6           ; |860| 
           ADDKPC  .S2     RL70,B3,1         ; |860| 
           MV      .L1X    B18,A4            ; |860| 
           MV      .L2X    A31,B4            ; |860| 
RL70:      ; CALL OCCURS {_des_3cbc_decrypt}  ; |860| 
           CALL    .S1     _memset           ; |861| 
           ADD     .L1X    8,SP,A4           ; |861| 
           ZERO    .L2     B4                ; |861| 
           MVK     .S1     0x198,A6          ; |861| 
           ADDKPC  .S2     RL71,B3,1         ; |861| 
RL71:      ; CALL OCCURS {_memset}           ; |861| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(416),B3      ; |862| 
           NOP             3
           ADDK    .S2     416,SP            ; |862| 
	.dwpsn	"sshdes.c",862,1
           RETNOP  .S2     B3,5              ; |862| 
           ; BRANCH OCCURS {B3}              ; |862| 
	.dwattr DW$179, DW_AT_end_file("sshdes.c")
	.dwattr DW$179, DW_AT_end_line(0x35e)
	.dwattr DW$179, DW_AT_end_column(0x01)
	.dwendtag DW$179

	.sect	".text"

DW$183	.dwtag  DW_TAG_subprogram, DW_AT_name("des3_decrypt_blk"), DW_AT_symbol_name("_des3_decrypt_blk")
	.dwattr DW$183, DW_AT_low_pc(_des3_decrypt_blk)
	.dwattr DW$183, DW_AT_high_pc(0x00)
	.dwattr DW$183, DW_AT_begin_file("sshdes.c")
	.dwattr DW$183, DW_AT_begin_line(0x32f)
	.dwattr DW$183, DW_AT_begin_column(0x0d)
	.dwattr DW$183, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$183, DW_AT_skeletal(0x01)
	.dwpsn	"sshdes.c",816,1

;******************************************************************************
;* FUNCTION NAME: _des3_decrypt_blk                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_des3_decrypt_blk:
;** --------------------------------------------------------------------------*
DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_name("handle"), DW_AT_symbol_name("_handle")
	.dwattr DW$184, DW_AT_type(*DW$T$3)
	.dwattr DW$184, DW_AT_location[DW_OP_reg4]
DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_name("blk"), DW_AT_symbol_name("_blk")
	.dwattr DW$185, DW_AT_type(*DW$T$26)
	.dwattr DW$185, DW_AT_location[DW_OP_reg20]
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len"), DW_AT_symbol_name("_len")
	.dwattr DW$186, DW_AT_type(*DW$T$10)
	.dwattr DW$186, DW_AT_location[DW_OP_reg6]
;** 818	-----------------------    des_3cbc_decrypt(blk, (unsigned)len, (struct $$fake0 *)handle+408);
;** 818	-----------------------    return;
           CALLRET .S1     _des_3cbc_decrypt ; |818| 
           MVK     .S1     408,A3            ; |818| 
           MV      .L1X    B4,A5             ; |816| 
           MV      .L2X    A6,B4             ; |816| 
           ADD     .S1     A3,A4,A6          ; |818| 
	.dwpsn	"sshdes.c",819,1
           MV      .L1     A5,A4             ; |818| 
RL72:      ; CALL-RETURN OCCURS {_des_3cbc_decrypt}  ; |818| 
	.dwattr DW$183, DW_AT_end_file("sshdes.c")
	.dwattr DW$183, DW_AT_end_line(0x333)
	.dwattr DW$183, DW_AT_end_column(0x01)
	.dwendtag DW$183

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"3des-cbc",0
SL2:	.string	"triple-DES CBC",0
SL3:	.string	"3des-ctr",0
SL4:	.string	"triple-DES SDCTR",0
SL5:	.string	"des-cbc",0
SL6:	.string	"single-DES CBC",0
SL7:	.string	"des-cbc@ssh.com",0
SL8:	.string	"triple-DES inner-CBC",0
SL9:	.string	"Assertion failed, ((len & 7) == 0), file sshdes.c, line 609"
	.string	10,0
SL10:	.string	"Assertion failed, ((len & 7) == 0), file sshdes.c, line 633"
	.string	10,0
SL11:	.string	"Assertion failed, ((len & 7) == 0), file sshdes.c, line 729"
	.string	10,0
SL12:	.string	"Assertion failed, ((len & 7) == 0), file sshdes.c, line 667"
	.string	10,0
SL13:	.string	"Assertion failed, ((len & 7) == 0), file sshdes.c, line 701"
	.string	10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_memset
	.global	_safemalloc
	.global	_safefree
	.global	__abort_msg

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$22	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)

DW$T$41	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$43


DW$T$24	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$29


DW$T$48	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$47)
	.dwendtag DW$T$48


DW$T$51	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
	.dwendtag DW$T$51


DW$T$54	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$58


DW$T$59	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$59


DW$T$60	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$218	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
	.dwendtag DW$T$60

DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$26, DW_AT_address_class(0x20)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$69	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$69, DW_AT_address_class(0x20)

DW$T$71	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$71, DW_AT_byte_size(0x70)
DW$219	.dwtag  DW_TAG_subrange_type
	.dwattr DW$219, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$71


DW$T$72	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$72, DW_AT_byte_size(0x80)
DW$220	.dwtag  DW_TAG_subrange_type
	.dwattr DW$220, DW_AT_upper_bound(0x1f)
	.dwendtag DW$T$72


DW$T$73	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$73, DW_AT_byte_size(0x40)
DW$221	.dwtag  DW_TAG_subrange_type
	.dwattr DW$221, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$73

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("word32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$53	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$53, DW_AT_address_class(0x20)

DW$T$77	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$222	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$69)
DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$77


DW$T$80	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$78)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$80, DW_AT_byte_size(0x800)
DW$225	.dwtag  DW_TAG_subrange_type
	.dwattr DW$225, DW_AT_upper_bound(0x07)
DW$226	.dwtag  DW_TAG_subrange_type
	.dwattr DW$226, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$80

DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$T$50	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$49)
	.dwattr DW$T$50, DW_AT_address_class(0x20)
DW$T$47	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$46)
	.dwattr DW$T$47, DW_AT_address_class(0x20)
DW$T$34	.dwtag  DW_TAG_const_type
	.dwattr DW$T$34, DW_AT_type(*DW$T$33)

DW$T$100	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$36)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$100, DW_AT_byte_size(0x08)
DW$227	.dwtag  DW_TAG_subrange_type
	.dwattr DW$227, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$100

DW$T$101	.dwtag  DW_TAG_const_type
	.dwattr DW$T$101, DW_AT_type(*DW$T$38)
DW$T$102	.dwtag  DW_TAG_const_type
	.dwattr DW$T$102, DW_AT_type(*DW$T$39)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$68	.dwtag  DW_TAG_const_type
	.dwattr DW$T$68, DW_AT_type(*DW$T$10)
DW$T$78	.dwtag  DW_TAG_const_type
	.dwattr DW$T$78, DW_AT_type(*DW$T$19)
DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("DESContext"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr DW$T$46, DW_AT_type(*DW$T$31)

DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("ssh2_cipher")
	.dwattr DW$T$33, DW_AT_byte_size(0x2c)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$228, DW_AT_name("make_context"), DW_AT_symbol_name("_make_context")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$229, DW_AT_name("free_context"), DW_AT_symbol_name("_free_context")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$230, DW_AT_name("setiv"), DW_AT_symbol_name("_setiv")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$231, DW_AT_name("setkey"), DW_AT_symbol_name("_setkey")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$232, DW_AT_name("encrypt"), DW_AT_symbol_name("_encrypt")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$233, DW_AT_name("decrypt"), DW_AT_symbol_name("_decrypt")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$234, DW_AT_name("name"), DW_AT_symbol_name("_name")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$235, DW_AT_name("blksize"), DW_AT_symbol_name("_blksize")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$236, DW_AT_name("keylen"), DW_AT_symbol_name("_keylen")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$11)
	.dwattr DW$237, DW_AT_name("flags"), DW_AT_symbol_name("_flags")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$238, DW_AT_name("text_name"), DW_AT_symbol_name("_text_name")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33

DW$T$36	.dwtag  DW_TAG_const_type
	.dwattr DW$T$36, DW_AT_type(*DW$T$35)

DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("ssh2_ciphers")
	.dwattr DW$T$38, DW_AT_byte_size(0x08)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$239, DW_AT_name("nciphers"), DW_AT_symbol_name("_nciphers")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$240, DW_AT_name("list"), DW_AT_symbol_name("_list")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("ssh_cipher")
	.dwattr DW$T$39, DW_AT_byte_size(0x1c)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$241, DW_AT_name("make_context"), DW_AT_symbol_name("_make_context")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$242, DW_AT_name("free_context"), DW_AT_symbol_name("_free_context")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$243, DW_AT_name("sesskey"), DW_AT_symbol_name("_sesskey")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$244, DW_AT_name("encrypt"), DW_AT_symbol_name("_encrypt")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$245, DW_AT_name("decrypt"), DW_AT_symbol_name("_decrypt")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$246, DW_AT_name("blksize"), DW_AT_symbol_name("_blksize")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$247, DW_AT_name("text_name"), DW_AT_symbol_name("_text_name")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39

DW$T$23	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$23, DW_AT_address_class(0x20)
DW$T$25	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$25, DW_AT_address_class(0x20)
DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x20)
DW$T$30	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$30, DW_AT_address_class(0x20)

DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x88)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$248, DW_AT_name("k0246"), DW_AT_symbol_name("_k0246")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$249, DW_AT_name("k1357"), DW_AT_symbol_name("_k1357")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$250, DW_AT_name("iv0"), DW_AT_symbol_name("_iv0")
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("iv1"), DW_AT_symbol_name("_iv1")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21

DW$T$31	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$31, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$31, DW_AT_byte_size(0x01)
DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_address_class(0x20)
DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_address_class(0x20)
DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$36)
	.dwattr DW$T$37, DW_AT_address_class(0x20)

DW$T$20	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$20, DW_AT_byte_size(0x40)
DW$252	.dwtag  DW_TAG_subrange_type
	.dwattr DW$252, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$20


	.dwattr DW$57, DW_AT_type(*DW$T$19)
	.dwattr DW$179, DW_AT_external(0x01)
	.dwattr DW$170, DW_AT_external(0x01)
	.dwattr DW$162, DW_AT_external(0x01)
	.dwattr DW$153, DW_AT_external(0x01)
	.dwattr DW$147, DW_AT_type(*DW$T$3)
	.dwattr DW$140, DW_AT_type(*DW$T$3)
	.dwattr DW$96, DW_AT_external(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
	.dwattr DW$82, DW_AT_type(*DW$T$3)
	.dwattr DW$56, DW_AT_type(*DW$T$3)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$253, DW_AT_location[DW_OP_reg0]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$254, DW_AT_location[DW_OP_reg1]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$255, DW_AT_location[DW_OP_reg2]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$256, DW_AT_location[DW_OP_reg3]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$257, DW_AT_location[DW_OP_reg4]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$258, DW_AT_location[DW_OP_reg5]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$259, DW_AT_location[DW_OP_reg6]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$260, DW_AT_location[DW_OP_reg7]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$261, DW_AT_location[DW_OP_reg8]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$262, DW_AT_location[DW_OP_reg9]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$263, DW_AT_location[DW_OP_reg10]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$264, DW_AT_location[DW_OP_reg11]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$265, DW_AT_location[DW_OP_reg12]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$266, DW_AT_location[DW_OP_reg13]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$267, DW_AT_location[DW_OP_reg14]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$268, DW_AT_location[DW_OP_reg15]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$269, DW_AT_location[DW_OP_reg16]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$270, DW_AT_location[DW_OP_reg17]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$271, DW_AT_location[DW_OP_reg18]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$272, DW_AT_location[DW_OP_reg19]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$273, DW_AT_location[DW_OP_reg20]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$274, DW_AT_location[DW_OP_reg21]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$275, DW_AT_location[DW_OP_reg22]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$276, DW_AT_location[DW_OP_reg23]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$277, DW_AT_location[DW_OP_reg24]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$278, DW_AT_location[DW_OP_reg25]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$279, DW_AT_location[DW_OP_reg26]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$280, DW_AT_location[DW_OP_reg27]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$281, DW_AT_location[DW_OP_reg28]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$282, DW_AT_location[DW_OP_reg29]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$283, DW_AT_location[DW_OP_reg30]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$284, DW_AT_location[DW_OP_reg31]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$285, DW_AT_location[DW_OP_regx 0x20]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$286, DW_AT_location[DW_OP_regx 0x21]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$287, DW_AT_location[DW_OP_regx 0x22]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$288, DW_AT_location[DW_OP_regx 0x23]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$289, DW_AT_location[DW_OP_regx 0x24]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$290, DW_AT_location[DW_OP_regx 0x25]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$291, DW_AT_location[DW_OP_regx 0x26]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$292, DW_AT_location[DW_OP_regx 0x27]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$293, DW_AT_location[DW_OP_regx 0x28]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$294, DW_AT_location[DW_OP_regx 0x29]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$295, DW_AT_location[DW_OP_regx 0x2a]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$296, DW_AT_location[DW_OP_regx 0x2b]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$297, DW_AT_location[DW_OP_regx 0x2c]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$298, DW_AT_location[DW_OP_regx 0x2d]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$299, DW_AT_location[DW_OP_regx 0x2e]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$300, DW_AT_location[DW_OP_regx 0x2f]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$301, DW_AT_location[DW_OP_regx 0x30]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$302, DW_AT_location[DW_OP_regx 0x31]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$303, DW_AT_location[DW_OP_regx 0x32]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$304, DW_AT_location[DW_OP_regx 0x33]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$305, DW_AT_location[DW_OP_regx 0x34]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$306, DW_AT_location[DW_OP_regx 0x35]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$307, DW_AT_location[DW_OP_regx 0x36]
DW$308	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$308, DW_AT_location[DW_OP_regx 0x37]
DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$309, DW_AT_location[DW_OP_regx 0x38]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$310, DW_AT_location[DW_OP_regx 0x39]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$311, DW_AT_location[DW_OP_regx 0x3a]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$312, DW_AT_location[DW_OP_regx 0x3b]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$313, DW_AT_location[DW_OP_regx 0x3c]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$314, DW_AT_location[DW_OP_regx 0x3d]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$315, DW_AT_location[DW_OP_regx 0x3e]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$316, DW_AT_location[DW_OP_regx 0x3f]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$317, DW_AT_location[DW_OP_regx 0x40]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$318, DW_AT_location[DW_OP_regx 0x41]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$319, DW_AT_location[DW_OP_regx 0x42]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$320, DW_AT_location[DW_OP_regx 0x43]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$321, DW_AT_location[DW_OP_regx 0x44]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$322, DW_AT_location[DW_OP_regx 0x45]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$323, DW_AT_location[DW_OP_regx 0x46]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$324, DW_AT_location[DW_OP_regx 0x47]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$325, DW_AT_location[DW_OP_regx 0x48]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$326, DW_AT_location[DW_OP_regx 0x49]
DW$327	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$327, DW_AT_location[DW_OP_regx 0x4a]
DW$328	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$328, DW_AT_location[DW_OP_regx 0x4b]
DW$329	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$329, DW_AT_location[DW_OP_regx 0x4c]
DW$330	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$330, DW_AT_location[DW_OP_regx 0x4d]
DW$331	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$331, DW_AT_location[DW_OP_regx 0x4e]
DW$332	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$332, DW_AT_location[DW_OP_regx 0x4f]
DW$333	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$333, DW_AT_location[DW_OP_regx 0x50]
DW$334	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$334, DW_AT_location[DW_OP_regx 0x51]
DW$335	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$335, DW_AT_location[DW_OP_regx 0x52]
DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$336, DW_AT_location[DW_OP_regx 0x53]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$337, DW_AT_location[DW_OP_regx 0x54]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$338, DW_AT_location[DW_OP_regx 0x55]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$339, DW_AT_location[DW_OP_regx 0x56]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$340, DW_AT_location[DW_OP_regx 0x57]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$341, DW_AT_location[DW_OP_regx 0x58]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$342, DW_AT_location[DW_OP_regx 0x59]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$343, DW_AT_location[DW_OP_regx 0x5a]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$344, DW_AT_location[DW_OP_regx 0x5b]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$345, DW_AT_location[DW_OP_regx 0x5c]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$346, DW_AT_location[DW_OP_regx 0x5d]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$347, DW_AT_location[DW_OP_regx 0x5e]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$348, DW_AT_location[DW_OP_regx 0x5f]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$349, DW_AT_location[DW_OP_regx 0x60]
DW$350	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$350, DW_AT_location[DW_OP_regx 0x61]
DW$351	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$351, DW_AT_location[DW_OP_regx 0x62]
DW$352	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$352, DW_AT_location[DW_OP_regx 0x63]
DW$353	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$353, DW_AT_location[DW_OP_regx 0x64]
DW$354	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$354, DW_AT_location[DW_OP_regx 0x65]
DW$355	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$355, DW_AT_location[DW_OP_regx 0x66]
DW$356	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$356, DW_AT_location[DW_OP_regx 0x67]
DW$357	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$357, DW_AT_location[DW_OP_regx 0x68]
DW$358	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$358, DW_AT_location[DW_OP_regx 0x69]
DW$359	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$359, DW_AT_location[DW_OP_regx 0x6a]
DW$360	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$360, DW_AT_location[DW_OP_regx 0x6b]
DW$361	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$361, DW_AT_location[DW_OP_regx 0x6c]
DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$362, DW_AT_location[DW_OP_regx 0x6d]
DW$363	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$363, DW_AT_location[DW_OP_regx 0x6e]
DW$364	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$364, DW_AT_location[DW_OP_regx 0x6f]
DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$365, DW_AT_location[DW_OP_regx 0x70]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$366, DW_AT_location[DW_OP_regx 0x71]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$367, DW_AT_location[DW_OP_regx 0x72]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$368, DW_AT_location[DW_OP_regx 0x73]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$369, DW_AT_location[DW_OP_regx 0x74]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$370, DW_AT_location[DW_OP_regx 0x75]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$371, DW_AT_location[DW_OP_regx 0x76]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$372, DW_AT_location[DW_OP_regx 0x77]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$373, DW_AT_location[DW_OP_regx 0x78]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$374, DW_AT_location[DW_OP_regx 0x79]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$375, DW_AT_location[DW_OP_regx 0x7a]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$376, DW_AT_location[DW_OP_regx 0x7b]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$377, DW_AT_location[DW_OP_regx 0x7c]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$378, DW_AT_location[DW_OP_regx 0x7d]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$379, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

