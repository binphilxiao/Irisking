;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Nov 01 16:08:09 2010                                *
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
	.dwattr DW$CU, DW_AT_name("MISC.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	IR_1,32
	.field  	_public_key+0,32
	.field  	0,8			; _public_key[0] @ 0
	.field  	4,8			; _public_key[1] @ 8
	.field  	0,8			; _public_key[2] @ 16
	.field  	0,8			; _public_key[3] @ 24
	.field  	128,8			; _public_key[4] @ 32
	.field  	0,8			; _public_key[5] @ 40
	.field  	0,8			; _public_key[6] @ 48
	.field  	0,8			; _public_key[7] @ 56
	.field  	220,8			; _public_key[8] @ 64
	.field  	76,8			; _public_key[9] @ 72
	.field  	26,8			; _public_key[10] @ 80
	.field  	253,8			; _public_key[11] @ 88
	.field  	0,8			; _public_key[12] @ 96
	.field  	120,8			; _public_key[13] @ 104
	.field  	134,8			; _public_key[14] @ 112
	.field  	148,8			; _public_key[15] @ 120
	.field  	25,8			; _public_key[16] @ 128
	.field  	8,8			; _public_key[17] @ 136
	.field  	40,8			; _public_key[18] @ 144
	.field  	191,8			; _public_key[19] @ 152
	.field  	81,8			; _public_key[20] @ 160
	.field  	237,8			; _public_key[21] @ 168
	.field  	56,8			; _public_key[22] @ 176
	.field  	122,8			; _public_key[23] @ 184
	.field  	249,8			; _public_key[24] @ 192
	.field  	78,8			; _public_key[25] @ 200
	.field  	43,8			; _public_key[26] @ 208
	.field  	210,8			; _public_key[27] @ 216
	.field  	233,8			; _public_key[28] @ 224
	.field  	159,8			; _public_key[29] @ 232
	.field  	189,8			; _public_key[30] @ 240
	.field  	247,8			; _public_key[31] @ 248
	.field  	218,8			; _public_key[32] @ 256
	.field  	137,8			; _public_key[33] @ 264
	.field  	172,8			; _public_key[34] @ 272
	.field  	222,8			; _public_key[35] @ 280
	.field  	74,8			; _public_key[36] @ 288
	.field  	53,8			; _public_key[37] @ 296
	.field  	179,8			; _public_key[38] @ 304
	.field  	20,8			; _public_key[39] @ 312
	.field  	115,8			; _public_key[40] @ 320
	.field  	138,8			; _public_key[41] @ 328
	.field  	225,8			; _public_key[42] @ 336
	.field  	195,8			; _public_key[43] @ 344
	.field  	70,8			; _public_key[44] @ 352
	.field  	121,8			; _public_key[45] @ 360
	.field  	229,8			; _public_key[46] @ 368
	.field  	252,8			; _public_key[47] @ 376
	.field  	10,8			; _public_key[48] @ 384
	.field  	190,8			; _public_key[49] @ 392
	.field  	214,8			; _public_key[50] @ 400
	.field  	66,8			; _public_key[51] @ 408
	.field  	231,8			; _public_key[52] @ 416
	.field  	99,8			; _public_key[53] @ 424
	.field  	53,8			; _public_key[54] @ 432
	.field  	188,8			; _public_key[55] @ 440
	.field  	100,8			; _public_key[56] @ 448
	.field  	22,8			; _public_key[57] @ 456
	.field  	118,8			; _public_key[58] @ 464
	.field  	92,8			; _public_key[59] @ 472
	.field  	126,8			; _public_key[60] @ 480
	.field  	175,8			; _public_key[61] @ 488
	.field  	98,8			; _public_key[62] @ 496
	.field  	21,8			; _public_key[63] @ 504
	.field  	49,8			; _public_key[64] @ 512
	.field  	41,8			; _public_key[65] @ 520
	.field  	74,8			; _public_key[66] @ 528
	.field  	0,8			; _public_key[67] @ 536
	.field  	27,8			; _public_key[68] @ 544
	.field  	28,8			; _public_key[69] @ 552
	.field  	224,8			; _public_key[70] @ 560
	.field  	83,8			; _public_key[71] @ 568
	.field  	243,8			; _public_key[72] @ 576
	.field  	150,8			; _public_key[73] @ 584
	.field  	195,8			; _public_key[74] @ 592
	.field  	250,8			; _public_key[75] @ 600
	.field  	235,8			; _public_key[76] @ 608
	.field  	210,8			; _public_key[77] @ 616
	.field  	100,8			; _public_key[78] @ 624
	.field  	98,8			; _public_key[79] @ 632
	.field  	217,8			; _public_key[80] @ 640
	.field  	111,8			; _public_key[81] @ 648
	.field  	252,8			; _public_key[82] @ 656
	.field  	57,8			; _public_key[83] @ 664
	.field  	78,8			; _public_key[84] @ 672
	.field  	137,8			; _public_key[85] @ 680
	.field  	54,8			; _public_key[86] @ 688
	.field  	167,8			; _public_key[87] @ 696
	.field  	252,8			; _public_key[88] @ 704
	.field  	90,8			; _public_key[89] @ 712
	.field  	248,8			; _public_key[90] @ 720
	.field  	78,8			; _public_key[91] @ 728
	.field  	94,8			; _public_key[92] @ 736
	.field  	218,8			; _public_key[93] @ 744
	.field  	18,8			; _public_key[94] @ 752
	.field  	74,8			; _public_key[95] @ 760
	.field  	82,8			; _public_key[96] @ 768
	.field  	213,8			; _public_key[97] @ 776
	.field  	36,8			; _public_key[98] @ 784
	.field  	133,8			; _public_key[99] @ 792
	.field  	18,8			; _public_key[100] @ 800
	.field  	4,8			; _public_key[101] @ 808
	.field  	124,8			; _public_key[102] @ 816
	.field  	175,8			; _public_key[103] @ 824
	.field  	37,8			; _public_key[104] @ 832
	.field  	38,8			; _public_key[105] @ 840
	.field  	106,8			; _public_key[106] @ 848
	.field  	157,8			; _public_key[107] @ 856
	.field  	38,8			; _public_key[108] @ 864
	.field  	110,8			; _public_key[109] @ 872
	.field  	4,8			; _public_key[110] @ 880
	.field  	238,8			; _public_key[111] @ 888
	.field  	133,8			; _public_key[112] @ 896
	.field  	175,8			; _public_key[113] @ 904
	.field  	167,8			; _public_key[114] @ 912
	.field  	64,8			; _public_key[115] @ 920
	.field  	60,8			; _public_key[116] @ 928
	.field  	178,8			; _public_key[117] @ 936
	.field  	174,8			; _public_key[118] @ 944
	.field  	154,8			; _public_key[119] @ 952
	.field  	37,8			; _public_key[120] @ 960
	.field  	232,8			; _public_key[121] @ 968
	.field  	134,8			; _public_key[122] @ 976
	.field  	143,8			; _public_key[123] @ 984
	.field  	106,8			; _public_key[124] @ 992
	.field  	142,8			; _public_key[125] @ 1000
	.field  	80,8			; _public_key[126] @ 1008
	.field  	117,8			; _public_key[127] @ 1016
	.field  	110,8			; _public_key[128] @ 1024
	.field  	145,8			; _public_key[129] @ 1032
	.field  	109,8			; _public_key[130] @ 1040
	.field  	6,8			; _public_key[131] @ 1048
	.field  	8,8			; _public_key[132] @ 1056
	.field  	131,8			; _public_key[133] @ 1064
	.field  	47,8			; _public_key[134] @ 1072
	.field  	251,8			; _public_key[135] @ 1080
	.field  	1,8			; _public_key[136] @ 1088
	.field  	0,8			; _public_key[137] @ 1096
	.field  	0,8			; _public_key[138] @ 1104
	.field  	0,8			; _public_key[139] @ 1112
	.field  	143,8			; _public_key[140] @ 1120
IR_1:	.set	141

	.sect	".cinit"
	.align	8
	.field  	IR_2,32
	.field  	_private_key+0,32
	.field  	0,8			; _private_key[0] @ 0
	.field  	4,8			; _private_key[1] @ 8
	.field  	0,8			; _private_key[2] @ 16
	.field  	0,8			; _private_key[3] @ 24
	.field  	128,8			; _private_key[4] @ 32
	.field  	0,8			; _private_key[5] @ 40
	.field  	0,8			; _private_key[6] @ 48
	.field  	0,8			; _private_key[7] @ 56
	.field  	220,8			; _private_key[8] @ 64
	.field  	76,8			; _private_key[9] @ 72
	.field  	26,8			; _private_key[10] @ 80
	.field  	253,8			; _private_key[11] @ 88
	.field  	0,8			; _private_key[12] @ 96
	.field  	120,8			; _private_key[13] @ 104
	.field  	134,8			; _private_key[14] @ 112
	.field  	148,8			; _private_key[15] @ 120
	.field  	25,8			; _private_key[16] @ 128
	.field  	8,8			; _private_key[17] @ 136
	.field  	40,8			; _private_key[18] @ 144
	.field  	191,8			; _private_key[19] @ 152
	.field  	81,8			; _private_key[20] @ 160
	.field  	237,8			; _private_key[21] @ 168
	.field  	56,8			; _private_key[22] @ 176
	.field  	122,8			; _private_key[23] @ 184
	.field  	249,8			; _private_key[24] @ 192
	.field  	78,8			; _private_key[25] @ 200
	.field  	43,8			; _private_key[26] @ 208
	.field  	210,8			; _private_key[27] @ 216
	.field  	233,8			; _private_key[28] @ 224
	.field  	159,8			; _private_key[29] @ 232
	.field  	189,8			; _private_key[30] @ 240
	.field  	247,8			; _private_key[31] @ 248
	.field  	218,8			; _private_key[32] @ 256
	.field  	137,8			; _private_key[33] @ 264
	.field  	172,8			; _private_key[34] @ 272
	.field  	222,8			; _private_key[35] @ 280
	.field  	74,8			; _private_key[36] @ 288
	.field  	53,8			; _private_key[37] @ 296
	.field  	179,8			; _private_key[38] @ 304
	.field  	20,8			; _private_key[39] @ 312
	.field  	115,8			; _private_key[40] @ 320
	.field  	138,8			; _private_key[41] @ 328
	.field  	225,8			; _private_key[42] @ 336
	.field  	195,8			; _private_key[43] @ 344
	.field  	70,8			; _private_key[44] @ 352
	.field  	121,8			; _private_key[45] @ 360
	.field  	229,8			; _private_key[46] @ 368
	.field  	252,8			; _private_key[47] @ 376
	.field  	10,8			; _private_key[48] @ 384
	.field  	190,8			; _private_key[49] @ 392
	.field  	214,8			; _private_key[50] @ 400
	.field  	66,8			; _private_key[51] @ 408
	.field  	231,8			; _private_key[52] @ 416
	.field  	99,8			; _private_key[53] @ 424
	.field  	53,8			; _private_key[54] @ 432
	.field  	188,8			; _private_key[55] @ 440
	.field  	100,8			; _private_key[56] @ 448
	.field  	22,8			; _private_key[57] @ 456
	.field  	118,8			; _private_key[58] @ 464
	.field  	92,8			; _private_key[59] @ 472
	.field  	126,8			; _private_key[60] @ 480
	.field  	175,8			; _private_key[61] @ 488
	.field  	98,8			; _private_key[62] @ 496
	.field  	21,8			; _private_key[63] @ 504
	.field  	49,8			; _private_key[64] @ 512
	.field  	41,8			; _private_key[65] @ 520
	.field  	74,8			; _private_key[66] @ 528
	.field  	0,8			; _private_key[67] @ 536
	.field  	27,8			; _private_key[68] @ 544
	.field  	28,8			; _private_key[69] @ 552
	.field  	224,8			; _private_key[70] @ 560
	.field  	83,8			; _private_key[71] @ 568
	.field  	243,8			; _private_key[72] @ 576
	.field  	150,8			; _private_key[73] @ 584
	.field  	195,8			; _private_key[74] @ 592
	.field  	250,8			; _private_key[75] @ 600
	.field  	235,8			; _private_key[76] @ 608
	.field  	210,8			; _private_key[77] @ 616
	.field  	100,8			; _private_key[78] @ 624
	.field  	98,8			; _private_key[79] @ 632
	.field  	217,8			; _private_key[80] @ 640
	.field  	111,8			; _private_key[81] @ 648
	.field  	252,8			; _private_key[82] @ 656
	.field  	57,8			; _private_key[83] @ 664
	.field  	78,8			; _private_key[84] @ 672
	.field  	137,8			; _private_key[85] @ 680
	.field  	54,8			; _private_key[86] @ 688
	.field  	167,8			; _private_key[87] @ 696
	.field  	252,8			; _private_key[88] @ 704
	.field  	90,8			; _private_key[89] @ 712
	.field  	248,8			; _private_key[90] @ 720
	.field  	78,8			; _private_key[91] @ 728
	.field  	94,8			; _private_key[92] @ 736
	.field  	218,8			; _private_key[93] @ 744
	.field  	18,8			; _private_key[94] @ 752
	.field  	74,8			; _private_key[95] @ 760
	.field  	82,8			; _private_key[96] @ 768
	.field  	213,8			; _private_key[97] @ 776
	.field  	36,8			; _private_key[98] @ 784
	.field  	133,8			; _private_key[99] @ 792
	.field  	18,8			; _private_key[100] @ 800
	.field  	4,8			; _private_key[101] @ 808
	.field  	124,8			; _private_key[102] @ 816
	.field  	175,8			; _private_key[103] @ 824
	.field  	37,8			; _private_key[104] @ 832
	.field  	38,8			; _private_key[105] @ 840
	.field  	106,8			; _private_key[106] @ 848
	.field  	157,8			; _private_key[107] @ 856
	.field  	38,8			; _private_key[108] @ 864
	.field  	110,8			; _private_key[109] @ 872
	.field  	4,8			; _private_key[110] @ 880
	.field  	238,8			; _private_key[111] @ 888
	.field  	133,8			; _private_key[112] @ 896
	.field  	175,8			; _private_key[113] @ 904
	.field  	167,8			; _private_key[114] @ 912
	.field  	64,8			; _private_key[115] @ 920
	.field  	60,8			; _private_key[116] @ 928
	.field  	178,8			; _private_key[117] @ 936
	.field  	174,8			; _private_key[118] @ 944
	.field  	154,8			; _private_key[119] @ 952
	.field  	37,8			; _private_key[120] @ 960
	.field  	232,8			; _private_key[121] @ 968
	.field  	134,8			; _private_key[122] @ 976
	.field  	143,8			; _private_key[123] @ 984
	.field  	106,8			; _private_key[124] @ 992
	.field  	142,8			; _private_key[125] @ 1000
	.field  	80,8			; _private_key[126] @ 1008
	.field  	117,8			; _private_key[127] @ 1016
	.field  	110,8			; _private_key[128] @ 1024
	.field  	145,8			; _private_key[129] @ 1032
	.field  	109,8			; _private_key[130] @ 1040
	.field  	6,8			; _private_key[131] @ 1048
	.field  	8,8			; _private_key[132] @ 1056
	.field  	131,8			; _private_key[133] @ 1064
	.field  	47,8			; _private_key[134] @ 1072
	.field  	251,8			; _private_key[135] @ 1080
	.field  	128,8			; _private_key[136] @ 1088
	.field  	0,8			; _private_key[137] @ 1096
	.field  	0,8			; _private_key[138] @ 1104
	.field  	0,8			; _private_key[139] @ 1112
	.field  	137,8			; _private_key[140] @ 1120
	.field  	243,8			; _private_key[141] @ 1128
	.field  	253,8			; _private_key[142] @ 1136
	.field  	175,8			; _private_key[143] @ 1144
	.field  	228,8			; _private_key[144] @ 1152
	.field  	223,8			; _private_key[145] @ 1160
	.field  	127,8			; _private_key[146] @ 1168
	.field  	103,8			; _private_key[147] @ 1176
	.field  	217,8			; _private_key[148] @ 1184
	.field  	6,8			; _private_key[149] @ 1192
	.field  	112,8			; _private_key[150] @ 1200
	.field  	58,8			; _private_key[151] @ 1208
	.field  	67,8			; _private_key[152] @ 1216
	.field  	125,8			; _private_key[153] @ 1224
	.field  	168,8			; _private_key[154] @ 1232
	.field  	136,8			; _private_key[155] @ 1240
	.field  	232,8			; _private_key[156] @ 1248
	.field  	222,8			; _private_key[157] @ 1256
	.field  	247,8			; _private_key[158] @ 1264
	.field  	125,8			; _private_key[159] @ 1272
	.field  	15,8			; _private_key[160] @ 1280
	.field  	237,8			; _private_key[161] @ 1288
	.field  	136,8			; _private_key[162] @ 1296
	.field  	53,8			; _private_key[163] @ 1304
	.field  	151,8			; _private_key[164] @ 1312
	.field  	169,8			; _private_key[165] @ 1320
	.field  	212,8			; _private_key[166] @ 1328
	.field  	223,8			; _private_key[167] @ 1336
	.field  	108,8			; _private_key[168] @ 1344
	.field  	151,8			; _private_key[169] @ 1352
	.field  	137,8			; _private_key[170] @ 1360
	.field  	254,8			; _private_key[171] @ 1368
	.field  	192,8			; _private_key[172] @ 1376
	.field  	186,8			; _private_key[173] @ 1384
	.field  	47,8			; _private_key[174] @ 1392
	.field  	181,8			; _private_key[175] @ 1400
	.field  	215,8			; _private_key[176] @ 1408
	.field  	104,8			; _private_key[177] @ 1416
	.field  	226,8			; _private_key[178] @ 1424
	.field  	174,8			; _private_key[179] @ 1432
	.field  	85,8			; _private_key[180] @ 1440
	.field  	130,8			; _private_key[181] @ 1448
	.field  	5,8			; _private_key[182] @ 1456
	.field  	41,8			; _private_key[183] @ 1464
	.field  	255,8			; _private_key[184] @ 1472
	.field  	207,8			; _private_key[185] @ 1480
	.field  	222,8			; _private_key[186] @ 1488
	.field  	214,8			; _private_key[187] @ 1496
	.field  	204,8			; _private_key[188] @ 1504
	.field  	83,8			; _private_key[189] @ 1512
	.field  	74,8			; _private_key[190] @ 1520
	.field  	121,8			; _private_key[191] @ 1528
	.field  	104,8			; _private_key[192] @ 1536
	.field  	212,8			; _private_key[193] @ 1544
	.field  	232,8			; _private_key[194] @ 1552
	.field  	51,8			; _private_key[195] @ 1560
	.field  	126,8			; _private_key[196] @ 1568
	.field  	227,8			; _private_key[197] @ 1576
	.field  	103,8			; _private_key[198] @ 1584
	.field  	129,8			; _private_key[199] @ 1592
	.field  	121,8			; _private_key[200] @ 1600
	.field  	93,8			; _private_key[201] @ 1608
	.field  	70,8			; _private_key[202] @ 1616
	.field  	108,8			; _private_key[203] @ 1624
	.field  	149,8			; _private_key[204] @ 1632
	.field  	221,8			; _private_key[205] @ 1640
	.field  	42,8			; _private_key[206] @ 1648
	.field  	55,8			; _private_key[207] @ 1656
	.field  	116,8			; _private_key[208] @ 1664
	.field  	190,8			; _private_key[209] @ 1672
	.field  	85,8			; _private_key[210] @ 1680
	.field  	232,8			; _private_key[211] @ 1688
	.field  	29,8			; _private_key[212] @ 1696
	.field  	167,8			; _private_key[213] @ 1704
	.field  	56,8			; _private_key[214] @ 1712
	.field  	51,8			; _private_key[215] @ 1720
	.field  	157,8			; _private_key[216] @ 1728
	.field  	69,8			; _private_key[217] @ 1736
	.field  	111,8			; _private_key[218] @ 1744
	.field  	157,8			; _private_key[219] @ 1752
	.field  	15,8			; _private_key[220] @ 1760
	.field  	219,8			; _private_key[221] @ 1768
	.field  	181,8			; _private_key[222] @ 1776
	.field  	90,8			; _private_key[223] @ 1784
	.field  	226,8			; _private_key[224] @ 1792
	.field  	244,8			; _private_key[225] @ 1800
	.field  	43,8			; _private_key[226] @ 1808
	.field  	2,8			; _private_key[227] @ 1816
	.field  	115,8			; _private_key[228] @ 1824
	.field  	194,8			; _private_key[229] @ 1832
	.field  	182,8			; _private_key[230] @ 1840
	.field  	24,8			; _private_key[231] @ 1848
	.field  	150,8			; _private_key[232] @ 1856
	.field  	226,8			; _private_key[233] @ 1864
	.field  	12,8			; _private_key[234] @ 1872
	.field  	150,8			; _private_key[235] @ 1880
	.field  	129,8			; _private_key[236] @ 1888
	.field  	132,8			; _private_key[237] @ 1896
	.field  	182,8			; _private_key[238] @ 1904
	.field  	99,8			; _private_key[239] @ 1912
	.field  	220,8			; _private_key[240] @ 1920
	.field  	117,8			; _private_key[241] @ 1928
	.field  	14,8			; _private_key[242] @ 1936
	.field  	143,8			; _private_key[243] @ 1944
	.field  	173,8			; _private_key[244] @ 1952
	.field  	111,8			; _private_key[245] @ 1960
	.field  	124,8			; _private_key[246] @ 1968
	.field  	154,8			; _private_key[247] @ 1976
	.field  	132,8			; _private_key[248] @ 1984
	.field  	147,8			; _private_key[249] @ 1992
	.field  	131,8			; _private_key[250] @ 2000
	.field  	240,8			; _private_key[251] @ 2008
	.field  	139,8			; _private_key[252] @ 2016
	.field  	209,8			; _private_key[253] @ 2024
	.field  	192,8			; _private_key[254] @ 2032
	.field  	191,8			; _private_key[255] @ 2040
	.field  	196,8			; _private_key[256] @ 2048
	.field  	188,8			; _private_key[257] @ 2056
	.field  	124,8			; _private_key[258] @ 2064
	.field  	146,8			; _private_key[259] @ 2072
	.field  	151,8			; _private_key[260] @ 2080
	.field  	21,8			; _private_key[261] @ 2088
	.field  	48,8			; _private_key[262] @ 2096
	.field  	140,8			; _private_key[263] @ 2104
	.field  	117,8			; _private_key[264] @ 2112
	.field  	141,8			; _private_key[265] @ 2120
	.field  	162,8			; _private_key[266] @ 2128
	.field  	19,8			; _private_key[267] @ 2136
IR_2:	.set	268


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("rand"), DW_AT_symbol_name("_rand")
	.dwattr DW$5, DW_AT_type(*DW$T$10)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc"), DW_AT_symbol_name("_malloc")
	.dwattr DW$6, DW_AT_type(*DW$T$3)
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$6


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("realloc"), DW_AT_symbol_name("_realloc")
	.dwattr DW$8, DW_AT_type(*DW$T$3)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$8


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("free"), DW_AT_symbol_name("_free")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$11


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("freersakey"), DW_AT_symbol_name("_freersakey")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$13


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_encrypt_public"), DW_AT_symbol_name("_rsa_encrypt_public")
	.dwattr DW$15, DW_AT_type(*DW$T$10)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$15


DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_decrypt_private"), DW_AT_symbol_name("_rsa_decrypt_private")
	.dwattr DW$21, DW_AT_type(*DW$T$10)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$21


DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_from_bytes"), DW_AT_symbol_name("_bignum_from_bytes")
	.dwattr DW$27, DW_AT_type(*DW$T$19)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$27


DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_bitcount"), DW_AT_symbol_name("_bignum_bitcount")
	.dwattr DW$30, DW_AT_type(*DW$T$10)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$30


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("bignum_byte"), DW_AT_symbol_name("_bignum_byte")
	.dwattr DW$32, DW_AT_type(*DW$T$10)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$32


DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("dbg_output"), DW_AT_symbol_name("_dbg_output")
	.dwattr DW$35, DW_AT_type(*DW$T$10)
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
DW$37	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$35

	.global	_public_key
_public_key:	.usect	".far",141,8
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("public_key"), DW_AT_symbol_name("_public_key")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _public_key]
	.dwattr DW$38, DW_AT_type(*DW$T$54)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_private_key
