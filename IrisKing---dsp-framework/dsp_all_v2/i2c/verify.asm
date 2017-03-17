;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Jul 30 12:22:35 2007                                *
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
	.dwattr DW$CU, DW_AT_name("verify.c")
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
	.field  	218,8			; _public_key[8] @ 64
	.field  	239,8			; _public_key[9] @ 72
	.field  	188,8			; _public_key[10] @ 80
	.field  	226,8			; _public_key[11] @ 88
	.field  	191,8			; _public_key[12] @ 96
	.field  	221,8			; _public_key[13] @ 104
	.field  	25,8			; _public_key[14] @ 112
	.field  	179,8			; _public_key[15] @ 120
	.field  	158,8			; _public_key[16] @ 128
	.field  	192,8			; _public_key[17] @ 136
	.field  	201,8			; _public_key[18] @ 144
	.field  	215,8			; _public_key[19] @ 152
	.field  	62,8			; _public_key[20] @ 160
	.field  	233,8			; _public_key[21] @ 168
	.field  	221,8			; _public_key[22] @ 176
	.field  	93,8			; _public_key[23] @ 184
	.field  	171,8			; _public_key[24] @ 192
	.field  	98,8			; _public_key[25] @ 200
	.field  	245,8			; _public_key[26] @ 208
	.field  	224,8			; _public_key[27] @ 216
	.field  	15,8			; _public_key[28] @ 224
	.field  	162,8			; _public_key[29] @ 232
	.field  	197,8			; _public_key[30] @ 240
	.field  	207,8			; _public_key[31] @ 248
	.field  	130,8			; _public_key[32] @ 256
	.field  	89,8			; _public_key[33] @ 264
	.field  	172,8			; _public_key[34] @ 272
	.field  	224,8			; _public_key[35] @ 280
	.field  	213,8			; _public_key[36] @ 288
	.field  	123,8			; _public_key[37] @ 296
	.field  	95,8			; _public_key[38] @ 304
	.field  	149,8			; _public_key[39] @ 312
	.field  	63,8			; _public_key[40] @ 320
	.field  	157,8			; _public_key[41] @ 328
	.field  	247,8			; _public_key[42] @ 336
	.field  	215,8			; _public_key[43] @ 344
	.field  	153,8			; _public_key[44] @ 352
	.field  	89,8			; _public_key[45] @ 360
	.field  	172,8			; _public_key[46] @ 368
	.field  	229,8			; _public_key[47] @ 376
	.field  	221,8			; _public_key[48] @ 384
	.field  	176,8			; _public_key[49] @ 392
	.field  	26,8			; _public_key[50] @ 400
	.field  	106,8			; _public_key[51] @ 408
	.field  	156,8			; _public_key[52] @ 416
	.field  	33,8			; _public_key[53] @ 424
	.field  	172,8			; _public_key[54] @ 432
	.field  	90,8			; _public_key[55] @ 440
	.field  	145,8			; _public_key[56] @ 448
	.field  	223,8			; _public_key[57] @ 456
	.field  	234,8			; _public_key[58] @ 464
	.field  	60,8			; _public_key[59] @ 472
	.field  	177,8			; _public_key[60] @ 480
	.field  	128,8			; _public_key[61] @ 488
	.field  	138,8			; _public_key[62] @ 496
	.field  	28,8			; _public_key[63] @ 504
	.field  	43,8			; _public_key[64] @ 512
	.field  	200,8			; _public_key[65] @ 520
	.field  	118,8			; _public_key[66] @ 528
	.field  	170,8			; _public_key[67] @ 536
	.field  	172,8			; _public_key[68] @ 544
	.field  	104,8			; _public_key[69] @ 552
	.field  	89,8			; _public_key[70] @ 560
	.field  	82,8			; _public_key[71] @ 568
	.field  	84,8			; _public_key[72] @ 576
	.field  	66,8			; _public_key[73] @ 584
	.field  	93,8			; _public_key[74] @ 592
	.field  	245,8			; _public_key[75] @ 600
	.field  	205,8			; _public_key[76] @ 608
	.field  	213,8			; _public_key[77] @ 616
	.field  	123,8			; _public_key[78] @ 624
	.field  	231,8			; _public_key[79] @ 632
	.field  	62,8			; _public_key[80] @ 640
	.field  	176,8			; _public_key[81] @ 648
	.field  	190,8			; _public_key[82] @ 656
	.field  	140,8			; _public_key[83] @ 664
	.field  	124,8			; _public_key[84] @ 672
	.field  	123,8			; _public_key[85] @ 680
	.field  	128,8			; _public_key[86] @ 688
	.field  	197,8			; _public_key[87] @ 696
	.field  	42,8			; _public_key[88] @ 704
	.field  	169,8			; _public_key[89] @ 712
	.field  	141,8			; _public_key[90] @ 720
	.field  	59,8			; _public_key[91] @ 728
	.field  	130,8			; _public_key[92] @ 736
	.field  	81,8			; _public_key[93] @ 744
	.field  	153,8			; _public_key[94] @ 752
	.field  	116,8			; _public_key[95] @ 760
	.field  	50,8			; _public_key[96] @ 768
	.field  	34,8			; _public_key[97] @ 776
	.field  	177,8			; _public_key[98] @ 784
	.field  	77,8			; _public_key[99] @ 792
	.field  	46,8			; _public_key[100] @ 800
	.field  	117,8			; _public_key[101] @ 808
	.field  	138,8			; _public_key[102] @ 816
	.field  	52,8			; _public_key[103] @ 824
	.field  	241,8			; _public_key[104] @ 832
	.field  	1,8			; _public_key[105] @ 840
	.field  	31,8			; _public_key[106] @ 848
	.field  	224,8			; _public_key[107] @ 856
	.field  	18,8			; _public_key[108] @ 864
	.field  	212,8			; _public_key[109] @ 872
	.field  	120,8			; _public_key[110] @ 880
	.field  	40,8			; _public_key[111] @ 888
	.field  	137,8			; _public_key[112] @ 896
	.field  	126,8			; _public_key[113] @ 904
	.field  	204,8			; _public_key[114] @ 912
	.field  	158,8			; _public_key[115] @ 920
	.field  	81,8			; _public_key[116] @ 928
	.field  	145,8			; _public_key[117] @ 936
	.field  	8,8			; _public_key[118] @ 944
	.field  	83,8			; _public_key[119] @ 952
	.field  	162,8			; _public_key[120] @ 960
	.field  	153,8			; _public_key[121] @ 968
	.field  	7,8			; _public_key[122] @ 976
	.field  	139,8			; _public_key[123] @ 984
	.field  	100,8			; _public_key[124] @ 992
	.field  	22,8			; _public_key[125] @ 1000
	.field  	17,8			; _public_key[126] @ 1008
	.field  	44,8			; _public_key[127] @ 1016
	.field  	37,8			; _public_key[128] @ 1024
	.field  	54,8			; _public_key[129] @ 1032
	.field  	183,8			; _public_key[130] @ 1040
	.field  	235,8			; _public_key[131] @ 1048
	.field  	22,8			; _public_key[132] @ 1056
	.field  	107,8			; _public_key[133] @ 1064
	.field  	73,8			; _public_key[134] @ 1072
	.field  	243,8			; _public_key[135] @ 1080
	.field  	1,8			; _public_key[136] @ 1088
	.field  	0,8			; _public_key[137] @ 1096
	.field  	0,8			; _public_key[138] @ 1104
	.field  	0,8			; _public_key[139] @ 1112
	.field  	143,8			; _public_key[140] @ 1120