_private_key:	.usect	".far",268,8
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("private_key"), DW_AT_symbol_name("_private_key")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _private_key]
	.dwattr DW$39, DW_AT_type(*DW$T$55)
	.dwattr DW$39, DW_AT_external(0x01)
;	D:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI0162 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI0164 
	.sect	".text"
	.global	_safemalloc

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("safemalloc"), DW_AT_symbol_name("_safemalloc")
	.dwattr DW$40, DW_AT_low_pc(_safemalloc)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("MISC.C")
	.dwattr DW$40, DW_AT_begin_line(0x4a)
	.dwattr DW$40, DW_AT_begin_column(0x07)
	.dwattr DW$40, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$40, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",75,1

;******************************************************************************
;* FUNCTION NAME: _safemalloc                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_safemalloc:
;** --------------------------------------------------------------------------*
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$41, DW_AT_type(*DW$T$29)
	.dwattr DW$41, DW_AT_location[DW_OP_reg4]
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$42, DW_AT_type(*DW$T$29)
	.dwattr DW$42, DW_AT_location[DW_OP_reg20]
;** 78	-----------------------    if ( n > 0x7fffffffu/size ) goto g5;
           CALL    .S1     __divu            ; |78| 
           MV      .S1     A4,A3             ; |75| 
           MV      .L2     B4,B5             ; |75| 
           STW     .D2T2   B3,*SP--(8)       ; |75| 
           ZERO    .L1     A4                ; |78| 

           SET     .S1     A4,0x0,0x1e,A4    ; |78| 
||         ADDKPC  .S2     RL0,B3,0          ; |78| 

RL0:       ; CALL OCCURS {__divu}            ; |78| 
;** --------------------------------------------------------------------------*

           MPYLH   .M2X    A3,B5,B4          ; |81| 
||         CMPGTU  .L1     A3,A4,A2          ; |78| 
||         MPYLH   .M1X    B5,A3,A5          ; |81| 
||         ZERO    .S1     A0                ; |79| 

           MPYU    .M1X    A3,B5,A6          ; |81| 
|| [!A2]   ZERO    .L1     A0                ; |89| nullify predicate
|| [ A2]   B       .S1     L1                ; |78| 
|| [ A2]   MV      .D1     A0,A4             ; |89| 

   [!A2]   CALL    .S1     _malloc           ; |83| 

           ADD     .L1X    B4,A5,A5          ; |81| 
|| [ A0]   B       .S1     L3                ; |89| 

           SHL     .S1     A5,16,A5          ; |81| 
           ADD     .L1     A6,A5,A1          ; |81| 
   [!A1]   MVK     .L1     0x1,A1            ; |82| 
           ; BRANCHCC OCCURS {L1}            ; |78| 
;** --------------------------------------------------------------------------*
;** 81	-----------------------    if ( size = size*n ) goto g4;
;** 82	-----------------------    size = 1u;
;**	-----------------------g4:
;** 83	-----------------------    p = malloc(size);
;** 83	-----------------------    goto g6;
;**	-----------------------g5:
;** 79	-----------------------    p = NULL;

           ADDKPC  .S2     RL1,B3,0          ; |83| 
||         MV      .L1     A1,A4             ; |83| 

RL1:       ; CALL OCCURS {_malloc}           ; |83| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |83| 
   [ A0]   BNOP    .S1     L3,2              ; |89| 
           MV      .L1     A0,A4             ; |89| 
;** --------------------------------------------------------------------------*
L1:    
;**	-----------------------g6:
;** 86	-----------------------    if ( p == NULL ) goto g8;
;** 89	-----------------------    return p;
;**	-----------------------g8:
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
   [ A0]   LDW     .D2T2   *++SP(8),B3       ; |90| 
           NOP             1
           ; BRANCHCC OCCURS {L3}            ; |89| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L2:    
DW$L$_safemalloc$6$B:
;**	-----------------------g9:
;** 87	-----------------------    goto g9;
           BNOP    .S1     L2,5              ; |87| 
           ; BRANCH OCCURS {L2}              ; |87| 
DW$L$_safemalloc$6$E:
;** --------------------------------------------------------------------------*
L3:    
           NOP             3
	.dwpsn	"MISC.C",90,1
           RETNOP  .S2     B3,5              ; |90| 
           ; BRANCH OCCURS {B3}              ; |90| 

DW$43	.dwtag  DW_TAG_loop
	.dwattr DW$43, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L2:1:1288598889")
	.dwattr DW$43, DW_AT_begin_file("MISC.C")
	.dwattr DW$43, DW_AT_begin_line(0x57)
	.dwattr DW$43, DW_AT_end_line(0x59)
DW$44	.dwtag  DW_TAG_loop_range
	.dwattr DW$44, DW_AT_low_pc(DW$L$_safemalloc$6$B)
	.dwattr DW$44, DW_AT_high_pc(DW$L$_safemalloc$6$E)
	.dwendtag DW$43

	.dwattr DW$40, DW_AT_end_file("MISC.C")
	.dwattr DW$40, DW_AT_end_line(0x5a)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendtag DW$40

	.sect	".text"
	.global	_build_public_key

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("build_public_key"), DW_AT_symbol_name("_build_public_key")
	.dwattr DW$45, DW_AT_low_pc(_build_public_key)
	.dwattr DW$45, DW_AT_high_pc(0x00)
	.dwattr DW$45, DW_AT_begin_file("MISC.C")
	.dwattr DW$45, DW_AT_begin_line(0xcb)
	.dwattr DW$45, DW_AT_begin_column(0x05)
	.dwattr DW$45, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$45, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",204,1

;******************************************************************************
;* FUNCTION NAME: _build_public_key                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 12 Auto + 16 Save = 28 byte                 *
;******************************************************************************
_build_public_key:
;** --------------------------------------------------------------------------*
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$46, DW_AT_type(*DW$T$51)
	.dwattr DW$46, DW_AT_location[DW_OP_reg4]
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$47, DW_AT_type(*DW$T$44)
	.dwattr DW$47, DW_AT_location[DW_OP_reg20]
;** 204	-----------------------    buf = buf;
;** 197	-----------------------    memcpy(&i, (const void * const)buf, 4u);  // [21]
;** 199	-----------------------    (*key).bits = v$1 = i;  // [21]
;** 207	-----------------------    (*key).bytes = v$1+7>>3;
;** 197	-----------------------    memcpy(&i, (const void *)(buf += 4), 4u);  // [21]
;** 198	-----------------------    buf += 4;  // [21]
;** 199	-----------------------    if ( (len = i) <= 0 ) goto g4;  // [21]
;**  	-----------------------    U$23 = buf;
;**  	-----------------------    K$25 = (-86);
;**  	-----------------------    L$1 = len;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T1   A12,*SP--(32)     ; |204| 
||         MV      .L1X    B4,A12            ; |204| 

           STDW    .D2T1   A11:A10,*+SP(24)  ; |204| 
||         ADD     .L2     12,SP,B5          ; |197| 
||         ADD     .L1     8,A4,A10          ; |197| 

           STW     .D2T2   B13,*+SP(20)      ; |204| 
||         MV      .L2     B3,B13            ; |204| 

           LDNW    .D1T1   *A4,A3            ; |197| 
           NOP             4

           ADD     .L1     4,A4,A3           ; |197| 
||         STNW    .D2T1   A3,*B5            ; |197| 

           LDW     .D2T2   *+SP(12),B5       ; |199| 
           NOP             4

           ADD     .L2     7,B5,B4           ; |207| 
||         STW     .D1T2   B5,*A12           ; |199| 

           SHR     .S2     B4,3,B4           ; |207| 

           ADD     .L2     8,SP,B4           ; |197| 
||         STW     .D1T2   B4,*+A12(4)       ; |207| 

           LDNW    .D1T1   *A3,A3            ; |197| 
           NOP             4

           MVK     .S1     0xffffffaa,A4