IR_1:	.set	141


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$1, DW_AT_type(*DW$T$3)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$1


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("freersakey"), DW_AT_symbol_name("_freersakey")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$5


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("rsa_decrypt_public"), DW_AT_symbol_name("_rsa_decrypt_public")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$7


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Init"), DW_AT_symbol_name("_SHA_Init")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$13


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Bytes"), DW_AT_symbol_name("_SHA_Bytes")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$15


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("SHA_Final"), DW_AT_symbol_name("_SHA_Final")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$19


DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("dbg_output"), DW_AT_symbol_name("_dbg_output")
	.dwattr DW$22, DW_AT_type(*DW$T$10)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
DW$24	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$22


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("build_public_key"), DW_AT_symbol_name("_build_public_key")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
_public_key:	.usect	".far",141,8
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("public_key"), DW_AT_symbol_name("_public_key")
	.dwattr DW$26, DW_AT_type(*DW$T$47)
	.dwattr DW$26, DW_AT_location[DW_OP_addr _public_key]
_key:	.usect	".far",36,4
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$27, DW_AT_type(*DW$T$22)
	.dwattr DW$27, DW_AT_location[DW_OP_addr _key]
_p:	.usect	".far",4,4
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$28, DW_AT_type(*DW$T$32)
	.dwattr DW$28, DW_AT_location[DW_OP_addr _p]
	.sect	".const"
	.align	8