||         ADD     .L1     8,A4,A3           ; |197| 
||         STNW    .D2T1   A3,*B4            ; |197| 

           LDW     .D2T1   *+SP(8),A11       ; |199| 
           NOP             4

           MV      .L2X    A11,B0
||         CMPGT   .L1     A11,0,A0          ; |199| 

           CMPGT   .L2     B0,5,B1
|| [!A0]   B       .S1     L10               ; |199| 

   [!A0]   ZERO    .L2     B1                ; nullify predicate
|| [!A0]   CALL    .S1     _bignum_from_bytes ; |213| 

   [ B1]   BNOP    .S1     L5,3
           ; BRANCHCC OCCURS {L10}           ; |199| 
;** --------------------------------------------------------------------------*
           NOP             2
           ; BRANCHCC OCCURS {L5} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L4
;** --------------------------------------------------------------------------*
L4:    
DW$L$_build_public_key$3$B:
	.dwpsn	"MISC.C",212,0
;**	-----------------------g3:
;** 212	-----------------------    A$5 = *U$23^K$25;
;** 212	-----------------------    *U$23++ = A$5;
;** 211	-----------------------    if ( --L$1 ) goto g3;

           LDBU    .D1T1   *A3,A5            ; |212| 
||         SUB     .L2     B0,1,B0           ; |211| 

   [ B0]   B       .S1     L4                ; |211| 
   [!B0]   BNOP    .S1     L9,2
           XOR     .L1     A4,A5,A5          ; |212| 
           STB     .D1T1   A5,*A3++          ; |212| 
           ; BRANCHCC OCCURS {L4}            ; |211| 
DW$L$_build_public_key$3$E:
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCH OCCURS {L9} 
;** --------------------------------------------------------------------------*
L5:    

           MVC     .S2     CSR,B7
||         MV      .L2X    A4,B5
||         SUB     .L1X    B0,6,A0

           AND     .L2     -2,B7,B6
           MVC     .S2     B6,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 211
;*      Loop opening brace source line   : 212
;*      Loop closing brace source line   : 212
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     1*       1*    
;*      .M units                     0        0     
;*      .X cross paths               0        1*    
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 7 iterations in parallel
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
;*      For further improvement on this loop, try option -mh6
;*
;*      Minimum safe trip count     : 6
;*----------------------------------------------------------------------------*
L6:    ; PIPED LOOP PROLOG

           MV      .L2X    A3,B4
||         LDBU    .D1T1   *A3++,A4          ; |212| (P) <0,0> 
|| [ A0]   BDEC    .S1     L7,A0             ; |211| (P) <0,1> 

   [ A0]   BDEC    .S1     L7,A0             ; |211| (P) <1,1> 
||         LDBU    .D1T1   *A3++,A4          ; |212| (P) <1,0> 

           LDBU    .D1T1   *A3++,A4          ; |212| (P) <2,0> 
|| [ A0]   BDEC    .S1     L7,A0             ; |211| (P) <2,1> 

   [ A0]   BDEC    .S1     L7,A0             ; |211| (P) <3,1> 
||         LDBU    .D1T1   *A3++,A4          ; |212| (P) <3,0> 

	.dwpsn	"MISC.C",211,0

           MVK     .L1     0x1,A1            ; init prolog collapse predicate
||         LDBU    .D1T1   *A3++,A4          ; |212| (P) <4,0> 
|| [ A0]   BDEC    .S1     L7,A0             ; |211| (P) <4,1> 

;** --------------------------------------------------------------------------*
L7:    ; PIPED LOOP KERNEL
DW$L$_build_public_key$7$B:
	.dwpsn	"MISC.C",212,0

   [ A1]   SUB     .L1     A1,1,A1           ; <0,6> 
|| [!A1]   STB     .D2T2   B6,*B4++          ; |212| <0,6> 
||         XOR     .L2X    B5,A4,B6          ; |212| <1,5> 
|| [ A0]   BDEC    .S1     L7,A0             ; |211| <5,1> 
||         LDBU    .D1T1   *A3++,A4          ; |212| <6,0> 

DW$L$_build_public_key$7$E:
;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP EPILOG

           XOR     .L2X    B5,A4,B6          ; |212| (E) <2,5> 
||         STB     .D2T2   B6,*B4++          ; |212| (E) <1,6> 

           XOR     .L2X    B5,A4,B6          ; |212| (E) <3,5> 
||         STB     .D2T2   B6,*B4++          ; |212| (E) <2,6> 

           XOR     .L2X    B5,A4,B6          ; |212| (E) <4,5> 
||         STB     .D2T2   B6,*B4++          ; |212| (E) <3,6> 

           MVC     .S2     B7,CSR            ; interrupts on
||         XOR     .L2X    B5,A4,B6          ; |212| (E) <5,5> 
||         STB     .D2T2   B6,*B4++          ; |212| (E) <4,6> 

;** --------------------------------------------------------------------------*

           XOR     .L2X    B5,A4,B5          ; |212| (E) <6,5> 
||         STB     .D2T2   B6,*B4++          ; |212| (E) <5,6> 

           STB     .D2T2   B5,*B4++          ; |212| (E) <6,6> 
;** --------------------------------------------------------------------------*
L9:    
           CALL    .S1     _bignum_from_bytes ; |213| 
           NOP             4
;** --------------------------------------------------------------------------*
L10:    
;**	-----------------------g4:
;** 213	-----------------------    (*key).modulus = bignum_from_bytes(buf, len);
;** 214	-----------------------    buf += len;
;** 197	-----------------------    memcpy(&i, (const void *)buf, 4u);  // [21]
;** 198	-----------------------    buf += 4;  // [21]
;** 199	-----------------------    if ( (len = i) <= 0 ) goto g7;  // [21]
;**  	-----------------------    U$23 = buf;
;**  	-----------------------    K$25 = (-86);
;**  	-----------------------    L$2 = len;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L2X    A11,B4            ; |213| 
||         MV      .L1     A10,A4            ; |213| 
||         ADDKPC  .S2     RL2,B3,0          ; |213| 

RL2:       ; CALL OCCURS {_bignum_from_bytes}  ; |213| 
;** --------------------------------------------------------------------------*

           STW     .D1T1   A4,*+A12(8)       ; |213| 
||         ADD     .L1     A11,A10,A4        ; |214| 
||         ADD     .L2     4,SP,B4           ; |197| 
||         MVK     .S1     0xffffffaa,A5

           LDNW    .D1T1   *A4,A3            ; |197| 
||         ADD     .L1     4,A4,A10          ; |198| 

           NOP             4

           ADD     .L1     4,A4,A3           ; |198| 
||         STNW    .D2T1   A3,*B4            ; |197| 

           LDW     .D2T2   *+SP(4),B7        ; |199| 
           NOP             4

           CMPGT   .L2     B7,0,B1           ; |199| 
||         MV      .S2     B7,B0

   [ B1]   CMPGT   .L2     B0,5,B1
|| [!B1]   B       .S1     L16               ; |199| 
||         MV      .S2     B1,B2             ; guard predicate rewrite

   [!B2]   ZERO    .L2     B1                ; nullify predicate
   [ B1]   BNOP    .S1     L12,3
           ; BRANCHCC OCCURS {L16}           ; |199| 
;** --------------------------------------------------------------------------*
           NOP             2
           ; BRANCHCC OCCURS {L12} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L11
;** --------------------------------------------------------------------------*
L11:    
DW$L$_build_public_key$14$B:
	.dwpsn	"MISC.C",217,0
;**	-----------------------g6:
;** 217	-----------------------    A$4 = *U$23^K$25;
;** 217	-----------------------    *U$23++ = A$4;
;** 216	-----------------------    if ( --L$2 ) goto g6;

           LDBU    .D1T1   *A3,A4            ; |217| 
||         SUB     .L2     B0,1,B0           ; |216| 

   [ B0]   B       .S1     L11               ; |216| 
   [!B0]   BNOP    .S1     L17,2
           XOR     .L1     A5,A4,A4          ; |217| 
           STB     .D1T1   A4,*A3++          ; |217| 
           ; BRANCHCC OCCURS {L11}           ; |216| 
DW$L$_build_public_key$14$E:
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_from_bytes ; |218| 
           ; BRANCH OCCURS {L17} 
;** --------------------------------------------------------------------------*
L12:    

           MVC     .S2     CSR,B8
||         SUB     .L1X    B0,6,A0

           AND     .L2     -2,B8,B6
           MVC     .S2     B6,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 216
;*      Loop opening brace source line   : 217
;*      Loop closing brace source line   : 217
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     1*       1*    
;*      .M units                     0        0     
;*      .X cross paths               0        1*    
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 7 iterations in parallel
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
;*      For further improvement on this loop, try option -mh6
;*
;*      Minimum safe trip count     : 6
;*----------------------------------------------------------------------------*
L13:    ; PIPED LOOP PROLOG

           MV      .L2X    A3,B4
||         LDBU    .D1T1   *A3++,A4          ; |217| (P) <0,0> 
|| [ A0]   BDEC    .S1     L14,A0            ; |216| (P) <0,1> 

   [ A0]   BDEC    .S1     L14,A0            ; |216| (P) <1,1> 
||         LDBU    .D1T1   *A3++,A4          ; |217| (P) <1,0> 

           LDBU    .D1T1   *A3++,A4          ; |217| (P) <2,0> 
|| [ A0]   BDEC    .S1     L14,A0            ; |216| (P) <2,1> 

   [ A0]   BDEC    .S1     L14,A0            ; |216| (P) <3,1> 
||         LDBU    .D1T1   *A3++,A4          ; |217| (P) <3,0> 

	.dwpsn	"MISC.C",216,0

           MVK     .L1     0x1,A1            ; init prolog collapse predicate
||         MV      .L2X    A5,B5
||         LDBU    .D1T1   *A3++,A4          ; |217| (P) <4,0> 
|| [ A0]   BDEC    .S1     L14,A0            ; |216| (P) <4,1> 

;** --------------------------------------------------------------------------*
L14:    ; PIPED LOOP KERNEL
DW$L$_build_public_key$18$B:
	.dwpsn	"MISC.C",217,0

   [ A1]   SUB     .L1     A1,1,A1           ; <0,6> 
|| [!A1]   STB     .D2T2   B6,*B4++          ; |217| <0,6> 
||         XOR     .L2X    B5,A4,B6          ; |217| <1,5> 
|| [ A0]   BDEC    .S1     L14,A0            ; |216| <5,1> 
||         LDBU    .D1T1   *A3++,A4          ; |217| <6,0> 

DW$L$_build_public_key$18$E:
;** --------------------------------------------------------------------------*
L15:    ; PIPED LOOP EPILOG

           XOR     .L2X    B5,A4,B6          ; |217| (E) <2,5> 
||         STB     .D2T2   B6,*B4++          ; |217| (E) <1,6> 

           XOR     .L2X    B5,A4,B6          ; |217| (E) <3,5> 
||         STB     .D2T2   B6,*B4++          ; |217| (E) <2,6> 

           XOR     .L2X    B5,A4,B6          ; |217| (E) <4,5> 
||         STB     .D2T2   B6,*B4++          ; |217| (E) <3,6> 

           MVC     .S2     B8,CSR            ; interrupts on
||         XOR     .L2X    B5,A4,B6          ; |217| (E) <5,5> 
||         STB     .D2T2   B6,*B4++          ; |217| (E) <4,6> 

;** --------------------------------------------------------------------------*

           XOR     .L2X    B5,A4,B5          ; |217| (E) <6,5> 
||         STB     .D2T2   B6,*B4++          ; |217| (E) <5,6> 

           STB     .D2T2   B5,*B4++          ; |217| (E) <6,6> 
;** --------------------------------------------------------------------------*
L16:    
           CALL    .S1     _bignum_from_bytes ; |218| 
;** --------------------------------------------------------------------------*
L17:    
;**	-----------------------g7:
;** 218	-----------------------    (*key).exponent = bignum_from_bytes(buf, len);
;** 219	-----------------------    return 0;
           ADDKPC  .S2     RL3,B3,2          ; |218| 
           MV      .L1     A10,A4            ; |218| 
           MV      .L2     B7,B4             ; |218| 
RL3:       ; CALL OCCURS {_bignum_from_bytes}  ; |218| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(24),A11:A10  ; |220| 
||         MV      .L2     B13,B3            ; |220| 

           RET     .S2     B3                ; |220| 
||         LDW     .D2T2   *+SP(20),B13      ; |220| 
||         STW     .D1T1   A4,*+A12(12)      ; |218| 

           LDW     .D2T1   *++SP(32),A12     ; |220| 
           NOP             3
	.dwpsn	"MISC.C",220,1
           ZERO    .L1     A4                ; |219| 
           ; BRANCH OCCURS {B3}              ; |220| 

DW$48	.dwtag  DW_TAG_loop
	.dwattr DW$48, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L14:1:1288598889")
	.dwattr DW$48, DW_AT_begin_file("MISC.C")
	.dwattr DW$48, DW_AT_begin_line(0xd8)
	.dwattr DW$48, DW_AT_end_line(0xd9)
DW$49	.dwtag  DW_TAG_loop_range
	.dwattr DW$49, DW_AT_low_pc(DW$L$_build_public_key$18$B)
	.dwattr DW$49, DW_AT_high_pc(DW$L$_build_public_key$18$E)
	.dwendtag DW$48


DW$50	.dwtag  DW_TAG_loop
	.dwattr DW$50, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L11:1:1288598889")
	.dwattr DW$50, DW_AT_begin_file("MISC.C")
	.dwattr DW$50, DW_AT_begin_line(0xd8)
	.dwattr DW$50, DW_AT_end_line(0xd9)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_build_public_key$14$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_build_public_key$14$E)
	.dwendtag DW$50


DW$52	.dwtag  DW_TAG_loop
	.dwattr DW$52, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L7:1:1288598889")
	.dwattr DW$52, DW_AT_begin_file("MISC.C")
	.dwattr DW$52, DW_AT_begin_line(0xd3)
	.dwattr DW$52, DW_AT_end_line(0xd4)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$_build_public_key$7$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$_build_public_key$7$E)
	.dwendtag DW$52


DW$54	.dwtag  DW_TAG_loop
	.dwattr DW$54, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L4:1:1288598889")
	.dwattr DW$54, DW_AT_begin_file("MISC.C")
	.dwattr DW$54, DW_AT_begin_line(0xd3)
	.dwattr DW$54, DW_AT_end_line(0xd4)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$_build_public_key$3$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$_build_public_key$3$E)
	.dwendtag DW$54

	.dwattr DW$45, DW_AT_end_file("MISC.C")
	.dwattr DW$45, DW_AT_end_line(0xdc)
	.dwattr DW$45, DW_AT_end_column(0x01)
	.dwendtag DW$45

	.sect	".text"
	.global	_build_private_key

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("build_private_key"), DW_AT_symbol_name("_build_private_key")
	.dwattr DW$56, DW_AT_low_pc(_build_private_key)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("MISC.C")
	.dwattr DW$56, DW_AT_begin_line(0xde)
	.dwattr DW$56, DW_AT_begin_column(0x05)
	.dwattr DW$56, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$56, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",223,1

;******************************************************************************
;* FUNCTION NAME: _build_private_key                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20, *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 0 Args + 12 Auto + 16 Save = 28 byte                 *
;******************************************************************************
_build_private_key:
;** --------------------------------------------------------------------------*
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$57, DW_AT_type(*DW$T$51)
	.dwattr DW$57, DW_AT_location[DW_OP_reg4]
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$58, DW_AT_type(*DW$T$44)
	.dwattr DW$58, DW_AT_location[DW_OP_reg20]
;** 223	-----------------------    buf = buf;
;** 197	-----------------------    memcpy(&i, (const void * const)buf, 4u);  // [21]
;** 199	-----------------------    (*key).bits = v$1 = i;  // [21]
;** 226	-----------------------    (*key).bytes = v$1+7>>3;
;** 197	-----------------------    memcpy(&i, (const void *)(buf += 4), 4u);  // [21]
;** 198	-----------------------    buf += 4;  // [21]
;** 199	-----------------------    if ( (len = i) <= 0 ) goto g4;  // [21]
;**  	-----------------------    U$23 = buf;
;**  	-----------------------    K$25 = (-86);
;**  	-----------------------    L$1 = len;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           STW     .D2T1   A12,*SP--(32)     ; |223| 
||         MV      .L1X    B4,A12            ; |223| 

           STDW    .D2T1   A11:A10,*+SP(24)  ; |223| 
||         ADD     .L2     12,SP,B5          ; |197| 
||         ADD     .L1     8,A4,A10          ; |197| 

           STW     .D2T2   B13,*+SP(20)      ; |223| 
||         MV      .L2     B3,B13            ; |223| 

           LDNW    .D1T1   *A4,A3            ; |197| 
           NOP             4

           ADD     .L1     4,A4,A3           ; |197| 
||         STNW    .D2T1   A3,*B5            ; |197| 

           LDW     .D2T2   *+SP(12),B5       ; |199| 
           NOP             4

           ADD     .L2     7,B5,B4           ; |226| 
||         STW     .D1T2   B5,*A12           ; |199| 

           SHR     .S2     B4,3,B4           ; |226| 

           ADD     .L2     8,SP,B4           ; |197| 
||         STW     .D1T2   B4,*+A12(4)       ; |226| 

           LDNW    .D1T1   *A3,A3            ; |197| 
           NOP             4

           MVK     .S1     0xffffffaa,A4
||         ADD     .L1     8,A4,A3           ; |197| 
||         STNW    .D2T1   A3,*B4            ; |197| 

           LDW     .D2T1   *+SP(8),A11       ; |199| 
           NOP             4

           MV      .L2X    A11,B0
||         CMPGT   .L1     A11,0,A0          ; |199| 

           CMPGT   .L2     B0,5,B1
|| [!A0]   B       .S1     L24               ; |199| 

   [!A0]   ZERO    .L2     B1                ; nullify predicate
|| [!A0]   CALL    .S1     _bignum_from_bytes ; |231| 

   [ B1]   BNOP    .S1     L19,3
           ; BRANCHCC OCCURS {L24}           ; |199| 
;** --------------------------------------------------------------------------*
           NOP             2
           ; BRANCHCC OCCURS {L19} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L18
;** --------------------------------------------------------------------------*
L18:    
DW$L$_build_private_key$3$B:
	.dwpsn	"MISC.C",230,0
;**	-----------------------g3:
;** 230	-----------------------    A$5 = *U$23^K$25;
;** 230	-----------------------    *U$23++ = A$5;
;** 229	-----------------------    if ( --L$1 ) goto g3;

           LDBU    .D1T1   *A3,A5            ; |230| 
||         SUB     .L2     B0,1,B0           ; |229| 

   [ B0]   B       .S1     L18               ; |229| 
   [!B0]   BNOP    .S1     L23,2
           XOR     .L1     A4,A5,A5          ; |230| 
           STB     .D1T1   A5,*A3++          ; |230| 
           ; BRANCHCC OCCURS {L18}           ; |229| 
DW$L$_build_private_key$3$E:
;** --------------------------------------------------------------------------*
           NOP             1
           ; BRANCH OCCURS {L23} 
;** --------------------------------------------------------------------------*
L19:    

           MVC     .S2     CSR,B7
||         MV      .L2X    A4,B5
||         SUB     .L1X    B0,6,A0

           AND     .L2     -2,B7,B6
           MVC     .S2     B6,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 229
;*      Loop opening brace source line   : 230
;*      Loop closing brace source line   : 230
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     1*       1*    
;*      .M units                     0        0     
;*      .X cross paths               0        1*    
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 7 iterations in parallel
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
;*      For further improvement on this loop, try option -mh6
;*
;*      Minimum safe trip count     : 6
;*----------------------------------------------------------------------------*
L20:    ; PIPED LOOP PROLOG

           MV      .L2X    A3,B4
||         LDBU    .D1T1   *A3++,A4          ; |230| (P) <0,0> 
|| [ A0]   BDEC    .S1     L21,A0            ; |229| (P) <0,1> 

   [ A0]   BDEC    .S1     L21,A0            ; |229| (P) <1,1> 
||         LDBU    .D1T1   *A3++,A4          ; |230| (P) <1,0> 

           LDBU    .D1T1   *A3++,A4          ; |230| (P) <2,0> 
|| [ A0]   BDEC    .S1     L21,A0            ; |229| (P) <2,1> 

   [ A0]   BDEC    .S1     L21,A0            ; |229| (P) <3,1> 
||         LDBU    .D1T1   *A3++,A4          ; |230| (P) <3,0> 

	.dwpsn	"MISC.C",229,0

           MVK     .L1     0x1,A1            ; init prolog collapse predicate
||         LDBU    .D1T1   *A3++,A4          ; |230| (P) <4,0> 
|| [ A0]   BDEC    .S1     L21,A0            ; |229| (P) <4,1> 

;** --------------------------------------------------------------------------*
L21:    ; PIPED LOOP KERNEL
DW$L$_build_private_key$7$B:
	.dwpsn	"MISC.C",230,0

   [ A1]   SUB     .L1     A1,1,A1           ; <0,6> 
|| [!A1]   STB     .D2T2   B6,*B4++          ; |230| <0,6> 
||         XOR     .L2X    B5,A4,B6          ; |230| <1,5> 
|| [ A0]   BDEC    .S1     L21,A0            ; |229| <5,1> 
||         LDBU    .D1T1   *A3++,A4          ; |230| <6,0> 

DW$L$_build_private_key$7$E:
;** --------------------------------------------------------------------------*
L22:    ; PIPED LOOP EPILOG

           XOR     .L2X    B5,A4,B6          ; |230| (E) <2,5> 
||         STB     .D2T2   B6,*B4++          ; |230| (E) <1,6> 

           XOR     .L2X    B5,A4,B6          ; |230| (E) <3,5> 
||         STB     .D2T2   B6,*B4++          ; |230| (E) <2,6> 

           XOR     .L2X    B5,A4,B6          ; |230| (E) <4,5> 
||         STB     .D2T2   B6,*B4++          ; |230| (E) <3,6> 

           MVC     .S2     B7,CSR            ; interrupts on
||         XOR     .L2X    B5,A4,B6          ; |230| (E) <5,5> 
||         STB     .D2T2   B6,*B4++          ; |230| (E) <4,6> 

;** --------------------------------------------------------------------------*

           XOR     .L2X    B5,A4,B5          ; |230| (E) <6,5> 
||         STB     .D2T2   B6,*B4++          ; |230| (E) <5,6> 

           STB     .D2T2   B5,*B4++          ; |230| (E) <6,6> 
;** --------------------------------------------------------------------------*
L23:    
           CALL    .S1     _bignum_from_bytes ; |231| 
           NOP             4
;** --------------------------------------------------------------------------*
L24:    
;**	-----------------------g4:
;** 231	-----------------------    (*key).modulus = bignum_from_bytes(buf, len);
;** 232	-----------------------    buf += len;
;** 197	-----------------------    memcpy(&i, (const void *)buf, 4u);  // [21]
;** 198	-----------------------    buf += 4;  // [21]
;** 199	-----------------------    if ( (len = i) <= 0 ) goto g7;  // [21]
;**  	-----------------------    U$23 = buf;
;**  	-----------------------    K$25 = (-86);
;**  	-----------------------    L$2 = len;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L2X    A11,B4            ; |231| 
||         MV      .L1     A10,A4            ; |231| 
||         ADDKPC  .S2     RL4,B3,0          ; |231| 

RL4:       ; CALL OCCURS {_bignum_from_bytes}  ; |231| 
;** --------------------------------------------------------------------------*

           STW     .D1T1   A4,*+A12(8)       ; |231| 
||         ADD     .L1     A11,A10,A4        ; |232| 
||         ADD     .L2     4,SP,B4           ; |197| 
||         MVK     .S1     0xffffffaa,A5

           LDNW    .D1T1   *A4,A3            ; |197| 
||         ADD     .L1     4,A4,A10          ; |198| 

           NOP             4

           ADD     .L1     4,A4,A3           ; |198| 
||         STNW    .D2T1   A3,*B4            ; |197| 

           LDW     .D2T2   *+SP(4),B7        ; |199| 
           NOP             4

           CMPGT   .L2     B7,0,B1           ; |199| 
||         MV      .S2     B7,B0

   [ B1]   CMPGT   .L2     B0,5,B1
|| [!B1]   B       .S1     L30               ; |199| 
||         MV      .S2     B1,B2             ; guard predicate rewrite

   [!B2]   ZERO    .L2     B1                ; nullify predicate
   [ B1]   BNOP    .S1     L26,3
           ; BRANCHCC OCCURS {L30}           ; |199| 
;** --------------------------------------------------------------------------*
           NOP             2
           ; BRANCHCC OCCURS {L26} 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L25
;** --------------------------------------------------------------------------*
L25:    
DW$L$_build_private_key$14$B:
	.dwpsn	"MISC.C",235,0
;**	-----------------------g6:
;** 235	-----------------------    A$4 = *U$23^K$25;
;** 235	-----------------------    *U$23++ = A$4;
;** 234	-----------------------    if ( --L$2 ) goto g6;

           LDBU    .D1T1   *A3,A4            ; |235| 
||         SUB     .L2     B0,1,B0           ; |234| 

   [ B0]   B       .S1     L25               ; |234| 
   [!B0]   BNOP    .S1     L31,2
           XOR     .L1     A5,A4,A4          ; |235| 
           STB     .D1T1   A4,*A3++          ; |235| 
           ; BRANCHCC OCCURS {L25}           ; |234| 
DW$L$_build_private_key$14$E:
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_from_bytes ; |236| 
           ; BRANCH OCCURS {L31} 
;** --------------------------------------------------------------------------*
L26:    

           MVC     .S2     CSR,B8
||         SUB     .L1X    B0,6,A0

           AND     .L2     -2,B8,B6
           MVC     .S2     B6,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 234
;*      Loop opening brace source line   : 235
;*      Loop closing brace source line   : 235
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     1*       1*    
;*      .M units                     0        0     
;*      .X cross paths               0        1*    
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 7 iterations in parallel
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
;*      For further improvement on this loop, try option -mh6
;*
;*      Minimum safe trip count     : 6
;*----------------------------------------------------------------------------*
L27:    ; PIPED LOOP PROLOG

           MV      .L2X    A3,B4
||         LDBU    .D1T1   *A3++,A4          ; |235| (P) <0,0> 
|| [ A0]   BDEC    .S1     L28,A0            ; |234| (P) <0,1> 

   [ A0]   BDEC    .S1     L28,A0            ; |234| (P) <1,1> 
||         LDBU    .D1T1   *A3++,A4          ; |235| (P) <1,0> 

           LDBU    .D1T1   *A3++,A4          ; |235| (P) <2,0> 
|| [ A0]   BDEC    .S1     L28,A0            ; |234| (P) <2,1> 

   [ A0]   BDEC    .S1     L28,A0            ; |234| (P) <3,1> 
||         LDBU    .D1T1   *A3++,A4          ; |235| (P) <3,0> 

	.dwpsn	"MISC.C",234,0

           MVK     .L1     0x1,A1            ; init prolog collapse predicate
||         MV      .L2X    A5,B5
||         LDBU    .D1T1   *A3++,A4          ; |235| (P) <4,0> 
|| [ A0]   BDEC    .S1     L28,A0            ; |234| (P) <4,1> 

;** --------------------------------------------------------------------------*
L28:    ; PIPED LOOP KERNEL
DW$L$_build_private_key$18$B:
	.dwpsn	"MISC.C",235,0

   [ A1]   SUB     .L1     A1,1,A1           ; <0,6> 
|| [!A1]   STB     .D2T2   B6,*B4++          ; |235| <0,6> 
||         XOR     .L2X    B5,A4,B6          ; |235| <1,5> 
|| [ A0]   BDEC    .S1     L28,A0            ; |234| <5,1> 
||         LDBU    .D1T1   *A3++,A4          ; |235| <6,0> 

DW$L$_build_private_key$18$E:
;** --------------------------------------------------------------------------*
L29:    ; PIPED LOOP EPILOG

           XOR     .L2X    B5,A4,B6          ; |235| (E) <2,5> 
||         STB     .D2T2   B6,*B4++          ; |235| (E) <1,6> 

           XOR     .L2X    B5,A4,B6          ; |235| (E) <3,5> 
||         STB     .D2T2   B6,*B4++          ; |235| (E) <2,6> 

           XOR     .L2X    B5,A4,B6          ; |235| (E) <4,5> 
||         STB     .D2T2   B6,*B4++          ; |235| (E) <3,6> 

           MVC     .S2     B8,CSR            ; interrupts on
||         XOR     .L2X    B5,A4,B6          ; |235| (E) <5,5> 
||         STB     .D2T2   B6,*B4++          ; |235| (E) <4,6> 

;** --------------------------------------------------------------------------*

           XOR     .L2X    B5,A4,B5          ; |235| (E) <6,5> 
||         STB     .D2T2   B6,*B4++          ; |235| (E) <5,6> 

           STB     .D2T2   B5,*B4++          ; |235| (E) <6,6> 
;** --------------------------------------------------------------------------*
L30:    
           CALL    .S1     _bignum_from_bytes ; |236| 
;** --------------------------------------------------------------------------*
L31:    
;**	-----------------------g7:
;** 236	-----------------------    (*key).private_exponent = bignum_from_bytes(buf, len);
;** 237	-----------------------    return 0;
           ADDKPC  .S2     RL5,B3,2          ; |236| 
           MV      .L1     A10,A4            ; |236| 
           MV      .L2     B7,B4             ; |236| 
RL5:       ; CALL OCCURS {_bignum_from_bytes}  ; |236| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T1   *+SP(24),A11:A10  ; |238| 
||         MV      .L2     B13,B3            ; |238| 

           RET     .S2     B3                ; |238| 
||         LDW     .D2T2   *+SP(20),B13      ; |238| 
||         STW     .D1T1   A4,*+A12(16)      ; |236| 

           LDW     .D2T1   *++SP(32),A12     ; |238| 
           NOP             3
	.dwpsn	"MISC.C",238,1
           ZERO    .L1     A4                ; |237| 
           ; BRANCH OCCURS {B3}              ; |238| 

DW$59	.dwtag  DW_TAG_loop
	.dwattr DW$59, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L28:1:1288598889")
	.dwattr DW$59, DW_AT_begin_file("MISC.C")
	.dwattr DW$59, DW_AT_begin_line(0xea)
	.dwattr DW$59, DW_AT_end_line(0xeb)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_build_private_key$18$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_build_private_key$18$E)
	.dwendtag DW$59


DW$61	.dwtag  DW_TAG_loop
	.dwattr DW$61, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L25:1:1288598889")
	.dwattr DW$61, DW_AT_begin_file("MISC.C")
	.dwattr DW$61, DW_AT_begin_line(0xea)
	.dwattr DW$61, DW_AT_end_line(0xeb)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_build_private_key$14$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_build_private_key$14$E)
	.dwendtag DW$61


DW$63	.dwtag  DW_TAG_loop
	.dwattr DW$63, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L21:1:1288598889")
	.dwattr DW$63, DW_AT_begin_file("MISC.C")
	.dwattr DW$63, DW_AT_begin_line(0xe5)
	.dwattr DW$63, DW_AT_end_line(0xe6)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$_build_private_key$7$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$_build_private_key$7$E)
	.dwendtag DW$63


DW$65	.dwtag  DW_TAG_loop
	.dwattr DW$65, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L18:1:1288598889")
	.dwattr DW$65, DW_AT_begin_file("MISC.C")
	.dwattr DW$65, DW_AT_begin_line(0xe5)
	.dwattr DW$65, DW_AT_end_line(0xe6)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_build_private_key$3$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_build_private_key$3$E)
	.dwendtag DW$65

	.dwattr DW$56, DW_AT_end_file("MISC.C")
	.dwattr DW$56, DW_AT_end_line(0xee)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendtag DW$56

	.sect	".text"
	.global	_random_byte

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("random_byte"), DW_AT_symbol_name("_random_byte")
	.dwattr DW$67, DW_AT_low_pc(_random_byte)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("MISC.C")
	.dwattr DW$67, DW_AT_begin_line(0x7d)
	.dwattr DW$67, DW_AT_begin_column(0x05)
	.dwattr DW$67, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$67, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",126,1