_$T0$1:
	.field  	66,8			; _$T0$1[0] @ 0
	.field  	101,8			; _$T0$1[1] @ 8
	.field  	105,8			; _$T0$1[2] @ 16
	.field  	106,8			; _$T0$1[3] @ 24
	.field  	105,8			; _$T0$1[4] @ 32
	.field  	110,8			; _$T0$1[5] @ 40
	.field  	103,8			; _$T0$1[6] @ 48
	.field  	32,8			; _$T0$1[7] @ 56
	.field  	73,8			; _$T0$1[8] @ 64
	.field  	114,8			; _$T0$1[9] @ 72
	.field  	105,8			; _$T0$1[10] @ 80
	.field  	115,8			; _$T0$1[11] @ 88
	.field  	107,8			; _$T0$1[12] @ 96
	.field  	105,8			; _$T0$1[13] @ 104
	.field  	110,8			; _$T0$1[14] @ 112
	.field  	103,8			; _$T0$1[15] @ 120
	.field  	32,8			; _$T0$1[16] @ 128
	.field  	84,8			; _$T0$1[17] @ 136
	.field  	101,8			; _$T0$1[18] @ 144
	.field  	99,8			; _$T0$1[19] @ 152
	.field  	104,8			; _$T0$1[20] @ 160
	.field  	46,8			; _$T0$1[21] @ 168
	.field  	32,8			; _$T0$1[22] @ 176
	.field  	76,8			; _$T0$1[23] @ 184
	.field  	116,8			; _$T0$1[24] @ 192
	.field  	100,8			; _$T0$1[25] @ 200
	.field  	46,8			; _$T0$1[26] @ 208
	.field  	0,8			; _$T0$1[27] @ 216

DW$29	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1"), DW_AT_symbol_name("_$T0$1")
	.dwattr DW$29, DW_AT_type(*DW$T$50)
	.dwattr DW$29, DW_AT_location[DW_OP_addr _$T0$1]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe --gen_opt_info=2 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI4802 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI4804 --opt_info_filename=D:/pred/dsp/vport/Debug/verify.nfo 
	.sect	".text"
	.global	_verify_data

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("verify_data"), DW_AT_symbol_name("_verify_data")
	.dwattr DW$30, DW_AT_low_pc(_verify_data)
	.dwattr DW$30, DW_AT_high_pc(0x00)
	.dwattr DW$30, DW_AT_begin_file("verify.c")
	.dwattr DW$30, DW_AT_begin_line(0x1f)
	.dwattr DW$30, DW_AT_begin_column(0x05)
	.dwattr DW$30, DW_AT_frame_base[DW_OP_breg31 288]
	.dwattr DW$30, DW_AT_skeletal(0x01)
	.dwpsn	"verify.c",32,1

;******************************************************************************
;* FUNCTION NAME: _verify_data                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,SP,A16,A17,A18,A19,A20,   *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B13,DP,SP,A16,A17,A18,A19,A20,*
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 8 Args + 260 Auto + 16 Save = 284 byte               *
;******************************************************************************
_verify_data:
;** --------------------------------------------------------------------------*
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$31, DW_AT_type(*DW$T$40)
	.dwattr DW$31, DW_AT_location[DW_OP_reg4]
;** 35	-----------------------    p = C$1 = &key;
;** 37	-----------------------    build_public_key(&public_key, C$1);
;** 40	-----------------------    if ( data_len = rsa_decrypt_public(buf+28, (int)buf[27], &decrypt, 256, C$1) ) goto g3;
           CALL    .S1     _build_public_key ; |37| 

           MVKL    .S1     _p,A3             ; |35| 
||         ADDK    .S2     -288,SP           ; |32| 

           STW     .D2T2   B10,*+SP(288)     ; |32| 
||         MVKL    .S1     _public_key,A5    ; |37| 
||         MVKL    .S2     _key,B4           ; |35| 

           MVKH    .S1     _p,A3             ; |35| 
||         STW     .D2T1   A11,*+SP(284)     ; |32| 
||         MVKH    .S2     _key,B4           ; |35| 

           MV      .L2     B4,B10            ; |35| 
||         STW     .D2T2   B13,*+SP(276)     ; |32| 
||         MVKH    .S1     _public_key,A5    ; |37| 

           ADDKPC  .S2     RL0,B3,0          ; |37| 
||         STW     .D1T2   B10,*A3           ; |35| 
||         MV      .L1     A5,A4             ; |37| 
||         MV      .L2     B3,B13            ; |32| 
||         MV      .S1     A4,A11            ; |32| 
||         STW     .D2T1   A10,*+SP(280)     ; |32| 

RL0:       ; CALL OCCURS {_build_public_key}  ; |37| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _rsa_decrypt_public ; |40| 
           LDBU    .D1T2   *+A11(27),B4      ; |40| 
           ADD     .D2     SP,16,B5          ; |40| 
           MVK     .S2     0x100,B6          ; |40| 
           MV      .L1X    B10,A8            ; |40| 

           ADDKPC  .S2     RL1,B3,0          ; |40| 
||         MV      .L1X    B5,A6             ; |40| 
||         ADD     .D1     A11,28,A4         ; |40| 

RL1:       ; CALL OCCURS {_rsa_decrypt_public}  ; |40| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |42| 
||         MVKL    .S2     SL1+0,B4          ; |42| 
||         MV      .S1     A4,A10            ; |40| 

           MVKH    .S2     SL1+0,B4          ; |42| 