;******************************************************************************
;* FUNCTION NAME: _random_byte                                                *
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
_random_byte:
;** --------------------------------------------------------------------------*
;** 127	-----------------------    return rand();
           CALLRET .S1     _rand             ; |127| 
	.dwpsn	"MISC.C",128,1
           NOP             5
RL6:       ; CALL-RETURN OCCURS {_rand}      ; |127| 
	.dwattr DW$67, DW_AT_end_file("MISC.C")
	.dwattr DW$67, DW_AT_end_line(0x80)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendtag DW$67

	.sect	".text"
	.global	_safefree

DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("safefree"), DW_AT_symbol_name("_safefree")
	.dwattr DW$68, DW_AT_low_pc(_safefree)
	.dwattr DW$68, DW_AT_high_pc(0x00)
	.dwattr DW$68, DW_AT_begin_file("MISC.C")
	.dwattr DW$68, DW_AT_begin_line(0x71)
	.dwattr DW$68, DW_AT_begin_column(0x06)
	.dwattr DW$68, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$68, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",114,1

;******************************************************************************
;* FUNCTION NAME: _safefree                                                   *
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
_safefree:
;** --------------------------------------------------------------------------*
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$69, DW_AT_type(*DW$T$3)
	.dwattr DW$69, DW_AT_location[DW_OP_reg4]
;** 115	-----------------------    if ( ptr == NULL ) goto g3;
           MV      .L1     A4,A0             ; |114| 
   [!A0]   B       .S1     L32               ; |115| 
   [ A0]   CALLRET .S1     _free             ; |116| 
   [!A0]   RETNOP  .S2     B3,3              ; |118| 
           ; BRANCHCC OCCURS {L32}           ; |115| 
;** --------------------------------------------------------------------------*
;** 116	-----------------------    free(ptr);
;**	-----------------------g3:
;**  	-----------------------    return;
           NOP             1
RL7:       ; CALL-RETURN OCCURS {_free}      ; |116| 
;** --------------------------------------------------------------------------*
L32:    
	.dwpsn	"MISC.C",118,1
           NOP             2
           ; BRANCH OCCURS {B3}              ; |118| 
	.dwattr DW$68, DW_AT_end_file("MISC.C")
	.dwattr DW$68, DW_AT_end_line(0x76)
	.dwattr DW$68, DW_AT_end_column(0x01)
	.dwendtag DW$68

	.sect	".text"
	.global	_test_rsa

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("test_rsa"), DW_AT_symbol_name("_test_rsa")
	.dwattr DW$70, DW_AT_low_pc(_test_rsa)
	.dwattr DW$70, DW_AT_high_pc(0x00)
	.dwattr DW$70, DW_AT_begin_file("MISC.C")
	.dwattr DW$70, DW_AT_begin_line(0xf0)
	.dwattr DW$70, DW_AT_begin_column(0x06)
	.dwattr DW$70, DW_AT_frame_base[DW_OP_breg31 808]
	.dwattr DW$70, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",241,1

;******************************************************************************
;* FUNCTION NAME: _test_rsa                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,  *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B13,DP,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Local Frame Size  : 8 Args + 772 Auto + 24 Save = 804 byte               *
;******************************************************************************
_test_rsa:
;** --------------------------------------------------------------------------*
;** 248	-----------------------    key = (struct _RSAKey *)safemalloc(1u, 36u);
;** 250	-----------------------    dbg_output("start\n");
;** 252	-----------------------    build_public_key(&public_key, key);
;** 253	-----------------------    build_private_key(&private_key, key);
;** 255	-----------------------    len1 = 110;
;**  	-----------------------    #pragma MUST_ITERATE(18, 18, 18)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _safemalloc       ; |248| 
           MV      .L1X    SP,A31            ; |241| 
           ADDK    .S2     -808,SP           ; |241| 
           STDW    .D1T1   A11:A10,*-A31(16)

           STW     .D2T2   B13,*+SP(788)
||         MVK     .S2     0x24,B4           ; |248| 

           ADDKPC  .S2     RL8,B3,0          ; |248| 
||         STDW    .D1T1   A13:A12,*-A31(8)
||         MV      .L2     B3,B13
||         STW     .D2T2   B10,*+SP(808)
||         MVK     .L1     0x1,A4            ; |248| 

RL8:       ; CALL OCCURS {_safemalloc}       ; |248| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _dbg_output       ; |250| 
           ADDKPC  .S2     RL9,B3,0          ; |250| 
           MV      .L1     A4,A11            ; |248| 
           MVKL    .S1     SL1+0,A3          ; |250| 
           MVKH    .S1     SL1+0,A3          ; |250| 
           STW     .D2T1   A3,*+SP(4)        ; |250| 
RL9:       ; CALL OCCURS {_dbg_output}       ; |250| 
           CALL    .S1     _build_public_key ; |252| 
           MVKL    .S2     _public_key,B4    ; |252| 
           MVKH    .S2     _public_key,B4    ; |252| 
           ADDKPC  .S2     RL10,B3,0         ; |252| 
           MV      .L1X    B4,A4             ; |252| 

           MV      .L2X    A11,B4            ; |252| 
||         MV      .S1     A11,A10           ; |252| 

RL10:      ; CALL OCCURS {_build_public_key}  ; |252| 
           CALL    .S1     _build_private_key ; |253| 
           MVKL    .S1     _private_key,A4   ; |253| 
           ADDKPC  .S2     RL11,B3,1         ; |253| 
           MV      .L2X    A10,B4            ; |253| 
           MVKH    .S1     _private_key,A4   ; |253| 
RL11:      ; CALL OCCURS {_build_private_key}  ; |253| 
;** --------------------------------------------------------------------------*
;**	-----------------------g2:
;** 257	-----------------------    L$2 = 10;
;**  	-----------------------    #pragma MUST_ITERATE(10, 10, 10)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVK     .L2     0xa,B4            ; |257| 
           MVK     .S2     0x6e,B10          ; |255| 
	.dwpsn	"MISC.C",257,0
           MV      .L1X    B4,A13            ; |257| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L33
;** --------------------------------------------------------------------------*
L33:    
DW$L$_test_rsa$4$B:
	.dwpsn	"MISC.C",258,0
;**	-----------------------g3:
;** 259	-----------------------    L$3 = 256;
;**  	-----------------------    U$17 = &buf[0];
;**  	-----------------------    #pragma MUST_ITERATE(256, 256, 256)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     _rand             ; |127| 
||         ADD     .D2     SP,16,B5
||         MVK     .S2     0x100,B4          ; |259| 

           NOP             1
           MV      .L1X    B5,A10            ; Register A/B partition copy
           MV      .L1X    B4,A12            ; |259| 
	.dwpsn	"MISC.C",259,0
           NOP             1
DW$L$_test_rsa$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L34:    
DW$L$_test_rsa$5$B:
	.dwpsn	"MISC.C",260,0
;**	-----------------------g4:
;** 127	-----------------------    R$1 = rand();  // [16]
;** 127	-----------------------    *U$17++ = R$1;  // [16]
;** 259	-----------------------    if ( --L$3 ) goto g4;
;** 264	-----------------------    dbg_output("len %d ", len1);
           ADDKPC  .S2     RL12,B3,0         ; |127| 
RL12:      ; CALL OCCURS {_rand}             ; |127| 
DW$L$_test_rsa$5$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$6$B:

           SUB     .L1     A12,1,A0          ; |259| 
||         STB     .D1T1   A4,*A10++         ; |127| 
||         SUB     .S1     A12,1,A12         ; |259| 

   [ A0]   B       .S1     L34               ; |259| 
|| [!A0]   MVKL    .S2     SL2+0,B4          ; |264| 

   [ A0]   CALL    .S1     _rand             ; |127| 
|| [!A0]   MVKH    .S2     SL2+0,B4          ; |264| 

   [!A0]   CALL    .S1     _dbg_output       ; |264| 
	.dwpsn	"MISC.C",262,0
           NOP             3
           ; BRANCHCC OCCURS {L34}           ; |259| 
DW$L$_test_rsa$6$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$7$B:
;** 266	-----------------------    if ( !(len = rsa_encrypt_public(&buf, len1, &encrypt, 256, key)) ) goto g14;
           STW     .D2T2   B4,*+SP(4)        ; |264| 

           STW     .D2T2   B10,*+SP(8)       ; |264| 
||         ADDKPC  .S2     RL13,B3,0         ; |264| 

RL13:      ; CALL OCCURS {_dbg_output}       ; |264| 
DW$L$_test_rsa$7$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$8$B:
           CALL    .S1     _rsa_encrypt_public ; |266| 
           ADD     .D2     SP,16,B5          ; |266| 
           MVK     .S1     272,A3            ; |266| 
           ADD     .L1X    A3,SP,A6          ; |266| 
           MVK     .S2     0x100,B6          ; |266| 

           ADDKPC  .S2     RL14,B3,0         ; |266| 
||         MV      .L1X    B5,A4             ; |266| 
||         MV      .S1     A11,A8            ; |264| 
||         MV      .L2     B10,B4            ; |266| 

RL14:      ; CALL OCCURS {_rsa_encrypt_public}  ; |266| 
DW$L$_test_rsa$8$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$9$B:
           MV      .L1     A4,A0             ; |266| 

   [!A0]   B       .S2     L40               ; |266| 
|| [ A0]   MVK     .S1     528,A3            ; |272| 

   [!A0]   CALL    .S2     _dbg_output       ; |268| 
|| [!A0]   MVKL    .S1     SL6+0,A3          ; |268| 
|| [ A0]   ADD     .L1X    A3,SP,A6          ; |272| 

   [ A0]   CALL    .S2     _rsa_decrypt_private ; |272| 
|| [!A0]   MVKH    .S1     SL6+0,A3          ; |268| 

   [ A0]   MVK     .S1     272,A3            ; |272| 
           NOP             2
           ; BRANCHCC OCCURS {L40}           ; |266| 
DW$L$_test_rsa$9$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$10$B:
;** 272	-----------------------    if ( a$1 = rsa_decrypt_private(&encrypt, len, &decrypt, 256, key) ) goto g8;
           ADDKPC  .S2     RL15,B3,0         ; |272| 

           MVK     .S2     0x100,B6          ; |272| 
||         MV      .L1     A11,A8            ; |272| 
||         MV      .L2X    A0,B4             ; |272| 
||         ADD     .S1X    A3,SP,A4          ; |272| 

RL15:      ; CALL OCCURS {_rsa_decrypt_private}  ; |272| 
DW$L$_test_rsa$10$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$11$B:

           MVK     .S2     527,B4            ; |245| 
||         MV      .L1     A4,A0             ; |272| 

   [ A0]   B       .S2     L35               ; |272| 
|| [ A0]   ADD     .L1X    15,SP,A4          ; |246| 
||         ADD     .L2     B4,SP,B6          ; |245| 
|| [!A0]   MVKL    .S1     SL3+0,A3          ; |274| 

   [ A0]   LDBU    .D1T1   *++A4,A3          ; |249| (P) <0,0> 
|| [ A0]   LDBU    .D2T2   *++B6,B4          ; |249| (P) <0,0> 
|| [!A0]   CALL    .S2     _dbg_output       ; |274| 
|| [!A0]   MVKH    .S1     SL3+0,A3          ; |274| 

           NOP             4
           ; BRANCHCC OCCURS {L35}           ; |272| 
DW$L$_test_rsa$11$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$12$B:
;** 274	-----------------------    dbg_output("decrypt failed\n");
;** 275	-----------------------    goto g15;

           STW     .D2T1   A3,*+SP(4)        ; |274| 
||         ADDKPC  .S2     RL16,B3,0         ; |274| 

RL16:      ; CALL OCCURS {_dbg_output}       ; |274| 
DW$L$_test_rsa$12$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$13$B:

           BNOP    .S1     L41,5             ; |275| 
||         SUB     .L1     A13,1,A0          ; |257| 

           ; BRANCH OCCURS {L41}             ; |275| 
DW$L$_test_rsa$13$E:
;** --------------------------------------------------------------------------*
L35:    
DW$L$_test_rsa$14$B:
;**	-----------------------g8:
;** 246	-----------------------    mem2 = &((unsigned char *)buf)[-1];  // [5]
;** 249	-----------------------    L$4 = len1;  // [5]
;** 245	-----------------------    mem1 = &((unsigned char *)decrypt)[-1];  // [5]
;**  	-----------------------    #pragma MUST_ITERATE(1, 127, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g9:
;** 249	-----------------------    cp = *(++mem1);  // [5]
;** 249	-----------------------    U$44 = *(++mem2);  // [5]
;** 249	-----------------------    if ( cp != U$44 ) goto g11;  // [5]
;** 249	-----------------------    if ( --L$4 ) goto g9;  // [5]

           MVC     .S2     CSR,B7
||         MV      .L2     B10,B5            ; |249| 
||         CMPEQ   .L1X    B4,A3,A0          ; |249| (P) <0,5>  ^ 

           AND     .L2     -2,B7,B8
           MVC     .S2     B8,CSR            ; interrupts off
DW$L$_test_rsa$14$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 249
;*      Loop closing brace source line   : 249
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 127                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        0     
;*      .D units                     1        1     
;*      .M units                     0        0     
;*      .X cross paths               1        0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        2*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Unsafe schedule for irregular loop
;*         ii = 6  Did not find schedule
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Unsafe schedule for irregular loop
;*         ii = 7  Did not find schedule
;*         ii = 8  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh14
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L36:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L37:    ; PIPED LOOP KERNEL
DW$L$_test_rsa$16$B:

           ZERO    .L2     B0                ; |249| <0,6>  ^ 
|| [ A0]   SUB     .S2     B5,1,B5           ; |249| <0,6>  ^ 

   [ A0]   MV      .L2     B5,B0             ; |249| <0,7>  ^ 

   [ B0]   BNOP    .S1     L37,4             ; |249| <0,8> 
|| [ B0]   LDBU    .D2T2   *++B6,B4          ; |249| <1,0> 
|| [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| <1,0> 

           CMPEQ   .L1X    B4,A3,A0          ; |249| <1,5>  ^ 
DW$L$_test_rsa$16$E:
;** --------------------------------------------------------------------------*
L38:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$18$B:
;**	-----------------------g11:
;** 250	-----------------------    if ( cp != U$44 ) goto g13;  // [5]

           CMPEQ   .L2X    B4,A3,B0          ; |250| 
||         MVC     .S2     B7,CSR            ; interrupts on

   [!B0]   B       .S2     L39               ; |250| 
|| [ B0]   MVKL    .S1     SL4+0,A3          ; |279| 

   [ B0]   CALL    .S2     _dbg_output       ; |279| 
|| [!B0]   MVKL    .S1     SL5+0,A3          ; |281| 

   [!B0]   CALL    .S2     _dbg_output       ; |281| 
|| [!B0]   MVKH    .S1     SL5+0,A3          ; |281| 

   [ B0]   MVKH    .S1     SL4+0,A3          ; |279| 
           NOP             2
           ; BRANCHCC OCCURS {L39}           ; |250| 
DW$L$_test_rsa$18$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$19$B:
;** 279	-----------------------    dbg_output("equal\n");
;** 279	-----------------------    goto g15;

           STW     .D2T1   A3,*+SP(4)        ; |279| 
||         ADDKPC  .S2     RL17,B3,0         ; |279| 

RL17:      ; CALL OCCURS {_dbg_output}       ; |279| 
DW$L$_test_rsa$19$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$20$B:

           BNOP    .S1     L41,5             ; |279| 
||         SUB     .L1     A13,1,A0          ; |257| 

           ; BRANCH OCCURS {L41}             ; |279| 
DW$L$_test_rsa$20$E:
;** --------------------------------------------------------------------------*
L39:    
DW$L$_test_rsa$21$B:
;**	-----------------------g13:
;** 281	-----------------------    dbg_output("not equal\n");
;** 281	-----------------------    goto g15;
           ADDKPC  .S2     RL18,B3,0         ; |281| 
           STW     .D2T1   A3,*+SP(4)        ; |281| 
RL18:      ; CALL OCCURS {_dbg_output}       ; |281| 
DW$L$_test_rsa$21$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$22$B:

           B       .S1     L42               ; |281| 
||         SUB     .L1     A13,1,A0          ; |257| 
||         SUB     .D1     A13,1,A13         ; |257| 

   [ A0]   BNOP    .S1     L33,4             ; |257| 
           ; BRANCH OCCURS {L42}             ; |281| 
DW$L$_test_rsa$22$E:
;** --------------------------------------------------------------------------*
L40:    
DW$L$_test_rsa$23$B:
;**	-----------------------g14:
;** 268	-----------------------    dbg_output("encrypt failed\n");

           ADDKPC  .S2     RL19,B3,0         ; |268| 
||         STW     .D2T1   A3,*+SP(4)        ; |268| 

RL19:      ; CALL OCCURS {_dbg_output}       ; |268| 
           SUB     .L1     A13,1,A0          ; |257| 
DW$L$_test_rsa$23$E:
;** --------------------------------------------------------------------------*
L41:    
DW$L$_test_rsa$24$B:

   [ A0]   BNOP    .S1     L33,4             ; |257| 
||         SUB     .L1     A13,1,A13         ; |257| 

DW$L$_test_rsa$24$E:
;** --------------------------------------------------------------------------*
L42:    
DW$L$_test_rsa$25$B:
;**	-----------------------g15:
;** 257	-----------------------    if ( --L$2 ) goto g3;
;** 255	-----------------------    if ( (++len1) < 128 ) goto g2;
	.dwpsn	"MISC.C",282,0

   [!A0]   MVK     .S2     128,B4            ; |255| 
|| [!A0]   ADD     .L2     1,B10,B10         ; |255| 

           ; BRANCHCC OCCURS {L33}           ; |257| 
DW$L$_test_rsa$25$E:
;** --------------------------------------------------------------------------*
DW$L$_test_rsa$26$B:
;** 284	-----------------------    freersakey(key);
           CMPLT   .L2     B10,B4,B0         ; |255| 

   [ B0]   B       .S1     L33               ; |255| 
|| [ B0]   MVK     .L2     0xa,B4            ; |257| 

   [!B0]   CALL    .S1     _freersakey       ; |284| 
           NOP             3
   [ B0]   MV      .L1X    B4,A13            ; |257| 
           ; BRANCHCC OCCURS {L33}           ; |255| 
DW$L$_test_rsa$26$E:
;** --------------------------------------------------------------------------*
;** 115	-----------------------    if ( (void *)key == NULL ) goto g19;  // [15]

           MV      .L1     A11,A4            ; |284| 
||         ADDKPC  .S2     RL20,B3,0         ; |284| 

RL20:      ; CALL OCCURS {_freersakey}       ; |284| 
;** --------------------------------------------------------------------------*

           MV      .L1     A11,A0            ; |284| 
||         MV      .S1     A11,A4            ; |284| 

   [!A0]   B       .S1     L43               ; |115| 
|| [!A0]   MV      .L2     B13,B3            ; |286| 
|| [!A0]   LDW     .D2T2   *+SP(808),B10     ; |286| 

   [ A0]   CALL    .S1     _free             ; |116| 
|| [!A0]   LDW     .D2T2   *+SP(788),B13     ; |286| 

   [!A0]   LDW     .D2T1   *+SP(796),A11     ; |286| 
   [!A0]   LDW     .D2T1   *+SP(792),A10     ; |286| 

   [!A0]   LDW     .D2T1   *+SP(804),A13     ; |286| 
|| [!A0]   RET     .S2     B3                ; |286| 

   [!A0]   LDW     .D2T1   *+SP(800),A12     ; |286| 
|| [!A0]   ADDK    .S2     808,SP            ; |286| 

           ; BRANCHCC OCCURS {L43}           ; |115| 
;** --------------------------------------------------------------------------*
;** 116	-----------------------    free((void *)key);  // [15]
;**	-----------------------g19:
;**  	-----------------------    return;
           ADDKPC  .S2     RL21,B3,0         ; |116| 
RL21:      ; CALL OCCURS {_free}             ; |116| 

           MV      .L2     B13,B3            ; |286| 
||         LDW     .D2T2   *+SP(788),B13     ; |286| 

           LDW     .D2T2   *+SP(808),B10     ; |286| 
           LDW     .D2T1   *+SP(804),A13     ; |286| 
           LDW     .D2T1   *+SP(800),A12     ; |286| 

           LDW     .D2T1   *+SP(796),A11     ; |286| 
||         RET     .S2     B3                ; |286| 

           LDW     .D2T1   *+SP(792),A10     ; |286| 
||         ADDK    .S2     808,SP            ; |286| 

;** --------------------------------------------------------------------------*
L43:    
	.dwpsn	"MISC.C",286,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |286| 

DW$71	.dwtag  DW_TAG_loop
	.dwattr DW$71, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L33:1:1288598889")
	.dwattr DW$71, DW_AT_begin_file("MISC.C")
	.dwattr DW$71, DW_AT_begin_line(0x7f)
	.dwattr DW$71, DW_AT_end_line(0x11a)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_test_rsa$4$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_test_rsa$4$E)
DW$73	.dwtag  DW_TAG_loop_range
	.dwattr DW$73, DW_AT_low_pc(DW$L$_test_rsa$19$B)
	.dwattr DW$73, DW_AT_high_pc(DW$L$_test_rsa$19$E)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_test_rsa$12$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_test_rsa$12$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_test_rsa$13$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_test_rsa$13$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$_test_rsa$20$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$_test_rsa$20$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_test_rsa$23$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_test_rsa$23$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_test_rsa$7$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_test_rsa$7$E)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_test_rsa$8$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_test_rsa$8$E)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$_test_rsa$9$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$_test_rsa$9$E)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$_test_rsa$10$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$_test_rsa$10$E)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$_test_rsa$11$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$_test_rsa$11$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$_test_rsa$14$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$_test_rsa$14$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_test_rsa$18$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_test_rsa$18$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_test_rsa$21$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_test_rsa$21$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_test_rsa$22$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_test_rsa$22$E)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$_test_rsa$24$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$_test_rsa$24$E)
DW$88	.dwtag  DW_TAG_loop_range
	.dwattr DW$88, DW_AT_low_pc(DW$L$_test_rsa$26$B)
	.dwattr DW$88, DW_AT_high_pc(DW$L$_test_rsa$26$E)
DW$89	.dwtag  DW_TAG_loop_range
	.dwattr DW$89, DW_AT_low_pc(DW$L$_test_rsa$25$B)
	.dwattr DW$89, DW_AT_high_pc(DW$L$_test_rsa$25$E)

DW$90	.dwtag  DW_TAG_loop
	.dwattr DW$90, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L34:2:1288598889")
	.dwattr DW$90, DW_AT_begin_file("MISC.C")
	.dwattr DW$90, DW_AT_begin_line(0x103)
	.dwattr DW$90, DW_AT_end_line(0x106)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$_test_rsa$5$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$_test_rsa$5$E)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_test_rsa$6$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_test_rsa$6$E)
	.dwendtag DW$90


DW$93	.dwtag  DW_TAG_loop
	.dwattr DW$93, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L37:2:1288598889")
	.dwattr DW$93, DW_AT_begin_file("D:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$93, DW_AT_begin_line(0xf9)
	.dwattr DW$93, DW_AT_end_line(0xf9)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_test_rsa$16$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_test_rsa$16$E)
	.dwendtag DW$93

	.dwendtag DW$71

	.dwattr DW$70, DW_AT_end_file("MISC.C")
	.dwattr DW$70, DW_AT_end_line(0x11e)
	.dwattr DW$70, DW_AT_end_column(0x01)
	.dwendtag DW$70

	.sect	".text"
	.global	_saferealloc

DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("saferealloc"), DW_AT_symbol_name("_saferealloc")
	.dwattr DW$95, DW_AT_low_pc(_saferealloc)
	.dwattr DW$95, DW_AT_high_pc(0x00)
	.dwattr DW$95, DW_AT_begin_file("MISC.C")
	.dwattr DW$95, DW_AT_begin_line(0x5c)
	.dwattr DW$95, DW_AT_begin_column(0x07)
	.dwattr DW$95, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$95, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",93,1

;******************************************************************************
;* FUNCTION NAME: _saferealloc                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_saferealloc:
;** --------------------------------------------------------------------------*
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ptr"), DW_AT_symbol_name("_ptr")
	.dwattr DW$96, DW_AT_type(*DW$T$3)
	.dwattr DW$96, DW_AT_location[DW_OP_reg4]
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$97, DW_AT_type(*DW$T$29)
	.dwattr DW$97, DW_AT_location[DW_OP_reg20]
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size"), DW_AT_symbol_name("_size")
	.dwattr DW$98, DW_AT_type(*DW$T$29)
	.dwattr DW$98, DW_AT_location[DW_OP_reg6]
;** 96	-----------------------    if ( n > 0x7fffffffu/size ) goto g3;
           CALL    .S1     __divu            ; |96| 
           MV      .L2     B4,B5             ; |93| 
           MV      .L1     A4,A7             ; |93| 
           MVKL    .S1     0x7fffffff,A4     ; |96| 
           MVKH    .S1     0x7fffffff,A4     ; |96| 

           MV      .L2X    A6,B4             ; |93| 
||         MV      .L1     A6,A3             ; |93| 
||         STW     .D2T2   B3,*SP--(8)       ; |93| 
||         ADDKPC  .S2     RL22,B3,0         ; |96| 

RL22:      ; CALL OCCURS {__divu}            ; |96| 
;** --------------------------------------------------------------------------*

           MPYLH   .M2X    B5,A3,B4          ; |99| 
||         MPYLH   .M1X    A3,B5,A6          ; |99| 
||         ZERO    .L1     A0                ; |97| 

           CMPGTU  .L2X    B5,A4,B0          ; |96| 
||         MPYU    .M1X    B5,A3,A5          ; |99| 

   [ B0]   B       .S1     L45               ; |96| 
|| [!B0]   MV      .L1     A7,A0             ; |100| 

           ADD     .L1X    B4,A6,A3          ; |99| 
           SHL     .S1     A3,16,A3          ; |99| 
           ADD     .L1     A5,A3,A3          ; |99| 
           NOP             1
           MV      .L2X    A3,B4             ; |99| 
           ; BRANCHCC OCCURS {L45}           ; |96| 
;** --------------------------------------------------------------------------*
;** 99	-----------------------    size = K$7 = size*n;
;** 100	-----------------------    (ptr != NULL) ? (p = realloc(ptr, size)) : (p = malloc(K$7));
   [!A0]   B       .S1     L44               ; |100| 

           MV      .L1     A7,A4             ; |100| 
|| [ A0]   CALL    .S1     _realloc          ; |100| 

   [!A0]   CALL    .S1     _malloc           ; |100| 
           NOP             3
           ; BRANCHCC OCCURS {L44}           ; |100| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL23,B3,0         ; |100| 
RL23:      ; CALL OCCURS {_realloc}          ; |100| 
;** --------------------------------------------------------------------------*

           B       .S1     L46               ; |100| 
||         MV      .L1     A4,A0             ; |100| 

   [ A0]   BNOP    .S1     L48,4             ; |110| 
||         MV      .L1     A0,A4             ; |110| 

           ; BRANCH OCCURS {L46}             ; |100| 
;** --------------------------------------------------------------------------*
L44:    
;** 103	-----------------------    goto g4;
;**	-----------------------g3:
;** 97	-----------------------    p = NULL;
           ADDKPC  .S2     RL24,B3,0         ; |100| 
           MV      .L1     A3,A4             ; |100| 
RL24:      ; CALL OCCURS {_malloc}           ; |100| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |100| 
;** --------------------------------------------------------------------------*
L45:    
   [ A0]   BNOP    .S1     L48,3             ; |110| 
           MV      .L1     A0,A4             ; |110| 
;** --------------------------------------------------------------------------*
L46:    
;**	-----------------------g4:
;** 107	-----------------------    if ( p == NULL ) goto g6;
;** 110	-----------------------    return p;
;**	-----------------------g6:
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
   [ A0]   LDW     .D2T2   *++SP(8),B3       ; |111| 
           ; BRANCHCC OCCURS {L48}           ; |110| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
L47:    
DW$L$_saferealloc$10$B:
;**	-----------------------g7:
;** 108	-----------------------    goto g7;
           BNOP    .S1     L47,5             ; |108| 
           ; BRANCH OCCURS {L47}             ; |108| 
DW$L$_saferealloc$10$E:
;** --------------------------------------------------------------------------*
L48:    
           NOP             4
	.dwpsn	"MISC.C",111,1
           RETNOP  .S2     B3,5              ; |111| 
           ; BRANCH OCCURS {B3}              ; |111| 

DW$99	.dwtag  DW_TAG_loop
	.dwattr DW$99, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L47:1:1288598889")
	.dwattr DW$99, DW_AT_begin_file("MISC.C")
	.dwattr DW$99, DW_AT_begin_line(0x6c)
	.dwattr DW$99, DW_AT_end_line(0x6e)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$_saferealloc$10$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$_saferealloc$10$E)
	.dwendtag DW$99

	.dwattr DW$95, DW_AT_end_file("MISC.C")
	.dwattr DW$95, DW_AT_end_line(0x6f)
	.dwattr DW$95, DW_AT_end_column(0x01)
	.dwendtag DW$95

	.sect	".text"
	.global	_dump_char

DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("dump_char"), DW_AT_symbol_name("_dump_char")
	.dwattr DW$101, DW_AT_low_pc(_dump_char)
	.dwattr DW$101, DW_AT_high_pc(0x00)
	.dwattr DW$101, DW_AT_begin_file("MISC.C")
	.dwattr DW$101, DW_AT_begin_line(0x82)
	.dwattr DW$101, DW_AT_begin_column(0x06)
	.dwattr DW$101, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$101, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",131,1

;******************************************************************************
;* FUNCTION NAME: _dump_char                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 8 Args + 0 Auto + 4 Save = 12 byte                   *
;******************************************************************************
_dump_char:
;** --------------------------------------------------------------------------*
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$102, DW_AT_type(*DW$T$6)
	.dwattr DW$102, DW_AT_location[DW_OP_reg4]
;** 132	-----------------------    dbg_output("0x%02x", (int)c);
;** 132	-----------------------    return;
           CALL    .S1     _dbg_output       ; |132| 
           STW     .D2T2   B3,*SP--(16)      ; |131| 
           MVKL    .S1     SL7+0,A3          ; |132| 
           STW     .D2T1   A4,*+SP(8)        ; |132| 
           MVKH    .S1     SL7+0,A3          ; |132| 

           ADDKPC  .S2     RL25,B3,0         ; |132| 
||         STW     .D2T1   A3,*+SP(4)        ; |132| 

RL25:      ; CALL OCCURS {_dbg_output}       ; |132| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *++SP(16),B3      ; |133| 
           NOP             4
	.dwpsn	"MISC.C",133,1
           RETNOP  .S2     B3,5              ; |133| 
           ; BRANCH OCCURS {B3}              ; |133| 
	.dwattr DW$101, DW_AT_end_file("MISC.C")
	.dwattr DW$101, DW_AT_end_line(0x85)
	.dwattr DW$101, DW_AT_end_column(0x01)
	.dwendtag DW$101

	.sect	".text"
	.global	_dump_int

DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("dump_int"), DW_AT_symbol_name("_dump_int")
	.dwattr DW$103, DW_AT_low_pc(_dump_int)
	.dwattr DW$103, DW_AT_high_pc(0x00)
	.dwattr DW$103, DW_AT_begin_file("MISC.C")
	.dwattr DW$103, DW_AT_begin_line(0x87)
	.dwattr DW$103, DW_AT_begin_column(0x05)
	.dwattr DW$103, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$103, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",136,1

;******************************************************************************
;* FUNCTION NAME: _dump_int                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19,A20,A21,  *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,SP,A16,A17,A18,A19,A20,A21,  *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 8 Args + 4 Auto + 12 Save = 24 byte                  *
;******************************************************************************
_dump_int:
;** --------------------------------------------------------------------------*
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$104, DW_AT_type(*DW$T$11)
	.dwattr DW$104, DW_AT_location[DW_OP_reg4]