|| [ A0]   MVK     .S1     27,A3             ; |44| 
||         MV      .L1     A0,A1             ; guard predicate rewrite

   [ A0]   B       .S1     L1                ; |40| 
|| [ A1]   ADD     .L2     15,SP,B6          ; |246| 
|| [ A1]   MVK     .S2     0x1b,B5           ; |249| 

   [ A0]   CMPEQ   .L1     A10,A3,A0         ; |44| 
|| [!A0]   CALL    .S1     _dbg_output       ; |42| 
|| [ A1]   SUB     .D1     A11,1,A3          ; |243| 

   [!A1]   MVK     .L1     0x1,A0            ; |243| nullify predicate
   [!A0]   BNOP    .S1     L5,2              ; |44| 
           ; BRANCHCC OCCURS {L1}            ; |40| 
;** --------------------------------------------------------------------------*
;** 42	-----------------------    dbg_output("decrypt failed\n");

           ADDKPC  .S2     RL2,B3,0          ; |42| 
||         STW     .D2T2   B4,*+SP(4)        ; |42| 

RL2:       ; CALL OCCURS {_dbg_output}       ; |42| 

           MVK     .S1     27,A3             ; |44| 
||         ADD     .L2     15,SP,B6          ; |246| 
||         MVK     .S2     0x1b,B5           ; |249| 

           CMPEQ   .L1     A10,A3,A0         ; |44| 
||         SUB     .S1     A11,1,A3          ; |243| 

   [!A0]   BNOP    .S1     L5,2              ; |44| 
;** --------------------------------------------------------------------------*
L1:    
;**	-----------------------g3:
;** 44	-----------------------    if ( data_len != 27 ) goto g9;
;** 243	-----------------------    mem1 = &buf[-1];  // [2]
;** 246	-----------------------    mem2 = &decrypt[-1];  // [2]
;** 249	-----------------------    L$1 = 27;  // [2]
;**  	-----------------------    #pragma MUST_ITERATE(1, 27, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)

   [ A0]   MV      .L1X    B6,A4
|| [ A0]   MV      .L2X    A3,B4

   [ A0]   LDBU    .D2T2   *++B4,B6          ; |249| (P) <0,0> 
|| [ A0]   LDBU    .D1T1   *++A4,A3          ; |249| (P) <0,0> 

           NOP             1
           ; BRANCHCC OCCURS {L5}            ; |44| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 249	-----------------------    cp = *(++mem1);  // [2]
;** 249	-----------------------    U$32 = *(++mem2);  // [2]
;** 249	-----------------------    if ( cp != U$32 ) goto g7;  // [2]
;** 249	-----------------------    if ( --L$1 ) goto g5;  // [2]
           MVC     .S2     CSR,B7
           AND     .L2     -2,B7,B8
           MVC     .S2     B8,CSR            ; interrupts off
           CMPEQ   .L1X    B6,A3,A0          ; |249| (P) <0,5>  ^ 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 249
;*      Loop closing brace source line   : 249
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 27                    
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
L2:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L3:    ; PIPED LOOP KERNEL
DW$L$_verify_data$8$B:

           ZERO    .L2     B0                ; |249| <0,6>  ^ 
|| [ A0]   SUB     .S2     B5,1,B5           ; |249| <0,6>  ^ 

   [ A0]   MV      .L2     B5,B0             ; |249| <0,7>  ^ 

   [ B0]   BNOP    .S1     L3,4              ; |249| <0,8> 
|| [ B0]   LDBU    .D2T2   *++B4,B6          ; |249| <1,0> 
|| [ B0]   LDBU    .D1T1   *++A4,A3          ; |249| <1,0> 

           CMPEQ   .L1X    B6,A3,A0          ; |249| <1,5>  ^ 
DW$L$_verify_data$8$E:
;** --------------------------------------------------------------------------*
L4:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;**	-----------------------g7:
;** 250	-----------------------    if ( cp != U$32 ) goto g9;  // [2]

           CMPEQ   .L2X    B6,A3,B0          ; |250| 
||         MVKL    .S1     SL2+0,A4          ; |51| 
||         MVK     .L1     0x1,A10           ; |52| 
||         MVC     .S2     B7,CSR            ; interrupts on

   [!B0]   B       .S2     L6                ; |250| 
|| [!B0]   MVKL    .S1     SL3+0,A3          ; |46| 

   [ B0]   CALL    .S2     _dbg_output       ; |51| 
|| [!B0]   MVKH    .S1     SL3+0,A3          ; |46| 

   [!B0]   CALL    .S2     _dbg_output       ; |46| 
||         MVKH    .S1     SL2+0,A4          ; |51| 

           NOP             3
           ; BRANCHCC OCCURS {L6}            ; |250| 
;** --------------------------------------------------------------------------*
;** 51	-----------------------    dbg_output("data integrity ok\n");
;** 52	-----------------------    return 1;

           STW     .D2T1   A4,*+SP(4)        ; |51| 
||         ADDKPC  .S2     RL3,B3,0          ; |51| 

RL3:       ; CALL OCCURS {_dbg_output}       ; |51| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+SP(288),B10     ; |57| 

           LDW     .D2T1   *+SP(284),A11     ; |57| 
||         MV      .L2     B13,B3            ; |57| 

           RET     .S2     B3                ; |57| 
||         LDW     .D2T2   *+SP(276),B13     ; |57| 

           LDW     .D2T1   *+SP(280),A10     ; |57| 
||         MV      .L1     A10,A4            ; |47| 

           NOP             3
           ADDK    .S2     288,SP            ; |57| 
           ; BRANCH OCCURS {B3}              ; |57| 
;** --------------------------------------------------------------------------*
L5:    
           CALL    .S1     _dbg_output       ; |46| 
           NOP             1
           MVKL    .S1     SL3+0,A3          ; |46| 
           MVKH    .S1     SL3+0,A3          ; |46| 
;** --------------------------------------------------------------------------*
L6:    
;**	-----------------------g9:
;** 46	-----------------------    dbg_output("data integrity error\n");
;** 47	-----------------------    return 0;
           ADDKPC  .S2     RL4,B3,0          ; |46| 
           STW     .D2T1   A3,*+SP(4)        ; |46| 
RL4:       ; CALL OCCURS {_dbg_output}       ; |46| 
;** --------------------------------------------------------------------------*
           LDW     .D2T1   *+SP(284),A11     ; |57| 

           LDW     .D2T1   *+SP(280),A10     ; |57| 
||         MV      .L2     B13,B3            ; |57| 

           RET     .S2     B3                ; |57| 
||         LDW     .D2T2   *+SP(288),B10     ; |57| 

           LDW     .D2T2   *+SP(276),B13     ; |57| 
           NOP             2
           ADDK    .S2     288,SP            ; |57| 
	.dwpsn	"verify.c",57,1
           ZERO    .L1     A4                ; |47| 
           ; BRANCH OCCURS {B3}              ; |57| 