;** 136	-----------------------    n = n;
;** 139	-----------------------    L$1 = 4;
;**  	-----------------------    U$5 = &n;
;**  	-----------------------    #pragma MUST_ITERATE(4, 4, 4)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           STW     .D2T1   A10,*SP--(24)     ; |136| 

           STDW    .D2T2   B11:B10,*+SP(16)  ; |136| 
||         MVKL    .S2     SL7+0,B4          ; |132| 

           STW     .D2T1   A4,*+SP(12)       ; |136| 
||         MVKH    .S2     SL7+0,B4          ; |132| 

           STW     .D2T2   B4,*+SP(4)        ; |132| 
||         ADD     .L2     12,SP,B10

           CALL    .S1     _dbg_output       ; |132| 
||         LDBU    .D2T2   *B10++,B4         ; |132| 

           MV      .L2     B3,B11            ; |136| 
           MVK     .L1     0x4,A10           ; |139| 
	.dwpsn	"MISC.C",139,0
           NOP             1
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L49:    
DW$L$_dump_int$2$B:
	.dwpsn	"MISC.C",140,0
;**	-----------------------g2:
;** 132	-----------------------    dbg_output("0x%02x", (int)*U$5++);  // [17]
;** 132	-----------------------    dbg_output(", ");  // [17]
;** 139	-----------------------    if ( --L$1 ) goto g2;
;** 144	-----------------------    return 0;
           ADDKPC  .S2     RL26,B3,0         ; |132| 
           STW     .D2T2   B4,*+SP(8)        ; |132| 
RL26:      ; CALL OCCURS {_dbg_output}       ; |132| 
DW$L$_dump_int$2$E:
;** --------------------------------------------------------------------------*
DW$L$_dump_int$3$B:
           CALL    .S1     _dbg_output       ; |132| 
           ADDKPC  .S2     RL27,B3,1         ; |132| 
           MVKL    .S1     SL8+0,A3          ; |132| 
           MVKH    .S1     SL8+0,A3          ; |132| 
           STW     .D2T1   A3,*+SP(4)        ; |132| 
RL27:      ; CALL OCCURS {_dbg_output}       ; |132| 
DW$L$_dump_int$3$E:
;** --------------------------------------------------------------------------*
DW$L$_dump_int$4$B:

           MVKL    .S2     SL7+0,B4          ; |132| 
||         SUB     .L1     A10,1,A0          ; |139| 
||         SUB     .S1     A10,1,A10         ; |139| 

           MVKH    .S2     SL7+0,B4          ; |132| 
|| [ A0]   B       .S1     L49               ; |139| 
|| [!A0]   MV      .L2     B11,B3            ; |145| 
|| [!A0]   LDDW    .D2T2   *+SP(16),B11:B10  ; |145| 
|| [!A0]   ZERO    .L1     A4                ; |144| 

   [ A0]   STW     .D2T2   B4,*+SP(4)        ; |132| 

   [ A0]   CALL    .S1     _dbg_output       ; |132| 
|| [ A0]   LDBU    .D2T2   *B10++,B4         ; |132| 

	.dwpsn	"MISC.C",143,0

   [!A0]   RETNOP  .S2     B3,2              ; |145| 
|| [!A0]   LDW     .D2T1   *++SP(24),A10     ; |145| 

           ; BRANCHCC OCCURS {L49}           ; |139| 
DW$L$_dump_int$4$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"MISC.C",145,1
           NOP             3
           ; BRANCH OCCURS {B3}              ; |145| 

DW$105	.dwtag  DW_TAG_loop
	.dwattr DW$105, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L49:1:1288598889")
	.dwattr DW$105, DW_AT_begin_file("MISC.C")
	.dwattr DW$105, DW_AT_begin_line(0x8b)
	.dwattr DW$105, DW_AT_end_line(0x8f)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_dump_int$2$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_dump_int$2$E)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_dump_int$3$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_dump_int$3$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_dump_int$4$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_dump_int$4$E)
	.dwendtag DW$105

	.dwattr DW$103, DW_AT_end_file("MISC.C")
	.dwattr DW$103, DW_AT_end_line(0x91)
	.dwattr DW$103, DW_AT_end_column(0x01)
	.dwendtag DW$103

	.sect	".text"
	.global	_dump_bignum

DW$109	.dwtag  DW_TAG_subprogram, DW_AT_name("dump_bignum"), DW_AT_symbol_name("_dump_bignum")
	.dwattr DW$109, DW_AT_low_pc(_dump_bignum)
	.dwattr DW$109, DW_AT_high_pc(0x00)
	.dwattr DW$109, DW_AT_begin_file("MISC.C")
	.dwattr DW$109, DW_AT_begin_line(0x93)
	.dwattr DW$109, DW_AT_begin_column(0x05)
	.dwattr DW$109, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$109, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",148,1

;******************************************************************************
;* FUNCTION NAME: _dump_bignum                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18, *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B13,SP,A16,A17,A18, *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 8 Args + 0 Auto + 24 Save = 32 byte                  *
;******************************************************************************
_dump_bignum:
;** --------------------------------------------------------------------------*
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bn"), DW_AT_symbol_name("_bn")
	.dwattr DW$110, DW_AT_type(*DW$T$19)
	.dwattr DW$110, DW_AT_location[DW_OP_reg4]
;** 151	-----------------------    len = bignum_bitcount(bn)+7>>3;
;** 152	-----------------------    malloc((unsigned)len);
;** 153	-----------------------    dump_int((unsigned)len);
;** 154	-----------------------    dbg_output("\n");
;** 157	-----------------------    i = len-1;
;** 157	-----------------------    if ( len <= 0 ) goto g8;
;**  	-----------------------    K$14 = (-86);
;** 156	-----------------------    j = 1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     _bignum_bitcount  ; |151| 
           MV      .L1X    SP,A31            ; |148| 
           STW     .D2T1   A12,*SP--(32)     ; |148| 
           STW     .D2T2   B13,*+SP(12)
           STDW    .D1T1   A11:A10,*-A31(16)

           MV      .L2     B3,B13
||         STDW    .D2T2   B11:B10,*+SP(24)
||         ADDKPC  .S2     RL28,B3,0         ; |151| 
||         MV      .L1     A4,A11            ; |148| 

RL28:      ; CALL OCCURS {_bignum_bitcount}  ; |151| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _malloc           ; |152| 
           ADD     .L1     7,A4,A3           ; |151| 
           SHR     .S1     A3,3,A10          ; |151| 
           ADDKPC  .S2     RL29,B3,1         ; |152| 
           MV      .L1     A10,A4            ; |152| 
RL29:      ; CALL OCCURS {_malloc}           ; |152| 
           CALL    .S1     _dump_int         ; |153| 
           MV      .L1     A10,A4            ; |153| 
           ADDKPC  .S2     RL30,B3,3         ; |153| 
RL30:      ; CALL OCCURS {_dump_int}         ; |153| 
           CALL    .S1     _dbg_output       ; |154| 
           ADDKPC  .S2     RL31,B3,1         ; |154| 
           MVKL    .S2     SL9+0,B4          ; |154| 
           MVKH    .S2     SL9+0,B4          ; |154| 
           STW     .D2T2   B4,*+SP(4)        ; |154| 
RL31:      ; CALL OCCURS {_dbg_output}       ; |154| 
;** --------------------------------------------------------------------------*
           CMPGT   .L1     A10,0,A0          ; |157| 
   [!A0]   BNOP    .S1     L53,4             ; |157| 

           SUB     .L1     A10,1,A10         ; |157| 
||         MVK     .S1     0xffffffaa,A12
||         MVK     .L2     0x1,B10           ; |156| 

           ; BRANCHCC OCCURS {L53}           ; |157| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _bignum_byte      ; |159| 
	.dwpsn	"MISC.C",157,0
           NOP             3
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L50:    
DW$L$_dump_bignum$5$B:
	.dwpsn	"MISC.C",158,0
;**	-----------------------g3:
;** 159	-----------------------    c = bignum_byte(bn, i)^K$14;
;** 132	-----------------------    dbg_output("0x%02x", (int)c);  // [17]
;** 132	-----------------------    if ( !(U$17 = i != 0) ) goto g5;  // [17]
           MV      .L2X    A10,B4            ; |159| 

           MV      .L1     A11,A4            ; |159| 
||         ADDKPC  .S2     RL32,B3,0         ; |159| 

RL32:      ; CALL OCCURS {_bignum_byte}      ; |159| 
DW$L$_dump_bignum$5$E:
;** --------------------------------------------------------------------------*
DW$L$_dump_bignum$6$B:
           CALL    .S1     _dbg_output       ; |132| 
           XOR     .L1     A12,A4,A3         ; |159| 
           EXTU    .S1     A3,24,24,A3       ; |159| 
           MVKL    .S2     SL7+0,B4          ; |132| 

           STW     .D2T1   A3,*+SP(8)        ; |132| 
||         MVKH    .S2     SL7+0,B4          ; |132| 

           ADDKPC  .S2     RL33,B3,0         ; |132| 
||         STW     .D2T2   B4,*+SP(4)        ; |132| 

RL33:      ; CALL OCCURS {_dbg_output}       ; |132| 
DW$L$_dump_bignum$6$E:
;** --------------------------------------------------------------------------*
DW$L$_dump_bignum$7$B:
           CMPEQ   .L1     A10,0,A0          ; |132| 

   [ A0]   B       .S2     L51               ; |132| 
|| [!A0]   MVKL    .S1     SL8+0,A3          ; |161| 
|| [ A0]   AND     .L2     7,B10,B4          ; |162| 
|| [!A0]   MVK     .D2     0x1,B0            ; |162| nullify predicate

   [!A0]   CALL    .S2     _dbg_output       ; |161| 
|| [!A0]   MVKH    .S1     SL8+0,A3          ; |161| 
||         XOR     .D2X    1,A0,B11          ; |132| 
|| [ A0]   CMPEQ   .L2     B4,0,B4           ; |162| 

   [ A0]   AND     .L2     B11,B4,B0         ; |162| 
   [!B0]   BNOP    .S1     L52,2             ; |162| 
           ; BRANCHCC OCCURS {L51}           ; |132| 
DW$L$_dump_bignum$7$E:
;** --------------------------------------------------------------------------*
DW$L$_dump_bignum$8$B:
;** 161	-----------------------    dbg_output(", ");

           ADDKPC  .S2     RL34,B3,0         ; |161| 
||         STW     .D2T1   A3,*+SP(4)        ; |161| 

RL34:      ; CALL OCCURS {_dbg_output}       ; |161| 
           AND     .L2     7,B10,B4          ; |162| 
           CMPEQ   .L2     B4,0,B4           ; |162| 
           AND     .L2     B11,B4,B0         ; |162| 
   [!B0]   BNOP    .S1     L52,2             ; |162| 
DW$L$_dump_bignum$8$E:
;** --------------------------------------------------------------------------*
L51:    
DW$L$_dump_bignum$9$B:
;**	-----------------------g5:
;** 162	-----------------------    if ( !(((j&7) == 0)&U$17) ) goto g7;

   [ B0]   CALL    .S2     _dbg_output       ; |163| 
|| [ B0]   MVK     .S1     0x1,A0            ; |157| nullify predicate
|| [!B0]   CMPLT   .L1     A10,1,A0          ; |157| 
|| [!B0]   SUB     .D1     A10,1,A10         ; |157| 
|| [!B0]   ADD     .L2     1,B10,B10         ; |157| 

   [!A0]   BNOP    .S1     L50,1             ; |157| 
           ; BRANCHCC OCCURS {L52}           ; |162| 
DW$L$_dump_bignum$9$E:
;** --------------------------------------------------------------------------*
DW$L$_dump_bignum$10$B:
;** 163	-----------------------    dbg_output("\n");
           MVKL    .S1     SL9+0,A3          ; |163| 
           MVKH    .S1     SL9+0,A3          ; |163| 

           STW     .D2T1   A3,*+SP(4)        ; |163| 
||         ADDKPC  .S2     RL35,B3,0         ; |163| 

RL35:      ; CALL OCCURS {_dbg_output}       ; |163| 
DW$L$_dump_bignum$10$E:
;** --------------------------------------------------------------------------*
DW$L$_dump_bignum$11$B:
           CMPLT   .L1     A10,1,A0          ; |157| 
   [!A0]   B       .S1     L50               ; |157| 

           SUB     .L1     A10,1,A10         ; |157| 
||         ADD     .L2     1,B10,B10         ; |157| 

DW$L$_dump_bignum$11$E:
;** --------------------------------------------------------------------------*
L52:    
DW$L$_dump_bignum$12$B:
;**	-----------------------g7:
;** 157	-----------------------    ++j;
;** 157	-----------------------    if ( (--i) >= 0 ) goto g3;
   [!A0]   CALL    .S1     _bignum_byte      ; |159| 
	.dwpsn	"MISC.C",164,0
           NOP             3
           ; BRANCHCC OCCURS {L50}           ; |157| 
DW$L$_dump_bignum$12$E:
;** --------------------------------------------------------------------------*
L53:    
;**	-----------------------g8:
;** 165	-----------------------    return 0;

           LDDW    .D2T2   *+SP(24),B11:B10  ; |166| 
||         MV      .L2     B13,B3            ; |166| 
||         MV      .L1X    SP,A31            ; |166| 

           RET     .S2     B3                ; |166| 
||         LDDW    .D1T1   *+A31(16),A11:A10 ; |166| 
||         LDW     .D2T2   *+SP(12),B13      ; |166| 

           LDW     .D2T1   *++SP(32),A12     ; |166| 
           NOP             3
	.dwpsn	"MISC.C",166,1
           ZERO    .L1     A4                ; |165| 
           ; BRANCH OCCURS {B3}              ; |166| 

DW$111	.dwtag  DW_TAG_loop
	.dwattr DW$111, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\rsalib\MISC.asm:L50:1:1288598889")
	.dwattr DW$111, DW_AT_begin_file("MISC.C")
	.dwattr DW$111, DW_AT_begin_line(0x9d)
	.dwattr DW$111, DW_AT_end_line(0xa4)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_dump_bignum$5$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_dump_bignum$5$E)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$_dump_bignum$10$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$_dump_bignum$10$E)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$_dump_bignum$6$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$_dump_bignum$6$E)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$_dump_bignum$7$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$_dump_bignum$7$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_dump_bignum$8$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_dump_bignum$8$E)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_dump_bignum$9$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_dump_bignum$9$E)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_dump_bignum$11$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_dump_bignum$11$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_dump_bignum$12$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_dump_bignum$12$E)
	.dwendtag DW$111

	.dwattr DW$109, DW_AT_end_file("MISC.C")
	.dwattr DW$109, DW_AT_end_line(0xa6)
	.dwattr DW$109, DW_AT_end_column(0x01)
	.dwendtag DW$109

	.sect	".text"
	.global	_dump_key

DW$120	.dwtag  DW_TAG_subprogram, DW_AT_name("dump_key"), DW_AT_symbol_name("_dump_key")
	.dwattr DW$120, DW_AT_low_pc(_dump_key)
	.dwattr DW$120, DW_AT_high_pc(0x00)
	.dwattr DW$120, DW_AT_begin_file("MISC.C")
	.dwattr DW$120, DW_AT_begin_line(0xa8)
	.dwattr DW$120, DW_AT_begin_column(0x05)
	.dwattr DW$120, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$120, DW_AT_skeletal(0x01)
	.dwpsn	"MISC.C",169,1

;******************************************************************************
;* FUNCTION NAME: _dump_key                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,A19,  *
;*                           A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31, *
;*                           B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27, *
;*                           B28,B29,B30,B31                                  *
;*   Local Frame Size  : 8 Args + 0 Auto + 20 Save = 28 byte                  *
;******************************************************************************
_dump_key:
;** --------------------------------------------------------------------------*
DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$121, DW_AT_type(*DW$T$44)
	.dwattr DW$121, DW_AT_location[DW_OP_reg4]