DW$32	.dwtag  DW_TAG_loop
	.dwattr DW$32, DW_AT_name("D:\pred\dsp\i2c\verify.asm:L3:1:1185769355")
	.dwattr DW$32, DW_AT_begin_file("C:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$32, DW_AT_begin_line(0xf9)
	.dwattr DW$32, DW_AT_end_line(0xf9)
DW$33	.dwtag  DW_TAG_loop_range
	.dwattr DW$33, DW_AT_low_pc(DW$L$_verify_data$8$B)
	.dwattr DW$33, DW_AT_high_pc(DW$L$_verify_data$8$E)
	.dwendtag DW$32

	.dwattr DW$30, DW_AT_end_file("verify.c")
	.dwattr DW$30, DW_AT_end_line(0x39)
	.dwattr DW$30, DW_AT_end_column(0x01)
	.dwendtag DW$30

	.sect	".text"
	.global	_generate_key

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("generate_key"), DW_AT_symbol_name("_generate_key")
	.dwattr DW$34, DW_AT_low_pc(_generate_key)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("verify.c")
	.dwattr DW$34, DW_AT_begin_line(0x3b)
	.dwattr DW$34, DW_AT_begin_column(0x05)
	.dwattr DW$34, DW_AT_frame_base[DW_OP_breg31 168]
	.dwattr DW$34, DW_AT_skeletal(0x01)
	.dwpsn	"verify.c",60,1

;******************************************************************************
;* FUNCTION NAME: _generate_key                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,DP,SP,A16,A17,A18,A19,A20,A21,*
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 152 Auto + 12 Save = 164 byte               *
;******************************************************************************
_generate_key:
;** --------------------------------------------------------------------------*
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("key"), DW_AT_symbol_name("_key")
	.dwattr DW$35, DW_AT_type(*DW$T$40)
	.dwattr DW$35, DW_AT_location[DW_OP_reg4]
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf"), DW_AT_symbol_name("_buf")
	.dwattr DW$36, DW_AT_type(*DW$T$40)
	.dwattr DW$36, DW_AT_location[DW_OP_reg20]
;** 61	-----------------------    init[] = {...};
;** 67	-----------------------    SHA_Init(&s);
;** 107	-----------------------    s = &((char *)init)[-1];  // [1]
;** 106	-----------------------    n = 0xffffffffu;  // [1]
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 109	-----------------------    ++n;  // [1]
;** 109	-----------------------    if ( *(++s) ) goto g2;  // [1]
;** 110	-----------------------    SHA_Bytes(&s, &init, (int)n);  // [1]
           ADDK    .S2     -168,SP           ; |60| 
           STW     .D2T1   A10,*+SP(160)     ; |60| 

           STW     .D2T2   B13,*+SP(164)     ; |60| 
||         MVKL    .S1     _$T0$1,A3         ; |61| 

           STW     .D2T1   A11,*+SP(168)     ; |60| 
||         MVKH    .S1     _$T0$1,A3         ; |61| 

           LDDW    .D1T1   *+A3(16),A17:A16  ; |61| 
           LDW     .D1T1   *+A3(24),A5       ; |61| 
           LDDW    .D1T1   *+A3(8),A7:A6     ; |61| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 109
;*      Loop opening brace source line   : 109
;*      Loop closing brace source line   : 109
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 1
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     0        1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0        1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 6  Schedule found with 2 iterations in parallel
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
L7:    ; PIPED LOOP PROLOG

           CALL    .S2     _SHA_Init         ; |67| 
||         LDDW    .D1T1   *A3,A9:A8         ; |61| 

           ADDAW   .D2     SP,15,B6          ; |67| 
||         ADD     .L2     8,SP,B5           ; |61| 

           STDW    .D2T1   A17:A16,*+B5(16)  ; |61| 
           STW     .D2T1   A5,*+B5(24)       ; |61| 

           MV      .L1X    B4,A10            ; |60| 
||         STDW    .D2T1   A7:A6,*+B5(8)     ; |61| 

           MV      .L1     A4,A11            ; |60| 
||         MV      .L2     B3,B13            ; |60| 
||         MV      .S1X    B6,A4             ; |67| 
||         ADDKPC  .S2     RL5,B3,0          ; |67| 
||         STDW    .D2T1   A9:A8,*B5         ; |61| 

RL5:       ; CALL OCCURS {_SHA_Init}         ; |67| 
           NOP             1
           ADD     .L2     7,SP,B4           ; |107| 
           LDB     .D2T2   *++B4,B0          ; |109| (P) <0,0>  ^ 
           NOP             1
           MVC     .S2     CSR,B5
           AND     .L2     -2,B5,B6
	.dwpsn	"C:/CCStudio_v3.1/C6000/cgtools/include/string.h",109,0

           MVK     .L1     0xffffffff,A3     ; |106| 
||         MVC     .S2     B6,CSR            ; interrupts off

;** --------------------------------------------------------------------------*
L8:    ; PIPED LOOP KERNEL
DW$L$_generate_key$3$B:
   [ B0]   B       .S1     L8                ; |109| <0,5> 
   [ B0]   LDB     .D2T2   *++B4,B0          ; |109| <1,0>  ^ 
           NOP             3
           ADD     .L1     1,A3,A3           ; |109| <0,10> 
DW$L$_generate_key$3$E:
;** --------------------------------------------------------------------------*
L9:    ; PIPED LOOP EPILOG
;** 69	-----------------------    SHA_Bytes(&s, (void * const)buf, 28);
;** 70	-----------------------    SHA_Final(&s, &dig);
;** 72	-----------------------    memcpy((void * const)key, &dig, 8u);
;** 75	-----------------------    s$6 = _mem4((void *)key);
;** 75	-----------------------    s$10 = ((unsigned short *)dig)[4]^(unsigned short)s$6;
;** 75	-----------------------    *key = s$10;
;** 75	-----------------------    key[1] = s$10>>8;
;** 75	-----------------------    s$11 = ((unsigned short *)dig)[5]^s$6>>16;
;** 75	-----------------------    key[2] = s$11;
;** 75	-----------------------    key[3] = s$11>>8;
;**  	-----------------------    return;

           MV      .L1     A3,A6             ; |110| 
||         ADD     .L2     8,SP,B4           ; |110| 
||         CALL    .S2     _SHA_Bytes        ; |110| 

           ADDAW   .D2     SP,15,B5          ; |110| 
||         MVC     .S2     B5,CSR            ; interrupts on

           ADDKPC  .S2     RL6,B3,0          ; |110| 
           MV      .L1X    B5,A4             ; |110| 
           NOP             2
RL6:       ; CALL OCCURS {_SHA_Bytes}        ; |110| 
           CALL    .S2     _SHA_Bytes        ; |69| 

           MV      .L2X    A10,B4            ; |69| 
||         ADDKPC  .S2     RL7,B3,1          ; |69| 
||         MVK     .S1     0x1c,A6           ; |69| 
||         ADDAW   .D2     SP,15,B5          ; |69| 

           MV      .L1X    B5,A4             ; |69| 
           NOP             2
RL7:       ; CALL OCCURS {_SHA_Bytes}        ; |69| 
           CALL    .S2     _SHA_Final        ; |70| 

           ADDKPC  .S2     RL8,B3,0          ; |70| 
||         ADDAW   .D2     SP,15,B5          ; |70| 

           ADDAD   .D2     SP,5,B4           ; |70| 
           MV      .L1X    B5,A4             ; |70| 
           NOP             2
RL8:       ; CALL OCCURS {_SHA_Final}        ; |70| 
           NOP             1

           MV      .L2     B13,B3            ; |78| 
||         ADDAD   .D2     SP,5,B4           ; |72| 

           LDNDW   .D2T2   *B4,B5:B4         ; |72| 
           NOP             4
           STNDW   .D1T2   B5:B4,*A11        ; |72| 
           LDNW    .D1T1   *A11,A3           ; |75| 
           LDHU    .D2T2   *+SP(48),B5       ; |75| 
           LDHU    .D2T2   *+SP(50),B4       ; |75| 
           LDW     .D2T1   *+SP(160),A10     ; |78| 
           LDW     .D2T2   *+SP(164),B13     ; |78| 
           EXTU    .S1     A3,16,16,A4       ; |75| 

           XOR     .L1X    A4,B5,A3          ; |75| 
||         SHRU    .S1     A3,16,A4          ; |75| 

           EXT     .S1     A3,16,24,A5       ; |75| 

           STB     .D1T1   A5,*+A11(1)       ; |75| 
||         EXT     .S1     A3,16,16,A3       ; |75| 
||         XOR     .L2X    A4,B4,B4          ; |75| 

           STB     .D1T1   A3,*A11           ; |75| 
||         EXT     .S2     B4,16,24,B5       ; |75| 

           STB     .D1T2   B5,*+A11(3)       ; |75| 
||         EXT     .S2     B4,16,16,B4       ; |75| 

           LDW     .D2T1   *+SP(168),A11     ; |78| 
||         STB     .D1T2   B4,*+A11(2)       ; |75| 
||         RET     .S2     B3                ; |78| 

           ADDK    .S2     168,SP            ; |78| 
	.dwpsn	"verify.c",78,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |78| 

DW$37	.dwtag  DW_TAG_loop
	.dwattr DW$37, DW_AT_name("D:\pred\dsp\i2c\verify.asm:L8:1:1185769355")
	.dwattr DW$37, DW_AT_begin_file("C:/CCStudio_v3.1/C6000/cgtools/include/string.h")
	.dwattr DW$37, DW_AT_begin_line(0x6d)
	.dwattr DW$37, DW_AT_end_line(0x6d)
DW$38	.dwtag  DW_TAG_loop_range
	.dwattr DW$38, DW_AT_low_pc(DW$L$_generate_key$3$B)
	.dwattr DW$38, DW_AT_high_pc(DW$L$_generate_key$3$E)
	.dwendtag DW$37

	.dwattr DW$34, DW_AT_end_file("verify.c")
	.dwattr DW$34, DW_AT_end_line(0x4e)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendtag DW$34

;; Inlined function references:
;; [  1] strlen
;; [  2] memcmp
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"decrypt failed",10,0
SL2:	.string	"data integrity ok",10,0
SL3:	.string	"data integrity error",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_rsa_decrypt_public
	.global	_SHA_Init
	.global	_SHA_Bytes
	.global	_SHA_Final
	.global	_dbg_output
	.global	_build_public_key

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$30	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$30

DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x20)

DW$T$33	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$33


DW$T$36	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$38


DW$T$41	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$41

DW$T$40	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$40, DW_AT_address_class(0x20)

DW$T$47	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$47, DW_AT_byte_size(0x8d)
DW$49	.dwtag  DW_TAG_subrange_type
	.dwattr DW$49, DW_AT_upper_bound(0x8c)
	.dwendtag DW$T$47


DW$T$50	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$48)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$50, DW_AT_byte_size(0x1c)
DW$50	.dwtag  DW_TAG_subrange_type
	.dwattr DW$50, DW_AT_upper_bound(0x1b)
	.dwendtag DW$T$50

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$55	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$55


DW$T$56	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
DW$60	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$58


DW$T$60	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$60


DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)

DW$T$63	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$63

DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)

DW$T$67	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$66)
	.dwendtag DW$T$67

DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_address_class(0x20)
DW$T$66	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$65)
	.dwattr DW$T$66, DW_AT_address_class(0x20)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("RSAKey")
	.dwattr DW$T$22, DW_AT_byte_size(0x24)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$65, DW_AT_name("bits"), DW_AT_symbol_name("_bits")
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_name("bytes"), DW_AT_symbol_name("_bytes")
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_name("modulus"), DW_AT_symbol_name("_modulus")
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$68, DW_AT_name("exponent"), DW_AT_symbol_name("_exponent")
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_name("private_exponent"), DW_AT_symbol_name("_private_exponent")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$70, DW_AT_name("p"), DW_AT_symbol_name("_p")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$71, DW_AT_name("q"), DW_AT_symbol_name("_q")
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$72, DW_AT_name("iqmp"), DW_AT_symbol_name("_iqmp")
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$73, DW_AT_name("comment"), DW_AT_symbol_name("_comment")
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$32, DW_AT_address_class(0x20)
DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$35, DW_AT_address_class(0x20)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Bignum"), DW_AT_type(*DW$T$3)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$27	.dwtag  DW_TAG_const_type
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$48	.dwtag  DW_TAG_const_type
	.dwattr DW$T$48, DW_AT_type(*DW$T$6)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$20	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$20, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$20, DW_AT_byte_size(0x01)