;** 170	-----------------------    dbg_output("unsigned char public_key[]={\n");
;** 172	-----------------------    dump_int((unsigned)(*key).bits);
;** 173	-----------------------    dbg_output(C$1 = "\n");
;** 175	-----------------------    dump_bignum((*key).modulus);
;** 176	-----------------------    dbg_output(C$3 = ",\n");
;** 178	-----------------------    dump_bignum((*key).exponent);
;** 179	-----------------------    dbg_output(C$2 = "};\n");
;** 180	-----------------------    dbg_output(C$1);
;** 181	-----------------------    dbg_output(C$1);
;** 183	-----------------------    dbg_output("unsigned char private_key[]={\n");
;** 184	-----------------------    dump_int((unsigned)(*key).bits);
           CALL    .S1     _dbg_output       ; |170| 
           STW     .D2T1   A10,*SP--(32)     ; |169| 
           STDW    .D2T2   B13:B12,*+SP(24)  ; |169| 
           MVKL    .S2     SL10+0,B4         ; |170| 

           STDW    .D2T2   B11:B10,*+SP(16)  ; |169| 
||         MVKH    .S2     SL10+0,B4         ; |170| 

           ADDKPC  .S2     RL36,B3,0         ; |170| 
||         STW     .D2T2   B4,*+SP(4)        ; |170| 
||         MV      .L2     B3,B13            ; |169| 
||         MV      .L1     A4,A10            ; |169| 

RL36:      ; CALL OCCURS {_dbg_output}       ; |170| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _dump_int         ; |172| 
           LDW     .D1T1   *A10,A4           ; |172| 
           ADDKPC  .S2     RL37,B3,3         ; |172| 
RL37:      ; CALL OCCURS {_dump_int}         ; |172| 
           CALL    .S1     _dbg_output       ; |173| 
           ADDKPC  .S2     RL38,B3,1         ; |173| 
           MVKL    .S2     SL9+0,B10         ; |173| 
           MVKH    .S2     SL9+0,B10         ; |173| 
           STW     .D2T2   B10,*+SP(4)       ; |173| 
RL38:      ; CALL OCCURS {_dbg_output}       ; |173| 
           CALL    .S1     _dump_bignum      ; |175| 
           LDW     .D1T1   *+A10(8),A4       ; |175| 
           ADDKPC  .S2     RL39,B3,3         ; |175| 
RL39:      ; CALL OCCURS {_dump_bignum}      ; |175| 
           CALL    .S1     _dbg_output       ; |176| 
           ADDKPC  .S2     RL40,B3,1         ; |176| 
           MVKL    .S2     SL11+0,B11        ; |176| 
           MVKH    .S2     SL11+0,B11        ; |176| 
           STW     .D2T2   B11,*+SP(4)       ; |176| 
RL40:      ; CALL OCCURS {_dbg_output}       ; |176| 
           CALL    .S1     _dump_bignum      ; |178| 
           LDW     .D1T1   *+A10(12),A4      ; |178| 
           ADDKPC  .S2     RL41,B3,3         ; |178| 
RL41:      ; CALL OCCURS {_dump_bignum}      ; |178| 
           CALL    .S1     _dbg_output       ; |179| 
           ADDKPC  .S2     RL42,B3,1         ; |179| 
           MVKL    .S2     SL12+0,B12        ; |179| 
           MVKH    .S2     SL12+0,B12        ; |179| 
           STW     .D2T2   B12,*+SP(4)       ; |179| 
RL42:      ; CALL OCCURS {_dbg_output}       ; |179| 
           CALL    .S1     _dbg_output       ; |180| 
           ADDKPC  .S2     RL43,B3,1         ; |180| 
           STW     .D2T2   B10,*+SP(4)       ; |180| 
           NOP             2
RL43:      ; CALL OCCURS {_dbg_output}       ; |180| 
           CALL    .S1     _dbg_output       ; |181| 
           STW     .D2T2   B10,*+SP(4)       ; |181| 
           ADDKPC  .S2     RL44,B3,3         ; |181| 
RL44:      ; CALL OCCURS {_dbg_output}       ; |181| 
           CALL    .S1     _dbg_output       ; |183| 
           ADDKPC  .S2     RL45,B3,1         ; |183| 
           MVKL    .S2     SL13+0,B4         ; |183| 
           MVKH    .S2     SL13+0,B4         ; |183| 
           STW     .D2T2   B4,*+SP(4)        ; |183| 
RL45:      ; CALL OCCURS {_dbg_output}       ; |183| 
           CALL    .S1     _dump_int         ; |184| 
           LDW     .D1T1   *A10,A4           ; |184| 
           ADDKPC  .S2     RL46,B3,3         ; |184| 
RL46:      ; CALL OCCURS {_dump_int}         ; |184| 
;** --------------------------------------------------------------------------*
;** 185	-----------------------    dbg_output(C$1);
;** 186	-----------------------    dump_bignum((*key).modulus);
;** 187	-----------------------    dbg_output(C$3);
;** 188	-----------------------    dump_bignum((*key).private_exponent);
;** 189	-----------------------    dbg_output(C$2);
;** 190	-----------------------    dbg_output(C$1);
;** 191	-----------------------    return 0;
           CALL    .S1     _dbg_output       ; |185| 
           ADDKPC  .S2     RL47,B3,1         ; |185| 
           STW     .D2T2   B10,*+SP(4)       ; |185| 
           NOP             2
RL47:      ; CALL OCCURS {_dbg_output}       ; |185| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _dump_bignum      ; |186| 
           LDW     .D1T1   *+A10(8),A4       ; |186| 
           ADDKPC  .S2     RL48,B3,3         ; |186| 
RL48:      ; CALL OCCURS {_dump_bignum}      ; |186| 
           CALL    .S1     _dbg_output       ; |187| 
           ADDKPC  .S2     RL49,B3,1         ; |187| 
           STW     .D2T2   B11,*+SP(4)       ; |187| 
           NOP             2
RL49:      ; CALL OCCURS {_dbg_output}       ; |187| 
           CALL    .S1     _dump_bignum      ; |188| 
           LDW     .D1T1   *+A10(16),A4      ; |188| 
           ADDKPC  .S2     RL50,B3,3         ; |188| 
RL50:      ; CALL OCCURS {_dump_bignum}      ; |188| 
           CALL    .S1     _dbg_output       ; |189| 
           STW     .D2T2   B12,*+SP(4)       ; |189| 
           ADDKPC  .S2     RL51,B3,3         ; |189| 
RL51:      ; CALL OCCURS {_dbg_output}       ; |189| 
           CALL    .S1     _dbg_output       ; |190| 
           STW     .D2T2   B10,*+SP(4)       ; |190| 
           ADDKPC  .S2     RL52,B3,3         ; |190| 
RL52:      ; CALL OCCURS {_dbg_output}       ; |190| 
;** --------------------------------------------------------------------------*

           LDDW    .D2T2   *+SP(16),B11:B10  ; |192| 
||         MV      .L2     B13,B3            ; |192| 

           RET     .S2     B3                ; |192| 
||         LDDW    .D2T2   *+SP(24),B13:B12  ; |192| 

           LDW     .D2T1   *++SP(32),A10     ; |192| 
           NOP             3
	.dwpsn	"MISC.C",192,1
           ZERO    .L1     A4                ; |191| 
           ; BRANCH OCCURS {B3}              ; |192| 
	.dwattr DW$120, DW_AT_end_file("MISC.C")
	.dwattr DW$120, DW_AT_end_line(0xc0)
	.dwattr DW$120, DW_AT_end_column(0x01)
	.dwendtag DW$120

;; Inlined function references:
;; [  5] memcmp
;; [ 15] safefree
;; [ 16] random_byte
;; [ 17] dump_char
;; [ 21] buf_get_int
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"start",10,0
SL2:	.string	"len %d ",0
SL3:	.string	"decrypt failed",10,0
SL4:	.string	"equal",10,0
SL5:	.string	"not equal",10,0
SL6:	.string	"encrypt failed",10,0
SL7:	.string	"0x%02x",0
SL8:	.string	", ",0
SL9:	.string	10,0
SL10:	.string	"unsigned char public_key[]={",10,0
SL11:	.string	",",10,0
SL12:	.string	"};",10,0
SL13:	.string	"unsigned char private_key[]={",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_rand
	.global	_malloc
	.global	_realloc
	.global	_free
	.global	_freersakey
	.global	_rsa_encrypt_public
	.global	_rsa_decrypt_private
	.global	_bignum_from_bytes
	.global	_bignum_bitcount
	.global	_bignum_byte
	.global	_dbg_output
	.global	__divu

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Bignum"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$25	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$24)
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$25


DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$30


DW$T$31	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$37

DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x20)

DW$T$42	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$42


DW$T$45	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$24	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_address_class(0x20)
DW$T$51	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$51, DW_AT_address_class(0x20)

DW$T$54	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$54, DW_AT_byte_size(0x8d)
DW$138	.dwtag  DW_TAG_subrange_type
	.dwattr DW$138, DW_AT_upper_bound(0x8c)
	.dwendtag DW$T$54


DW$T$55	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$55, DW_AT_byte_size(0x10c)
DW$139	.dwtag  DW_TAG_subrange_type
	.dwattr DW$139, DW_AT_upper_bound(0x10b)
	.dwendtag DW$T$55

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$56	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)

DW$T$58	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$58


DW$T$59	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$T$59


DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$61


DW$T$63	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$63


DW$T$65	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
DW$152	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$T$69


DW$T$70	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
	.dwendtag DW$T$70


DW$T$71	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$44)
	.dwendtag DW$T$71

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_address_class(0x20)
DW$T$44	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$44, DW_AT_address_class(0x20)
DW$T$27	.dwtag  DW_TAG_const_type
DW$T$23	.dwtag  DW_TAG_const_type
	.dwattr DW$T$23, DW_AT_type(*DW$T$6)
DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$52, DW_AT_address_class(0x20)
DW$T$20	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$20, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$20, DW_AT_byte_size(0x01)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("RSAKey")
	.dwattr DW$T$22, DW_AT_byte_size(0x24)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$158, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$159, DW_AT_name("bytes"), DW_AT_symbol_name("_bytes")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$160, DW_AT_name("modulus"), DW_AT_symbol_name("_modulus")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$161, DW_AT_name("exponent"), DW_AT_symbol_name("_exponent")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$162, DW_AT_name("private_exponent"), DW_AT_symbol_name("_private_exponent")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$163, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$164, DW_AT_name("q"), DW_AT_symbol_name("_q")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$165, DW_AT_name("iqmp"), DW_AT_symbol_name("_iqmp")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$166, DW_AT_name("comment"), DW_AT_symbol_name("_comment")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


	.dwattr DW$56, DW_AT_external(0x01)
	.dwattr DW$56, DW_AT_type(*DW$T$10)
	.dwattr DW$45, DW_AT_external(0x01)
	.dwattr DW$45, DW_AT_type(*DW$T$10)
	.dwattr DW$109, DW_AT_external(0x01)
	.dwattr DW$109, DW_AT_type(*DW$T$10)
	.dwattr DW$101, DW_AT_external(0x01)
	.dwattr DW$103, DW_AT_external(0x01)
	.dwattr DW$103, DW_AT_type(*DW$T$10)
	.dwattr DW$120, DW_AT_external(0x01)
	.dwattr DW$120, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_external(0x01)
	.dwattr DW$67, DW_AT_type(*DW$T$10)
	.dwattr DW$68, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_type(*DW$T$3)
	.dwattr DW$95, DW_AT_external(0x01)
	.dwattr DW$95, DW_AT_type(*DW$T$3)
	.dwattr DW$70, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$167, DW_AT_location[DW_OP_reg0]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$168, DW_AT_location[DW_OP_reg1]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$169, DW_AT_location[DW_OP_reg2]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$170, DW_AT_location[DW_OP_reg3]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$171, DW_AT_location[DW_OP_reg4]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$172, DW_AT_location[DW_OP_reg5]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$173, DW_AT_location[DW_OP_reg6]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$174, DW_AT_location[DW_OP_reg7]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$175, DW_AT_location[DW_OP_reg8]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$176, DW_AT_location[DW_OP_reg9]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$177, DW_AT_location[DW_OP_reg10]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$178, DW_AT_location[DW_OP_reg11]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$179, DW_AT_location[DW_OP_reg12]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$180, DW_AT_location[DW_OP_reg13]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$181, DW_AT_location[DW_OP_reg14]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$182, DW_AT_location[DW_OP_reg15]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$183, DW_AT_location[DW_OP_reg16]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$184, DW_AT_location[DW_OP_reg17]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$185, DW_AT_location[DW_OP_reg18]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$186, DW_AT_location[DW_OP_reg19]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$187, DW_AT_location[DW_OP_reg20]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$188, DW_AT_location[DW_OP_reg21]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$189, DW_AT_location[DW_OP_reg22]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$190, DW_AT_location[DW_OP_reg23]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$191, DW_AT_location[DW_OP_reg24]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$192, DW_AT_location[DW_OP_reg25]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$193, DW_AT_location[DW_OP_reg26]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$194, DW_AT_location[DW_OP_reg27]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$195, DW_AT_location[DW_OP_reg28]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$196, DW_AT_location[DW_OP_reg29]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$197, DW_AT_location[DW_OP_reg30]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$198, DW_AT_location[DW_OP_reg31]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x20]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x21]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x22]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x23]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x24]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x25]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x26]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x27]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x28]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$208, DW_AT_location[DW_OP_regx 0x29]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$209, DW_AT_location[DW_OP_regx 0x2a]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$210, DW_AT_location[DW_OP_regx 0x2b]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x2c]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x2d]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x2e]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x2f]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x30]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x31]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x32]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x33]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x34]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x35]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x36]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x37]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x38]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x39]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x3a]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x3b]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x3c]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x3d]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x3e]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x3f]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x40]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x41]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x42]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x43]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x44]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x45]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x46]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x47]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x48]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x49]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x4a]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x4b]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x4c]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x4d]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x4e]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x4f]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x50]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x51]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x52]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x53]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x54]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$252, DW_AT_location[DW_OP_regx 0x55]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$253, DW_AT_location[DW_OP_regx 0x56]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$254, DW_AT_location[DW_OP_regx 0x57]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$255, DW_AT_location[DW_OP_regx 0x58]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$256, DW_AT_location[DW_OP_regx 0x59]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$257, DW_AT_location[DW_OP_regx 0x5a]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$258, DW_AT_location[DW_OP_regx 0x5b]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$259, DW_AT_location[DW_OP_regx 0x5c]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$260, DW_AT_location[DW_OP_regx 0x5d]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$261, DW_AT_location[DW_OP_regx 0x5e]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$262, DW_AT_location[DW_OP_regx 0x5f]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$263, DW_AT_location[DW_OP_regx 0x60]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$264, DW_AT_location[DW_OP_regx 0x61]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$265, DW_AT_location[DW_OP_regx 0x62]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$266, DW_AT_location[DW_OP_regx 0x63]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$267, DW_AT_location[DW_OP_regx 0x64]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$268, DW_AT_location[DW_OP_regx 0x65]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$269, DW_AT_location[DW_OP_regx 0x66]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$270, DW_AT_location[DW_OP_regx 0x67]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$271, DW_AT_location[DW_OP_regx 0x68]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$272, DW_AT_location[DW_OP_regx 0x69]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$273, DW_AT_location[DW_OP_regx 0x6a]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$274, DW_AT_location[DW_OP_regx 0x6b]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$275, DW_AT_location[DW_OP_regx 0x6c]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$276, DW_AT_location[DW_OP_regx 0x6d]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$277, DW_AT_location[DW_OP_regx 0x6e]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$278, DW_AT_location[DW_OP_regx 0x6f]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$279, DW_AT_location[DW_OP_regx 0x70]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$280, DW_AT_location[DW_OP_regx 0x71]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$281, DW_AT_location[DW_OP_regx 0x72]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$282, DW_AT_location[DW_OP_regx 0x73]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$283, DW_AT_location[DW_OP_regx 0x74]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$284, DW_AT_location[DW_OP_regx 0x75]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$285, DW_AT_location[DW_OP_regx 0x76]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$286, DW_AT_location[DW_OP_regx 0x77]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$287, DW_AT_location[DW_OP_regx 0x78]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$288, DW_AT_location[DW_OP_regx 0x79]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$289, DW_AT_location[DW_OP_regx 0x7a]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$290, DW_AT_location[DW_OP_regx 0x7b]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$291, DW_AT_location[DW_OP_regx 0x7c]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$292, DW_AT_location[DW_OP_regx 0x7d]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$293, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