DW$T$65	.dwtag  DW_TAG_const_type
	.dwattr DW$T$65, DW_AT_type(*DW$T$20)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("SHA_State"), DW_AT_type(*DW$T$26)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)

DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x60)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$74, DW_AT_name("h"), DW_AT_symbol_name("_h")
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$75, DW_AT_name("block"), DW_AT_symbol_name("_block")
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$10)
	.dwattr DW$76, DW_AT_name("blkused"), DW_AT_symbol_name("_blkused")
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$77, DW_AT_name("lenhi"), DW_AT_symbol_name("_lenhi")
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$78, DW_AT_name("lenlo"), DW_AT_symbol_name("_lenlo")
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x40)
DW$79	.dwtag  DW_TAG_subrange_type
	.dwattr DW$79, DW_AT_upper_bound(0x3f)
	.dwendtag DW$T$25

DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

DW$T$24	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$24, DW_AT_byte_size(0x14)
DW$80	.dwtag  DW_TAG_subrange_type
	.dwattr DW$80, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$24


	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_type(*DW$T$10)
	.dwattr DW$30, DW_AT_external(0x01)
	.dwattr DW$30, DW_AT_type(*DW$T$10)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$81, DW_AT_location[DW_OP_reg0]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$82, DW_AT_location[DW_OP_reg1]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$83, DW_AT_location[DW_OP_reg2]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$84, DW_AT_location[DW_OP_reg3]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$85, DW_AT_location[DW_OP_reg4]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$86, DW_AT_location[DW_OP_reg5]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$87, DW_AT_location[DW_OP_reg6]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$88, DW_AT_location[DW_OP_reg7]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$89, DW_AT_location[DW_OP_reg8]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$90, DW_AT_location[DW_OP_reg9]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$91, DW_AT_location[DW_OP_reg10]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$92, DW_AT_location[DW_OP_reg11]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$93, DW_AT_location[DW_OP_reg12]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$94, DW_AT_location[DW_OP_reg13]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$95, DW_AT_location[DW_OP_reg14]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$96, DW_AT_location[DW_OP_reg15]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$97, DW_AT_location[DW_OP_reg16]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$98, DW_AT_location[DW_OP_reg17]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$99, DW_AT_location[DW_OP_reg18]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$100, DW_AT_location[DW_OP_reg19]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$101, DW_AT_location[DW_OP_reg20]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$102, DW_AT_location[DW_OP_reg21]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$103, DW_AT_location[DW_OP_reg22]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$104, DW_AT_location[DW_OP_reg23]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$105, DW_AT_location[DW_OP_reg24]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$106, DW_AT_location[DW_OP_reg25]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$107, DW_AT_location[DW_OP_reg26]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$108, DW_AT_location[DW_OP_reg27]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$109, DW_AT_location[DW_OP_reg28]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$110, DW_AT_location[DW_OP_reg29]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$111, DW_AT_location[DW_OP_reg30]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$112, DW_AT_location[DW_OP_reg31]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x20]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x21]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x22]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x23]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x24]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x25]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x26]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x27]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x28]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x29]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x2a]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x2b]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x2c]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x2d]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x2e]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x2f]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x30]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x31]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x32]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x33]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x34]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x35]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x36]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x37]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x38]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x39]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x3a]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x3b]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x3c]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x3d]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x3e]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x3f]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x40]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x41]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x42]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x43]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x44]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x45]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x46]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x47]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x48]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x49]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x4a]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x4b]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x4c]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x4d]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x4e]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x4f]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x50]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x51]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x52]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x53]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x54]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x55]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x56]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x57]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x58]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x59]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x5a]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x5b]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x5c]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x5d]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x5e]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x5f]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x60]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x61]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x62]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x63]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x64]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x65]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x66]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x67]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x68]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x69]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x6a]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x6b]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x6c]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x6d]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x6e]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x6f]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x70]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x71]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x72]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x73]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x74]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$198, DW_AT_location[DW_OP_regx 0x75]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$199, DW_AT_location[DW_OP_regx 0x76]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$200, DW_AT_location[DW_OP_regx 0x77]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$201, DW_AT_location[DW_OP_regx 0x78]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$202, DW_AT_location[DW_OP_regx 0x79]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$203, DW_AT_location[DW_OP_regx 0x7a]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$204, DW_AT_location[DW_OP_regx 0x7b]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$205, DW_AT_location[DW_OP_regx 0x7c]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$206, DW_AT_location[DW_OP_regx 0x7d]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$207, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

