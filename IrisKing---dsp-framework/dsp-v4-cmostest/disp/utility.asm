;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Thu Feb 17 13:26:13 2011                                *
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
	.dwattr DW$CU, DW_AT_name("utility.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	IR_1,32
	.field  	_left_logo+0,32
	.field  	-16776961,32			; _left_logo[0] @ 0
	.field  	-16776961,32			; _left_logo[1] @ 32
	.field  	-1073741821,32			; _left_logo[2] @ 64
	.field  	-1073741821,32			; _left_logo[3] @ 96
	.field  	-1073741821,32			; _left_logo[4] @ 128
	.field  	-1073741821,32			; _left_logo[5] @ 160
	.field  	-1073725949,32			; _left_logo[6] @ 192
	.field  	-1073725949,32			; _left_logo[7] @ 224
	.field  	15872,32			; _left_logo[8] @ 256
	.field  	15872,32			; _left_logo[9] @ 288
	.field  	15872,32			; _left_logo[10] @ 320
	.field  	15872,32			; _left_logo[11] @ 352
	.field  	15872,32			; _left_logo[12] @ 384
	.field  	15872,32			; _left_logo[13] @ 416
	.field  	15872,32			; _left_logo[14] @ 448
	.field  	15872,32			; _left_logo[15] @ 480
	.field  	15872,32			; _left_logo[16] @ 512
	.field  	15872,32			; _left_logo[17] @ 544
	.field  	15872,32			; _left_logo[18] @ 576
	.field  	15872,32			; _left_logo[19] @ 608
	.field  	8388096,32			; _left_logo[20] @ 640
	.field  	8388096,32			; _left_logo[21] @ 672
	.field  	8388096,32			; _left_logo[22] @ 704
	.field  	8388096,32			; _left_logo[23] @ 736
	.field  	-1065353725,32			; _left_logo[24] @ 768
	.field  	-1073741821,32			; _left_logo[25] @ 800
	.field  	-1073741821,32			; _left_logo[26] @ 832
	.field  	-1073741821,32			; _left_logo[27] @ 864
	.field  	-1073741821,32			; _left_logo[28] @ 896
	.field  	-1073741821,32			; _left_logo[29] @ 928
	.field  	-16776961,32			; _left_logo[30] @ 960
	.field  	-16776961,32			; _left_logo[31] @ 992
IR_1:	.set	128

	.sect	".cinit"
	.align	8
	.field  	IR_2,32
	.field  	_right_logo+0,32
	.field  	-16776961,32			; _right_logo[0] @ 0
	.field  	-16776961,32			; _right_logo[1] @ 32
	.field  	-1073741821,32			; _right_logo[2] @ 64
	.field  	-1073741821,32			; _right_logo[3] @ 96
	.field  	-1073741821,32			; _right_logo[4] @ 128
	.field  	-1073741821,32			; _right_logo[5] @ 160
	.field  	-1073217661,32			; _right_logo[6] @ 192
	.field  	-1069547645,32			; _right_logo[7] @ 224
	.field  	8388480,32			; _right_logo[8] @ 256
	.field  	8388480,32			; _right_logo[9] @ 288
	.field  	8130432,32			; _right_logo[10] @ 320
	.field  	8130432,32			; _right_logo[11] @ 352
	.field  	8130432,32			; _right_logo[12] @ 384
	.field  	8388480,32			; _right_logo[13] @ 416
	.field  	4194176,32			; _right_logo[14] @ 448
	.field  	1048448,32			; _right_logo[15] @ 480
	.field  	524160,32			; _right_logo[16] @ 512
	.field  	1019776,32			; _right_logo[17] @ 544
	.field  	2035584,32			; _right_logo[18] @ 576
	.field  	4067200,32			; _right_logo[19] @ 608
	.field  	4067200,32			; _right_logo[20] @ 640
	.field  	8130432,32			; _right_logo[21] @ 672
	.field  	8130432,32			; _right_logo[22] @ 704
	.field  	16256896,32			; _right_logo[23] @ 736
	.field  	-1057484925,32			; _right_logo[24] @ 768
	.field  	-1073741821,32			; _right_logo[25] @ 800
	.field  	-1073741821,32			; _right_logo[26] @ 832
	.field  	-1073741821,32			; _right_logo[27] @ 864
	.field  	-1073741821,32			; _right_logo[28] @ 896
	.field  	-1073741821,32			; _right_logo[29] @ 928
	.field  	-16776961,32			; _right_logo[30] @ 960
	.field  	-16776961,32			; _right_logo[31] @ 992
IR_2:	.set	128

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_stamp_bmp+0,32
	.field  	0,32			; _stamp_bmp @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_stamp_mask+0,32
	.field  	0,32			; _stamp_mask @ 0

	.sect	".cinit"
	.align	8
	.field  	IR_3,32
	.field  	_onelinebuffer+0,32
	.field  	0,16			; _onelinebuffer[0] @ 0
IR_3:	.set	2


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert"), DW_AT_symbol_name("__assert")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$4, DW_AT_type(*DW$T$3)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$4


DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("_amemd8_const"), DW_AT_symbol_name("__amemd8_const")
	.dwattr DW$8, DW_AT_type(*DW$T$87)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$8


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("_amemd8"), DW_AT_symbol_name("__amemd8")
	.dwattr DW$10, DW_AT_type(*DW$T$83)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$10


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_copy"), DW_AT_symbol_name("_DAT_copy")
	.dwattr DW$12, DW_AT_type(*DW$T$34)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$12


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_wait"), DW_AT_symbol_name("_DAT_wait")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$16


DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("DAT_copy2d"), DW_AT_symbol_name("_DAT_copy2d")
	.dwattr DW$18, DW_AT_type(*DW$T$34)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$18


DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
_cb_h_thick:	.usect	".far",4,4
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("cb_h_thick"), DW_AT_symbol_name("_cb_h_thick")
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_location[DW_OP_addr _cb_h_thick]
_cb_v_thick:	.usect	".far",4,4
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("cb_v_thick"), DW_AT_symbol_name("_cb_v_thick")
	.dwattr DW$27, DW_AT_type(*DW$T$10)
	.dwattr DW$27, DW_AT_location[DW_OP_addr _cb_v_thick]
_cb_top:	.usect	".far",4,4
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("cb_top"), DW_AT_symbol_name("_cb_top")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_location[DW_OP_addr _cb_top]
_cb_bottom:	.usect	".far",4,4
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("cb_bottom"), DW_AT_symbol_name("_cb_bottom")
	.dwattr DW$29, DW_AT_type(*DW$T$10)
	.dwattr DW$29, DW_AT_location[DW_OP_addr _cb_bottom]
_cb_left:	.usect	".far",4,4
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("cb_left"), DW_AT_symbol_name("_cb_left")
	.dwattr DW$30, DW_AT_type(*DW$T$10)
	.dwattr DW$30, DW_AT_location[DW_OP_addr _cb_left]
_cb_right:	.usect	".far",4,4
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("cb_right"), DW_AT_symbol_name("_cb_right")
	.dwattr DW$31, DW_AT_type(*DW$T$10)
	.dwattr DW$31, DW_AT_location[DW_OP_addr _cb_right]
_cb_color:	.usect	".far",4,4
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("cb_color"), DW_AT_symbol_name("_cb_color")
	.dwattr DW$32, DW_AT_type(*DW$T$10)
	.dwattr DW$32, DW_AT_location[DW_OP_addr _cb_color]
_left_logo:	.usect	".far",128,8
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("left_logo"), DW_AT_symbol_name("_left_logo")
	.dwattr DW$33, DW_AT_type(*DW$T$78)
	.dwattr DW$33, DW_AT_location[DW_OP_addr _left_logo]
_right_logo:	.usect	".far",128,8
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("right_logo"), DW_AT_symbol_name("_right_logo")
	.dwattr DW$34, DW_AT_type(*DW$T$78)
	.dwattr DW$34, DW_AT_location[DW_OP_addr _right_logo]
_color_background:	.usect	"l2_section",8,8
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("color_background"), DW_AT_symbol_name("_color_background")
	.dwattr DW$35, DW_AT_type(*DW$T$17)
	.dwattr DW$35, DW_AT_location[DW_OP_addr _color_background]
_color_l_edge:	.usect	"l2_section",8,8
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("color_l_edge"), DW_AT_symbol_name("_color_l_edge")
	.dwattr DW$36, DW_AT_type(*DW$T$17)
	.dwattr DW$36, DW_AT_location[DW_OP_addr _color_l_edge]
_color_r_edge:	.usect	"l2_section",8,8
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("color_r_edge"), DW_AT_symbol_name("_color_r_edge")
	.dwattr DW$37, DW_AT_type(*DW$T$17)
	.dwattr DW$37, DW_AT_location[DW_OP_addr _color_r_edge]
_color_bk:	.usect	".far",2,2
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("color_bk"), DW_AT_symbol_name("_color_bk")
	.dwattr DW$38, DW_AT_type(*DW$T$9)
	.dwattr DW$38, DW_AT_location[DW_OP_addr _color_bk]
	.global	_L2_buffer
_L2_buffer:	.usect	"l2_section",32768,128
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("L2_buffer"), DW_AT_symbol_name("_L2_buffer")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _L2_buffer]
	.dwattr DW$39, DW_AT_type(*DW$T$55)
	.dwattr DW$39, DW_AT_external(0x01)
_stamp_left:	.usect	".far",4,4
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("stamp_left"), DW_AT_symbol_name("_stamp_left")
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_location[DW_OP_addr _stamp_left]
_stamp_top:	.usect	".far",4,4
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("stamp_top"), DW_AT_symbol_name("_stamp_top")
	.dwattr DW$41, DW_AT_type(*DW$T$10)
	.dwattr DW$41, DW_AT_location[DW_OP_addr _stamp_top]
_stamp_width:	.usect	".far",4,4
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("stamp_width"), DW_AT_symbol_name("_stamp_width")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_location[DW_OP_addr _stamp_width]
_stamp_height:	.usect	".far",4,4
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("stamp_height"), DW_AT_symbol_name("_stamp_height")
	.dwattr DW$43, DW_AT_type(*DW$T$10)
	.dwattr DW$43, DW_AT_location[DW_OP_addr _stamp_height]
_stamp_bmp:	.usect	".far",4,4
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("stamp_bmp"), DW_AT_symbol_name("_stamp_bmp")
	.dwattr DW$44, DW_AT_type(*DW$T$41)
	.dwattr DW$44, DW_AT_location[DW_OP_addr _stamp_bmp]
_stamp_mask:	.usect	".far",4,4
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("stamp_mask"), DW_AT_symbol_name("_stamp_mask")
	.dwattr DW$45, DW_AT_type(*DW$T$37)
	.dwattr DW$45, DW_AT_location[DW_OP_addr _stamp_mask]
	.global	_onelinebuffer
_onelinebuffer:	.usect	".far",1280,8
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("onelinebuffer"), DW_AT_symbol_name("_onelinebuffer")
	.dwattr DW$46, DW_AT_location[DW_OP_addr _onelinebuffer]
	.dwattr DW$46, DW_AT_type(*DW$T$62)
	.dwattr DW$46, DW_AT_external(0x01)
	.sect	".const"
	.align	8
_$T0$1:
	.field  	2416,16			; _$T0$1[0] @ 0
	.field  	2416,16			; _$T0$1[1] @ 16
	.field  	2416,16			; _$T0$1[2] @ 32
	.field  	2416,16			; _$T0$1[3] @ 48

DW$47	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1"), DW_AT_symbol_name("_$T0$1")
	.dwattr DW$47, DW_AT_type(*DW$T$64)
	.dwattr DW$47, DW_AT_location[DW_OP_addr _$T0$1]
	.sect	".const"
	.align	8
_$T1$2:
	.field  	2416,16			; _$T1$2[0] @ 0
	.field  	54970,16			; _$T1$2[1] @ 16
	.field  	54970,16			; _$T1$2[2] @ 32
	.field  	54970,16			; _$T1$2[3] @ 48

DW$48	.dwtag  DW_TAG_variable, DW_AT_name("$T1$2"), DW_AT_symbol_name("_$T1$2")
	.dwattr DW$48, DW_AT_type(*DW$T$64)
	.dwattr DW$48, DW_AT_location[DW_OP_addr _$T1$2]
	.sect	".const"
	.align	8
_$T2$3:
	.field  	54970,16			; _$T2$3[0] @ 0
	.field  	54970,16			; _$T2$3[1] @ 16
	.field  	54970,16			; _$T2$3[2] @ 32
	.field  	2416,16			; _$T2$3[3] @ 48

DW$49	.dwtag  DW_TAG_variable, DW_AT_name("$T2$3"), DW_AT_symbol_name("_$T2$3")
	.dwattr DW$49, DW_AT_type(*DW$T$64)
	.dwattr DW$49, DW_AT_location[DW_OP_addr _$T2$3]
;	E:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI7322 C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI7324 
	.sect	".text"
	.global	_make_mosaic

DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("make_mosaic"), DW_AT_symbol_name("_make_mosaic")
	.dwattr DW$50, DW_AT_low_pc(_make_mosaic)
	.dwattr DW$50, DW_AT_high_pc(0x00)
	.dwattr DW$50, DW_AT_begin_file("utility.c")
	.dwattr DW$50, DW_AT_begin_line(0x20c)
	.dwattr DW$50, DW_AT_begin_column(0x06)
	.dwattr DW$50, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$50, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",525,1

;******************************************************************************
;* FUNCTION NAME: _make_mosaic                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A14,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17, *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A14,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,A16,  *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                  *
;******************************************************************************
_make_mosaic:
;** --------------------------------------------------------------------------*
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("org"), DW_AT_symbol_name("_org")
	.dwattr DW$51, DW_AT_type(*DW$T$37)
	.dwattr DW$51, DW_AT_location[DW_OP_reg4]
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mosaic"), DW_AT_symbol_name("_mosaic")
	.dwattr DW$52, DW_AT_type(*DW$T$37)
	.dwattr DW$52, DW_AT_location[DW_OP_reg20]
;** 537	-----------------------    p_org = org;
;** 538	-----------------------    p_mosaic = mosaic;
;**  	-----------------------    K$6 = 1280u;
;**  	-----------------------    K$11 = 640;
;** 539	-----------------------    L$1 = 60;
;**  	-----------------------    K$8 = &onelinebuffer[0];
;**  	-----------------------    #pragma MUST_ITERATE(60, 60, 60)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S2     _memset           ; |541| 
||         MVKL    .S1     _onelinebuffer,A3

           MVKH    .S1     _onelinebuffer,A3
||         STW     .D2T2   B13,*SP--(32)     ; |525| 
||         MV      .L1X    SP,A31            ; |525| 

           MVK     .S2     0x3c,B4           ; |539| 
||         MV      .L2     B4,B11            ; |525| 
||         STDW    .D2T2   B11:B10,*+SP(24)

           MV      .L2X    A3,B10
||         MV      .L1X    B3,A14
||         STW     .D1T1   A14,*-A31(16)

	.dwpsn	"utility.c",539,0

           MV      .L1X    B4,A10
||         MVK     .S1     0x500,A11
||         STDW    .D1T1   A11:A10,*-A31(24)
||         MV      .L2X    A4,B12            ; |525| 
||         STW     .D2T2   B12,*+SP(20)
||         MVK     .S2     0x280,B13

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L1
;** --------------------------------------------------------------------------*
L1:    
DW$L$_make_mosaic$2$B:
	.dwpsn	"utility.c",540,0
;**	-----------------------g2:
;** 541	-----------------------    memset(K$8, 0, K$6);
;** 542	-----------------------    L$2 = 8;
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MV      .L1     A11,A6            ; |541| 
||         ZERO    .L2     B4                ; |541| 
||         MV      .S1X    B10,A4            ; |541| 
||         ADDKPC  .S2     RL0,B3,0          ; |541| 

RL0:       ; CALL OCCURS {_memset}           ; |541| 
DW$L$_make_mosaic$2$E:
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$3$B:
           MVK     .L2     0x8,B1            ; |542| 
DW$L$_make_mosaic$3$E:
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$4$B:
	.dwpsn	"utility.c",542,0

           SUB     .L2     B10,B12,B4        ; |545| 
||         SUB     .S2     B12,B10,B5        ; |545| 

DW$L$_make_mosaic$4$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L2
;** --------------------------------------------------------------------------*
L2:    
DW$L$_make_mosaic$5$B:
	.dwpsn	"utility.c",543,0
;**	-----------------------g3:
;** 545	-----------------------    if ( (K$8-p_org >= K$11)|(p_org-K$8 >= (int)K$6) ) goto g6;
           CMPLT   .L2     B4,B13,B4         ; |545| 
           CMPLT   .L1X    B5,A11,A3         ; |545| 
           AND     .L1X    B4,A3,A0

   [!A0]   BNOP    .S1     L6,5              ; |545| 
|| [!A0]   MV      .L1X    B10,A6
|| [!A0]   MV      .L2     B12,B16
|| [!A0]   MVK     .S2     0x50,B0

           ; BRANCHCC OCCURS {L6}            ; |545| 
DW$L$_make_mosaic$5$E:
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$6$B:
;**  	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(8)
;**  	-----------------------    U$21 = K$8;
;**  	-----------------------    U$33 = &p_org[-8];
;**  	-----------------------    L$3 = 80;
;**  	-----------------------    #pragma MUST_ITERATE(80, 80, 80)
;**  	-----------------------    #pragma LOOP_FLAGS(4106u)
;**	-----------------------g5:
;** 547	-----------------------    s$60 = U$21[1];
;** 547	-----------------------    s$61 = U$21[2];
;** 547	-----------------------    s$62 = U$21[3];
;** 547	-----------------------    *U$21 = *(U$33 += 8)+*U$21;
;** 547	-----------------------    U$21[1] = U$33[1]+s$60;
;** 547	-----------------------    U$21[2] = U$33[2]+s$61;
;** 547	-----------------------    U$21[3] = U$33[3]+s$62;
;** 547	-----------------------    s$64 = U$21[5];
;** 547	-----------------------    s$65 = U$21[6];
;** 547	-----------------------    s$66 = U$21[7];
;** 547	-----------------------    U$21[4] = U$33[4]+U$21[4];
;** 547	-----------------------    U$21[5] = U$33[5]+s$64;
;** 547	-----------------------    U$21[6] = U$33[6]+s$65;
;** 547	-----------------------    U$21[7] = U$33[7]+s$66;
;** 545	-----------------------    U$21 += 8;
;** 545	-----------------------    if ( --L$3 ) goto g5;

           MVC     .S2     CSR,B8
||         MV      .L2     B10,B4
||         MVK     .S1     78,A0
||         SUB     .L1X    B12,8,A4

           AND     .L2     -2,B8,B5
||         LDHU    .D2T2   *+B4(4),B6        ; |547| (P) <0,0> 
||         MV      .L1X    B10,A3

           MVC     .S2     B5,CSR            ; interrupts off
||         LDHU    .D2T2   *+B4(6),B7        ; |547| (P) <0,1> 

DW$L$_make_mosaic$6$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 545
;*      Loop opening brace source line   : 546
;*      Loop closing brace source line   : 548
;*      Loop Unroll Multiple             : 8x
;*      Known Minimum Trip Count         : 80                    
;*      Known Maximum Trip Count         : 80                    
;*      Known Max Trip Count Factor      : 80
;*      Loop Carried Dependency Bound(^) : 56
;*      Unpartitioned Resource Bound     : 12
;*      Partitioned Resource Bound(*)    : 12
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                    12*      12*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths            12*      12*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     6        6     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 56 Schedule found with 2 iterations in parallel
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
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count     : 2 (after unrolling)
;*----------------------------------------------------------------------------*
L3:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L4:    ; PIPED LOOP KERNEL
DW$L$_make_mosaic$8$B:
	.dwpsn	"utility.c",546,0

           LDHU    .D2T2   *B4++(16),B5      ; |547| <0,3> 
||         LDBU    .D1T1   *++A4(8),A5       ; |547| <0,3>  ^ 

           NOP             4

           LDHU    .D1T1   *+A3(2),A5        ; |547| <0,8> 
||         ADD     .L1X    B5,A5,A5          ; |547| <0,8>  ^ 

           STH     .D1T1   A5,*A3++(16)      ; |547| <0,9>  ^ 
           LDBU    .D1T2   *+A4(1),B5        ; |547| <0,10>  ^ 
           NOP             4
           ADD     .L1X    A5,B5,A5          ; |547| <0,15>  ^ Define a twin register
           STH     .D1T1   A5,*-A3(14)       ; |547| <0,16>  ^ 
           LDBU    .D1T1   *+A4(2),A5        ; |547| <0,17>  ^ 
           NOP             4
           ADD     .L1X    B6,A5,A5          ; |547| <0,22>  ^ 
           STH     .D1T1   A5,*-A3(12)       ; |547| <0,23>  ^ 
           LDBU    .D1T1   *+A4(3),A5        ; |547| <0,24>  ^ 
           NOP             4
           ADD     .L2X    B7,A5,B5          ; |547| <0,29>  ^ 
           STH     .D2T2   B5,*-B4(10)       ; |547| <0,30>  ^ 

           LDHU    .D2T2   *-B4(8),B5        ; |547| <0,31> 
||         LDBU    .D1T1   *+A4(4),A5        ; |547| <0,31>  ^ 

           NOP             4
           ADD     .L2X    B5,A5,B5          ; |547| <0,36>  ^ 
           STH     .D2T2   B5,*-B4(8)        ; |547| <0,37>  ^ 

           LDHU    .D2T2   *-B4(6),B5        ; |547| <0,38> 
||         LDBU    .D1T1   *+A4(5),A5        ; |547| <0,38>  ^ 

           NOP             4
           ADD     .L2X    B5,A5,B5          ; |547| <0,43>  ^ 
           STH     .D2T2   B5,*-B4(6)        ; |547| <0,44>  ^ 

           LDHU    .D2T2   *-B4(4),B5        ; |547| <0,45> 
||         LDBU    .D1T1   *+A4(6),A5        ; |547| <0,45>  ^ 

           NOP             4
           ADD     .L2X    B5,A5,B5          ; |547| <0,50>  ^ 
           STH     .D2T2   B5,*-B4(4)        ; |547| <0,51>  ^ 

           LDHU    .D2T2   *-B4(2),B5        ; |547| <0,52> 
||         LDBU    .D1T1   *+A4(7),A5        ; |547| <0,52>  ^ 

   [ A0]   BDEC    .S1     L4,A0             ; |545| <0,53> 
           NOP             2
           LDHU    .D2T2   *+B4(4),B6        ; |547| <1,0> 

           ADD     .L1X    B5,A5,A5          ; |547| <0,57>  ^ 
||         LDHU    .D2T2   *+B4(6),B7        ; |547| <1,1> 

	.dwpsn	"utility.c",548,0
           STH     .D2T1   A5,*-B4(2)        ; |547| <0,58>  ^ 
DW$L$_make_mosaic$8$E:
;** --------------------------------------------------------------------------*
L5:    ; PIPED LOOP EPILOG
;** 545	-----------------------    goto g8;

           LDBU    .D1T1   *++A4(8),A5       ; |547| (E) <1,3>  ^ 
||         LDHU    .D2T2   *B4++(16),B5      ; |547| (E) <1,3> 

           NOP             4

           ADD     .L1X    B5,A5,A5          ; |547| (E) <1,8>  ^ 
||         LDHU    .D1T1   *+A3(2),A5        ; |547| (E) <1,8> 

           STH     .D1T1   A5,*A3++(16)      ; |547| (E) <1,9>  ^ 
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$10$B:

           LDBU    .D1T2   *+A4(1),B5        ; |547| (E) <1,10>  ^ 
||         MVC     .S2     B8,CSR            ; interrupts on
||         SUB     .L2     B1,1,B1           ; |542| 

           NOP             3
           ADDK    .S2     640,B12
           ADD     .L1X    A5,B5,A5          ; |547| (E) <1,15>  ^ Define a twin register
           STH     .D1T1   A5,*-A3(14)       ; |547| (E) <1,16>  ^ 
           LDBU    .D1T1   *+A4(2),A5        ; |547| (E) <1,17>  ^ 
           NOP             4
           ADD     .L1X    B6,A5,A5          ; |547| (E) <1,22>  ^ 
           STH     .D1T1   A5,*-A3(12)       ; |547| (E) <1,23>  ^ 

           LDBU    .D1T1   *+A4(3),A3        ; |547| (E) <1,24>  ^ 
||         LDHU    .D2T2   *-B4(8),B31       ; |547| (E) <1,31> 

           NOP             1
           LDHU    .D2T2   *-B4(6),B30       ; |547| (E) <1,38> 
           LDHU    .D2T2   *-B4(4),B29       ; |547| (E) <1,45> 
           LDHU    .D2T2   *-B4(2),B28       ; |547| (E) <1,52> 
           ADD     .L2X    B7,A3,B5          ; |547| (E) <1,29>  ^ 
           STH     .D2T2   B5,*-B4(10)       ; |547| (E) <1,30>  ^ 
           LDBU    .D1T1   *+A4(4),A3        ; |547| (E) <1,31>  ^ 
           NOP             4
           ADD     .L2X    B31,A3,B5         ; |547| (E) <1,36>  ^ 
           STH     .D2T2   B5,*-B4(8)        ; |547| (E) <1,37>  ^ 
           LDBU    .D1T1   *+A4(5),A3        ; |547| (E) <1,38>  ^ 
           NOP             4
           ADD     .L2X    B30,A3,B5         ; |547| (E) <1,43>  ^ 
           STH     .D2T2   B5,*-B4(6)        ; |547| (E) <1,44>  ^ 
           LDBU    .D1T1   *+A4(6),A3        ; |547| (E) <1,45>  ^ 
           NOP             4
           ADD     .L2X    B29,A3,B5         ; |547| (E) <1,50>  ^ 
           STH     .D2T2   B5,*-B4(4)        ; |547| (E) <1,51>  ^ 
           LDBU    .D1T1   *+A4(7),A3        ; |547| (E) <1,52>  ^ 
           B       .S1     L8                ; |545| 
   [ B1]   BNOP    .S1     L2,2              ; |542| 
           ADD     .L1X    B28,A3,A3         ; |547| (E) <1,57>  ^ 
           STH     .D2T1   A3,*-B4(2)        ; |547| (E) <1,58>  ^ 
           ; BRANCH OCCURS {L8}              ; |545| 
;**	-----------------------g6:
;**  	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(8)
;**  	-----------------------    U$21 = K$8;
;**  	-----------------------    U$33 = p_org;
;**  	-----------------------    L$4 = 80;
;**  	-----------------------    #pragma[60] (p_org != onelinebuffer;)
;**  	-----------------------    #pragma MUST_ITERATE(80, 80, 80)
;**  	-----------------------    #pragma LOOP_FLAGS(4162u)
DW$L$_make_mosaic$10$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 545
;*      Loop opening brace source line   : 546
;*      Loop closing brace source line   : 548
;*      Loop Unroll Multiple             : 8x
;*      Known Minimum Trip Count         : 80                    
;*      Known Maximum Trip Count         : 80                    
;*      Known Max Trip Count Factor      : 80
;*      Loop Carried Dependency Bound(^) : 10
;*      Unpartitioned Resource Bound     : 12
;*      Partitioned Resource Bound(*)    : 12
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     0        1     
;*      .D units                    12*      12*    
;*      .M units                     0        0     
;*      .X cross paths               4        3     
;*      .T address paths            12*      12*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          5        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             0        1     
;*      Bound(.L .S .D .LS .LSD)     6        6     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 12 Did not find schedule
;*         ii = 13 Did not find schedule
;*         ii = 14 Did not find schedule
;*         ii = 15 Did not find schedule
;*         ii = 16 Did not find schedule
;*      Disqualified loop: Did not find schedule
;*----------------------------------------------------------------------------*
L6:    
DW$L$_make_mosaic$11$B:
	.dwpsn	"utility.c",546,0
;**	-----------------------g7:
;** 547	-----------------------    s$31 = U$21[1];
;** 547	-----------------------    s$33 = U$21[2];
;** 547	-----------------------    s$35 = U$21[3];
;** 547	-----------------------    s$32 = U$33[1];
;** 547	-----------------------    s$34 = U$33[2];
;** 547	-----------------------    s$36 = U$33[3];
;** 547	-----------------------    s$38 = U$33[4];
;** 547	-----------------------    s$40 = U$33[5];
;** 547	-----------------------    s$42 = U$33[6];
;** 547	-----------------------    s$44 = U$33[7];
;** 547	-----------------------    *U$21 = *U$21+*U$33++{8};
;** 547	-----------------------    U$21[1] = s$31+s$32;
;** 547	-----------------------    U$21[2] = s$33+s$34;
;** 547	-----------------------    U$21[3] = s$35+s$36;
;** 547	-----------------------    s$39 = U$21[5];
;** 547	-----------------------    s$41 = U$21[6];
;** 547	-----------------------    s$43 = U$21[7];
;** 547	-----------------------    U$21[4] = U$21[4]+s$38;
;** 547	-----------------------    U$21[5] = s$39+s$40;
;** 547	-----------------------    U$21[6] = s$41+s$42;
;** 547	-----------------------    U$21[7] = s$43+s$44;
;** 545	-----------------------    U$21 += 8;
;** 545	-----------------------    if ( --L$4 ) goto g7;

           LDHU    .D1T1   *+A6(10),A3       ; |547| 
||         LDBU    .D2T2   *+B16(5),B9       ; |547| 
||         SUB     .L2     B0,1,B0           ; |545| 

           LDHU    .D1T1   *+A6(12),A16      ; |547| 
||         LDBU    .D2T2   *+B16(6),B17      ; |547| 
|| [!B0]   SUB     .L2     B1,1,B1           ; |542| 

           LDBU    .D2T2   *+B16(1),B4       ; |547| 
||         LDHU    .D1T1   *+A6(2),A5        ; |547| 

           LDBU    .D2T2   *+B16(4),B7       ; |547| 
||         LDHU    .D1T1   *+A6(4),A9        ; |547| 

           LDBU    .D2T2   *+B16(2),B5       ; |547| 
||         LDHU    .D1T1   *+A6(8),A4        ; |547| 

           LDBU    .D2T2   *+B16(3),B6       ; |547| 
||         LDHU    .D1T1   *+A6(14),A17      ; |547| 
||         ADD     .L1X    B9,A3,A3          ; |547| 

           LDBU    .D2T2   *+B16(7),B8       ; |547| 
||         LDHU    .D1T1   *+A6(6),A7        ; |547| 
||         ADD     .L1X    B17,A16,A30       ; |547| 

           LDBU    .D2T2   *B16++(8),B31     ; |547| 
||         LDHU    .D1T1   *A6,A8            ; |547| 
||         ADD     .L1X    B4,A5,A5          ; |547| 

           STH     .D1T1   A3,*+A6(10)       ; |547| 

           STH     .D1T1   A30,*+A6(12)      ; |547| 
||         ADD     .L1X    B7,A4,A4          ; |547| 

           ADD     .L1X    B5,A9,A31         ; |547| 
||         STH     .D1T1   A5,*+A6(2)        ; |547| 
|| [ B0]   B       .S1     L6                ; |545| 

           ADD     .L1X    B6,A7,A30         ; |547| 
||         STH     .D1T1   A31,*+A6(4)       ; |547| 

           ADD     .L1X    B31,A8,A3         ; |547| 
||         STH     .D1T1   A30,*+A6(6)       ; |547| 

           ADD     .L1X    B8,A17,A29        ; |547| 
||         STH     .D1T1   A3,*A6            ; |547| 

           STH     .D1T1   A4,*+A6(8)        ; |547| 
	.dwpsn	"utility.c",548,0

           STH     .D1T1   A29,*+A6(14)      ; |547| 
||         ADDK    .S1     16,A6             ; |545| 

           ; BRANCHCC OCCURS {L6}            ; |545| 
DW$L$_make_mosaic$11$E:
;** --------------------------------------------------------------------------*
L7:    
DW$L$_make_mosaic$12$B:

   [ B1]   BNOP    .S1     L2,4              ; |542| 
||         ADDK    .S2     640,B12

DW$L$_make_mosaic$12$E:
;** --------------------------------------------------------------------------*
L8:    
DW$L$_make_mosaic$13$B:
;**	-----------------------g8:
;** 545	-----------------------    K$11 = 640;
;**  	-----------------------    p_org += 640;
;** 542	-----------------------    if ( --L$2 ) goto g3;
;**  	-----------------------    U$111 = K$8;
	.dwpsn	"utility.c",550,0

   [ B1]   SUB     .L2     B10,B12,B4        ; |545| 
|| [ B1]   SUB     .S2     B12,B10,B5        ; |545| 

           ; BRANCHCC OCCURS {L2}            ; |542| 
DW$L$_make_mosaic$13$E:
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$14$B:
;** 552	-----------------------    L$5 = 80;
;**  	-----------------------    #pragma MUST_ITERATE(80, 80, 80)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g10:
;** 554	-----------------------    *U$111 = C$1 = (unsigned short)((unsigned short)(*U$111+U$111[1]+U$111[2]+U$111[3]+U$111[4]+U$111[5]+U$111[6]+U$111[7])>>6);
;** 557	-----------------------    s$79 = C$1;
;** 557	-----------------------    U$111[1] = s$79;
;** 558	-----------------------    U$111[2] = s$79;
;** 559	-----------------------    U$111[3] = s$79;
;** 560	-----------------------    U$111[4] = s$79;
;** 561	-----------------------    U$111[5] = s$79;
;** 562	-----------------------    U$111[6] = s$79;
;** 563	-----------------------    U$111[7] = s$79;
;** 552	-----------------------    U$111 += 8;
;** 552	-----------------------    if ( --L$5 ) goto g10;
;** 565	-----------------------    L$6 = 8;

           MVC     .S2     CSR,B7
||         MV      .L2     B10,B5
||         MVK     .L1     0x3,A0            ; init prolog collapse predicate
||         MVK     .S1     0x1,A1            ; init prolog collapse predicate
||         MV      .D1X    B10,A4

           AND     .L2     -2,B7,B4
||         MVK     .S2     79,B0             ; |552| 

           MVC     .S2     B4,CSR            ; interrupts off
DW$L$_make_mosaic$14$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 552
;*      Loop opening brace source line   : 553
;*      Loop closing brace source line   : 564
;*      Known Minimum Trip Count         : 80                    
;*      Known Maximum Trip Count         : 80                    
;*      Known Max Trip Count Factor      : 80
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 8
;*      Partitioned Resource Bound(*)    : 8
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     2        2     
;*      .D units                     8*       8*    
;*      .M units                     0        0     
;*      .X cross paths               0        2     
;*      .T address paths             8*       8*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          7        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     6        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Schedule found with 4 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 3
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh48
;*
;*      Minimum safe trip count     : 3
;*----------------------------------------------------------------------------*
L9:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L10:    ; PIPED LOOP KERNEL
DW$L$_make_mosaic$16$B:
	.dwpsn	"utility.c",553,0

           MV      .L2X    A3,B6             ; |557| <0,17> 
|| [!A0]   STH     .D2T2   B4,*B5++(16)      ; |554| <0,17> 
||         ADD     .L1     A6,A5,A3          ; |554| <1,9> 
|| [!A1]   LDHU    .D1T1   *-A4(14),A7       ; |554| <2,1> 

   [!A0]   STH     .D2T2   B6,*-B5(14)       ; |557| <0,18> 
||         ADD     .L1     A5,A3,A3          ; |554| <1,10> 
|| [!A1]   LDHU    .D1T1   *-A4(12),A6       ; |554| <2,2> 

   [ B0]   BDEC    .S2     L10,B0            ; |552| <0,19> 
|| [!A0]   STH     .D2T2   B6,*-B5(12)       ; |558| <0,19> 
||         ADD     .L1     A5,A3,A3          ; |554| <1,11> 
|| [!A1]   LDHU    .D1T1   *-A4(10),A6       ; |554| <2,3> 

   [!A0]   STH     .D2T2   B6,*-B5(10)       ; |559| <0,20> 
||         ADD     .L1     A5,A3,A3          ; |554| <1,12> 
|| [!A1]   LDHU    .D1T1   *-A4(8),A6        ; |554| <2,4> 

   [!A0]   STH     .D2T2   B6,*-B5(8)        ; |560| <0,21> 
||         EXTU    .S1     A3,16,16,A5       ; |554| <1,13> 
|| [!A1]   LDHU    .D1T1   *-A4(6),A5        ; |554| <2,5> 

   [!A0]   STH     .D2T2   B6,*-B5(6)        ; |561| <0,22> 
||         MV      .L2X    A3,B4             ; |554| <1,14> Define a twin register
||         EXTU    .S1     A5,10,16,A3       ; |554| <1,14> 
|| [!A1]   LDHU    .D1T1   *-A4(4),A5        ; |554| <2,6> 
||         ADD     .L1     A7,A6,A5          ; |554| <2,6> 

   [ A1]   SUB     .L1     A1,1,A1           ; <0,23> 
|| [!A0]   STH     .D2T2   B6,*-B5(4)        ; |562| <0,23> 
||         EXTU    .S2     B4,16,22,B4       ; |554| <1,15> 
|| [!A1]   LDHU    .D1T1   *-A4(2),A5        ; |554| <2,7> 
||         ADD     .S1     A6,A5,A5          ; |554| <2,7> 

	.dwpsn	"utility.c",564,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,24> 
|| [!A0]   STH     .D2T2   B6,*-B5(2)        ; |563| <0,24> 
||         ADD     .S1     A6,A5,A5          ; |554| <2,8> 
||         LDHU    .D1T1   *A4++(16),A6      ; |554| <3,0> 

DW$L$_make_mosaic$16$E:
;** --------------------------------------------------------------------------*
L11:    ; PIPED LOOP EPILOG
;** 552	-----------------------    K$11 = 640;
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MVK     .L2     0x8,B0            ; |565| 
||         MV      .S2X    A3,B6             ; |557| (E) <1,17> 
||         ADD     .L1     A6,A5,A3          ; |554| (E) <2,9> 
||         LDHU    .D1T1   *-A4(14),A7       ; |554| (E) <3,1> 
||         STH     .D2T2   B4,*B5++(16)      ; |554| (E) <1,17> 

           ADD     .L1     A5,A3,A3          ; |554| (E) <2,10> 
||         LDHU    .D1T1   *-A4(12),A6       ; |554| (E) <3,2> 
||         STH     .D2T2   B6,*-B5(14)       ; |557| (E) <1,18> 

           ADD     .L1     A5,A3,A3          ; |554| (E) <2,11> 
||         LDHU    .D1T1   *-A4(10),A6       ; |554| (E) <3,3> 
||         STH     .D2T2   B6,*-B5(12)       ; |558| (E) <1,19> 

           ADD     .L1     A5,A3,A3          ; |554| (E) <2,12> 
||         LDHU    .D1T1   *-A4(8),A6        ; |554| (E) <3,4> 
||         STH     .D2T2   B6,*-B5(10)       ; |559| (E) <1,20> 

           EXTU    .S1     A3,16,16,A5       ; |554| (E) <2,13> 
||         LDHU    .D1T1   *-A4(6),A5        ; |554| (E) <3,5> 
||         STH     .D2T2   B6,*-B5(8)        ; |560| (E) <1,21> 

           STH     .D2T2   B6,*-B5(6)        ; |561| (E) <1,22> 
||         MV      .L2X    A3,B4             ; |554| (E) <2,14> Define a twin register
||         LDHU    .D1T1   *-A4(4),A5        ; |554| (E) <3,6> 
||         ADD     .L1     A7,A6,A5          ; |554| (E) <3,6> 
||         EXTU    .S1     A5,10,16,A3       ; |554| (E) <2,14> 

           STH     .D2T2   B6,*-B5(4)        ; |562| (E) <1,23> 
||         LDHU    .D1T1   *-A4(2),A5        ; |554| (E) <3,7> 
||         ADD     .L1     A6,A5,A5          ; |554| (E) <3,7> 
||         EXTU    .S2     B4,16,22,B4       ; |554| (E) <2,15> 

           ADD     .L1     A6,A5,A5          ; |554| (E) <3,8> 
||         STH     .D2T2   B6,*-B5(2)        ; |563| (E) <1,24> 

           MV      .L2X    A3,B6             ; |557| (E) <2,17> 
||         ADD     .L1     A6,A5,A3          ; |554| (E) <3,9> 
||         STH     .D2T2   B4,*B5++(16)      ; |554| (E) <2,17> 

           ADD     .L1     A5,A3,A3          ; |554| (E) <3,10> 
||         STH     .D2T2   B6,*-B5(14)       ; |557| (E) <2,18> 

           MVC     .S2     B7,CSR            ; interrupts on
||         ADD     .L1     A5,A3,A3          ; |554| (E) <3,11> 
||         STH     .D2T2   B6,*-B5(12)       ; |558| (E) <2,19> 

;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$18$B:
           STH     .D2T2   B6,*-B5(2)        ; |563| (E) <2,24> 

           STH     .D2T2   B6,*-B5(4)        ; |562| (E) <2,23> 
||         ADD     .L1     A5,A3,A3          ; |554| (E) <3,12> 

           EXTU    .S1     A3,16,16,A5       ; |554| (E) <3,13> 
||         STH     .D2T2   B6,*-B5(6)        ; |561| (E) <2,22> 

           EXTU    .S1     A5,10,16,A3       ; |554| (E) <3,14> 
||         MV      .L2X    A3,B4             ; |554| (E) <3,14> Define a twin register
||         STH     .D2T2   B6,*-B5(10)       ; |559| (E) <2,20> 

           EXTU    .S2     B4,16,22,B4       ; |554| (E) <3,15> 
||         STH     .D2T2   B6,*-B5(8)        ; |560| (E) <2,21> 

           STH     .D2T2   B4,*B5++(16)      ; |554| (E) <3,17> 
||         MV      .L2X    A3,B6             ; |557| (E) <3,17> 

           STH     .D2T2   B6,*-B5(14)       ; |557| (E) <3,18> 
           STH     .D2T2   B6,*-B5(12)       ; |558| (E) <3,19> 
           STH     .D2T2   B6,*-B5(2)        ; |563| (E) <3,24> 
           STH     .D2T2   B6,*-B5(8)        ; |560| (E) <3,21> 
           STH     .D2T2   B6,*-B5(4)        ; |562| (E) <3,23> 
           STH     .D2T2   B6,*-B5(6)        ; |561| (E) <3,22> 
           STH     .D2T2   B6,*-B5(10)       ; |559| (E) <3,20> 
DW$L$_make_mosaic$18$E:
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$19$B:
	.dwpsn	"utility.c",565,0

           SUB     .L2     B10,B11,B4        ; |568| 
||         SUB     .S2     B11,B10,B5        ; |568| 

DW$L$_make_mosaic$19$E:
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L12
;** --------------------------------------------------------------------------*
L12:    
DW$L$_make_mosaic$20$B:
	.dwpsn	"utility.c",566,0
;**	-----------------------g12:
;** 568	-----------------------    if ( (p_mosaic-K$8 >= (int)K$6)|(K$8-p_mosaic >= K$11) ) goto g15;
           CMPLT   .L2     B4,B13,B4         ; |568| 
           CMPLT   .L1X    B5,A11,A3         ; |568| 
           AND     .L1X    A3,B4,A0
   [!A0]   BNOP    .S1     L16,5             ; |568| 
           ; BRANCHCC OCCURS {L16}           ; |568| 
DW$L$_make_mosaic$20$E:
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$21$B:
;**  	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(8)
;**  	-----------------------    U$21 = &K$8[-8];
;**  	-----------------------    U$147 = &p_mosaic[-8];
;**  	-----------------------    L$7 = 80;
;**  	-----------------------    #pragma MUST_ITERATE(80, 80, 80)
;**  	-----------------------    #pragma LOOP_FLAGS(4106u)
;**	-----------------------g14:
;** 570	-----------------------    *(U$147 += 8) = *(U$21 += 8);
;** 570	-----------------------    U$147[1] = U$21[1];
;** 570	-----------------------    U$147[2] = U$21[2];
;** 570	-----------------------    U$147[3] = U$21[3];
;** 570	-----------------------    U$147[4] = U$21[4];
;** 570	-----------------------    U$147[5] = U$21[5];
;** 570	-----------------------    U$147[6] = U$21[6];
;** 570	-----------------------    U$147[7] = U$21[7];
;** 568	-----------------------    if ( --L$7 ) goto g14;

           MVC     .S2     CSR,B7
||         MVK     .S1     79,A0
||         SUB     .L2     B11,8,B4
||         SUB     .D2     B10,16,B5

           AND     .L2     -2,B7,B6
           MVC     .S2     B6,CSR            ; interrupts off
DW$L$_make_mosaic$21$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 568
;*      Loop opening brace source line   : 569
;*      Loop closing brace source line   : 571
;*      Loop Unroll Multiple             : 8x
;*      Known Minimum Trip Count         : 80                    
;*      Known Maximum Trip Count         : 80                    
;*      Known Max Trip Count Factor      : 80
;*      Loop Carried Dependency Bound(^) : 48
;*      Unpartitioned Resource Bound     : 8
;*      Partitioned Resource Bound(*)    : 16
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     0       16*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0       16*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        6     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 48 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L13:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L14:    ; PIPED LOOP KERNEL
DW$L$_make_mosaic$23$B:
	.dwpsn	"utility.c",569,0
           LDBU    .D2T2   *++B5(16),B6      ; |570| <0,0>  ^ 
           NOP             4
           STB     .D2T2   B6,*++B4(8)       ; |570| <0,5>  ^ 
           LDBU    .D2T2   *+B5(2),B6        ; |570| <0,6>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(1)        ; |570| <0,11>  ^ 
           LDBU    .D2T2   *+B5(4),B6        ; |570| <0,12>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(2)        ; |570| <0,17>  ^ 
           LDBU    .D2T2   *+B5(6),B6        ; |570| <0,18>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(3)        ; |570| <0,23>  ^ 
           LDBU    .D2T2   *+B5(8),B6        ; |570| <0,24>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(4)        ; |570| <0,29>  ^ 
           LDBU    .D2T2   *+B5(10),B6       ; |570| <0,30>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(5)        ; |570| <0,35>  ^ 
           LDBU    .D2T2   *+B5(12),B6       ; |570| <0,36>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(6)        ; |570| <0,41>  ^ 

   [ A0]   BDEC    .S1     L14,A0            ; |568| <0,42> 
||         LDBU    .D2T2   *+B5(14),B6       ; |570| <0,42>  ^ 

           NOP             4
	.dwpsn	"utility.c",571,0
           STB     .D2T2   B6,*+B4(7)        ; |570| <0,47>  ^ 
DW$L$_make_mosaic$23$E:
;** --------------------------------------------------------------------------*
L15:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$25$B:
;** 568	-----------------------    goto g17;

           B       .S1     L20               ; |568| 
||         MVC     .S2     B7,CSR            ; interrupts on
||         SUB     .L2     B0,1,B0           ; |565| 

   [ B0]   BNOP    .S1     L12,4             ; |565| 
||         ADDK    .S2     640,B11

           ; BRANCH OCCURS {L20}             ; |568| 
DW$L$_make_mosaic$25$E:
;** --------------------------------------------------------------------------*
L16:    
DW$L$_make_mosaic$26$B:
;**	-----------------------g15:
;**  	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(8)
;**  	-----------------------    U$21 = &K$8[-8];
;**  	-----------------------    U$147 = &p_mosaic[-8];
;**  	-----------------------    L$8 = 80;
;**  	-----------------------    #pragma[60] (onelinebuffer != p_mosaic;)
;**  	-----------------------    #pragma MUST_ITERATE(80, 80, 80)
;**  	-----------------------    #pragma LOOP_FLAGS(4162u)
;**	-----------------------g16:
;** 570	-----------------------    *(U$147 += 8) = *(U$21 += 8);
;** 570	-----------------------    U$147[1] = U$21[1];
;** 570	-----------------------    U$147[2] = U$21[2];
;** 570	-----------------------    U$147[3] = U$21[3];
;** 570	-----------------------    U$147[4] = U$21[4];
;** 570	-----------------------    U$147[5] = U$21[5];
;** 570	-----------------------    U$147[6] = U$21[6];
;** 570	-----------------------    U$147[7] = U$21[7];
;** 568	-----------------------    if ( --L$8 ) goto g16;

           MVC     .S2     CSR,B7
||         MVK     .S1     79,A0
||         SUB     .L2     B11,8,B4
||         SUB     .D2     B10,16,B5

           AND     .L2     -2,B7,B6
           MVC     .S2     B6,CSR            ; interrupts off
DW$L$_make_mosaic$26$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 568
;*      Loop opening brace source line   : 569
;*      Loop closing brace source line   : 571
;*      Loop Unroll Multiple             : 8x
;*      Known Minimum Trip Count         : 80                    
;*      Known Maximum Trip Count         : 80                    
;*      Known Max Trip Count Factor      : 80
;*      Loop Carried Dependency Bound(^) : 48
;*      Unpartitioned Resource Bound     : 8
;*      Partitioned Resource Bound(*)    : 16
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     0       16*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             0       16*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     1        6     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 48 Schedule found with 1 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 0
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L17:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L18:    ; PIPED LOOP KERNEL
DW$L$_make_mosaic$28$B:
	.dwpsn	"utility.c",569,0
           LDBU    .D2T2   *++B5(16),B6      ; |570| <0,0>  ^ 
           NOP             4
           STB     .D2T2   B6,*++B4(8)       ; |570| <0,5>  ^ 
           LDBU    .D2T2   *+B5(2),B6        ; |570| <0,6>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(1)        ; |570| <0,11>  ^ 
           LDBU    .D2T2   *+B5(4),B6        ; |570| <0,12>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(2)        ; |570| <0,17>  ^ 
           LDBU    .D2T2   *+B5(6),B6        ; |570| <0,18>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(3)        ; |570| <0,23>  ^ 
           LDBU    .D2T2   *+B5(8),B6        ; |570| <0,24>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(4)        ; |570| <0,29>  ^ 
           LDBU    .D2T2   *+B5(10),B6       ; |570| <0,30>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(5)        ; |570| <0,35>  ^ 
           LDBU    .D2T2   *+B5(12),B6       ; |570| <0,36>  ^ 
           NOP             4
           STB     .D2T2   B6,*+B4(6)        ; |570| <0,41>  ^ 

   [ A0]   BDEC    .S1     L18,A0            ; |568| <0,42> 
||         LDBU    .D2T2   *+B5(14),B6       ; |570| <0,42>  ^ 

           NOP             4
	.dwpsn	"utility.c",571,0
           STB     .D2T2   B6,*+B4(7)        ; |570| <0,47>  ^ 
DW$L$_make_mosaic$28$E:
;** --------------------------------------------------------------------------*
L19:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$30$B:
           SUB     .L2     B0,1,B0           ; |565| 
   [ B0]   BNOP    .S1     L12,2             ; |565| 
           MVC     .S2     B7,CSR            ; interrupts on
           ADDK    .S2     640,B11
DW$L$_make_mosaic$30$E:
;** --------------------------------------------------------------------------*
L20:    
DW$L$_make_mosaic$31$B:
;**	-----------------------g17:
;** 568	-----------------------    K$11 = 640;
;**  	-----------------------    p_mosaic += 640;
;** 565	-----------------------    if ( --L$6 ) goto g12;
;** 539	-----------------------    if ( --L$1 ) goto g2;
	.dwpsn	"utility.c",573,0

   [ B0]   SUB     .L2     B11,B10,B5        ; |568| 
|| [ B0]   SUB     .S2     B10,B11,B4        ; |568| 
|| [!B0]   SUB     .L1     A10,1,A0          ; |539| 

           ; BRANCHCC OCCURS {L12}           ; |565| 
DW$L$_make_mosaic$31$E:
;** --------------------------------------------------------------------------*
DW$L$_make_mosaic$32$B:
;**  	-----------------------    return;

           SUB     .L1     A10,1,A10         ; |539| 
|| [!A0]   MV      .L2X    A14,B3            ; |575| 
|| [ A0]   B       .S1     L1                ; |539| 
|| [!A0]   MV      .D1X    SP,A31            ; |575| 
|| [!A0]   LDW     .D2T2   *+SP(20),B12      ; |575| 

   [ A0]   CALL    .S1     _memset           ; |541| 
|| [!A0]   LDDW    .D1T1   *+A31(8),A11:A10  ; |575| 
|| [!A0]   LDDW    .D2T2   *+SP(24),B11:B10  ; |575| 

	.dwpsn	"utility.c",574,0

   [!A0]   RETNOP  .S2     B3,3              ; |575| 
|| [!A0]   LDW     .D1T1   *+A31(16),A14     ; |575| 
|| [!A0]   LDW     .D2T2   *++SP(32),B13     ; |575| 

           ; BRANCHCC OCCURS {L1}            ; |539| 
DW$L$_make_mosaic$32$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"utility.c",575,1
           NOP             2
           ; BRANCH OCCURS {B3}              ; |575| 

DW$53	.dwtag  DW_TAG_loop
	.dwattr DW$53, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L1:1:1297920373")
	.dwattr DW$53, DW_AT_begin_file("utility.c")
	.dwattr DW$53, DW_AT_begin_line(0x21b)
	.dwattr DW$53, DW_AT_end_line(0x23e)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$_make_mosaic$2$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$_make_mosaic$2$E)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$_make_mosaic$3$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$_make_mosaic$3$E)
DW$56	.dwtag  DW_TAG_loop_range
	.dwattr DW$56, DW_AT_low_pc(DW$L$_make_mosaic$4$B)
	.dwattr DW$56, DW_AT_high_pc(DW$L$_make_mosaic$4$E)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$_make_mosaic$14$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$_make_mosaic$14$E)
DW$58	.dwtag  DW_TAG_loop_range
	.dwattr DW$58, DW_AT_low_pc(DW$L$_make_mosaic$18$B)
	.dwattr DW$58, DW_AT_high_pc(DW$L$_make_mosaic$18$E)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_make_mosaic$19$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_make_mosaic$19$E)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_make_mosaic$32$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_make_mosaic$32$E)

DW$61	.dwtag  DW_TAG_loop
	.dwattr DW$61, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L2:2:1297920373")
	.dwattr DW$61, DW_AT_begin_file("utility.c")
	.dwattr DW$61, DW_AT_begin_line(0x21e)
	.dwattr DW$61, DW_AT_end_line(0x226)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_make_mosaic$5$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_make_mosaic$5$E)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$_make_mosaic$6$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$_make_mosaic$6$E)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$_make_mosaic$10$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$_make_mosaic$10$E)
DW$65	.dwtag  DW_TAG_loop_range
	.dwattr DW$65, DW_AT_low_pc(DW$L$_make_mosaic$12$B)
	.dwattr DW$65, DW_AT_high_pc(DW$L$_make_mosaic$12$E)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_make_mosaic$13$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_make_mosaic$13$E)

DW$67	.dwtag  DW_TAG_loop
	.dwattr DW$67, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L6:3:1297920373")
	.dwattr DW$67, DW_AT_begin_file("utility.c")
	.dwattr DW$67, DW_AT_begin_line(0x221)
	.dwattr DW$67, DW_AT_end_line(0x224)
DW$68	.dwtag  DW_TAG_loop_range
	.dwattr DW$68, DW_AT_low_pc(DW$L$_make_mosaic$11$B)
	.dwattr DW$68, DW_AT_high_pc(DW$L$_make_mosaic$11$E)
	.dwendtag DW$67


DW$69	.dwtag  DW_TAG_loop
	.dwattr DW$69, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L4:3:1297920373")
	.dwattr DW$69, DW_AT_begin_file("utility.c")
	.dwattr DW$69, DW_AT_begin_line(0x221)
	.dwattr DW$69, DW_AT_end_line(0x224)
DW$70	.dwtag  DW_TAG_loop_range
	.dwattr DW$70, DW_AT_low_pc(DW$L$_make_mosaic$8$B)
	.dwattr DW$70, DW_AT_high_pc(DW$L$_make_mosaic$8$E)
	.dwendtag DW$69

	.dwendtag DW$61


DW$71	.dwtag  DW_TAG_loop
	.dwattr DW$71, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L10:2:1297920373")
	.dwattr DW$71, DW_AT_begin_file("utility.c")
	.dwattr DW$71, DW_AT_begin_line(0x228)
	.dwattr DW$71, DW_AT_end_line(0x234)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_make_mosaic$16$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_make_mosaic$16$E)
	.dwendtag DW$71


DW$73	.dwtag  DW_TAG_loop
	.dwattr DW$73, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L12:2:1297920373")
	.dwattr DW$73, DW_AT_begin_file("utility.c")
	.dwattr DW$73, DW_AT_begin_line(0x235)
	.dwattr DW$73, DW_AT_end_line(0x23d)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_make_mosaic$20$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_make_mosaic$20$E)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_make_mosaic$26$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_make_mosaic$26$E)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$_make_mosaic$21$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$_make_mosaic$21$E)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_make_mosaic$25$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_make_mosaic$25$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_make_mosaic$30$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_make_mosaic$30$E)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_make_mosaic$31$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_make_mosaic$31$E)

DW$80	.dwtag  DW_TAG_loop
	.dwattr DW$80, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L18:3:1297920373")
	.dwattr DW$80, DW_AT_begin_file("utility.c")
	.dwattr DW$80, DW_AT_begin_line(0x238)
	.dwattr DW$80, DW_AT_end_line(0x23b)
DW$81	.dwtag  DW_TAG_loop_range
	.dwattr DW$81, DW_AT_low_pc(DW$L$_make_mosaic$28$B)
	.dwattr DW$81, DW_AT_high_pc(DW$L$_make_mosaic$28$E)
	.dwendtag DW$80


DW$82	.dwtag  DW_TAG_loop
	.dwattr DW$82, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L14:3:1297920373")
	.dwattr DW$82, DW_AT_begin_file("utility.c")
	.dwattr DW$82, DW_AT_begin_line(0x238)
	.dwattr DW$82, DW_AT_end_line(0x23b)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$_make_mosaic$23$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$_make_mosaic$23$E)
	.dwendtag DW$82

	.dwendtag DW$73

	.dwendtag DW$53

	.dwattr DW$50, DW_AT_end_file("utility.c")
	.dwattr DW$50, DW_AT_end_line(0x23f)
	.dwattr DW$50, DW_AT_end_column(0x01)
	.dwendtag DW$50

	.sect	".text"
	.global	_disp_set_stamp

DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_set_stamp"), DW_AT_symbol_name("_disp_set_stamp")
	.dwattr DW$84, DW_AT_low_pc(_disp_set_stamp)
	.dwattr DW$84, DW_AT_high_pc(0x00)
	.dwattr DW$84, DW_AT_begin_file("utility.c")
	.dwattr DW$84, DW_AT_begin_line(0xff)
	.dwattr DW$84, DW_AT_begin_column(0x06)
	.dwattr DW$84, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$84, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",256,1

;******************************************************************************
;* FUNCTION NAME: _disp_set_stamp                                             *
;*                                                                            *
;*   Regs Modified     : A3,A5,A7,B5,B7,B9                                    *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,B3,B4,B5,B6,B7,B8,B9               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_set_stamp:
;** --------------------------------------------------------------------------*
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bmp"), DW_AT_symbol_name("_bmp")
	.dwattr DW$85, DW_AT_type(*DW$T$41)
	.dwattr DW$85, DW_AT_location[DW_OP_reg4]
DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mask"), DW_AT_symbol_name("_mask")
	.dwattr DW$86, DW_AT_type(*DW$T$37)
	.dwattr DW$86, DW_AT_location[DW_OP_reg20]
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("top"), DW_AT_symbol_name("_top")
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$87, DW_AT_location[DW_OP_reg6]
DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("left"), DW_AT_symbol_name("_left")
	.dwattr DW$88, DW_AT_type(*DW$T$10)
	.dwattr DW$88, DW_AT_location[DW_OP_reg22]
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("width"), DW_AT_symbol_name("_width")
	.dwattr DW$89, DW_AT_type(*DW$T$10)
	.dwattr DW$89, DW_AT_location[DW_OP_reg8]
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("height"), DW_AT_symbol_name("_height")
	.dwattr DW$90, DW_AT_type(*DW$T$10)
	.dwattr DW$90, DW_AT_location[DW_OP_reg24]
;** 257	-----------------------    stamp_left = left;
;** 258	-----------------------    stamp_top = top;
;** 260	-----------------------    stamp_bmp = bmp;
;** 261	-----------------------    stamp_mask = mask;
;** 263	-----------------------    stamp_width = width;
;** 264	-----------------------    stamp_height = height;
;** 264	-----------------------    return;
           MVKL    .S2     _stamp_left,B7    ; |257| 

           MVKL    .S2     _stamp_width,B5   ; |263| 
||         MVKL    .S1     _stamp_top,A7     ; |258| 

           RET     .S2     B3                ; |266| 
||         MVKL    .S1     _stamp_height,A3  ; |264| 

           MVKL    .S2     _stamp_bmp,B9     ; |260| 
||         MVKL    .S1     _stamp_mask,A5    ; |261| 

           MVKH    .S2     _stamp_left,B7    ; |257| 
||         MVKH    .S1     _stamp_top,A7     ; |258| 

           STW     .D2T2   B6,*B7            ; |257| 
||         STW     .D1T1   A6,*A7            ; |258| 
||         MVKH    .S1     _stamp_height,A3  ; |264| 
||         MVKH    .S2     _stamp_width,B5   ; |263| 

           STW     .D2T1   A8,*B5            ; |263| 
||         STW     .D1T2   B8,*A3            ; |264| 
||         MVKH    .S2     _stamp_bmp,B9     ; |260| 
||         MVKH    .S1     _stamp_mask,A5    ; |261| 

	.dwpsn	"utility.c",266,1

           STW     .D1T2   B4,*A5            ; |261| 
||         STW     .D2T1   A4,*B9            ; |260| 

           ; BRANCH OCCURS {B3}              ; |266| 
	.dwattr DW$84, DW_AT_end_file("utility.c")
	.dwattr DW$84, DW_AT_end_line(0x10a)
	.dwattr DW$84, DW_AT_end_column(0x01)
	.dwendtag DW$84

	.sect	".text"
	.global	_disp_set_cb

DW$91	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_set_cb"), DW_AT_symbol_name("_disp_set_cb")
	.dwattr DW$91, DW_AT_low_pc(_disp_set_cb)
	.dwattr DW$91, DW_AT_high_pc(0x00)
	.dwattr DW$91, DW_AT_begin_file("utility.c")
	.dwattr DW$91, DW_AT_begin_line(0x10c)
	.dwattr DW$91, DW_AT_begin_column(0x05)
	.dwattr DW$91, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$91, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",269,1

;******************************************************************************
;* FUNCTION NAME: _disp_set_cb                                                *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A7,A9,B5,B7,B9                              *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,A10,B3,B4,B5,B6,B7,B8,B9        *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_set_cb:
;** --------------------------------------------------------------------------*
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h_thick"), DW_AT_symbol_name("_h_thick")
	.dwattr DW$92, DW_AT_type(*DW$T$10)
	.dwattr DW$92, DW_AT_location[DW_OP_reg4]
DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_name("v_thick"), DW_AT_symbol_name("_v_thick")
	.dwattr DW$93, DW_AT_type(*DW$T$10)
	.dwattr DW$93, DW_AT_location[DW_OP_reg20]
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_name("top"), DW_AT_symbol_name("_top")
	.dwattr DW$94, DW_AT_type(*DW$T$10)
	.dwattr DW$94, DW_AT_location[DW_OP_reg6]
DW$95	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bottom"), DW_AT_symbol_name("_bottom")
	.dwattr DW$95, DW_AT_type(*DW$T$10)
	.dwattr DW$95, DW_AT_location[DW_OP_reg22]
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("left"), DW_AT_symbol_name("_left")
	.dwattr DW$96, DW_AT_type(*DW$T$10)
	.dwattr DW$96, DW_AT_location[DW_OP_reg8]
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("right"), DW_AT_symbol_name("_right")
	.dwattr DW$97, DW_AT_type(*DW$T$10)
	.dwattr DW$97, DW_AT_location[DW_OP_reg24]
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color"), DW_AT_symbol_name("_color")
	.dwattr DW$98, DW_AT_type(*DW$T$10)
	.dwattr DW$98, DW_AT_location[DW_OP_reg10]
;** 271	-----------------------    cb_h_thick = h_thick;
;** 272	-----------------------    cb_v_thick = v_thick;
;** 273	-----------------------    cb_top = top;
;** 274	-----------------------    cb_bottom = bottom;
;** 275	-----------------------    cb_left = left;
;** 276	-----------------------    cb_right = right;
;** 277	-----------------------    cb_color = color;
;** 279	-----------------------    return 0;
           MVKL    .S1     _cb_h_thick,A9    ; |271| 

           MVKL    .S2     _cb_bottom,B5     ; |274| 
||         MVKL    .S1     _cb_top,A7        ; |273| 

           MVKL    .S2     _cb_v_thick,B7    ; |272| 
||         MVKL    .S1     _cb_left,A5       ; |275| 

           RET     .S2     B3                ; |280| 
||         MVKH    .S1     _cb_h_thick,A9    ; |271| 

           MVKL    .S1     _cb_color,A3      ; |277| 
||         MVKL    .S2     _cb_right,B9      ; |276| 

           STW     .D1T1   A4,*A9            ; |271| 
||         MVKH    .S2     _cb_bottom,B5     ; |274| 
||         MVKH    .S1     _cb_top,A7        ; |273| 

           STW     .D1T1   A6,*A7            ; |273| 
||         STW     .D2T2   B6,*B5            ; |274| 
||         MVKH    .S2     _cb_v_thick,B7    ; |272| 
||         MVKH    .S1     _cb_left,A5       ; |275| 

           STW     .D1T1   A8,*A5            ; |275| 
||         STW     .D2T2   B4,*B7            ; |272| 
||         MVKH    .S1     _cb_color,A3      ; |277| 
||         MVKH    .S2     _cb_right,B9      ; |276| 

	.dwpsn	"utility.c",280,1

           ZERO    .L1     A4                ; |279| 
||         STW     .D2T2   B8,*B9            ; |276| 
||         STW     .D1T1   A10,*A3           ; |277| 

           ; BRANCH OCCURS {B3}              ; |280| 
	.dwattr DW$91, DW_AT_end_file("utility.c")
	.dwattr DW$91, DW_AT_end_line(0x118)
	.dwattr DW$91, DW_AT_end_column(0x01)
	.dwendtag DW$91

	.sect	".text"

DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("_alpha_blend_nbit"), DW_AT_symbol_name("__alpha_blend_nbit")
	.dwattr DW$99, DW_AT_low_pc(__alpha_blend_nbit)
	.dwattr DW$99, DW_AT_high_pc(0x00)
	.dwattr DW$99, DW_AT_begin_file("utility.c")
	.dwattr DW$99, DW_AT_begin_line(0x194)
	.dwattr DW$99, DW_AT_begin_column(0x0c)
	.dwattr DW$99, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$99, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",405,1

;******************************************************************************
;* FUNCTION NAME: __alpha_blend_nbit                                          *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5                                             *
;*   Regs Used         : A3,A4,A5,A6,B3,B4                                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
__alpha_blend_nbit:
;** --------------------------------------------------------------------------*
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i1"), DW_AT_symbol_name("_i1")
	.dwattr DW$100, DW_AT_type(*DW$T$10)
	.dwattr DW$100, DW_AT_location[DW_OP_reg4]
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2"), DW_AT_symbol_name("_i2")
	.dwattr DW$101, DW_AT_type(*DW$T$10)
	.dwattr DW$101, DW_AT_location[DW_OP_reg20]
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$102, DW_AT_type(*DW$T$10)
	.dwattr DW$102, DW_AT_location[DW_OP_reg6]
;** 407	-----------------------    C$1 = 8-n;
;** 407	-----------------------    return (unsigned char)(_mpy(i2<<C$1, 10)+_mpy(i1<<C$1, 6)>>4)>>C$1;
           SUB     .L1     8,A6,A3           ; |407| 
           SHL     .S1     A4,A3,A4          ; |407| 

           RET     .S2     B3                ; |409| 
||         SHL     .S1X    B4,A3,A4          ; |407| 
||         MPY     .M1     A4,6,A5           ; |407| 

           MPY     .M1     A4,10,A4          ; |407| 
           NOP             1
           ADD     .L1     A5,A4,A4          ; |407| 
           EXTU    .S1     A4,20,24,A4       ; |407| 
	.dwpsn	"utility.c",409,1
           SHRU    .S1     A4,A3,A4          ; |407| 
           ; BRANCH OCCURS {B3}              ; |409| 
	.dwattr DW$99, DW_AT_end_file("utility.c")
	.dwattr DW$99, DW_AT_end_line(0x199)
	.dwattr DW$99, DW_AT_end_column(0x01)
	.dwendtag DW$99

	.sect	".text"
	.global	_disp_alpha_blend

DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_alpha_blend"), DW_AT_symbol_name("_disp_alpha_blend")
	.dwattr DW$103, DW_AT_low_pc(_disp_alpha_blend)
	.dwattr DW$103, DW_AT_high_pc(0x00)
	.dwattr DW$103, DW_AT_begin_file("utility.c")
	.dwattr DW$103, DW_AT_begin_line(0x19b)
	.dwattr DW$103, DW_AT_begin_column(0x10)
	.dwattr DW$103, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$103, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",412,1

;******************************************************************************
;* FUNCTION NAME: _disp_alpha_blend                                           *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A9,B3,B4,B5,B31                       *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,B3,B4,B5,SP,B31                 *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_alpha_blend:
;** --------------------------------------------------------------------------*
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c1"), DW_AT_symbol_name("_c1")
	.dwattr DW$104, DW_AT_type(*DW$T$9)
	.dwattr DW$104, DW_AT_location[DW_OP_reg4]
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c2"), DW_AT_symbol_name("_c2")
	.dwattr DW$105, DW_AT_type(*DW$T$9)
	.dwattr DW$105, DW_AT_location[DW_OP_reg20]
;** 426	-----------------------    v$1 = *(&u)&0xffffffe0|_alpha_blend_nbit(c1&0x1fu, c2&0x1fu, 5)&0x1f;
;** 427	-----------------------    v$1 = v$1&0xfffff81f|_extu((unsigned)_alpha_blend_nbit((int)_extu((unsigned)c1, 21u, 26u), (int)_extu((unsigned)c2, 21u, 26u), 6), 26u, 26u)<<5;
;** 428	-----------------------    return (unsigned short)((int)_extu((unsigned)v$1, 21u, 21u)|_alpha_blend_nbit(c1>>11, c2>>11, 5)<<11);
           CALL    .S1     __alpha_blend_nbit ; |426| 
           MV      .L2     B4,B5             ; |412| 
           EXTU    .S2     B5,27,27,B4       ; |426| 
           MV      .L1     A4,A7             ; |412| 
           EXTU    .S1     A7,27,27,A4       ; |426| 

           MVK     .L1     0x5,A6            ; |426| 
||         MV      .L2     B3,B31            ; |412| 
||         ADDKPC  .S2     RL1,B3,0          ; |426| 

RL1:       ; CALL OCCURS {__alpha_blend_nbit}  ; |426| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __alpha_blend_nbit ; |427| 
           EXTU    .S2     B5,21,26,B4       ; |427| 
           ADDKPC  .S2     RL2,B3,0          ; |427| 
           MVK     .L1     0x6,A6            ; |427| 
           MV      .D1     A4,A9             ; |426| 
           EXTU    .S1     A7,21,26,A4       ; |427| 
RL2:       ; CALL OCCURS {__alpha_blend_nbit}  ; |427| 
           CALL    .S1     __alpha_blend_nbit ; |428| 
           SHRU    .S2     B5,11,B4          ; |428| 
           ADDKPC  .S2     RL3,B3,0          ; |428| 
           MV      .L2X    A4,B5             ; |427| 
           SHRU    .S1     A7,11,A4          ; |428| 
           MVK     .L1     0x5,A6            ; |428| 
RL3:       ; CALL OCCURS {__alpha_blend_nbit}  ; |428| 
;** --------------------------------------------------------------------------*
           CLR     .S1     A8,0,4,A3         ; |426| 
           EXTU    .S1     A9,27,27,A5       ; |426| 
           OR      .L1     A5,A3,A3          ; |426| 

           CLR     .S1     A3,5,10,A3        ; |427| 
||         EXTU    .S2     B5,26,21,B4       ; |427| 

           RET     .S2     B31               ; |432| 
           OR      .L2X    B4,A3,B4          ; |427| 
           EXTU    .S2     B4,21,21,B4       ; |428| 
           SHL     .S1     A4,11,A3          ; |428| 
           OR      .L1X    A3,B4,A3          ; |428| 
	.dwpsn	"utility.c",432,1
           EXTU    .S1     A3,16,16,A4       ; |428| 
           ; BRANCH OCCURS {B31}             ; |432| 
	.dwattr DW$103, DW_AT_end_file("utility.c")
	.dwattr DW$103, DW_AT_end_line(0x1b0)
	.dwattr DW$103, DW_AT_end_column(0x01)
	.dwendtag DW$103

	.sect	".text"

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("_process_line"), DW_AT_symbol_name("__process_line")
	.dwattr DW$106, DW_AT_low_pc(__process_line)
	.dwattr DW$106, DW_AT_high_pc(0x00)
	.dwattr DW$106, DW_AT_begin_file("utility.c")
	.dwattr DW$106, DW_AT_begin_line(0x65)
	.dwattr DW$106, DW_AT_begin_column(0x0d)
	.dwattr DW$106, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$106, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",102,1

;******************************************************************************
;* FUNCTION NAME: __process_line                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B27,B28,B29,B30,B31              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,*
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B27,B28,B29,B30,B31              *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************
__process_line:
;** --------------------------------------------------------------------------*
DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_name("source"), DW_AT_symbol_name("_source")
	.dwattr DW$107, DW_AT_type(*DW$T$38)
	.dwattr DW$107, DW_AT_location[DW_OP_reg4]
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest"), DW_AT_symbol_name("_dest")
	.dwattr DW$108, DW_AT_type(*DW$T$38)
	.dwattr DW$108, DW_AT_location[DW_OP_reg20]
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_name("line_no"), DW_AT_symbol_name("_line_no")
	.dwattr DW$109, DW_AT_type(*DW$T$10)
	.dwattr DW$109, DW_AT_location[DW_OP_reg6]
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_name("show_stamp"), DW_AT_symbol_name("_show_stamp")
	.dwattr DW$110, DW_AT_type(*DW$T$10)
	.dwattr DW$110, DW_AT_location[DW_OP_reg22]
;** 102	-----------------------    source = source;
;** 102	-----------------------    dest = dest;
;** 104	-----------------------    line = (unsigned short * restrict)dest;
;** 113	-----------------------    *(double * restrict)dest = v$5 = color_background;
;** 114	-----------------------    ((double *)dest)[1] = color_l_edge;
;** 116	-----------------------    dest += 16;
;** 117	-----------------------    p = &source[16];
;**  	-----------------------    V$3 = *(&u);
;**  	-----------------------    V$2 = *(&u);
;**  	-----------------------    V$1 = *(&u);
;**  	-----------------------    V$0 = *(&u);
;**  	-----------------------    K$40 = (-2017);
;**  	-----------------------    K$56 = 0xfffff800u;
;**  	-----------------------    K$59 = (-32);
;** 117	-----------------------    L$1 = 76;
;**  	-----------------------    #pragma MUST_ITERATE(76, 76, 76)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 119	-----------------------    s0.d = *(const double *)p++{8};
;** 96	-----------------------    C$46 = *(&s0);  // [7]
;** 96	-----------------------    V$3 = (unsigned short)(_extu((unsigned)(unsigned short)(V$3&K$40|_extu((unsigned)C$46, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$46<<8&K$56);  // [7]
;** 97	-----------------------    y$35 = (int)(V$3 = (unsigned short)(V$3&K$59|C$46>>3));  // [7]
;** 98	-----------------------    *(&s0) = y$35;  // [7]
;** 96	-----------------------    C$45 = *(&s0+2);  // [7]
;** 96	-----------------------    V$2 = (unsigned short)(_extu((unsigned)(unsigned short)(V$2&K$40|_extu((unsigned)C$45, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$45<<8&K$56);  // [7]
;** 97	-----------------------    y$44 = (int)(V$2 = (unsigned short)(V$2&K$59|C$45>>3));  // [7]
;** 98	-----------------------    *(&s0+2) = y$44;  // [7]
;** 96	-----------------------    C$44 = *(&s0+4);  // [7]
;** 96	-----------------------    V$1 = (unsigned short)(_extu((unsigned)(unsigned short)(V$1&K$40|_extu((unsigned)C$44, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$44<<8&K$56);  // [7]
;** 97	-----------------------    y$53 = (int)(V$1 = (unsigned short)(V$1&K$59|C$44>>3));  // [7]
;** 98	-----------------------    *(&s0+4) = y$53;  // [7]
;** 96	-----------------------    C$43 = *(&s0+6);  // [7]
;** 96	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$40|_extu((unsigned)C$43, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$43<<8&K$56);  // [7]
;** 97	-----------------------    y$62 = (int)(V$0 = (unsigned short)(V$0&K$59|C$43>>3));  // [7]
;** 98	-----------------------    *(&s0+6) = y$62;  // [7]
;** 125	-----------------------    *(double *)dest++{8} = s0.d;
;** 117	-----------------------    if ( --L$1 ) goto g2;
;** 130	-----------------------    *(double * restrict)dest = color_r_edge;

           STW     .D2T1   A11,*SP--(8)      ; |102| 
||         MVKL    .S1     _color_l_edge,A3  ; |114| 

           STW     .D2T1   A10,*+SP(4)       ; |102| 
||         MVKH    .S1     _color_l_edge,A3  ; |114| 
||         MVKL    .S2     _color_background,B5 ; |113| 

           LDDW    .D1T1   *A3,A5:A4         ; |114| 
||         MVKH    .S2     _color_background,B5 ; |113| 
||         MV      .L2X    A4,B21            ; |102| 

           LDDW    .D2T1   *B5,A11:A10       ; |113| 
||         MV      .L1X    B4,A19            ; |102| 
||         MVK     .S2     0xfffff800,B17

           MVK     .L1     0x1,A2            ; init prolog collapse predicate
||         MV      .S1X    B4,A29            ; |102| 
||         MVK     .S2     0xffffffe0,B9

           MVK     .S2     0x4c,B5           ; |117| 
||         MV      .L1X    B21,A3            ; |102| Define a twin register
||         MVK     .S1     0xfffff81f,A24
||         MV      .D1     A6,A30            ; |102| 

           ADD     .L2     1,B5,B0
||         ZERO    .L1     A3
||         ADD     .D1     A3,16,A22         ; |117| 
||         MV      .S1X    B17,A25
||         MVC     .S2     CSR,B19

           SET     .S1     A3,0xf,0xf,A1     ; init prolog collapse predicate
||         STDW    .D1T1   A5:A4,*+A19(8)    ; |114| 
||         AND     .L2     -2,B19,B4
||         MV      .L1X    B9,A23

           ADDK    .S1     16,A19            ; |116| 
||         STDW    .D1T1   A11:A10,*A19      ; |113| 
||         SUB     .L1X    B0,1,A0
||         MVC     .S2     B4,CSR            ; interrupts off
||         MV      .L2     B6,B1             ; |102| 
||         MV      .D2     B3,B30            ; |102| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 117
;*      Loop opening brace source line   : 118
;*      Loop closing brace source line   : 128
;*      Known Minimum Trip Count         : 76                    
;*      Known Maximum Trip Count         : 76                    
;*      Known Max Trip Count Factor      : 76
;*      Loop Carried Dependency Bound(^) : 12
;*      Unpartitioned Resource Bound     : 20
;*      Partitioned Resource Bound(*)    : 20
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                    20*      19     
;*      .D units                     2        0     
;*      .M units                     0        0     
;*      .X cross paths               2        8     
;*      .T address paths             2        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           3        1     (.L or .S unit)
;*      Addition ops (.LSD)         17       15     (.L or .S or .D unit)
;*      Bound(.L .S .LS)            12       10     
;*      Bound(.L .S .D .LS .LSD)    14       12     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 20 Register is live too long
;*         ii = 20 Did not find schedule
;*         ii = 21 Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 1
;*      Collapsed prolog stages     : 2
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh16
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L21:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L22:    ; PIPED LOOP KERNEL
DW$L$__process_line$3$B:
	.dwpsn	"utility.c",118,0

           SHL     .S1     A4,5,A4           ; |96| <0,35> 
||         EXTU    .S2     B4,16,16,B5       ; |96| <1,14> 
||         AND     .L2X    A25,B5,B4         ; |96| <1,14> 

           OR      .L1     A4,A9,A9          ; |96| <0,36> 
||         EXTU    .S2     B5,21,21,B8       ; |96| <1,15> 
||         EXTU    .S1     A5,3,5,A4         ; |96| <1,15> 

           EXTU    .S2     B7,24,16,B4       ; |96| <0,37> 
||         OR      .L2     B4,B8,B17         ; |96| <1,16> 
||         SHL     .S1     A4,5,A4           ; |96| <1,16> 

           AND     .L2X    A25,B4,B8         ; |96| <0,38> 
||         EXTU    .S2     B7,24,24,B4       ; |96| <0,38> 
||         EXTU    .S1     A3,24,16,A5       ; |96| <0,38> 
||         OR      .L1     A4,A7,A4          ; |96| <1,17> 

           EXTU    .S2     B4,3,5,B4         ; |96| <0,39> 
||         AND     .L1     A25,A5,A5         ; |96| <0,39> 
||         EXTU    .S1     A4,16,16,A4       ; |96| <1,18> 

           SHL     .S2     B4,5,B4           ; |96| <0,40> 
||         EXTU    .S1     A4,21,21,A4       ; |96| <1,19> 

           EXTU    .S1     A3,24,27,A6       ; |96| <0,41> 
||         OR      .L2X    B4,A27,B9         ; |96| <0,41>  ^ 
||         EXTU    .S2     B6,24,27,B16      ; |96| <1,20> 
||         OR      .L1     A28,A4,A3         ; |96| <1,20> 

           EXTU    .S1     A9,16,16,A4       ; |96| <0,42> 
||         EXTU    .S2     B17,16,16,B4      ; |96| <1,21> 
|| [ A0]   LDDW    .D1T1   *A22++,A5:A4      ; |119| <2,0> 

           EXTU    .S2     B9,16,16,B4       ; |96| <0,43>  ^ 
||         EXTU    .S1     A4,21,21,A4       ; |96| <0,43> 
||         AND     .L2X    A23,B4,B9         ; |97| <1,22> 

           EXTU    .S2     B4,21,21,B4       ; |96| <0,44>  ^ 
||         OR      .L1     A5,A4,A4          ; |96| <0,44> 
||         OR      .L2     B16,B9,B9         ; |97| <1,23> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <1,23> 

           EXTU    .S2     B7,24,27,B7       ; |96| <0,45> 
||         OR      .L2     B8,B4,B4          ; |96| <0,45>  ^ 
||         EXTU    .S1     A4,16,16,A4       ; |96| <0,45> 
||         AND     .L1     A23,A3,A3         ; |97| <1,24> 

           EXTU    .S2     B4,16,16,B4       ; |96| <0,46>  ^ 
||         AND     .L1     A23,A4,A3         ; |97| <0,46> 
||         OR      .S1     A8,A3,A8          ; |97| <1,25> 

           AND     .L2X    A23,B4,B4         ; |97| <0,47>  ^ 
||         OR      .L1     A6,A3,A3          ; |97| <0,47> 
||         EXTU    .S1     A5,24,16,A6       ; |96| <2,5> 

           OR      .L2     B7,B4,B4          ; |97| <0,48>  ^ 
|| [!A1]   EXTU    .S1     A3,16,16,A16      ; |97| <0,48> 
||         AND     .L1     A25,A6,A28        ; |96| <2,6> 

   [ B0]   SUB     .L2     B0,1,B0           ; |117| <0,49> 
||         EXTU    .S2     B4,16,16,B4       ; |97| <0,49>  ^ 
||         MV      .D1     A16,A6            ; |97| <0,49> 
||         AND     .L1     A24,A16,A9        ; |96| <1,28> 
||         MVD     .M1     A5,A18            ; |119| <2,7> Split a long life
||         EXTU    .S1     A4,24,24,A3       ; |96| <2,7> 

   [ B0]   B       .S2     L22               ; |117| <0,50> 
||         PACK2   .L1     A6,A26,A21        ; |98| <0,50> 
|| [!A2]   EXTU    .S1     A8,16,16,A7       ; |97| <1,29> 

   [!A2]   EXTU    .S2     B9,16,16,B18      ; |97| <1,30> 
||         MV      .D1     A7,A3             ; |97| <1,30> 
||         EXTU    .S1     A5,24,27,A8       ; |96| <2,9> 
||         MV      .L2X    A3,B7             ; |96| <2,9> Define a twin register
||         AND     .L1     A24,A7,A7         ; |96| <2,9> 

   [!A1]   MV      .D1X    B4,A17            ; |97| <0,52>  ^ Define a twin register
||         MV      .L2     B18,B4            ; |97| <1,31> 
||         PACKHL2 .L1     A18,A3,A26        ; |98| <1,31> 
||         EXTU    .S1     A5,24,24,A5       ; |96| <2,10> 
||         EXTU    .S2     B7,3,5,B7         ; |96| <2,10> 

           MV      .D1     A17,A6            ; |97| <0,53> 
||         AND     .L1     A24,A17,A27       ; |96| <1,32>  ^ 
||         PACKHL2 .L2     B6,B4,B4          ; |98| <1,32> 
||         EXTU    .S1     A26,8,24,A3       ; |96| <1,32> 
||         AND     .D2X    A24,B18,B6        ; |96| <2,11> 
||         SHL     .S2     B7,5,B7           ; |96| <2,11> 

   [ A2]   SUB     .D1     A2,1,A2           ; <0,54> 
||         PACK2   .L1X    A6,B5,A20         ; |98| <0,54> 
||         MVD     .M2     B4,B5             ; |98| <1,33> Split a long life
||         EXTU    .S2     B4,8,24,B7        ; |96| <1,33> 
||         EXTU    .S1     A3,24,24,A4       ; |96| <1,33> 
||         OR      .L2     B7,B6,B4          ; |96| <2,12> 
||         MV      .D2X    A4,B6             ; |119| <2,12> Define a twin register

	.dwpsn	"utility.c",128,0

   [ A1]   MPYSU   .M1     2,A1,A1           ; <0,55> 
|| [ A0]   SUB     .L1     A0,1,A0           ; <0,55> 
|| [!A1]   STDW    .D1T1   A21:A20,*A19++    ; |125| <0,55> 
||         EXTU    .S1     A4,3,5,A4         ; |96| <1,34> 
||         EXTU    .S2     B6,24,16,B5       ; |96| <2,13> 

DW$L$__process_line$3$E:
;** --------------------------------------------------------------------------*
L23:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;** 131	-----------------------    ((double *)dest)[1] = v$5;
;** 133	-----------------------    if ( !((line_no >= 14)&(line_no < 16)|(line_no >= 226)&(line_no < 228)) ) goto g6;
;**  	-----------------------    V$4 = *(&u);
;** 136	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(4)
;**  	-----------------------    U$157 = &source[24];
;**  	-----------------------    K$160 = 1272;
;**  	-----------------------    U$180 = &line[12];
;** 136	-----------------------    L$2 = 72;
;**  	-----------------------    #pragma MUST_ITERATE(72, 72, 72)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)

           EXTU    .S2     B7,24,24,B31      ; |96| (E) <2,38> 
||         SHL     .S1     A4,5,A4           ; |96| (E) <2,35> 
||         CMPLT   .L1     A30,14,A28        ; |133| 
||         MV      .L2X    A25,B17

           EXTU    .S2     B7,24,16,B4       ; |96| (E) <2,37> 
||         OR      .L1     A4,A9,A9          ; |96| (E) <2,36> 
||         EXTU    .S1     A3,24,16,A5       ; |96| (E) <2,38> 

           AND     .L2X    A25,B4,B8         ; |96| (E) <2,38> 
||         EXTU    .S2     B31,3,5,B4        ; |96| (E) <2,39> 
||         EXTU    .S1     A9,16,16,A4       ; |96| (E) <2,42> 
||         AND     .L1     A25,A5,A5         ; |96| (E) <2,39> 

           SHL     .S2     B4,5,B4           ; |96| (E) <2,40> 
||         EXTU    .S1     A4,21,21,A4       ; |96| (E) <2,43> 

           OR      .L2X    B4,A27,B9         ; |96| (E) <2,41>  ^ 
||         OR      .L1     A5,A4,A4          ; |96| (E) <2,44> 
||         EXTU    .S1     A3,24,27,A6       ; |96| (E) <2,41> 
||         EXTU    .S2     B7,24,27,B29      ; |96| (E) <2,45> 

           EXTU    .S2     B9,16,16,B4       ; |96| (E) <2,43>  ^ 
||         EXTU    .S1     A4,16,16,A4       ; |96| (E) <2,45> 
||         MV      .L2X    A23,B9

           EXTU    .S2     B4,21,21,B4       ; |96| (E) <2,44>  ^ 
||         AND     .L1     A23,A4,A3         ; |97| (E) <2,46> 
||         MVK     .S1     16,A22            ; |133| 

           OR      .L2     B8,B4,B4          ; |96| (E) <2,45>  ^ 
||         OR      .D1     A6,A3,A3          ; |97| (E) <2,47> 
||         MVK     .S2     226,B28           ; |133| 
||         CMPLT   .L1     A30,A22,A18       ; |133| 
||         MVKL    .S1     _color_r_edge,A31 ; |130| 

           EXTU    .S2     B4,16,16,B4       ; |96| (E) <2,46>  ^ 
||         EXTU    .S1     A3,16,16,A16      ; |97| (E) <2,48> 
||         XOR     .L1     1,A28,A3          ; |133| 

           AND     .L2X    A23,B4,B4         ; |97| (E) <2,47>  ^ 
||         MV      .L1     A16,A6            ; |97| (E) <2,49> 
||         MVK     .S2     228,B27           ; |133| 
||         AND     .D1     A18,A3,A3         ; |133| 
||         MVKH    .S1     _color_r_edge,A31 ; |130| 

           OR      .L2     B29,B4,B4         ; |97| (E) <2,48>  ^ 
||         PACK2   .L1     A6,A26,A21        ; |98| (E) <2,50> 
||         MVC     .S2     B19,CSR           ; interrupts on

           EXTU    .S2     B4,16,16,B4       ; |97| (E) <2,49>  ^ 
           NOP             1

           CMPLT   .L2X    A30,B28,B4        ; |133| 
||         MV      .L1X    B4,A6             ; |97| 

           XOR     .S2     1,B4,B4           ; |133| 
||         MVK     .S1     0x4f8,A6
||         CMPLT   .L2X    A30,B27,B5        ; |133| 
||         PACK2   .L1X    A6,B5,A20         ; |98| (E) <2,54> 

           ADD     .D2     B21,24,B5
||         AND     .L2     B5,B4,B4          ; |133| 
||         STDW    .D1T1   A21:A20,*A19++    ; |125| (E) <2,55> 

           MVK     .S2     0x48,B4           ; |136| 
||         OR      .L2X    B4,A3,B0          ; |133| 
||         LDDW    .D1T1   *A31,A5:A4        ; |130| 

           NOP             1
   [!B0]   BNOP    .S1     L27,2             ; |133| 
           STDW    .D1T1   A5:A4,*A19        ; |130| 
           STDW    .D1T1   A11:A10,*+A19(8)  ; |131| 
           ADD     .D1     A29,24,A4
           ; BRANCHCC OCCURS {L27}           ; |133| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 96	-----------------------    C$42 = _mpyus(*(U$157 += 8), 10)+K$160;  // [7]
;** 96	-----------------------    C$41 = (unsigned char)(C$42>>4);  // [7]
;** 96	-----------------------    V$4 = (unsigned short)(_extu((unsigned)(unsigned short)(V$4&K$40|_extu((unsigned)C$41, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$42<<4&K$56);  // [7]
;** 97	-----------------------    y$79 = (int)(V$4 = (unsigned short)(V$4&K$59|C$41>>3));  // [7]
;** 98	-----------------------    *(U$180 += 4) = y$79;  // [7]
;** 96	-----------------------    C$40 = _mpyus(U$157[2], 10)+K$160;  // [7]
;** 96	-----------------------    C$39 = (unsigned char)(C$40>>4);  // [7]
;** 96	-----------------------    V$4 = (unsigned short)(_extu((unsigned)(unsigned short)(V$4&K$40|_extu((unsigned)C$39, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$40<<4&K$56);  // [7]
;** 97	-----------------------    y$79 = (int)(V$4 = (unsigned short)(V$4&K$59|C$39>>3));  // [7]
;** 98	-----------------------    U$180[1] = y$79;  // [7]
;** 96	-----------------------    C$38 = _mpyus(U$157[4], 10)+K$160;  // [7]
;** 96	-----------------------    C$37 = (unsigned char)(C$38>>4);  // [7]
;** 96	-----------------------    V$4 = (unsigned short)(_extu((unsigned)(unsigned short)(V$4&K$40|_extu((unsigned)C$37, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$38<<4&K$56);  // [7]
;** 97	-----------------------    y$79 = (int)(V$4 = (unsigned short)(V$4&K$59|C$37>>3));  // [7]
;** 98	-----------------------    U$180[2] = y$79;  // [7]
;** 96	-----------------------    C$36 = _mpyus(U$157[6], 10)+K$160;  // [7]
;** 96	-----------------------    C$35 = (unsigned char)(C$36>>4);  // [7]
;** 96	-----------------------    V$4 = (unsigned short)(_extu((unsigned)(unsigned short)(V$4&K$40|_extu((unsigned)C$35, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$36<<4&K$56);  // [7]
;** 97	-----------------------    y$79 = (int)(V$4 = (unsigned short)(V$4&K$59|C$35>>3));  // [7]
;** 98	-----------------------    U$180[3] = y$79;  // [7]
;** 136	-----------------------    if ( --L$2 ) goto g5;

           MVC     .S2     CSR,B22
||         MV      .L1X    B4,A0
||         MV      .L2X    A24,B16
||         MVK     .S1     0x1,A1            ; init prolog collapse predicate

           AND     .L2     -2,B22,B4
||         MV      .L1X    B5,A5

           MVC     .S2     B4,CSR            ; interrupts off
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 136
;*      Loop opening brace source line   : 137
;*      Loop closing brace source line   : 137
;*      Loop Unroll Multiple             : 4x
;*      Known Minimum Trip Count         : 72                    
;*      Known Maximum Trip Count         : 72                    
;*      Known Max Trip Count Factor      : 72
;*      Loop Carried Dependency Bound(^) : 36
;*      Unpartitioned Resource Bound     : 19
;*      Partitioned Resource Bound(*)    : 25
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                    12       25*    
;*      .D units                     8        0     
;*      .M units                     2        2     
;*      .X cross paths               4       13     
;*      .T address paths             5        3     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4       29     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             6       13     
;*      Bound(.L .S .D .LS .LSD)     8       18     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 36 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L24:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L25:    ; PIPED LOOP KERNEL
DW$L$__process_line$8$B:
	.dwpsn	"utility.c",137,0

           AND     .L2X    B17,A3,B6         ; |96| <0,19> 
||         EXTU    .S2     B4,16,16,B4       ; |96| <0,19>  ^ 

           SHL     .S1X    B18,5,A3          ; |96| <0,20> 
||         EXTU    .S2     B4,21,21,B4       ; |96| <0,20>  ^ 

           EXTU    .S2     B5,20,27,B4       ; |96| <0,21> 
||         OR      .L2     B8,B4,B5          ; |96| <0,21>  ^ 

           EXTU    .S2     B5,16,16,B5       ; |96| <0,22>  ^ 
           AND     .L2     B9,B5,B5          ; |97| <0,23>  ^ 
           OR      .L2X    A7,B5,B5          ; |97| <0,24>  ^ 
           EXTU    .S2     B5,16,16,B5       ; |97| <0,25>  ^ 

           AND     .L2     B16,B5,B8         ; |96| <0,26>  ^ 
||         ADD     .L1     A6,A9,A7          ; |96| <0,26> 

           MV      .L1X    B5,A3             ; |97| <0,27> 
||         OR      .L2X    A3,B8,B5          ; |96| <0,27>  ^ 
||         EXTU    .S1     A7,20,24,A8       ; |96| <0,27> 

           EXTU    .S2     B5,16,16,B5       ; |96| <0,28>  ^ 
||         EXTU    .S1     A8,3,5,A8         ; |96| <0,28> 

           EXTU    .S2     B5,21,21,B5       ; |96| <0,29>  ^ 
||         SHL     .S1     A8,5,A8           ; |96| <0,29> 

           SHL     .S2X    A7,4,B6           ; |96| <0,30> 
||         OR      .L2     B6,B5,B5          ; |96| <0,30>  ^ 
||         EXTU    .S1     A7,20,27,A7       ; |96| <0,30> 

           AND     .L2     B17,B6,B6         ; |96| <0,31> 
||         EXTU    .S2     B5,16,16,B5       ; |96| <0,31>  ^ 

           AND     .L2     B9,B5,B5          ; |97| <0,32>  ^ 
           OR      .L2     B4,B5,B4          ; |97| <0,33>  ^ 
           EXTU    .S2     B4,16,16,B8       ; |97| <0,34>  ^ 

           ADD     .L2X    A6,B7,B4          ; |96| <0,35> 
||         AND     .D2     B16,B8,B5         ; |96| <0,35>  ^ 

           EXTU    .S2     B4,20,24,B5       ; |96| <0,36> 
||         OR      .L2X    A8,B5,B7          ; |96| <0,36>  ^ 
||         LDBU    .D1T1   *++A5(8),A8       ; |96| <1,0> 

           EXTU    .S2     B7,16,16,B7       ; |96| <0,37>  ^ 
||         LDBU    .D1T1   *+A5(2),A8        ; |96| <1,1> 

           EXTU    .S2     B7,21,21,B7       ; |96| <0,38>  ^ 
||         SHL     .S1X    B4,4,A8           ; |96| <0,38> 
||         LDBU    .D1T1   *+A5(4),A7        ; |96| <1,2> 

           EXTU    .S2     B5,3,5,B6         ; |96| <0,39> 
||         OR      .L2     B6,B7,B5          ; |96| <0,39>  ^ 

           AND     .L2X    B17,A8,B5         ; |96| <0,40> 
||         EXTU    .S2     B5,16,16,B7       ; |96| <0,40>  ^ 

           SHL     .S2     B6,5,B7           ; |96| <0,41> 
||         AND     .L2     B9,B7,B6          ; |97| <0,41>  ^ 
||         MPYSU   .M1     10,A8,A9          ; |96| <1,5> 

           EXTU    .S2     B4,20,27,B6       ; |96| <0,42> 
||         OR      .L2X    A7,B6,B4          ; |97| <0,42>  ^ 
||         LDBU    .D1T1   *+A5(6),A3        ; |96| <1,6> 

           EXTU    .S2     B4,16,16,B4       ; |97| <0,43>  ^ 
||         MPYSU   .M2X    10,A8,B19         ; |96| <1,7> 
||         MPYSU   .M1     10,A7,A9          ; |96| <1,7> 
||         ADD     .L1     A6,A9,A8          ; |96| <1,7> 

   [!A1]   STH     .D1T1   A3,*++A4(8)       ; |98| <0,44> 
||         AND     .S2     B16,B4,B20        ; |96| <0,44>  ^ 
||         EXTU    .S1     A8,20,27,A7       ; |96| <1,8> 

   [!A1]   STH     .D1T2   B4,*+A4(4)        ; |98| <0,45> 
||         OR      .L2     B7,B20,B7         ; |96| <0,45>  ^ 
||         SHL     .S2X    A8,4,B4           ; |96| <1,9> 
||         EXTU    .S1     A8,20,24,A3       ; |96| <1,9> 

   [!A1]   STH     .D1T2   B8,*+A4(2)        ; |98| <0,46> 
||         EXTU    .S2     B7,16,16,B4       ; |96| <0,46>  ^ 
||         AND     .L2     B17,B4,B8         ; |96| <1,10> 
||         EXTU    .S1     A3,3,5,A8         ; |96| <1,10> 

           EXTU    .S2     B4,21,21,B4       ; |96| <0,47>  ^ 
||         MPYSU   .M2X    10,A3,B7          ; |96| <1,11> 
||         SHL     .S1     A8,5,A8           ; |96| <1,11> 

   [ A0]   SUB     .L1     A0,1,A0           ; |136| <0,48> 
||         OR      .L2     B5,B4,B4          ; |96| <0,48>  ^ 

   [ A0]   B       .S1     L25               ; |136| <0,49> 
||         EXTU    .S2     B4,16,16,B4       ; |96| <0,49>  ^ 

           AND     .L2     B9,B4,B4          ; |97| <0,50>  ^ 

           OR      .L2     B6,B4,B4          ; |97| <0,51>  ^ 
||         ADD     .S2X    A6,B19,B5         ; |96| <1,15> 

   [!A1]   EXTU    .S2     B4,16,16,B18      ; |97| <0,52>  ^ 

           MV      .L2     B18,B6            ; |97| <0,53> 
||         EXTU    .S2     B5,20,24,B4       ; |96| <1,17> 
||         AND     .D2     B16,B18,B18       ; |96| <1,17>  ^ 
||         SHL     .S1X    B5,4,A3           ; |96| <1,17> 

   [ A1]   SUB     .L1     A1,1,A1           ; <0,54> 
|| [!A1]   STH     .D1T2   B6,*+A4(6)        ; |98| <0,54> 
||         EXTU    .S2     B4,3,5,B18        ; |96| <1,18> 
||         OR      .L2X    A8,B18,B4         ; |96| <1,18>  ^ 

DW$L$__process_line$8$E:
;** --------------------------------------------------------------------------*
L26:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           EXTU    .S2     B4,16,16,B4       ; |96| (E) <1,19>  ^ 
           EXTU    .S2     B4,21,21,B4       ; |96| (E) <1,20>  ^ 

           OR      .L2     B8,B4,B5          ; |96| (E) <1,21>  ^ 
||         EXTU    .S2     B5,20,27,B4       ; |96| (E) <1,21> 

           EXTU    .S2     B5,16,16,B5       ; |96| (E) <1,22>  ^ 
           AND     .L2     B9,B5,B5          ; |97| (E) <1,23>  ^ 
           OR      .L2X    A7,B5,B5          ; |97| (E) <1,24>  ^ 

           EXTU    .S2     B5,16,16,B5       ; |97| (E) <1,25>  ^ 
||         SHL     .S1X    B18,5,A3          ; |96| (E) <1,20> 
||         AND     .L2X    B17,A3,B6         ; |96| (E) <1,19> 

           AND     .L2     B16,B5,B8         ; |96| (E) <1,26>  ^ 

           OR      .L2X    A3,B8,B5          ; |96| (E) <1,27>  ^ 
||         MV      .L1X    B5,A3             ; |97| (E) <1,27> 

           EXTU    .S2     B5,16,16,B5       ; |96| (E) <1,28>  ^ 
           EXTU    .S2     B5,21,21,B5       ; |96| (E) <1,29>  ^ 
           OR      .L2     B6,B5,B5          ; |96| (E) <1,30>  ^ 

           EXTU    .S2     B5,16,16,B5       ; |96| (E) <1,31>  ^ 
||         ADD     .L1     A6,A9,A31         ; |96| (E) <1,26> 

           AND     .L2     B9,B5,B5          ; |97| (E) <1,32>  ^ 
||         EXTU    .S1     A31,20,24,A8      ; |96| (E) <1,27> 

           OR      .L2     B4,B5,B4          ; |97| (E) <1,33>  ^ 
||         EXTU    .S1     A8,3,5,A8         ; |96| (E) <1,28> 

           EXTU    .S2     B4,16,16,B8       ; |97| (E) <1,34>  ^ 
||         SHL     .S1     A8,5,A8           ; |96| (E) <1,29> 
||         ADD     .L2X    A6,B7,B29         ; |96| (E) <1,35> 

           AND     .L2     B16,B8,B5         ; |96| (E) <1,35>  ^ 
||         SHL     .S2X    A31,4,B31         ; |96| (E) <1,30> 

           OR      .L2X    A8,B5,B7          ; |96| (E) <1,36>  ^ 
||         EXTU    .S2     B29,20,24,B28     ; |96| (E) <1,36> 

           EXTU    .S2     B7,16,16,B7       ; |96| (E) <1,37>  ^ 

           EXTU    .S2     B7,21,21,B7       ; |96| (E) <1,38>  ^ 
||         AND     .L2     B17,B31,B6        ; |96| (E) <1,31> 

           EXTU    .S2     B28,3,5,B6        ; |96| (E) <1,39> 
||         OR      .L2     B6,B7,B5          ; |96| (E) <1,39>  ^ 

           EXTU    .S2     B5,16,16,B7       ; |96| (E) <1,40>  ^ 
||         EXTU    .S1     A31,20,27,A28     ; |96| (E) <1,30> 

           AND     .L2     B9,B7,B6          ; |97| (E) <1,41>  ^ 
||         SHL     .S2     B6,5,B7           ; |96| (E) <1,41> 

           OR      .L2X    A28,B6,B4         ; |97| (E) <1,42>  ^ 
           EXTU    .S2     B4,16,16,B4       ; |97| (E) <1,43>  ^ 
           AND     .L2     B16,B4,B20        ; |96| (E) <1,44>  ^ 

           SHL     .S1X    B29,4,A8          ; |96| (E) <1,38> 
||         OR      .L2     B7,B20,B7         ; |96| (E) <1,45>  ^ 
||         STH     .D1T1   A3,*++A4(8)       ; |98| (E) <1,44> 

           EXTU    .S2     B7,16,16,B4       ; |96| (E) <1,46>  ^ 
||         STH     .D1T2   B4,*+A4(4)        ; |98| (E) <1,45> 

           EXTU    .S2     B4,21,21,B4       ; |96| (E) <1,47>  ^ 
||         AND     .L2X    B17,A8,B27        ; |96| (E) <1,40> 

           OR      .L2     B27,B4,B4         ; |96| (E) <1,48>  ^ 
           EXTU    .S2     B4,16,16,B4       ; |96| (E) <1,49>  ^ 

           AND     .L2     B9,B4,B4          ; |97| (E) <1,50>  ^ 
||         EXTU    .S2     B29,20,27,B6      ; |96| (E) <1,42> 

           OR      .L2     B6,B4,B4          ; |97| (E) <1,51>  ^ 
||         STH     .D1T2   B8,*+A4(2)        ; |98| (E) <1,46> 

           STH     .D1T2   B4,*+A4(6)        ; |98| 
||         MVC     .S2     B22,CSR           ; interrupts on
||         MV      .L1X    B16,A24

;** --------------------------------------------------------------------------*
L27:    
;**	-----------------------g6:
;** 96	-----------------------    K$48 = 32;  // [7]
;** 140	-----------------------    if ( !((line_no >= 16)&(line_no < (K$141 = 226))) ) goto g10;
;**  	-----------------------    V$6 = *(&u);
;**  	-----------------------    V$5 = *(&u);
;**  	-----------------------    K$160 = 1272;
;**  	-----------------------    U$180 = &line[16];
;**  	-----------------------    U$264 = &source[32];
;**  	-----------------------    U$291 = &source[602];
;**  	-----------------------    U$314 = &line[301];
;** 142	-----------------------    L$3 = 3;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MVK     .S1     16,A3             ; |140| 
||         MVK     .S2     0xe2,B4           ; |140| 

           CMPLT   .L1     A30,A3,A3         ; |140| 
||         CMPLT   .L2X    A30,B4,B4         ; |140| 
||         MVK     .S2     602,B5
||         MVK     .S1     602,A4

           XOR     .L1     1,A3,A3           ; |140| 
||         ADD     .S1     A4,A29,A7
||         ADDAD   .D1     A29,4,A4
||         MVK     .S2     0x20,B18          ; |96| 

           MVK     .S2     0x4f8,B6

           AND     .L2X    B4,A3,B0          ; |140| 
||         MVK     .L1     0x3,A3            ; |142| 
||         ADD     .S2     B5,B21,B4
||         ADDAD   .D2     B21,4,B5

   [!B0]   BNOP    .S1     L31,5             ; |140| 
|| [ B0]   MV      .L1X    B17,A17

           ; BRANCHCC OCCURS {L31}           ; |140| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;** 96	-----------------------    C$34 = _mpyus(*U$264++{2}, 10)+K$160;  // [7]
;** 96	-----------------------    C$33 = (unsigned char)(C$34>>4);  // [7]
;** 96	-----------------------    V$6 = (unsigned short)(_extu((unsigned)(unsigned short)(V$6&K$40|_mpyu(_extu((unsigned)C$33, 3u, 5u), 32u)), 21u, 21u)|(unsigned)C$34<<4&K$56);  // [7]
;** 97	-----------------------    y$99 = (int)(V$6 = (unsigned short)(V$6&K$59|C$33>>3));  // [7]
;** 98	-----------------------    *U$180++ = y$99;  // [7]
;** 96	-----------------------    C$32 = _mpyus(*U$291++{2}, 10)+K$160;  // [7]
;** 96	-----------------------    C$31 = (unsigned char)(C$32>>4);  // [7]
;** 96	-----------------------    V$5 = (unsigned short)(_extu((unsigned)(unsigned short)(V$5&K$40|_extu((unsigned)C$31, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$32<<4&K$56);  // [7]
;** 97	-----------------------    y$107 = (int)(V$5 = (unsigned short)(V$5&K$59|C$31>>3));  // [7]
;** 98	-----------------------    *U$314++ = y$107;  // [7]
;** 142	-----------------------    if ( --L$3 ) goto g8;
;** 96	-----------------------    K$48 = 32;  // [7]

           MVC     .S2     CSR,B17
||         MV      .L1X    B9,A9
||         MV      .L2     B4,B9
||         MVK     .S1     0x2,A0            ; init prolog collapse predicate
||         MV      .D1     A24,A16
||         MV      .D2X    A4,B7

           AND     .L2     -2,B17,B4
||         MV      .L1X    B5,A8
||         SUB     .S2X    A3,1,B0

           MVC     .S2     B4,CSR            ; interrupts off
||         MV      .L1X    B6,A5

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 142
;*      Loop opening brace source line   : 143
;*      Loop closing brace source line   : 146
;*      Known Minimum Trip Count         : 3                    
;*      Known Maximum Trip Count         : 3                    
;*      Known Max Trip Count Factor      : 3
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 10
;*      Partitioned Resource Bound(*)    : 10
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     9       10*    
;*      .D units                     2        2     
;*      .M units                     2        1     
;*      .X cross paths               0        4     
;*      .T address paths             2        2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          8        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             5        5     
;*      Bound(.L .S .D .LS .LSD)     7        7     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 10 Schedule found with 3 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 2
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh4
;*
;*      Minimum safe trip count     : 2
;*----------------------------------------------------------------------------*
L28:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L29:    ; PIPED LOOP KERNEL
DW$L$__process_line$14$B:
	.dwpsn	"utility.c",143,0

           AND     .L2X    A17,B5,B5         ; |96| <0,15> 
||         EXTU    .S2     B4,16,16,B4       ; |96| <0,15>  ^ 
||         EXTU    .S1     A3,21,21,A3       ; |96| <0,15>  ^ 
||         MPYSU   .M1     10,A19,A18        ; |96| <1,5> 

           EXTU    .S2     B4,21,21,B4       ; |96| <0,16>  ^ 
||         OR      .L1     A18,A3,A3         ; |96| <0,16>  ^ 
||         MVK     .S1     32,A20            ; |96| <1,6> 
||         MPYSU   .M2     10,B16,B6         ; |96| <1,6> 

           EXTU    .S2     B6,20,27,B4       ; |96| <0,17> 
||         OR      .L2     B5,B4,B5          ; |96| <0,17>  ^ 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,17>  ^ 
||         ADD     .L1     A5,A18,A18        ; |96| <1,7> 

           EXTU    .S2     B5,16,16,B5       ; |96| <0,18>  ^ 
||         AND     .L1     A9,A3,A3          ; |97| <0,18>  ^ 
||         EXTU    .S1     A18,20,24,A19     ; |96| <1,8> 

   [ B0]   BDEC    .S2     L29,B0            ; |142| <0,19> 
||         OR      .L1     A4,A3,A3          ; |97| <0,19>  ^ 
||         ADD     .L2X    A5,B6,B6          ; |96| <1,9> 
||         EXTU    .S1     A19,3,5,A4        ; |96| <1,9> 

           AND     .L2X    A9,B5,B16         ; |97| <0,20>  ^ 
|| [!A0]   EXTU    .S1     A3,16,16,A6       ; |97| <0,20>  ^ 
||         EXTU    .S2     B6,20,24,B5       ; |96| <1,10> 
||         LDBU    .D1T1   *A8++(2),A19      ; |96| <2,0> 

           OR      .L2     B4,B16,B4         ; |97| <0,21>  ^ 
||         MV      .D1     A6,A3             ; |97| <0,21> 
||         EXTU    .S2     B5,3,5,B5         ; |96| <1,11> 
||         SHL     .S1     A18,4,A4          ; |96| <1,11> 
||         AND     .L1     A16,A6,A19        ; |96| <1,11>  ^ 
||         MPYU    .M1     A4,A20,A3         ; |96| <1,11> 
||         LDBU    .D2T2   *B9++(2),B16      ; |96| <2,1> 

   [!A0]   EXTU    .S2     B4,16,16,B8       ; |97| <0,22>  ^ 
|| [!A0]   STH     .D2T1   A3,*B7++          ; |98| <0,22> 
||         EXTU    .S1     A18,20,27,A4      ; |96| <1,12> 
||         AND     .L1     A17,A4,A18        ; |96| <1,12> 

           MV      .D2     B8,B4             ; |97| <0,23> 
||         AND     .L2X    A16,B8,B5         ; |96| <1,13>  ^ 
||         SHL     .S2     B5,5,B16          ; |96| <1,13> 
||         OR      .L1     A3,A19,A3         ; |96| <1,13>  ^ 

	.dwpsn	"utility.c",146,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,24> 
|| [!A0]   STH     .D1T2   B4,*A7++          ; |98| <0,24> 
||         SHL     .S2     B6,4,B5           ; |96| <1,14> 
||         OR      .L2     B16,B5,B4         ; |96| <1,14>  ^ 
||         EXTU    .S1     A3,16,16,A3       ; |96| <1,14>  ^ 

DW$L$__process_line$14$E:
;** --------------------------------------------------------------------------*
L30:    ; PIPED LOOP EPILOG

           MV      .L1     A16,A24
||         AND     .L2X    A17,B5,B4         ; |96| (E) <1,15> 
||         EXTU    .S1     A3,21,21,A3       ; |96| (E) <1,15>  ^ 
||         MPYSU   .M1     10,A19,A3         ; |96| (E) <2,5> 
||         EXTU    .S2     B4,16,16,B5       ; |96| (E) <1,15>  ^ 

           MV      .L2X    A9,B9
||         OR      .L1     A18,A3,A6         ; |96| (E) <1,16>  ^ 
||         MVK     .S1     32,A20            ; |96| (E) <2,6> 
||         MPYSU   .M2     10,B16,B4         ; |96| (E) <2,6> 
||         EXTU    .S2     B5,21,21,B5       ; |96| (E) <1,16>  ^ 

           EXTU    .S2     B6,20,27,B8       ; |96| (E) <1,17> 
||         OR      .L2     B4,B5,B5          ; |96| (E) <1,17>  ^ 
||         ADD     .L1     A5,A3,A3          ; |96| (E) <2,7> 
||         EXTU    .S1     A6,16,16,A6       ; |96| (E) <1,17>  ^ 

           AND     .L1     A9,A6,A6          ; |97| (E) <1,18>  ^ 
||         EXTU    .S1     A3,20,24,A18      ; |96| (E) <2,8> 
||         EXTU    .S2     B5,16,16,B6       ; |96| (E) <1,18>  ^ 

           OR      .L1     A4,A6,A5          ; |97| (E) <1,19>  ^ 
||         ADD     .L2X    A5,B4,B5          ; |96| (E) <2,9> 
||         EXTU    .S1     A18,3,5,A4        ; |96| (E) <2,9> 

           AND     .L2X    A9,B6,B4          ; |97| (E) <1,20>  ^ 
||         EXTU    .S2     B5,20,24,B6       ; |96| (E) <2,10> 
||         EXTU    .S1     A5,16,16,A6       ; |97| (E) <1,20>  ^ 

           OR      .L2     B8,B4,B4          ; |97| (E) <1,21>  ^ 
||         MV      .L1     A6,A5             ; |97| (E) <1,21> 
||         EXTU    .S2     B6,3,5,B6         ; |96| (E) <2,11> 
||         AND     .D1     A16,A6,A6         ; |96| (E) <2,11>  ^ 
||         MPYU    .M1     A4,A20,A4         ; |96| (E) <2,11> 
||         SHL     .S1     A3,4,A4           ; |96| (E) <2,11> 

           EXTU    .S2     B4,16,16,B4       ; |97| (E) <1,22>  ^ 
||         EXTU    .S1     A3,20,27,A3       ; |96| (E) <2,12> 
||         AND     .L1     A17,A4,A5         ; |96| (E) <2,12> 
||         STH     .D2T1   A5,*B7++          ; |98| (E) <1,22> 

;** --------------------------------------------------------------------------*

           MV      .L2     B4,B6             ; |97| (E) <1,23> 
||         SHL     .S2     B6,5,B4           ; |96| (E) <2,13> 
||         AND     .D2X    A16,B4,B8         ; |96| (E) <2,13>  ^ 

           OR      .L2     B4,B8,B4          ; |96| (E) <2,14>  ^ 
||         SHL     .S2     B5,4,B31          ; |96| (E) <2,14> 

           EXTU    .S2     B4,16,16,B6       ; |96| (E) <2,15>  ^ 
||         STH     .D1T2   B6,*A7++          ; |98| (E) <1,24> 
||         OR      .L1     A4,A6,A4          ; |96| (E) <2,13>  ^ 

           AND     .L2X    A17,B31,B4        ; |96| (E) <2,15> 
||         EXTU    .S2     B6,21,21,B6       ; |96| (E) <2,16>  ^ 
||         EXTU    .S1     A4,16,16,A4       ; |96| (E) <2,14>  ^ 

           OR      .L2     B4,B6,B4          ; |96| (E) <2,17>  ^ 
||         EXTU    .S1     A4,21,21,A4       ; |96| (E) <2,15>  ^ 

           EXTU    .S2     B4,16,16,B4       ; |96| (E) <2,18>  ^ 
||         OR      .L1     A5,A4,A4          ; |96| (E) <2,16>  ^ 

           AND     .L2X    A9,B4,B16         ; |97| (E) <2,20>  ^ 
||         EXTU    .S1     A4,16,16,A4       ; |96| (E) <2,17>  ^ 
||         EXTU    .S2     B5,20,27,B29      ; |96| (E) <2,17> 

           OR      .L2     B29,B16,B4        ; |97| (E) <2,21>  ^ 
||         AND     .L1     A9,A4,A4          ; |97| (E) <2,18>  ^ 

           EXTU    .S2     B4,16,16,B8       ; |97| (E) <2,22>  ^ 
||         OR      .L1     A3,A4,A3          ; |97| (E) <2,19>  ^ 

           MV      .L2     B8,B4             ; |97| (E) <2,23> 
||         EXTU    .S1     A3,16,16,A3       ; |97| 

           STH     .D2T1   A3,*B7++          ; |98| (E) <2,22> 
||         STH     .D1T2   B4,*A7++          ; |98| (E) <2,24> 
||         MV      .L2X    A17,B17
||         MVC     .S2     B17,CSR           ; interrupts on

;** --------------------------------------------------------------------------*
L31:    
;**	-----------------------g10:
;** 151	-----------------------    v$6 = cb_top;
;** 151	-----------------------    if ( !(v$3 = cb_color) ) goto g25;

           MVKL    .S2     _cb_color,B4      ; |151| 
||         MVKL    .S1     _cb_top,A3        ; |151| 

           MVKH    .S2     _cb_color,B4      ; |151| 
||         MVKH    .S1     _cb_top,A3        ; |151| 

           LDW     .D2T2   *B4,B2            ; |151| 
||         MVKL    .S2     _cb_v_thick,B4    ; |153| 
||         LDW     .D1T1   *A3,A20           ; |151| 

           NOP             3
           MVKH    .S2     _cb_v_thick,B4    ; |153| 

   [!B2]   BNOP    .S1     L40,4             ; |151| 
||         CMPLT   .L1     A30,A20,A4        ; |153| 
|| [ B2]   LDW     .D2T1   *B4,A19           ; |153| 

           ADD     .L1     A19,A20,A3        ; |153| 
           ; BRANCHCC OCCURS {L40}           ; |151| 
;** --------------------------------------------------------------------------*
;** 153	-----------------------    v$7 = cb_v_thick;
;** 153	-----------------------    if ( !((line_no < v$6)|(line_no >= v$6+v$7)) ) goto g16;

           CMPLT   .L1     A30,A3,A3         ; |153| 
||         MVKL    .S2     _cb_bottom,B4

           XOR     .L1     1,A3,A5           ; |153| 
||         MVKL    .S1     _cb_bottom,A3     ; |153| 
||         MVKH    .S2     _cb_bottom,B4

           OR      .L1     A5,A4,A0          ; |153| 
||         MVKH    .S1     _cb_bottom,A3     ; |153| 

   [!A0]   BNOP    .S1     L33,4             ; |153| 
|| [ A0]   LDW     .D1T1   *A3,A18           ; |153| 

           CMPLT   .L1     A30,A18,A1        ; |153| 
|| [!A0]   LDW     .D2T1   *B4,A18

           ; BRANCHCC OCCURS {L33}           ; |153| 
;** --------------------------------------------------------------------------*
;** 153	-----------------------    v$8 = cb_bottom;
;** 153	-----------------------    if ( line_no < v$8 ) goto g15;

           ADD     .L1     A19,A18,A3        ; |153| 
|| [ A1]   B       .S1     L32               ; |153| 
||         MVKL    .S2     _cb_h_thick,B4

           CMPLT   .L1     A30,A3,A0         ; |153| 
|| [ A1]   B       .S2     L37
|| [!A1]   MVKL    .S1     _cb_h_thick,A3

   [ A1]   ZERO    .L1     A0                ; nullify predicate
|| [!A1]   MVKH    .S1     _cb_h_thick,A3
||         MVKH    .S2     _cb_h_thick,B4

   [ A0]   BNOP    .S1     L34,2             ; |153| 
|| [ A1]   LDW     .D2T2   *B4,B6

           ; BRANCHCC OCCURS {L32}           ; |153| 
;** --------------------------------------------------------------------------*
;** 153	-----------------------    if ( line_no < v$8+v$7 ) goto g17;
   [!A0]   B       .S1     L38

   [!A0]   LDW     .D1T2   *A3,B6
|| [ A0]   MVKL    .S1     _cb_right,A3      ; |156| 
|| [ A0]   MVKL    .S2     _cb_h_thick,B4    ; |156| 

   [ A0]   MVKH    .S1     _cb_right,A3      ; |156| 
|| [ A0]   MVKH    .S2     _cb_h_thick,B4    ; |156| 

           ; BRANCHCC OCCURS {L34}           ; |153| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    v$9 = cb_h_thick;
;**  	-----------------------    goto g21;

           ADD     .S1     A19,A20,A3        ; |160| 
||         CMPLT   .L1     A30,A18,A5        ; |160| 

           CMPLT   .L1     A30,A3,A3         ; |160| 
           XOR     .L1     1,A3,A4           ; |160| 
           ; BRANCH OCCURS {L38} 
;** --------------------------------------------------------------------------*
L32:    
;**	-----------------------g15:
;**  	-----------------------    v$9 = cb_h_thick;
;**  	-----------------------    goto g21;
           ADD     .L1     A19,A20,A3        ; |160| 
           ; BRANCH OCCURS {L37} 
;** --------------------------------------------------------------------------*
L33:    
;**	-----------------------g16:
;**  	-----------------------    v$8 = cb_bottom;

           MVKL    .S2     _cb_h_thick,B4    ; |156| 
||         MVKL    .S1     _cb_right,A3      ; |156| 

           MVKH    .S2     _cb_h_thick,B4    ; |156| 
||         MVKH    .S1     _cb_right,A3      ; |156| 

;** --------------------------------------------------------------------------*
L34:    
;**	-----------------------g17:
;** 156	-----------------------    v$9 = cb_h_thick;
;** 156	-----------------------    C$29 = cb_right+v$9;
;** 156	-----------------------    C$30 = cb_left;
;** 156	-----------------------    if ( C$30 >= C$29 ) goto g21;
;**  	-----------------------    V$7 = *(&u);
;**  	-----------------------    U$157 = &source[2*C$30];
;**  	-----------------------    U$180 = &line[C$30];
;**  	-----------------------    U$364 = (unsigned short)v$3;
;**  	-----------------------    L$4 = C$29-C$30;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MVKL    .S1     _cb_left,A31      ; |156| 
||         LDW     .D1T1   *A3,A5            ; |156| 
||         LDW     .D2T2   *B4,B6            ; |156| 
||         MV      .L1X    B21,A4
||         EXTU    .S2     B2,16,16,B7

           MVKH    .S1     _cb_left,A31      ; |156| 
           LDW     .D1T1   *A31,A3           ; |156| 
           NOP             2
           ADD     .L2X    B6,A5,B4          ; |156| 
           NOP             1

           CMPLT   .L1X    A3,B4,A0          ; |156| 
||         ADDAH   .D1     A4,A3,A16
||         SUB     .L2X    B4,A3,B0

   [!A0]   B       .S1     L36               ; |156| 
||         ADDAH   .D1     A29,A3,A17

   [ A0]   LDBU    .D1T1   *A16++(2),A3      ; |96| 
           NOP             4
           ; BRANCHCC OCCURS {L36}           ; |156| 
;** --------------------------------------------------------------------------*
	.dwpsn	"utility.c",156,0
           EXTU    .S1     A3,3,5,A4         ; |96| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L35:    
DW$L$__process_line$26$B:
	.dwpsn	"utility.c",157,0
;**	-----------------------g19:
;** 96	-----------------------    C$28 = *U$157++{2};  // [7]
;** 96	-----------------------    V$7 = (unsigned short)(_extu((unsigned)(unsigned short)(V$7&K$40|_extu((unsigned)C$28, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$28<<8&K$56);  // [7]
;** 97	-----------------------    y$136 = (int)(V$7 = (unsigned short)(V$7&K$59|C$28>>3));  // [7]
;** 98	-----------------------    *U$180++ = disp_alpha_blend(U$364, (unsigned short)y$136);  // [7]
;** 156	-----------------------    if ( --L$4 ) goto g19;
;** 96	-----------------------    K$48 = 32;  // [7]

           AND     .L1     A24,A8,A31        ; |96| 
||         SHL     .S1     A4,5,A5           ; |96| 
||         SHL     .S2X    A3,8,B4           ; |96| 

           OR      .L1     A5,A31,A4         ; |96| 
||         AND     .L2     B17,B4,B4         ; |96| 
||         SHRU    .S1     A3,3,A3           ; |97| 

           EXTU    .S1     A4,16,16,A4       ; |96| 
           EXTU    .S1     A4,21,21,A4       ; |96| 
           NOP             1

           MV      .L1X    B7,A4             ; |98| 
||         OR      .L2X    B4,A4,B4          ; |96| 

           EXTU    .S2     B4,16,16,B4       ; |96| 

           CALL    .S1     _disp_alpha_blend ; |98| 
||         AND     .L2     B9,B4,B4          ; |97| 

           ADDKPC  .S2     RL4,B3,0          ; |98| 
           OR      .L1X    A3,B4,A3          ; |97| 
           EXTU    .S1     A3,16,16,A8       ; |97| 
           NOP             1
           MV      .L2X    A8,B4             ; |98| 
RL4:       ; CALL OCCURS {_disp_alpha_blend}  ; |98| 
DW$L$__process_line$26$E:
;** --------------------------------------------------------------------------*
DW$L$__process_line$27$B:

           SUB     .L2     B0,1,B0           ; |156| 
||         STH     .D1T1   A4,*A17++         ; |98| 

   [ B0]   BNOP    .S1     L35,4             ; |156| 
|| [ B0]   LDBU    .D1T1   *A16++(2),A3      ; |96| 

           EXTU    .S1     A3,3,5,A4         ; |96| 
           ; BRANCHCC OCCURS {L35}           ; |156| 
DW$L$__process_line$27$E:
;** --------------------------------------------------------------------------*
L36:    
           ADD     .L1     A19,A20,A3        ; |160| 
;** --------------------------------------------------------------------------*
L37:    
           CMPLT   .L1     A30,A3,A3         ; |160| 

           XOR     .S1     1,A3,A4           ; |160| 
||         CMPLT   .L1     A30,A18,A5        ; |160| 

;** --------------------------------------------------------------------------*
L38:    
;**	-----------------------g21:
;** 160	-----------------------    if ( (((line_no >= v$6+v$7)&(line_no < v$8)) == 0)|(v$9 <= 0) ) goto g25;

           AND     .L1     A5,A4,A4          ; |160| 
||         CMPGT   .L2     B6,0,B4           ; |160| 
||         MVKL    .S2     _cb_right,B5
||         MV      .S1X    B2,A31

           CMPEQ   .L1     A4,0,A5           ; |160| 
||         XOR     .L2     1,B4,B4           ; |160| 
||         MVKL    .S1     _cb_left,A4
||         MVKH    .S2     _cb_right,B5
||         MV      .D1X    B6,A0

           MVKH    .S1     _cb_left,A4

           OR      .L2X    B4,A5,B0          ; |160| 
||         EXTU    .S1     A31,16,16,A18

   [ B0]   BNOP    .S1     L40,5             ; |160| 
           ; BRANCHCC OCCURS {L40}           ; |160| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    V$9 = *(&u);
;**  	-----------------------    V$8 = *(&u);
;**  	-----------------------    U$364 = (unsigned short)v$3;
;**  	-----------------------    C$27 = cb_left;
;**  	-----------------------    U$388 = &source[2*C$27];
;**  	-----------------------    U$405 = &line[C$27];
;**  	-----------------------    C$26 = cb_right;
;**  	-----------------------    U$410 = &source[2*C$26];
;**  	-----------------------    U$427 = &line[C$26];
;**  	-----------------------    L$5 = v$9;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           LDW     .D1T2   *A4,B5
||         LDW     .D2T1   *B5,A4
||         MV      .L2X    A29,B4
||         MV      .L1X    B21,A3

           NOP             4

           ADDAH   .D1     A29,A4,A8
||         ADDAH   .D2     B21,B5,B7

           ADDAH   .D1     A3,A4,A17
||         ADDAH   .D2     B4,B5,B6

           LDBU    .D2T2   *B7++(2),B5       ; |96| 
           NOP             4
	.dwpsn	"utility.c",162,0
           EXTU    .S2     B5,3,5,B4         ; |96| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L39:    
DW$L$__process_line$32$B:
	.dwpsn	"utility.c",163,0
;**	-----------------------g23:
;** 96	-----------------------    C$25 = *U$388++{2};  // [7]
;** 96	-----------------------    V$9 = (unsigned short)(_extu((unsigned)(unsigned short)(V$9&K$40|_extu((unsigned)C$25, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$25<<8&K$56);  // [7]
;** 97	-----------------------    y$162 = (int)(V$9 = (unsigned short)(V$9&K$59|C$25>>3));  // [7]
;** 98	-----------------------    *U$405++ = disp_alpha_blend(U$364, (unsigned short)y$162);  // [7]
;** 96	-----------------------    C$24 = *U$410++{2};  // [7]
;** 96	-----------------------    V$8 = (unsigned short)(_extu((unsigned)(unsigned short)(V$8&K$40|_extu((unsigned)C$24, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$24<<8&K$56);  // [7]
;** 97	-----------------------    y$171 = (int)(V$8 = (unsigned short)(V$8&K$59|C$24>>3));  // [7]
;** 98	-----------------------    *U$427++ = disp_alpha_blend(U$364, (unsigned short)y$171);  // [7]
;** 162	-----------------------    if ( --L$5 ) goto g23;
;** 96	-----------------------    K$48 = 32;  // [7]

           SHL     .S2     B4,5,B8           ; |96| 
||         AND     .L2X    A24,B8,B4         ; |96| 
||         SHL     .S1X    B5,8,A3           ; |96| 

           OR      .L2     B8,B4,B4          ; |96| 
||         AND     .L1X    B17,A3,A3         ; |96| 

           EXTU    .S2     B4,16,16,B4       ; |96| 
           EXTU    .S2     B4,21,21,B4       ; |96| 
           SHRU    .S2     B5,3,B5           ; |97| 
           OR      .L1X    A3,B4,A3          ; |96| 

           CALL    .S2     _disp_alpha_blend ; |98| 
||         EXTU    .S1     A3,16,16,A3       ; |96| 

           ADDKPC  .S2     RL5,B3,0          ; |98| 
           AND     .L2X    B9,A3,B4          ; |97| 
           OR      .L2     B5,B4,B4          ; |97| 
           EXTU    .S2     B4,16,16,B8       ; |97| 

           MV      .L2     B8,B4             ; |98| 
||         MV      .L1     A18,A4            ; |98| 

RL5:       ; CALL OCCURS {_disp_alpha_blend}  ; |98| 
DW$L$__process_line$32$E:
;** --------------------------------------------------------------------------*
DW$L$__process_line$33$B:
           LDBU    .D1T1   *A17++(2),A6      ; |96| 
           NOP             3
           AND     .L1     A24,A16,A31       ; |96| 
           EXTU    .S1     A6,3,5,A3         ; |96| 
           SHL     .S1     A3,5,A5           ; |96| 
           OR      .L1     A5,A31,A3         ; |96| 
           EXTU    .S1     A3,16,16,A3       ; |96| 

           SHL     .S2X    A6,8,B4           ; |96| 
||         EXTU    .S1     A3,21,21,A3       ; |96| 

           AND     .L2     B17,B4,B4         ; |96| 
           OR      .L2X    B4,A3,B4          ; |96| 
           EXTU    .S2     B4,16,16,B4       ; |96| 

           AND     .L2     B9,B4,B4          ; |97| 
||         CALL    .S1     _disp_alpha_blend ; |98| 

           SHRU    .S1     A6,3,A28          ; |97| 
           OR      .L1X    A28,B4,A3         ; |97| 
           EXTU    .S1     A3,16,16,A16      ; |97| 
           MV      .L2X    A4,B29            ; |98| 

           MV      .L1     A18,A4            ; |98| 
||         STH     .D2T2   B29,*B6++         ; |98| 
||         MV      .L2X    A16,B4            ; |98| 
||         ADDKPC  .S2     RL6,B3,0          ; |98| 

RL6:       ; CALL OCCURS {_disp_alpha_blend}  ; |98| 
DW$L$__process_line$33$E:
;** --------------------------------------------------------------------------*
DW$L$__process_line$34$B:

           SUB     .L1     A0,1,A0           ; |162| 
||         STH     .D1T1   A4,*A8++          ; |98| 

   [ A0]   BNOP    .S1     L39,4             ; |162| 
|| [ A0]   LDBU    .D2T2   *B7++(2),B5       ; |96| 

	.dwpsn	"utility.c",166,0
           EXTU    .S2     B5,3,5,B4         ; |96| 
           ; BRANCHCC OCCURS {L39}           ; |162| 
DW$L$__process_line$34$E:
;** --------------------------------------------------------------------------*
L40:    
;**	-----------------------g25:
;** 171	-----------------------    if ( !show_stamp ) goto g47;

   [!B1]   B       .S2     L42               ; |171| 
||         MVKL    .S1     _stamp_top,A3     ; |174| 

           MVKH    .S1     _stamp_top,A3     ; |174| 
   [ B1]   LDW     .D1T1   *A3,A3            ; |174| 
           NOP             3
           ; BRANCHCC OCCURS {L42}           ; |171| 
;** --------------------------------------------------------------------------*
;** 174	-----------------------    C$23 = stamp_top;
;** 174	-----------------------    if ( line_no < C$23 ) goto g47;
           MVKL    .S2     _stamp_height,B4  ; |174| 

           CMPLT   .L1     A30,A3,A0         ; |174| 
||         MVKH    .S2     _stamp_height,B4  ; |174| 

   [!A0]   LDW     .D2T2   *B4,B4            ; |174| 
|| [!A0]   MVKL    .S2     _stamp_mask,B6    ; |183| 
|| [!A0]   MVKL    .S1     _stamp_bmp,A5     ; |182| 

   [ A0]   BNOP    .S1     L42,1             ; |174| 
|| [!A0]   MVKL    .S2     _stamp_width,B5   ; |182| 

   [!A0]   MVKH    .S2     _stamp_mask,B6    ; |183| 
   [!A0]   MVKH    .S2     _stamp_width,B5   ; |182| 
           ADD     .L1X    A3,B4,A4          ; |174| 
           CMPLT   .L1     A30,A4,A0         ; |174| 
           ; BRANCHCC OCCURS {L42}           ; |174| 
;** --------------------------------------------------------------------------*
;** 174	-----------------------    if ( line_no >= stamp_height+C$23 ) goto g47;

   [!A0]   BNOP    .S2     L42,4             ; |174| 
||         SUB     .L1     A30,A3,A3         ; |182| 
||         MVKH    .S1     _stamp_bmp,A5     ; |182| 
|| [ A0]   LDW     .D2T2   *B5,B4            ; |182| 

           MPYLH   .M2X    B4,A3,B5          ; |182| 
|| [ A0]   MPYLH   .M1X    A3,B4,A4          ; |182| 

           ; BRANCHCC OCCURS {L42}           ; |174| 
;** --------------------------------------------------------------------------*
;** 182	-----------------------    C$21 = stamp_width;
;** 182	-----------------------    C$22 = (line_no-C$23)*C$21;
;** 182	-----------------------    bmp = C$22*2+stamp_bmp;
;** 183	-----------------------    mask = ((C$22>>2>>29)+C$22>>3)+stamp_mask;
;** 185	-----------------------    if ( C$21 <= 0 ) goto g47;

           MPYU    .M1X    B4,A3,A3          ; |182| 
||         CMPGT   .L2     B4,0,B1           ; |185| 
||         LDW     .D1T1   *A5,A31           ; |182| 
||         LDW     .D2T2   *B6,B7            ; |183| 
||         MVKL    .S2     _stamp_left,B9
||         ZERO    .L1     A9                ; |185| 

           ADD     .L2     7,B4,B8
||         MVKH    .S2     _stamp_left,B9

           ADD     .L1X    B5,A4,A4          ; |182| 
||         SHR     .S2     B8,3,B0
|| [ B1]   LDW     .D2T1   *B9,A16

           SHL     .S1     A4,16,A4          ; |182| 
||         MVK     .S2     0xffffff80,B5

           ADD     .L1     A3,A4,A3          ; |182| 
||         MVK     .S2     0x40,B6

   [!B1]   B       .S2     L42               ; |185| 
||         SHR     .S1     A3,2,A5           ; |183| 
||         ADDAH   .D1     A31,A3,A17        ; |182| 

           SHRU    .S1     A5,29,A5          ; |183| 
           ADD     .L1     A3,A5,A5          ; |183| 
           SHR     .S1     A5,3,A5           ; |183| 
           NOP             1
           ADD     .L2X    B7,A5,B8          ; |183| 
           ; BRANCHCC OCCURS {L42}           ; |185| 
;**  	-----------------------    v$14 = stamp_left;
;**  	-----------------------    K$508 = 64;
;**  	-----------------------    K$517 = (-128);
;**  	-----------------------    L$6 = C$21+7>>3;
;** 185	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 268435455, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 185
;*      Loop opening brace source line   : 186
;*      Loop closing brace source line   : 196
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 2
;*      Unpartitioned Resource Bound     : 16
;*      Partitioned Resource Bound(*)    : 16
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        2     
;*      .D units                    16*      16*    
;*      .M units                     0        0     
;*      .X cross paths               2        5     
;*      .T address paths            10        7     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)         11       14     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)    10       11     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 16 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 16 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 16 Did not find schedule
;*         ii = 17 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 17 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 17 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/22
;*                   Max Cond Regs Live :  3/6 
;*         ii = 17 Did not find schedule
;*         ii = 18 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 18 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 18 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/22
;*                   Max Cond Regs Live :  3/6 
;*         ii = 18 Did not find schedule
;*         ii = 19 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 19 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 19 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/22
;*                   Max Cond Regs Live :  3/6 
;*         ii = 19 Did not find schedule
;*         ii = 20 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 20 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 20 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/22
;*                   Max Cond Regs Live :  3/6 
;*         ii = 20 Did not find schedule
;*         ii = 21 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 21 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 21 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 21 Did not find schedule
;*         ii = 22 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 22 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 22 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 22 Did not find schedule
;*         ii = 23 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 23 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 23 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 23 Did not find schedule
;*         ii = 24 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 24 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 24 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/22
;*                   Max Cond Regs Live :  3/6 
;*         ii = 24 Did not find schedule
;*         ii = 26 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 26 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 26 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/22
;*                   Max Cond Regs Live :  3/6 
;*         ii = 26 Did not find schedule
;*         ii = 28 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 28 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 28 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/22
;*                   Max Cond Regs Live :  3/6 
;*         ii = 28 Did not find schedule
;*         ii = 30 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/23
;*                   Max Cond Regs Live :  3/6 
;*         ii = 30 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 16/21
;*                   Max Cond Regs Live :  3/6 
;*         ii = 30 Too many predicates live on one side
;*                   Regs Live Always   :  5/7  (A/B-side)
;*                   Max Regs Live      : 19/22
;*                   Max Cond Regs Live :  3/6 
;*         ii = 30 Did not find schedule
;*      Disqualified loop: Did not find schedule
;*----------------------------------------------------------------------------*
L41:    
DW$L$__process_line$39$B:
	.dwpsn	"utility.c",186,0
;**	-----------------------g30:
;** 187	-----------------------    m = mask[(i>>3)];
;**  	-----------------------    if ( !(m&1) ) goto g32;
;** 193	-----------------------    line[i+v$14] = bmp[i];
;**	-----------------------g32:
;**  	-----------------------    if ( !(m&2) ) goto g34;
;** 193	-----------------------    line[i+v$14+1] = bmp[i+1];
;**	-----------------------g34:
;**  	-----------------------    if ( !(m&4) ) goto g36;
;** 193	-----------------------    line[i+v$14+2] = bmp[i+2];
;**	-----------------------g36:
;**  	-----------------------    if ( !(m&0x8) ) goto g38;
;** 193	-----------------------    line[i+v$14+3] = bmp[i+3];
;**	-----------------------g38:
;**  	-----------------------    if ( !(m&0x10) ) goto g40;
;** 193	-----------------------    line[i+v$14+4] = bmp[i+4];
;**	-----------------------g40:
;**  	-----------------------    if ( !(m&K$48) ) goto g42;
;** 193	-----------------------    line[i+v$14+5] = bmp[i+5];
;**	-----------------------g42:
;**  	-----------------------    if ( !(m&K$508) ) goto g44;
;** 193	-----------------------    line[i+v$14+6] = bmp[i+6];
;**	-----------------------g44:
;**  	-----------------------    if ( !(m&K$517) ) goto g46;
;** 193	-----------------------    line[i+v$14+7] = bmp[i+7];
;**	-----------------------g46:
;** 185	-----------------------    i += 8;
;** 185	-----------------------    if ( --L$6 ) goto g30;
;**	-----------------------g47:
;**  	-----------------------    return;

           SHR     .S2X    A9,3,B4           ; |187| 
||         ADDAH   .D1     A17,A9,A4         ; |193| 
||         ADD     .L1     A9,A9,A31         ; |193| 
||         SUB     .L2     B0,1,B0           ; |185| 

           LDBU    .D2T2   *+B4[B8],B7       ; |187| 
||         ADDAH   .D1     A17,A9,A5         ; |193| 
||         ADD     .L1     A9,A9,A26         ; |193| 

           ADDAH   .D1     A17,A9,A3         ; |193| 
||         ADD     .L1     A9,A9,A28         ; |193| 

           ADDAH   .D1     A17,A9,A6         ; |193| 
||         ADD     .L1     A9,A9,A30         ; |193| 

           ADDAH   .D1     A31,A16,A18       ; |193| 
||         ADD     .L1     A9,A9,A31         ; |193| 

           ADDAH   .D1     A17,A9,A19        ; |193| 

           AND     .L2     B18,B7,B4
||         AND     .S2     B6,B7,B2
||         AND     .L1X    1,B7,A2
||         ADDAH   .D1     A17,A9,A7         ; |193| 

   [ B2]   LDHU    .D1T2   *+A4(12),B9       ; |193| 
||         AND     .L1X    8,B7,A1

           MV      .L1X    B4,A4             ; |193| 
|| [ A2]   LDHU    .D1T1   *+A17[A9],A23     ; |193| 

           EXTU    .S2     B7,27,31,B4
||         MV      .L1X    B4,A0             ; |193| 
||         ADDAH   .D1     A17,A9,A20        ; |193| 

   [ A0]   LDHU    .D1T2   *+A5(10),B16      ; |193| 
||         ADD     .L1     A9,A9,A5          ; |193| 

           MV      .L1X    B4,A8             ; |193| 
|| [ A1]   LDHU    .D1T1   *+A19(6),A19      ; |193| 

           AND     .L2     4,B7,B4
||         MV      .L1X    B4,A0             ; |193| 
||         ADDAH   .D1     A28,A16,A24       ; |193| 

   [ A0]   LDHU    .D1T1   *+A3(8),A21       ; |193| 

           AND     .L2     2,B7,B4
||         MV      .L1X    B4,A0             ; |193| 
||         ADDAH   .D1     A26,A16,A28       ; |193| 

           MV      .L2     B4,B1             ; |193| 
|| [ A0]   LDHU    .D1T1   *+A20(4),A25      ; |193| 

           AND     .L2     B5,B7,B1
|| [ B1]   LDHU    .D1T1   *+A6(2),A27       ; |193| 

   [ B1]   LDHU    .D1T1   *+A7(14),A20      ; |193| 

           ADDAH   .D1     A31,A16,A26       ; |193| 
||         ADD     .L1     A9,A9,A31         ; |193| 

           ADDAH   .D1     A30,A16,A22       ; |193| 
||         ADD     .L1     A9,A9,A30         ; |193| 
||         ADD     .S1     8,A9,A9           ; |185| 

           ADDAH   .D1     A5,A16,A7         ; |193| 

           ADDAH   .D1     A30,A16,A5        ; |193| 
||         ADD     .L1     A29,A26,A30       ; |193| 
||         ADD     .S1     A29,A22,A26       ; |193| 

   [ A2]   STH     .D1T1   A23,*A30          ; |193| 
||         MV      .L1     A4,A2             ; |193| 
||         ADD     .S1     A29,A24,A30       ; |193| 

   [ A2]   STH     .D1T2   B16,*+A26(10)     ; |193| 
||         MV      .L1     A8,A2             ; |193| 
||         ADD     .S1     A29,A5,A22        ; |193| 

           ADDAH   .D1     A31,A16,A6        ; |193| 
||         ADD     .L1     A29,A18,A31       ; |193| 
||         ADD     .S1     A29,A28,A18       ; |193| 

   [ A2]   STH     .D1T1   A21,*+A30(8)      ; |193| 
||         MV      .L1X    B4,A2             ; |193| 
||         ADD     .S1     A29,A6,A4         ; |193| 
|| [ B0]   B       .S2     L41               ; |185| 

   [ B2]   STH     .D1T2   B9,*+A31(12)      ; |193| 
||         ADD     .L1     A29,A7,A31        ; |193| 

   [ B1]   STH     .D1T1   A20,*+A4(14)      ; |193| 
   [ A2]   STH     .D1T1   A27,*+A22(2)      ; |193| 
   [ A0]   STH     .D1T1   A25,*+A31(4)      ; |193| 
	.dwpsn	"utility.c",196,0
   [ A1]   STH     .D1T1   A19,*+A18(6)      ; |193| 
           ; BRANCHCC OCCURS {L41}           ; |185| 
DW$L$__process_line$39$E:
;** --------------------------------------------------------------------------*
L42:    

           RET     .S2     B30               ; |199| 
||         LDW     .D2T1   *+SP(4),A10       ; |199| 

           LDW     .D2T1   *++SP(8),A11      ; |199| 
	.dwpsn	"utility.c",199,1
           NOP             4
           ; BRANCH OCCURS {B30}             ; |199| 

DW$111	.dwtag  DW_TAG_loop
	.dwattr DW$111, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L41:1:1297920373")
	.dwattr DW$111, DW_AT_begin_file("utility.c")
	.dwattr DW$111, DW_AT_begin_line(0xb9)
	.dwattr DW$111, DW_AT_end_line(0xc4)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$__process_line$39$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$__process_line$39$E)
	.dwendtag DW$111


DW$113	.dwtag  DW_TAG_loop
	.dwattr DW$113, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L39:1:1297920373")
	.dwattr DW$113, DW_AT_begin_file("utility.c")
	.dwattr DW$113, DW_AT_begin_line(0xa2)
	.dwattr DW$113, DW_AT_end_line(0xa6)
DW$114	.dwtag  DW_TAG_loop_range
	.dwattr DW$114, DW_AT_low_pc(DW$L$__process_line$32$B)
	.dwattr DW$114, DW_AT_high_pc(DW$L$__process_line$32$E)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$__process_line$33$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$__process_line$33$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$__process_line$34$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$__process_line$34$E)
	.dwendtag DW$113


DW$117	.dwtag  DW_TAG_loop
	.dwattr DW$117, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L35:1:1297920373")
	.dwattr DW$117, DW_AT_begin_file("utility.c")
	.dwattr DW$117, DW_AT_begin_line(0x9c)
	.dwattr DW$117, DW_AT_end_line(0x9d)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$__process_line$26$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$__process_line$26$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$__process_line$27$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$__process_line$27$E)
	.dwendtag DW$117


DW$120	.dwtag  DW_TAG_loop
	.dwattr DW$120, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L29:1:1297920373")
	.dwattr DW$120, DW_AT_begin_file("utility.c")
	.dwattr DW$120, DW_AT_begin_line(0x8e)
	.dwattr DW$120, DW_AT_end_line(0x92)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$__process_line$14$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$__process_line$14$E)
	.dwendtag DW$120


DW$122	.dwtag  DW_TAG_loop
	.dwattr DW$122, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L25:1:1297920373")
	.dwattr DW$122, DW_AT_begin_file("utility.c")
	.dwattr DW$122, DW_AT_begin_line(0x88)
	.dwattr DW$122, DW_AT_end_line(0x89)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$__process_line$8$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$__process_line$8$E)
	.dwendtag DW$122


DW$124	.dwtag  DW_TAG_loop
	.dwattr DW$124, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L22:1:1297920373")
	.dwattr DW$124, DW_AT_begin_file("utility.c")
	.dwattr DW$124, DW_AT_begin_line(0x75)
	.dwattr DW$124, DW_AT_end_line(0x80)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$__process_line$3$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$__process_line$3$E)
	.dwendtag DW$124

	.dwattr DW$106, DW_AT_end_file("utility.c")
	.dwattr DW$106, DW_AT_end_line(0xc7)
	.dwattr DW$106, DW_AT_end_column(0x01)
	.dwendtag DW$106

	.sect	".text"

DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("_set_logo"), DW_AT_symbol_name("__set_logo")
	.dwattr DW$126, DW_AT_low_pc(__set_logo)
	.dwattr DW$126, DW_AT_high_pc(0x00)
	.dwattr DW$126, DW_AT_begin_file("utility.c")
	.dwattr DW$126, DW_AT_begin_line(0xca)
	.dwattr DW$126, DW_AT_begin_column(0x0d)
	.dwattr DW$126, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$126, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",203,1

;******************************************************************************
;* FUNCTION NAME: __set_logo                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A5,A6,A7,A8,A9,B0,B1,B2,B4,B5,B6,B7,B8,B9,  *
;*                           A16,A17,A18,A19,A20,A21,A22,B16,B17,B18          *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,B16,B17, *
;*                           B18                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
__set_logo:
;** --------------------------------------------------------------------------*
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("line"), DW_AT_symbol_name("_line")
	.dwattr DW$127, DW_AT_type(*DW$T$41)
	.dwattr DW$127, DW_AT_location[DW_OP_reg4]
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("line_no"), DW_AT_symbol_name("_line_no")
	.dwattr DW$128, DW_AT_type(*DW$T$10)
	.dwattr DW$128, DW_AT_location[DW_OP_reg20]
;** 208	-----------------------    if ( (line_no < 21)|(line_no > 52) ) goto g20;

           MVK     .S2     52,B5             ; |208| 
||         MVK     .S1     21,A5             ; |208| 

           CMPGT   .L2     B4,B5,B6          ; |208| 
||         CMPLT   .L1X    B4,A5,A5          ; |208| 
||         MVKL    .S2     _left_logo-84,B5  ; |213| 
||         MVKL    .S1     _right_logo-84,A3 ; |214| 

           SHL     .S2     B4,2,B4           ; |213| 
||         MVKH    .S1     _right_logo-84,A3 ; |214| 

           OR      .L1X    B6,A5,A0          ; |208| 
||         MVKH    .S2     _left_logo-84,B5  ; |213| 
||         MVKL    .S1     0xd6ba,A7

   [ A0]   BNOP    .S2     L46,2             ; |208| 
||         ADD     .L2     B5,B4,B5          ; |213| 
||         ADD     .L1X    A3,B4,A3          ; |214| 
||         ZERO    .D2     B4                ; |216| 
||         MVKH    .S1     0xd6ba,A7
|| [!A0]   MVK     .D1     1,A6              ; |218| 

   [!A0]   LDW     .D2T1   *B5,A9            ; |213| 
   [!A0]   LDW     .D1T1   *A3,A8            ; |214| 
           NOP             1
           ; BRANCHCC OCCURS {L46}           ; |208| 
;** --------------------------------------------------------------------------*
;** 213	-----------------------    C$1 = line_no*4;
;** 213	-----------------------    l_logo = *(&left_logo+C$1-84);
;** 214	-----------------------    r_logo = *(&right_logo+C$1-84);
;** 216	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(4)
;**  	-----------------------    K$31 = 54970;
;** 216	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g3:
;** 218	-----------------------    U$26 = 1<<i;
;** 218	-----------------------    if ( !(U$26&l_logo) ) goto g5;
;** 219	-----------------------    line[i+24] = K$31;
;**	-----------------------g5:
;**  	-----------------------    if ( !(U$26&r_logo) ) goto g7;
;** 222	-----------------------    line[i+584] = K$31;
;**	-----------------------g7:
;**  	-----------------------    U$46 = 1<<i+1;
;**  	-----------------------    if ( !(U$46&l_logo) ) goto g9;
;** 219	-----------------------    line[i+25] = K$31;
;**	-----------------------g9:
;**  	-----------------------    if ( !(U$46&r_logo) ) goto g11;
;** 222	-----------------------    line[i+585] = K$31;
;**	-----------------------g11:
;**  	-----------------------    U$61 = 1<<i+2;
;**  	-----------------------    if ( !(U$61&l_logo) ) goto g13;
;** 219	-----------------------    line[i+26] = K$31;
;**	-----------------------g13:
;**  	-----------------------    if ( !(U$61&r_logo) ) goto g15;
;** 222	-----------------------    line[i+586] = K$31;
;**	-----------------------g15:
;**  	-----------------------    U$76 = 1<<i+3;
;**  	-----------------------    if ( !(U$76&l_logo) ) goto g17;
;** 219	-----------------------    line[i+27] = K$31;
;**	-----------------------g17:
;**  	-----------------------    if ( !(U$76&r_logo) ) goto g19;
;** 222	-----------------------    line[i+587] = K$31;
;**	-----------------------g19:
;** 216	-----------------------    if ( (i += 4) < 32 ) goto g3;
;**	-----------------------g20:
;**  	-----------------------    return;

           SHL     .S2X    A6,B4,B17         ; |218| (P) <0,2> 
||         ADD     .L1X    3,B4,A5
||         ADD     .L2     2,B4,B7
||         MVK     .S1     32,A17            ; |216| 

           MVC     .S2     CSR,B18
||         SHL     .S1     A6,A5,A21         ; (P) <0,4> 
||         ADD     .L1X    1,B4,A5
||         MV      .L2X    A4,B5

           SHL     .S2X    A6,B7,B16         ; (P) <0,1>  ^ 
||         AND     .L2     -2,B18,B7
||         MV      .L1X    B4,A3
||         SHL     .S1     A6,A5,A16         ; (P) <0,3> 
||         ADDAH   .D2     B5,B4,B8          ; |219| (P) <0,3> 

           MVC     .S2     B7,CSR            ; interrupts off
||         ADDAH   .D1     A4,A3,A19         ; |222| (P) <0,4>  ^ 
||         AND     .L1X    A9,B17,A0         ; |218| (P) <0,4> 
||         ADDAH   .D2     B5,B4,B9          ; |219| (P) <0,2> 
||         AND     .L2X    A8,B16,B1         ; (P) <0,3>  ^ 
||         MVK     .S1     587,A18           ; |222| 

           AND     .L2X    A8,B17,B0         ; (P) <0,4> 
||         ADDAH   .D1     A4,A3,A22         ; |222| (P) <0,1> 
||         MVK     .S2     585,B6            ; |222| 

           ADDAH   .D1     A4,A3,A20         ; |219| (P) <0,0> 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 216
;*      Loop opening brace source line   : 217
;*      Loop closing brace source line   : 223
;*      Loop Unroll Multiple             : 4x
;*      Known Minimum Trip Count         : 8                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 8
;*      Loop Carried Dependency Bound(^) : 5
;*      Unpartitioned Resource Bound     : 8
;*      Partitioned Resource Bound(*)    : 8
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     4        3     
;*      .D units                     8*       8*    
;*      .M units                     0        0     
;*      .X cross paths               1        6     
;*      .T address paths             8*       0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          8        5     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        2     
;*      Bound(.L .S .D .LS .LSD)     7        6     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L43:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L44:    ; PIPED LOOP KERNEL
DW$L$__set_logo$4$B:
	.dwpsn	"utility.c",217,0

           AND     .L1     A9,A21,A0         ; <0,5> 
||         ADD     .S1     4,A3,A3           ; |216| <0,5>  ^ 
|| [ B0]   ADDAH   .D1     A4,A3,A5          ; |222| <0,5> 
|| [ A0]   STH     .D2T1   A7,*+B8(48)       ; |219| <0,5> 

           ADDAH   .D2     B5,B4,B8          ; |222| <0,6> 
||         AND     .S1     A8,A21,A1         ; <0,6> 
|| [ A0]   STH     .D1T1   A7,*+A20(54)      ; |219| <0,6> 
||         CMPLT   .L1     A3,A17,A0         ; |216| <0,6> 

           ADDAH   .D2     B5,B4,B7          ; |219| <0,7> 
||         AND     .L2X    A9,B16,B2         ; <0,7> 
||         AND     .L1     A8,A16,A0         ; <0,7> 
|| [ A1]   STH     .D1T1   A7,*+A22[A18]     ; |222| <0,7> 
|| [ A0]   B       .S2     L44               ; |216| <0,7> 

   [ A0]   STH     .D2T1   A7,*+B8[B6]       ; |222| <0,8> 
||         AND     .L1     A9,A16,A0         ; <0,8> 
||         ADDAH   .D1     A4,A3,A20         ; |219| <1,0> 
||         ADD     .L2X    2,A3,B8           ; <1,0>  ^ 

           ADD     .L2     4,B4,B4           ; |216| <0,9> Define a twin register
|| [ B0]   ADDK    .S1     1168,A5           ; |222| <0,9> 
|| [ A0]   STH     .D2T1   A7,*+B9(50)       ; |219| <0,9> 
||         ADDAH   .D1     A4,A3,A22         ; |222| <1,1> 
||         SHL     .S2X    A6,B8,B16         ; <1,1>  ^ 

   [ B1]   ADDK    .S1     1172,A19          ; |222| <0,10> 
|| [ B0]   STH     .D1T1   A7,*A5            ; |222| <0,10> 
||         ADDAH   .D2     B5,B4,B9          ; |219| <1,2> 
||         ADD     .L1     1,A3,A16          ; <1,2> 
||         SHL     .S2X    A6,B4,B17         ; |218| <1,2> 

   [ B1]   STH     .D1T1   A7,*A19           ; |222| <0,11> 
||         ADD     .L1     3,A3,A21          ; <1,3> 
||         ADDAH   .D2     B5,B4,B8          ; |219| <1,3> 
||         SHL     .S1     A6,A16,A16        ; <1,3> 
||         AND     .L2X    A8,B16,B1         ; <1,3>  ^ 

	.dwpsn	"utility.c",223,0

   [ B2]   STH     .D2T1   A7,*+B7(52)       ; |219| <0,12> 
||         AND     .L2X    A8,B17,B0         ; <1,4> 
||         SHL     .S1     A6,A21,A21        ; <1,4> 
||         AND     .L1X    A9,B17,A0         ; |218| <1,4> 
|| [ B1]   ADDAH   .D1     A4,A3,A19         ; |222| <1,4>  ^ 

DW$L$__set_logo$4$E:
;** --------------------------------------------------------------------------*
L45:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B18,CSR           ; interrupts on
;** --------------------------------------------------------------------------*
L46:    
	.dwpsn	"utility.c",225,1
           RETNOP  .S2     B3,5              ; |225| 
           ; BRANCH OCCURS {B3}              ; |225| 

DW$129	.dwtag  DW_TAG_loop
	.dwattr DW$129, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L44:1:1297920373")
	.dwattr DW$129, DW_AT_begin_file("utility.c")
	.dwattr DW$129, DW_AT_begin_line(0xd8)
	.dwattr DW$129, DW_AT_end_line(0xdf)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$__set_logo$4$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$__set_logo$4$E)
	.dwendtag DW$129

	.dwattr DW$126, DW_AT_end_file("utility.c")
	.dwattr DW$126, DW_AT_end_line(0xe1)
	.dwattr DW$126, DW_AT_end_column(0x01)
	.dwendtag DW$126

	.sect	".text"
	.global	_disp_rgb565

DW$131	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_rgb565"), DW_AT_symbol_name("_disp_rgb565")
	.dwattr DW$131, DW_AT_low_pc(_disp_rgb565)
	.dwattr DW$131, DW_AT_high_pc(0x00)
	.dwattr DW$131, DW_AT_begin_file("utility.c")
	.dwattr DW$131, DW_AT_begin_line(0x11b)
	.dwattr DW$131, DW_AT_begin_column(0x05)
	.dwattr DW$131, DW_AT_frame_base[DW_OP_breg31 88]
	.dwattr DW$131, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",284,1

;******************************************************************************
;* FUNCTION NAME: _disp_rgb565                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Local Frame Size  : 0 Args + 44 Auto + 44 Save = 88 byte                 *
;******************************************************************************
_disp_rgb565:
;** --------------------------------------------------------------------------*
DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_name("left_y"), DW_AT_symbol_name("_left_y")
	.dwattr DW$132, DW_AT_type(*DW$T$37)
	.dwattr DW$132, DW_AT_location[DW_OP_reg4]
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_name("right_y"), DW_AT_symbol_name("_right_y")
	.dwattr DW$133, DW_AT_type(*DW$T$37)
	.dwattr DW$133, DW_AT_location[DW_OP_reg20]
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rgb"), DW_AT_symbol_name("_rgb")
	.dwattr DW$134, DW_AT_type(*DW$T$46)
	.dwattr DW$134, DW_AT_location[DW_OP_reg6]
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_name("show_stamp"), DW_AT_symbol_name("_show_stamp")
	.dwattr DW$135, DW_AT_type(*DW$T$10)
	.dwattr DW$135, DW_AT_location[DW_OP_reg22]
;** 284	-----------------------    rgb = rgb;
;** 304	-----------------------    C$1 = &L2_buffer[0];
;** 304	-----------------------    next_l = &C$1[1280];
;** 306	-----------------------    cur_r = &L2_buffer[2560];
;** 307	-----------------------    next_r = &L2_buffer[3840];
;** 309	-----------------------    cur_rgb = &((unsigned short *)L2_buffer)[2560];
;** 310	-----------------------    next_rgb = &((unsigned short *)L2_buffer)[7680];
;** 317	-----------------------    id_l = DAT_copy(left_y-5120+304640, (void *)C$1, 1280u);
;** 318	-----------------------    id_r = DAT_copy(right_y-5120+304640, cur_r, 1280u);
;** 321	-----------------------    rgb_ptr = &rgb[158720];
;** 323	-----------------------    dest = cur_rgb;
;**  	-----------------------    K$41 = 640;
;**  	-----------------------    U$44 = left_y+294400;
;**  	-----------------------    K$45 = 0x5200001u;
;**  	-----------------------    U$48 = right_y+294400;
;** 326	-----------------------    L$1 = 113;
;** 303	-----------------------    cur_l = C$1;
;** 301	-----------------------    disp_line_count = 8;
;** 324	-----------------------    rgb_line_count = 0;
;** 304	-----------------------    K$7 = 1280;
;**  	-----------------------    #pragma MUST_ITERATE(113, 113, 113)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVKL    .S1     _DAT_copy,A3      ; |317| 
           MVKH    .S1     _DAT_copy,A3      ; |317| 
           MV      .L1X    SP,A31            ; |284| 
           CALL    .S2X    A3                ; |317| 
           STW     .D2T1   A15,*SP--(88)     ; |284| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         STDW    .D2T2   B13:B12,*+SP(80)
||         MVKL    .S1     0x49200,A5        ; |317| 

           STW     .D1T1   A14,*-A31(24)
||         MVKL    .S2     _L2_buffer,B12    ; |304| 
||         STDW    .D2T2   B11:B10,*+SP(72)
||         MVKH    .S1     0x49200,A5        ; |317| 

           STDW    .D1T1   A13:A12,*-A31(32)
||         MVKH    .S2     _L2_buffer,B12    ; |304| 
||         MVK     .S1     0x500,A6          ; |317| 
||         MV      .L2X    A6,B13            ; |284| 
||         STW     .D2T2   B3,*+SP(68)

           ADDKPC  .S2     RL7,B3,0          ; |317| 
||         ADD     .L1     A5,A4,A4          ; |317| 
||         MV      .L2     B12,B4            ; |304| 
||         MV      .S1     A4,A10            ; |284| 
||         MV      .D1X    B4,A14            ; |284| 
||         MV      .D2     B6,B11            ; |284| 

RL7:       ; CALL OCCURS {_DAT_copy}         ; |317| 
;** --------------------------------------------------------------------------*
           MVKL    .S2     _DAT_copy,B5      ; |318| 
           MVKH    .S2     _DAT_copy,B5      ; |318| 
           CALL    .S2     B5                ; |318| 
           MVKL    .S2     0x49200,B6        ; |318| 
           MVKL    .S1     _L2_buffer+2560,A13 ; |306| 

           MVKH    .S2     0x49200,B6        ; |318| 
||         MVKH    .S1     _L2_buffer+2560,A13 ; |306| 

           ADDKPC  .S2     RL8,B3,0          ; |318| 

           MV      .L2X    A13,B4            ; |306| 
||         MVK     .S1     0x500,A6          ; |318| 
||         STW     .D2T1   A4,*+SP(4)        ; |317| 
||         ADD     .L1X    B6,A14,A4         ; |318| 

RL8:       ; CALL OCCURS {_DAT_copy}         ; |318| 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _L2_buffer+3840,A5 ; |307| 
           MVKH    .S1     _L2_buffer+3840,A5 ; |307| 
           MVKL    .S1     0x5200001,A8

           STW     .D2T1   A5,*+SP(24)       ; |307| 
||         MVKL    .S1     _L2_buffer+15360,A6 ; |310| 
||         MVK     .S2     0x71,B7           ; |326| 

           STW     .D2T1   A4,*+SP(36)       ; |318| 
||         MVKL    .S2     _L2_buffer+5120,B4 ; |309| 
||         MVK     .S1     1280,A3           ; |304| 

           STW     .D2T2   B7,*+SP(12)       ; |326| 
||         MV      .L1     A8,A5             ; |304| 
||         MVKH    .S1     _L2_buffer+15360,A6 ; |310| 
||         ADD     .D1X    A3,B12,A3         ; |304| 
||         MVKL    .S2     0x4d800,B6        ; |321| 

           STW     .D2T1   A3,*+SP(32)       ; |304| 
||         MVKH    .S1     0x5200001,A5
||         MVKL    .S2     0x47e00,B5

           MVKL    .S1     _DAT_copy2d,A5    ; |332| 
||         STW     .D2T1   A5,*+SP(8)        ; |304| 
||         MVKH    .S2     _L2_buffer+5120,B4 ; |309| 

           MVKH    .S1     _DAT_copy2d,A5    ; |332| 
||         STW     .D2T1   A6,*+SP(20)       ; |310| 
||         MVKH    .S2     0x4d800,B6        ; |321| 

           STW     .D2T2   B4,*+SP(28)       ; |309| 
||         MVKH    .S2     0x47e00,B5
||         MVKL    .S1     0x47e00,A7

           CALL    .S2X    A5                ; |332| 
||         LDW     .D2T1   *+SP(32),A6       ; |332| 
||         MVKH    .S1     0x47e00,A7
||         MVK     .L2     0x8,B10           ; |301| 

           LDW     .D2T1   *+SP(8),A4        ; |332| 
||         MVK     .S1     0x280,A3
||         ADD     .L2     B6,B13,B12        ; |321| 
||         ZERO    .S2     B7                ; |324| 
||         MV      .L1X    B12,A12           ; |304| 

	.dwpsn	"utility.c",326,0

           ADD     .L1     A7,A10,A14
||         MVK     .S2     0x500,B4          ; |304| 
||         EXTU    .S1     A3,16,16,A3       ; |332| 
||         ADD     .L2X    B5,A14,B13
||         STW     .D2T2   B7,*+SP(16)
||         MV      .D1X    B4,A11            ; |309| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L47
;** --------------------------------------------------------------------------*
L47:    
DW$L$_disp_rgb565$4$B:
	.dwpsn	"utility.c",327,0
;**	-----------------------g2:
;** 332	-----------------------    new_id_l = DAT_copy2d(K$45, U$44, (void *)next_l, (unsigned short)K$41, 2u, (unsigned short)K$7);
;** 333	-----------------------    new_id_r = DAT_copy2d(K$45, U$48, (void *)next_r, (unsigned short)K$41, 2u, (unsigned short)K$7);
;** 336	-----------------------    DAT_wait(id_l);
;** 337	-----------------------    id_l = new_id_l;
;**  	-----------------------    U$53 = (unsigned char *)dest;
;**  	-----------------------    U$56 = &cur_l[640];
;** 339	-----------------------    j = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 2, 2)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDKPC  .S2     RL9,B3,0          ; |332| 
           MV      .L2X    A3,B6             ; |332| 

           EXTU    .S2     B4,16,16,B8       ; |332| 
||         MVK     .L1     0x2,A8            ; |332| 
||         MV      .L2X    A14,B4            ; |332| 

RL9:       ; CALL OCCURS {_DAT_copy2d}       ; |332| 
DW$L$_disp_rgb565$4$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$5$B:
           MVKL    .S1     _DAT_copy2d,A5    ; |333| 
           MVKH    .S1     _DAT_copy2d,A5    ; |333| 
           STW     .D2T1   A4,*+SP(40)       ; |332| 

           CALL    .S2X    A5                ; |333| 
||         LDW     .D2T1   *+SP(24),A6       ; |333| 

           LDW     .D2T1   *+SP(8),A4        ; |333| 
           MVK     .S1     0x280,A3

           EXTU    .S1     A3,16,16,A3       ; |333| 
||         MVK     .S2     0x500,B4          ; |304| 

           EXTU    .S2     B4,16,16,B8       ; |333| 

           ADDKPC  .S2     RL10,B3,0         ; |333| 
||         MV      .L2X    A3,B6             ; |333| 
||         MV      .D2     B13,B4            ; |333| 
||         MVK     .L1     0x2,A8            ; |333| 

RL10:      ; CALL OCCURS {_DAT_copy2d}       ; |333| 
           MVKL    .S2     _DAT_wait,B4      ; |336| 
           MVKH    .S2     _DAT_wait,B4      ; |336| 

           CALL    .S2     B4                ; |336| 
||         STW     .D2T1   A4,*+SP(44)       ; |333| 

           LDW     .D2T1   *+SP(4),A4        ; |336| 
           ADDKPC  .S2     RL11,B3,3         ; |336| 
RL11:      ; CALL OCCURS {_DAT_wait}         ; |336| 
DW$L$_disp_rgb565$5$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$6$B:
           LDW     .D2T1   *+SP(40),A31
           CALL    .S1     __process_line    ; |344| 
           MV      .L2X    A11,B23
           ZERO    .S1     A10               ; |339| 
           MVK     .S1     640,A3
	.dwpsn	"utility.c",339,0

           ADD     .L1     A3,A12,A15
||         STW     .D2T1   A31,*+SP(4)       ; |337| 

DW$L$_disp_rgb565$6$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L48:    
DW$L$_disp_rgb565$7$B:
	.dwpsn	"utility.c",340,0
;**	-----------------------g3:
;** 344	-----------------------    _process_line(U$56, U$53, disp_line_count+j, show_stamp);
;** 339	-----------------------    U$53 += 1280;
;** 339	-----------------------    U$56 -= 640;
;** 339	-----------------------    if ( (++j) < 2 ) goto g3;
;** 348	-----------------------    temp = (void *)next_l;

           MV      .L2     B11,B6            ; |344| 
||         MV      .D2     B23,B4            ; |344| 
||         MV      .L1     A15,A4            ; |344| 
||         ADD     .S1X    A10,B10,A6        ; |344| 
||         ADDKPC  .S2     RL12,B3,0         ; |344| 

RL12:      ; CALL OCCURS {__process_line}    ; |344| 
DW$L$_disp_rgb565$7$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$8$B:

           ADD     .L1     1,A10,A10         ; |339| 
||         ADDK    .S1     -640,A15          ; |339| 
||         ADDK    .S2     1280,B23          ; |339| 

           CMPLT   .L1     A10,2,A0          ; |339| 

   [ A0]   B       .S2     L48               ; |339| 
|| [!A0]   MVKL    .S1     _DAT_wait,A3      ; |350| 
|| [!A0]   LDW     .D2T1   *+SP(36),A4       ; |350| 

   [ A0]   CALL    .S2     __process_line    ; |344| 
|| [!A0]   MVKH    .S1     _DAT_wait,A3      ; |350| 

           NOP             1
   [!A0]   CALL    .S2X    A3                ; |350| 
	.dwpsn	"utility.c",346,0
           NOP             2
           ; BRANCHCC OCCURS {L48}           ; |339| 
DW$L$_disp_rgb565$8$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$9$B:
;** 348	-----------------------    next_l = cur_l;
;** 348	-----------------------    cur_l = (unsigned char *)temp;
;** 350	-----------------------    DAT_wait(id_r);
;** 351	-----------------------    id_r = new_id_r;
;**  	-----------------------    U$62 = &((unsigned char *)dest)[640];
;**  	-----------------------    U$64 = &cur_r[640];
;** 353	-----------------------    j = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 2, 2)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDKPC  .S2     RL13,B3,2         ; |350| 
RL13:      ; CALL OCCURS {_DAT_wait}         ; |350| 
DW$L$_disp_rgb565$9$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$10$B:
           LDW     .D2T1   *+SP(32),A3       ; |350| 
           LDW     .D2T1   *+SP(44),A4       ; |348| 
           CALL    .S1     __process_line    ; |358| 
           MVK     .S2     640,B4
           STW     .D2T1   A12,*+SP(32)      ; |348| 
           MVK     .S2     640,B5
	.dwpsn	"utility.c",353,0

           MV      .L1     A3,A12            ; |348| 
||         STW     .D2T1   A4,*+SP(36)       ; |351| 
||         ADD     .S1X    B4,A13,A15
||         ADD     .L2X    B5,A11,B23
||         ZERO    .D1     A10               ; |353| 

DW$L$_disp_rgb565$10$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L49:    
DW$L$_disp_rgb565$11$B:
	.dwpsn	"utility.c",354,0
;**	-----------------------g5:
;** 358	-----------------------    _process_line(U$64, U$62, disp_line_count+j, show_stamp);
;** 353	-----------------------    U$62 += 1280;
;** 353	-----------------------    U$64 -= 640;
;** 353	-----------------------    if ( (++j) < 2 ) goto g5;
;**  	-----------------------    U$53 = (unsigned char *)dest;

           MV      .L2     B11,B6            ; |358| 
||         MV      .D2     B23,B4            ; |358| 
||         MV      .L1     A15,A4            ; |358| 
||         ADD     .S1X    A10,B10,A6        ; |358| 
||         ADDKPC  .S2     RL14,B3,0         ; |358| 

RL14:      ; CALL OCCURS {__process_line}    ; |358| 
DW$L$_disp_rgb565$11$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$12$B:

           ADD     .L1     1,A10,A10         ; |353| 
||         ADDK    .S1     -640,A15          ; |353| 
||         ADDK    .S2     1280,B23          ; |353| 

           CMPLT   .L1     A10,2,A0          ; |353| 

   [ A0]   B       .S1     L49               ; |353| 
|| [!A0]   MV      .L1     A11,A4
|| [!A0]   ZERO    .D1     A23               ; |362| 

   [ A0]   CALL    .S1     __process_line    ; |358| 
	.dwpsn	"utility.c",360,0
           NOP             4
           ; BRANCHCC OCCURS {L49}           ; |353| 
DW$L$_disp_rgb565$12$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$13$B:
;** 362	-----------------------    j = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 2, 2)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     __set_logo        ; |363| 
	.dwpsn	"utility.c",362,0
           NOP             4
DW$L$_disp_rgb565$13$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L50:    
DW$L$_disp_rgb565$14$B:
	.dwpsn	"utility.c",363,0
;**	-----------------------g7:
;** 363	-----------------------    _set_logo((unsigned short *)U$53, disp_line_count+j);
;** 362	-----------------------    U$53 += 1280;
;** 362	-----------------------    if ( (++j) < 2 ) goto g7;
;** 365	-----------------------    temp = (void *)next_r;

           ADD     .L2X    A23,B10,B4        ; |363| 
||         ADDKPC  .S2     RL15,B3,0         ; |363| 

RL15:      ; CALL OCCURS {__set_logo}        ; |363| 
DW$L$_disp_rgb565$14$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$15$B:

           ADD     .L1     1,A23,A23         ; |362| 
||         ADDK    .S1     1280,A4           ; |362| 

           CMPLT   .L1     A23,2,A0          ; |362| 

   [ A0]   B       .S1     L50               ; |362| 
|| [!A0]   LDW     .D2T2   *+SP(16),B4       ; |365| 

   [ A0]   CALL    .S1     __set_logo        ; |363| 
           NOP             3
   [!A0]   CMPEQ   .L2     B4,6,B0           ; |371| 
           ; BRANCHCC OCCURS {L50}           ; |362| 
DW$L$_disp_rgb565$15$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$16$B:
;** 365	-----------------------    next_r = cur_r;
;** 365	-----------------------    cur_r = (unsigned char *)temp;
;** 371	-----------------------    if ( rgb_line_count == 6 ) goto g10;
;** 369	-----------------------    dest += 1280;
;** 368	-----------------------    rgb_line_count += 2;
;**  	-----------------------    goto g11;

           LDW     .D2T1   *+SP(24),A3
|| [!B0]   B       .S2     L51
|| [!B0]   ADD     .L2     2,B4,B4           ; |368| 
|| [!B0]   ADDK    .S1     2560,A11          ; |369| 

   [!B0]   STW     .D2T2   B4,*+SP(16)       ; |368| 
   [!B0]   LDW     .D2T2   *+SP(12),B4
           NOP             1
           STW     .D2T1   A13,*+SP(24)      ; |365| 

           MVKL    .S1     _DAT_copy,A3      ; |373| 
||         MV      .L1     A3,A13            ; |365| 

           ; BRANCHCC OCCURS {L51} 
DW$L$_disp_rgb565$16$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$17$B:
;**	-----------------------g10:
;** 373	-----------------------    DAT_copy((void *)cur_rgb, (void *)rgb_ptr, 10240u);
;** 375	-----------------------    rgb_ptr += 5120;
;** 377	-----------------------    dest = next_rgb;
;** 378	-----------------------    next_rgb = cur_rgb;
;** 378	-----------------------    cur_rgb = dest;
;** 379	-----------------------    rgb_line_count = 0;
           MVKH    .S1     _DAT_copy,A3      ; |373| 
           LDW     .D2T1   *+SP(28),A10      ; |373| 
           CALL    .S2X    A3                ; |373| 
           ADDKPC  .S2     RL16,B3,1         ; |373| 
           MVK     .S1     0x2800,A6         ; |373| 
           MV      .L2     B12,B4            ; |373| 
           MV      .L1     A10,A4            ; |373| 
RL16:      ; CALL OCCURS {_DAT_copy}         ; |373| 
DW$L$_disp_rgb565$17$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$18$B:

           LDW     .D2T1   *+SP(20),A11      ; |373| 
||         ZERO    .L2     B4                ; |379| 

           STW     .D2T2   B4,*+SP(16)       ; |375| 
           LDW     .D2T2   *+SP(12),B4
           STW     .D2T1   A10,*+SP(20)      ; |378| 
           ADDK    .S2     10240,B12         ; |375| 
           STW     .D2T1   A11,*+SP(28)      ; |378| 
DW$L$_disp_rgb565$18$E:
;** --------------------------------------------------------------------------*
L51:    
DW$L$_disp_rgb565$19$B:
;**	-----------------------g11:
;** 326	-----------------------    U$44 -= 2560;
;** 326	-----------------------    U$48 -= 2560;
;** 367	-----------------------    disp_line_count += 2;
;**  	-----------------------    K$41 = 640;
;**  	-----------------------    K$7 = 1280;
;** 326	-----------------------    if ( --L$1 ) goto g2;
;** 384	-----------------------    assert(disp_line_count >= 234);

           MVKL    .S1     _DAT_copy2d,A5    ; |332| 
||         ADD     .L2     2,B10,B10         ; |367| 
||         ADDK    .S2     -2560,B13         ; |326| 

           SUB     .L1X    B4,1,A0           ; |326| 
||         MVKH    .S1     _DAT_copy2d,A5    ; |332| 
||         SUB     .L2     B4,1,B4           ; |326| 

   [ A0]   B       .S2     L47               ; |326| 
|| [ A0]   MVK     .S1     0x280,A3
|| [ A0]   LDW     .D2T1   *+SP(32),A6       ; |332| 

   [ A0]   LDW     .D2T1   *+SP(8),A4        ; |332| 
|| [ A0]   EXTU    .S1     A3,16,16,A3       ; |332| 

           STW     .D2T2   B4,*+SP(12)       ; |326| 
||         ADDK    .S1     -2560,A14         ; |326| 
|| [!A0]   MVK     .S2     234,B4            ; |384| 

   [ A0]   CALL    .S2X    A5                ; |332| 
|| [!A0]   CMPLT   .L2     B10,B4,B0         ; |384| 

           NOP             1
	.dwpsn	"utility.c",381,0
   [ A0]   MVK     .S2     0x500,B4          ; |304| 
           ; BRANCHCC OCCURS {L47}           ; |326| 
DW$L$_disp_rgb565$19$E:
;** --------------------------------------------------------------------------*

           MVKL    .S1     SL1+0,A4          ; |384| 
|| [!B0]   LDW     .D2T2   *+SP(16),B4
|| [!B0]   MVK     .S2     234,B5            ; |386| 

           MVKH    .S1     SL1+0,A4          ; |384| 
|| [!B0]   B       .S2     L52               ; |384| 

   [ B0]   CALL    .S1     __abort_msg       ; |384| 
           NOP             2
   [!B0]   SUB     .L2     B4,B10,B4         ; |386| 
   [!B0]   ADD     .L2     B5,B4,B6          ; |386| 
           ; BRANCHCC OCCURS {L52}           ; |384| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL17,B3,0         ; |384| 
RL17:      ; CALL OCCURS {__abort_msg}       ; |384| 

           LDW     .D2T2   *+SP(16),B4
||         MVK     .S2     234,B5            ; |386| 

           NOP             4
           SUB     .L2     B4,B10,B4         ; |386| 
           ADD     .L2     B5,B4,B6          ; |386| 
;** --------------------------------------------------------------------------*
L52:    
;** 386	-----------------------    if ( !(rgb_line_count = rgb_line_count-disp_line_count+234) ) goto g14;

           MVKL    .S1     _DAT_copy,A3      ; |389| 
||         ADD     .L2     B5,B4,B4          ; |386| 
||         MVK     .S2     0x500,B31         ; |304| 
||         LDW     .D2T1   *+SP(28),A4       ; |389| 

           MV      .L1X    B6,A0             ; |389| 
||         MVKH    .S1     _DAT_copy,A3      ; |389| 
||         STW     .D2T2   B4,*+SP(16)       ; |386| 
||         MPY     .M2     B6,B31,B4         ; |389| 

   [!A0]   B       .S1     L53               ; |386| 
|| [!A0]   LDW     .D2T2   *+SP(68),B3       ; |392| 
|| [!A0]   MV      .L1X    SP,A31            ; |392| 

           EXTU    .S2     B4,16,16,B5       ; |389| 
|| [!A0]   LDDW    .D1T1   *+A31(48),A11:A10 ; |392| 
|| [!A0]   LDDW    .D2T2   *+SP(80),B13:B12  ; |392| 
||         MV      .L2     B12,B4            ; |389| 

   [ A0]   CALL    .S2X    A3                ; |389| 
|| [!A0]   LDDW    .D1T1   *+A31(56),A13:A12 ; |392| 
|| [!A0]   LDDW    .D2T2   *+SP(72),B11:B10  ; |392| 

           MV      .L1X    B5,A6             ; |389| 
|| [!A0]   LDW     .D1T1   *+A31(64),A14     ; |392| 
|| [!A0]   ZERO    .S1     A4                ; |391| 

   [!A0]   LDW     .D2T1   *++SP(88),A15     ; |392| 
   [!A0]   RET     .S2     B3                ; |392| 
           ; BRANCHCC OCCURS {L53}           ; |386| 
;** --------------------------------------------------------------------------*
;** 389	-----------------------    DAT_copy((void *)cur_rgb, (void *)rgb_ptr, (unsigned short)_mpy(rgb_line_count, K$7));
           ADDKPC  .S2     RL18,B3,1         ; |389| 
RL18:      ; CALL OCCURS {_DAT_copy}         ; |389| 

           LDW     .D2T2   *+SP(68),B3       ; |392| 
||         MV      .L1X    SP,A31            ; |392| 
||         ZERO    .S1     A4                ; |391| 

           LDW     .D1T1   *+A31(64),A14     ; |392| 
||         LDDW    .D2T2   *+SP(80),B13:B12  ; |392| 

           LDDW    .D1T1   *+A31(56),A13:A12 ; |392| 
||         LDDW    .D2T2   *+SP(72),B11:B10  ; |392| 

           LDDW    .D1T1   *+A31(48),A11:A10 ; |392| 
           LDW     .D2T1   *++SP(88),A15     ; |392| 
           RET     .S2     B3                ; |392| 
;** --------------------------------------------------------------------------*
L53:    
;**	-----------------------g14:
;** 391	-----------------------    return 0;
	.dwpsn	"utility.c",392,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |392| 

DW$136	.dwtag  DW_TAG_loop
	.dwattr DW$136, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L47:1:1297920373")
	.dwattr DW$136, DW_AT_begin_file("utility.c")
	.dwattr DW$136, DW_AT_begin_line(0x146)
	.dwattr DW$136, DW_AT_end_line(0x17d)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_disp_rgb565$4$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_disp_rgb565$4$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_disp_rgb565$17$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_disp_rgb565$17$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_disp_rgb565$5$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_disp_rgb565$5$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_disp_rgb565$6$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_disp_rgb565$6$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_disp_rgb565$9$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_disp_rgb565$9$E)
DW$142	.dwtag  DW_TAG_loop_range
	.dwattr DW$142, DW_AT_low_pc(DW$L$_disp_rgb565$10$B)
	.dwattr DW$142, DW_AT_high_pc(DW$L$_disp_rgb565$10$E)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$_disp_rgb565$13$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$_disp_rgb565$13$E)
DW$144	.dwtag  DW_TAG_loop_range
	.dwattr DW$144, DW_AT_low_pc(DW$L$_disp_rgb565$16$B)
	.dwattr DW$144, DW_AT_high_pc(DW$L$_disp_rgb565$16$E)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$_disp_rgb565$18$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$_disp_rgb565$18$E)
DW$146	.dwtag  DW_TAG_loop_range
	.dwattr DW$146, DW_AT_low_pc(DW$L$_disp_rgb565$19$B)
	.dwattr DW$146, DW_AT_high_pc(DW$L$_disp_rgb565$19$E)

DW$147	.dwtag  DW_TAG_loop
	.dwattr DW$147, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L48:2:1297920373")
	.dwattr DW$147, DW_AT_begin_file("utility.c")
	.dwattr DW$147, DW_AT_begin_line(0x153)
	.dwattr DW$147, DW_AT_end_line(0x15a)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$_disp_rgb565$7$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$_disp_rgb565$7$E)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$_disp_rgb565$8$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$_disp_rgb565$8$E)
	.dwendtag DW$147


DW$150	.dwtag  DW_TAG_loop
	.dwattr DW$150, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L49:2:1297920373")
	.dwattr DW$150, DW_AT_begin_file("utility.c")
	.dwattr DW$150, DW_AT_begin_line(0x161)
	.dwattr DW$150, DW_AT_end_line(0x168)
DW$151	.dwtag  DW_TAG_loop_range
	.dwattr DW$151, DW_AT_low_pc(DW$L$_disp_rgb565$11$B)
	.dwattr DW$151, DW_AT_high_pc(DW$L$_disp_rgb565$11$E)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$_disp_rgb565$12$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$_disp_rgb565$12$E)
	.dwendtag DW$150


DW$153	.dwtag  DW_TAG_loop
	.dwattr DW$153, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L50:2:1297920373")
	.dwattr DW$153, DW_AT_begin_file("utility.c")
	.dwattr DW$153, DW_AT_begin_line(0x16a)
	.dwattr DW$153, DW_AT_end_line(0x16b)
DW$154	.dwtag  DW_TAG_loop_range
	.dwattr DW$154, DW_AT_low_pc(DW$L$_disp_rgb565$14$B)
	.dwattr DW$154, DW_AT_high_pc(DW$L$_disp_rgb565$14$E)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_disp_rgb565$15$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_disp_rgb565$15$E)
	.dwendtag DW$153

	.dwendtag DW$136

	.dwattr DW$131, DW_AT_end_file("utility.c")
	.dwattr DW$131, DW_AT_end_line(0x188)
	.dwattr DW$131, DW_AT_end_column(0x01)
	.dwendtag DW$131

	.sect	".text"
	.global	_disp_init

DW$156	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_init"), DW_AT_symbol_name("_disp_init")
	.dwattr DW$156, DW_AT_low_pc(_disp_init)
	.dwattr DW$156, DW_AT_high_pc(0x00)
	.dwattr DW$156, DW_AT_begin_file("utility.c")
	.dwattr DW$156, DW_AT_begin_line(0xe3)
	.dwattr DW$156, DW_AT_begin_column(0x06)
	.dwattr DW$156, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$156, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",228,1

;******************************************************************************
;* FUNCTION NAME: _disp_init                                                  *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,B4,B5,B6,SP                           *
;*   Regs Used         : A3,A4,A5,A6,A7,B3,B4,B5,B6,SP                        *
;*   Local Frame Size  : 0 Args + 28 Auto + 0 Save = 28 byte                  *
;******************************************************************************
_disp_init:
;** --------------------------------------------------------------------------*
;** 229	-----------------------    c_bk[] = {...};
;** 230	-----------------------    c_le[] = {...};
;** 231	-----------------------    c_re[] = {...};
;** 233	-----------------------    memcpy(&color_background, &c_bk, 8u);
;** 234	-----------------------    memcpy(&color_l_edge, &c_le, 8u);
;** 235	-----------------------    memcpy(&color_r_edge, &c_re, 8u);
;** 237	-----------------------    color_bk = 2416u;
;** 237	-----------------------    return;
           MVKL    .S1     _$T0$1,A3         ; |229| 

           MVKH    .S1     _$T0$1,A3         ; |229| 
||         MVKL    .S2     _$T1$2,B4         ; |230| 

           MVKL    .S1     _$T2$3,A3         ; |231| 
||         LDDW    .D1T1   *A3,A5:A4         ; |229| 
||         MVKH    .S2     _$T1$2,B4         ; |230| 

           LDDW    .D2T2   *B4,B5:B4         ; |230| 
||         MVKH    .S1     _$T2$3,A3         ; |231| 

           LDDW    .D1T1   *A3,A7:A6         ; |231| 
           ADDK    .S2     -32,SP            ; |228| 
           MVKL    .S2     _color_r_edge,B6  ; |235| 
           STDW    .D2T1   A5:A4,*+SP(8)     ; |229| 
           STDW    .D2T2   B5:B4,*+SP(16)    ; |230| 

           ADD     .L1X    8,SP,A3           ; |233| 
||         STDW    .D2T1   A7:A6,*+SP(24)    ; |231| 

           LDDW    .D1T1   *A3,A5:A4         ; |233| 
           MVKL    .S1     _color_background,A3 ; |233| 
           MVKH    .S1     _color_background,A3 ; |233| 
           ADD     .D2     SP,16,B4          ; |234| 
           MVKH    .S2     _color_r_edge,B6  ; |235| 
           STDW    .D1T1   A5:A4,*A3         ; |233| 
           LDDW    .D2T1   *B4,A5:A4         ; |234| 
           MVKL    .S1     _color_l_edge,A3  ; |234| 
           MVKH    .S1     _color_l_edge,A3  ; |234| 
           ADD     .D2     SP,24,B4          ; |235| 
           ADDK    .S2     32,SP             ; |238| 
           STDW    .D1T1   A5:A4,*A3         ; |234| 
           LDDW    .D2T2   *B4,B5:B4         ; |235| 
           RETNOP  .S2     B3,1              ; |238| 
           MVKL    .S1     _color_bk,A3      ; |237| 
           MVKH    .S1     _color_bk,A3      ; |237| 

           STDW    .D2T2   B5:B4,*B6         ; |235| 
||         MVK     .S2     2416,B4           ; |237| 

	.dwpsn	"utility.c",238,1
           STH     .D1T2   B4,*A3            ; |237| 
           ; BRANCH OCCURS {B3}              ; |238| 
	.dwattr DW$156, DW_AT_end_file("utility.c")
	.dwattr DW$156, DW_AT_end_line(0xee)
	.dwattr DW$156, DW_AT_end_column(0x01)
	.dwendtag DW$156

	.sect	".text"
	.global	_disp_draw_box

DW$157	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_draw_box"), DW_AT_symbol_name("_disp_draw_box")
	.dwattr DW$157, DW_AT_low_pc(_disp_draw_box)
	.dwattr DW$157, DW_AT_high_pc(0x00)
	.dwattr DW$157, DW_AT_begin_file("utility.c")
	.dwattr DW$157, DW_AT_begin_line(0x18a)
	.dwattr DW$157, DW_AT_begin_column(0x05)
	.dwattr DW$157, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$157, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",395,1

;******************************************************************************
;* FUNCTION NAME: _disp_draw_box                                              *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,B0,B1,B4,B5,B7,B9,B16                 *
;*   Regs Used         : A0,A3,A4,A5,A6,A8,B0,B1,B3,B4,B5,B6,B7,B8,B9,B16     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_draw_box:
;** --------------------------------------------------------------------------*
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x1"), DW_AT_symbol_name("_x1")
	.dwattr DW$158, DW_AT_type(*DW$T$10)
	.dwattr DW$158, DW_AT_location[DW_OP_reg4]
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x2"), DW_AT_symbol_name("_x2")
	.dwattr DW$159, DW_AT_type(*DW$T$10)
	.dwattr DW$159, DW_AT_location[DW_OP_reg20]
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y1"), DW_AT_symbol_name("_y1")
	.dwattr DW$160, DW_AT_type(*DW$T$10)
	.dwattr DW$160, DW_AT_location[DW_OP_reg6]
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y2"), DW_AT_symbol_name("_y2")
	.dwattr DW$161, DW_AT_type(*DW$T$10)
	.dwattr DW$161, DW_AT_location[DW_OP_reg22]
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color"), DW_AT_symbol_name("_color")
	.dwattr DW$162, DW_AT_type(*DW$T$10)
	.dwattr DW$162, DW_AT_location[DW_OP_reg8]
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rgb"), DW_AT_symbol_name("_rgb")
	.dwattr DW$163, DW_AT_type(*DW$T$46)
	.dwattr DW$163, DW_AT_location[DW_OP_reg24]
;** 395	-----------------------    rgb = rgb;
;** 397	-----------------------    y = y1;
;** 397	-----------------------    if ( y > y2 ) goto g7;
;** 398	-----------------------    L$1 = y2-y+1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           CMPGT   .L1X    A6,B6,A0          ; |397| 
||         SUB     .L2X    B6,A6,B5          ; |398| 
||         MV      .S2     B4,B9             ; |395| 

   [ A0]   BNOP    .S1     L59,3             ; |397| 
||         ADD     .L2     1,B5,B0           ; |398| 
||         MV      .S2X    A8,B16            ; |395| 

           MV      .L2X    A4,B7             ; |395| 
           CMPGT   .L2     B7,B9,B1          ; |398| 
           ; BRANCHCC OCCURS {L59}           ; |397| 
;** --------------------------------------------------------------------------*

   [ B1]   BNOP    .S2     L58,1             ; |398| 
|| [!B1]   SUB     .L2     B9,B7,B5          ; |399| 
|| [!B1]   MVK     .S1     1280,A3

   [!B1]   MPYLI   .M1     A3,A6,A5:A4
   [!B1]   ADD     .L1X    1,B5,A3           ; |399| 
	.dwpsn	"utility.c",397,0
   [!B1]   SUB     .L1     A3,1,A0
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L54
;** --------------------------------------------------------------------------*
L54:    
DW$L$_disp_draw_box$3$B:
	.dwpsn	"utility.c",398,0
;**	-----------------------g3:
;** 398	-----------------------    if ( x1 > x2 ) goto g6;
           NOP             1
           ; BRANCHCC OCCURS {L58}           ; |398| 
;**  	-----------------------    K$17 = (unsigned short)color;
;**  	-----------------------    U$23 = x1*2+(_lo(_mpyli(1280, y))+rgb);
;** 399	-----------------------    L$2 = x2-x1+1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g5:
;** 399	-----------------------    *U$23++ = K$17;
;** 398	-----------------------    if ( --L$2 ) goto g5;
DW$L$_disp_draw_box$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 398
;*      Loop opening brace source line   : 399
;*      Loop closing brace source line   : 399
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 0
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
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 5
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L55:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L56,A0            ; |398| (P) <0,0> 
   [ A0]   BDEC    .S1     L56,A0            ; |398| (P) <1,0> 
   [ A0]   BDEC    .S1     L56,A0            ; |398| (P) <2,0> 

           ADD     .L2X    B8,A4,B4
|| [ A0]   BDEC    .S1     L56,A0            ; |398| (P) <3,0> 


           ADDAH   .D2     B4,B7,B5
||         EXTU    .S2     B16,16,16,B4
|| [ A0]   BDEC    .S1     L56,A0            ; |398| (P) <4,0> 

;** --------------------------------------------------------------------------*
L56:    ; PIPED LOOP KERNEL
DW$L$_disp_draw_box$5$B:
	.dwpsn	"utility.c",399,0

           STH     .D2T2   B4,*B5++          ; |399| <0,5> 
|| [ A0]   BDEC    .S1     L56,A0            ; |398| <5,0> 

DW$L$_disp_draw_box$5$E:
;** --------------------------------------------------------------------------*
L57:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L58:    
DW$L$_disp_draw_box$7$B:
;**	-----------------------g6:
;** 397	-----------------------    ++y;
;** 397	-----------------------    if ( --L$1 ) goto g3;

           SUB     .S2     B0,1,B0           ; |397| 
||         ADD     .L1     1,A6,A6           ; |397| 
||         CMPGT   .L2     B7,B9,B1          ; |398| 

   [ B0]   B       .S1     L54               ; |397| 
|| [!B0]   ZERO    .L2     B1                ; |398| nullify predicate

   [ B1]   BNOP    .S2     L58,1             ; |398| 
|| [!B1]   SUB     .L2     B9,B7,B5          ; |399| 
|| [!B1]   MVK     .S1     1280,A3

   [!B1]   MPYLI   .M1     A3,A6,A5:A4
   [!B1]   ADD     .L1X    1,B5,A3           ; |399| 
   [!B1]   SUB     .L1     A3,1,A0
           ; BRANCHCC OCCURS {L54}           ; |397| 
DW$L$_disp_draw_box$7$E:
;** --------------------------------------------------------------------------*
L59:    
;**	-----------------------g7:
;** 401	-----------------------    return 1;
           RETNOP  .S2     B3,4              ; |402| 
	.dwpsn	"utility.c",402,1
           MVK     .L1     0x1,A4            ; |401| 
           ; BRANCH OCCURS {B3}              ; |402| 

DW$164	.dwtag  DW_TAG_loop
	.dwattr DW$164, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L54:1:1297920373")
	.dwattr DW$164, DW_AT_begin_file("utility.c")
	.dwattr DW$164, DW_AT_begin_line(0x18d)
	.dwattr DW$164, DW_AT_end_line(0x18f)
DW$165	.dwtag  DW_TAG_loop_range
	.dwattr DW$165, DW_AT_low_pc(DW$L$_disp_draw_box$3$B)
	.dwattr DW$165, DW_AT_high_pc(DW$L$_disp_draw_box$3$E)
DW$166	.dwtag  DW_TAG_loop_range
	.dwattr DW$166, DW_AT_low_pc(DW$L$_disp_draw_box$7$B)
	.dwattr DW$166, DW_AT_high_pc(DW$L$_disp_draw_box$7$E)

DW$167	.dwtag  DW_TAG_loop
	.dwattr DW$167, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L56:2:1297920373")
	.dwattr DW$167, DW_AT_begin_file("utility.c")
	.dwattr DW$167, DW_AT_begin_line(0x18e)
	.dwattr DW$167, DW_AT_end_line(0x18f)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$_disp_draw_box$5$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$_disp_draw_box$5$E)
	.dwendtag DW$167

	.dwendtag DW$164

	.dwattr DW$157, DW_AT_end_file("utility.c")
	.dwattr DW$157, DW_AT_end_line(0x192)
	.dwattr DW$157, DW_AT_end_column(0x01)
	.dwendtag DW$157

	.sect	".text"
	.global	_disp_draw_half_frame

DW$169	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_draw_half_frame"), DW_AT_symbol_name("_disp_draw_half_frame")
	.dwattr DW$169, DW_AT_low_pc(_disp_draw_half_frame)
	.dwattr DW$169, DW_AT_high_pc(0x00)
	.dwattr DW$169, DW_AT_begin_file("utility.c")
	.dwattr DW$169, DW_AT_begin_line(0x1b2)
	.dwattr DW$169, DW_AT_begin_column(0x05)
	.dwattr DW$169, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$169, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",435,1

;******************************************************************************
;* FUNCTION NAME: _disp_draw_half_frame                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,   *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B30,B31                              *
;*   Regs Used         : A0,A1,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,B7,  *
;*                           B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,*
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B30,B31                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_draw_half_frame:
;** --------------------------------------------------------------------------*
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rgb"), DW_AT_symbol_name("_rgb")
	.dwattr DW$170, DW_AT_type(*DW$T$46)
	.dwattr DW$170, DW_AT_location[DW_OP_reg4]
;** 435	-----------------------    rgb = rgb;
;** 441	-----------------------    v$1 = (int)color_bk;
;** 441	-----------------------    disp_draw_box(0, 639, 240, 247, v$1, rgb);
;** 442	-----------------------    disp_draw_box(0, 639, 474, 479, v$1, rgb);
;** 444	-----------------------    disp_draw_box(5, 314, 246, 247, 54970, rgb);
;** 445	-----------------------    disp_draw_box(325, 634, 246, 247, 54970, rgb);
;** 447	-----------------------    disp_draw_box(5, 314, 474, 475, 54970, rgb);
;** 448	-----------------------    disp_draw_box(325, 634, 474, 475, 54970, rgb);
;** 450	-----------------------    dest = &rgb[158720];
;**  	-----------------------    U$32 = &((double *)dest)[78];
;**  	-----------------------    U$35 = &((double *)dest)[79];
;**  	-----------------------    U$38 = &((double *)dest)[80];
;**  	-----------------------    U$41 = &((double *)dest)[81];
;**  	-----------------------    U$44 = &((double *)dest)[158];
;**  	-----------------------    U$47 = &((double *)dest)[159];
;**  	-----------------------    U$50 = &((unsigned char *)dest)[16];
;**  	-----------------------    K$67 = 226;
;**  	-----------------------    K$69 = 228;
;** 452	-----------------------    j = 8;
;** 444	-----------------------    K$10 = 54970;
;**  	-----------------------    #pragma MUST_ITERATE(226, 226, 226)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVKL    .S1     _color_bk,A3      ; |441| 
           MVKH    .S1     _color_bk,A3      ; |441| 

           CALL    .S1     _disp_draw_box    ; |441| 
||         LDHU    .D1T2   *A3,B19           ; |441| 

           MVK     .S2     0xf7,B6           ; |441| 
           MVK     .S2     0x27f,B4          ; |441| 
           MV      .L1     A4,A7             ; |435| 
           MVK     .S1     0xf0,A6           ; |441| 

           MV      .L1X    B19,A8            ; |441| 
||         MV      .L2     B3,B30            ; |435| 
||         ADDKPC  .S2     RL19,B3,0         ; |441| 
||         MV      .D2X    A4,B8             ; |435| 
||         ZERO    .D1     A4                ; |441| 

RL19:      ; CALL OCCURS {_disp_draw_box}    ; |441| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _disp_draw_box    ; |442| 
           MVK     .S2     0x1df,B6          ; |442| 
           MVK     .S2     0x27f,B4          ; |442| 
           ADDKPC  .S2     RL20,B3,0         ; |442| 
           MVK     .S1     0x1da,A6          ; |442| 
           ZERO    .L1     A4                ; |442| 
RL20:      ; CALL OCCURS {_disp_draw_box}    ; |442| 
           CALL    .S1     _disp_draw_box    ; |444| 
           MVK     .S2     0xf7,B6           ; |444| 
           MVKL    .S1     0xd6ba,A8         ; |444| 
           MVK     .S2     0x13a,B4          ; |444| 
           MVK     .S1     0xf6,A6           ; |444| 

           ADDKPC  .S2     RL21,B3,0         ; |444| 
||         MVKH    .S1     0xd6ba,A8         ; |444| 
||         MVK     .L1     0x5,A4            ; |444| 

RL21:      ; CALL OCCURS {_disp_draw_box}    ; |444| 
           CALL    .S1     _disp_draw_box    ; |445| 
           MVKL    .S1     0xd6ba,A8         ; |445| 
           MVK     .S1     0xf6,A6           ; |445| 
           MVK     .S1     0x145,A4          ; |445| 
           MVK     .S2     0x27a,B4          ; |445| 

           ADDKPC  .S2     RL22,B3,0         ; |445| 
||         MVKH    .S1     0xd6ba,A8         ; |445| 

RL22:      ; CALL OCCURS {_disp_draw_box}    ; |445| 
           CALL    .S1     _disp_draw_box    ; |447| 
           MVK     .S2     0x13a,B4          ; |447| 
           MVKL    .S1     0xd6ba,A8         ; |447| 
           MVK     .S2     0x1db,B6          ; |447| 
           MVK     .S1     0x1da,A6          ; |447| 

           ADDKPC  .S2     RL23,B3,0         ; |447| 
||         MVKH    .S1     0xd6ba,A8         ; |447| 
||         MVK     .L1     0x5,A4            ; |447| 

RL23:      ; CALL OCCURS {_disp_draw_box}    ; |447| 
           CALL    .S1     _disp_draw_box    ; |448| 
           MVKL    .S1     0xd6ba,A8         ; |448| 
           MVK     .S1     0x1da,A6          ; |448| 
           MVK     .S1     0x145,A4          ; |448| 
           MVK     .S2     0x27a,B4          ; |448| 

           ADDKPC  .S2     RL24,B3,0         ; |448| 
||         MVKH    .S1     0xd6ba,A8         ; |448| 

RL24:      ; CALL OCCURS {_disp_draw_box}    ; |448| 
;** --------------------------------------------------------------------------*
;**	-----------------------g2:
;** 455	-----------------------    v$2 = color_background;
;** 455	-----------------------    *(double *)dest = v$2;
;** 456	-----------------------    v$3 = color_l_edge;
;** 456	-----------------------    ((double *)dest)[1] = v$3;
;** 458	-----------------------    v$4 = color_r_edge;
;** 458	-----------------------    *U$32 = v$4;
;** 459	-----------------------    *U$35 = v$2;
;** 461	-----------------------    *U$38 = v$2;
;** 462	-----------------------    *U$41 = v$3;
;** 465	-----------------------    *U$44 = v$4;
;** 466	-----------------------    *U$47 = v$2;
;** 468	-----------------------    p = U$50;
;**  	-----------------------    U$55 = &((double *)p)[80];
;** 468	-----------------------    L$2 = 76;
;**  	-----------------------    #pragma MUST_ITERATE(76, 76, 76)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g3:
;** 470	-----------------------    *(double *)p = v$2;
;** 471	-----------------------    *U$55++ = v$2;
;** 468	-----------------------    p += 8;
;** 468	-----------------------    if ( --L$2 ) goto g3;
;** 475	-----------------------    if ( !((j >= 14)&(j < 16)|(j >= K$67)&(j < K$69)) ) goto g7;
           MVKL    .S1     _color_l_edge,A31 ; |456| 
           MVK     .S1     1272,A3

           MVK     .S1     648,A6
||         MVKL    .S2     0x4d800,B4        ; |450| 

           MVKH    .S2     0x4d800,B4        ; |450| 
||         MVK     .S1     1264,A4

           MVK     .S1     640,A5

           ADD     .L2X    B4,A7,B4          ; |450| Define a twin register
||         ADD     .L1X    B4,A7,A24         ; |450| 
||         MVKL    .S1     0xd6ba,A23        ; |444| 

           ADD     .L2X    A3,B4,B21
||         MVKH    .S1     _color_l_edge,A31 ; |456| 
||         MVK     .S2     624,B5

           MVKL    .S2     _color_r_edge,B4  ; |458| 
||         MVKL    .S1     _color_background,A3 ; |455| 
||         ADD     .L2X    A6,B4,B22         ; Define a twin register
||         ADD     .D2     B4,16,B20

           LDDW    .D1T1   *A31,A7:A6        ; |456| 
||         MVKH    .S2     _color_r_edge,B4  ; |458| 
||         MVKH    .S1     _color_background,A3 ; |455| 
||         ADD     .L1     A4,A24,A27

           LDDW    .D1T2   *A3,B5:B4         ; |455| 
||         LDDW    .D2T1   *B4,A5:A4         ; |458| 
||         ADD     .L1X    B5,A24,A28
||         ADD     .S1     A5,A24,A26

           MVK     .S1     0xe2,A29

           MVK     .S1     71,A0             ; |468| 
||         MVK     .S2     632,B6

           ADD     .L2X    B6,A24,B23
||         MVKH    .S1     0xd6ba,A23        ; |444| 
||         MVK     .S2     0xe4,B24
||         MVK     .L1     0x8,A25           ; |452| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 468
;*      Loop opening brace source line   : 469
;*      Loop closing brace source line   : 472
;*      Known Minimum Trip Count         : 76                    
;*      Known Maximum Trip Count         : 76                    
;*      Known Max Trip Count Factor      : 76
;*      Loop Carried Dependency Bound(^) : 0
;*      Unpartitioned Resource Bound     : 1
;*      Partitioned Resource Bound(*)    : 1
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1*       0     
;*      .D units                     1*       1*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1*       1*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        0     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1*       0     
;*      Bound(.L .S .D .LS .LSD)     1*       1*    
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 1  Schedule found with 6 iterations in parallel
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 1
;*      Collapsed prolog stages     : 0
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 5
;*----------------------------------------------------------------------------*
L60:    ; PIPED LOOP PROLOG

   [ A0]   BDEC    .S1     L61,A0            ; |468| (P) <0,0> 
||         STDW    .D1T1   A7:A6,*+A24(8)    ; |456| 

   [ A0]   BDEC    .S1     L61,A0            ; |468| (P) <1,0> 
||         STDW    .D1T2   B5:B4,*A24        ; |455| 

   [ A0]   BDEC    .S1     L61,A0            ; |468| (P) <2,0> 
||         MV      .L1X    B20,A3            ; |468| 
||         STDW    .D1T1   A5:A4,*A27        ; |465| 
||         STDW    .D2T2   B5:B4,*B23        ; |459| 

           MVK     .S2     640,B6
|| [ A0]   BDEC    .S1     L61,A0            ; |468| (P) <3,0> 
||         STDW    .D1T1   A5:A4,*A28        ; |458| 
||         MV      .L1X    B5,A5
||         STDW    .D2T2   B5:B4,*B21        ; |466| 

	.dwpsn	"utility.c",468,0

           ADD     .L2     B6,B20,B6
|| [ A0]   BDEC    .S1     L61,A0            ; |468| (P) <4,0> 
||         STDW    .D2T1   A7:A6,*B22        ; |462| 
||         MV      .L1X    B4,A4
||         STDW    .D1T2   B5:B4,*A26        ; |461| 

;** --------------------------------------------------------------------------*
L61:    ; PIPED LOOP KERNEL
DW$L$_disp_draw_half_frame$5$B:
	.dwpsn	"utility.c",469,0
	.dwpsn	"utility.c",472,0

           STDW    .D1T1   A5:A4,*A3++       ; |470| <0,5> 
||         STDW    .D2T2   B5:B4,*B6++       ; |471| <0,5> 
|| [ A0]   BDEC    .S1     L61,A0            ; |468| <5,0> 

DW$L$_disp_draw_half_frame$5$E:
;** --------------------------------------------------------------------------*
L62:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$7$B:

           STDW    .D2T2   B5:B4,*B6++       ; |471| (E) <2,5> 
||         STDW    .D1T1   A5:A4,*A3++       ; |470| (E) <2,5> 
||         CMPLT   .L1     A25,14,A30        ; |475| 
||         CMPLT   .L2X    A25,B24,B31       ; |475| 
||         MVK     .S1     16,A22            ; |475| 

           STDW    .D1T1   A5:A4,*A3++       ; |470| (E) <3,5> 
||         STDW    .D2T2   B5:B4,*B6++       ; |471| (E) <3,5> 
||         CMPLT   .L1     A25,A29,A31       ; |475| 

           STDW    .D2T2   B5:B4,*B6++       ; |471| (E) <4,5> 
||         STDW    .D1T1   A5:A4,*A3++       ; |470| (E) <4,5> 
||         CMPLT   .L1     A25,A22,A6        ; |475| 

           STDW    .D1T1   A5:A4,*A3++       ; |470| (E) <5,5> 
||         STDW    .D2T2   B5:B4,*B6++       ; |471| (E) <5,5> 
||         XOR     .L1     1,A30,A4          ; |475| 
||         XOR     .S1     1,A31,A5          ; |475| 

           AND     .L1X    B31,A5,A3         ; |475| 
||         AND     .S1     A6,A4,A4          ; |475| 

           OR      .L1     A3,A4,A0          ; |475| 
   [!A0]   BNOP    .S1     L64,5             ; |475| 
           ; BRANCHCC OCCURS {L64}           ; |475| 
DW$L$_disp_draw_half_frame$7$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$8$B:
;**  	-----------------------    U$76 = &dest[16];
;**  	-----------------------    U$78 = (unsigned short *)U$38+32;
;** 478	-----------------------    L$3 = 288;
;**  	-----------------------    #pragma MUST_ITERATE(288, 288, 288)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     _disp_alpha_blend ; |480| 
||         MV      .L2X    A24,B4
||         MVK     .S2     0x120,B0          ; |478| 
||         ADDAD   .D1     A26,4,A8

           NOP             2
	.dwpsn	"utility.c",478,0
           ADDAD   .D2     B4,4,B6
DW$L$_disp_draw_half_frame$8$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L63:    
DW$L$_disp_draw_half_frame$9$B:
	.dwpsn	"utility.c",479,0
;**	-----------------------g6:
;** 480	-----------------------    *U$76++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 481	-----------------------    *U$78++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 478	-----------------------    if ( --L$3 ) goto g6;
           ADDKPC  .S2     RL25,B3,0         ; |480| 

           EXTU    .S2     B19,16,16,B4      ; |480| 
||         EXTU    .S1     A23,16,16,A4      ; |480| 

RL25:      ; CALL OCCURS {_disp_alpha_blend}  ; |480| 
DW$L$_disp_draw_half_frame$9$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$10$B:
           CALL    .S1     _disp_alpha_blend ; |481| 
           EXTU    .S2     B19,16,16,B4      ; |481| 
           ADDKPC  .S2     RL26,B3,1         ; |481| 
           MV      .L2X    A4,B5             ; |480| 

           EXTU    .S1     A23,16,16,A4      ; |481| 
||         STH     .D2T2   B5,*B6++          ; |480| 

RL26:      ; CALL OCCURS {_disp_alpha_blend}  ; |481| 
DW$L$_disp_draw_half_frame$10$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$11$B:

           SUB     .L2     B0,1,B0           ; |478| 
||         STH     .D1T1   A4,*A8++          ; |481| 

   [ B0]   BNOP    .S1     L63,1             ; |478| 
   [ B0]   CALL    .S1     _disp_alpha_blend ; |480| 
	.dwpsn	"utility.c",482,0
           NOP             3
           ; BRANCHCC OCCURS {L63}           ; |478| 
DW$L$_disp_draw_half_frame$11$E:
;** --------------------------------------------------------------------------*
L64:    
DW$L$_disp_draw_half_frame$12$B:
;**	-----------------------g7:
;** 485	-----------------------    if ( !((j >= 16)&(j < K$67)) ) goto g10;

           MVK     .S1     16,A3             ; |485| 
||         CMPLT   .L1     A25,A29,A4        ; |485| 

           CMPLT   .L1     A25,A3,A3         ; |485| 
           XOR     .L1     1,A3,A3           ; |485| 
           AND     .L1     A4,A3,A0          ; |485| 
   [!A0]   BNOP    .S1     L66,5             ; |485| 
           ; BRANCHCC OCCURS {L66}           ; |485| 
DW$L$_disp_draw_half_frame$12$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$13$B:
;**  	-----------------------    U$76 = &dest[16];
;**  	-----------------------    U$93 = &dest[301];
;**  	-----------------------    U$97 = &dest[336];
;**  	-----------------------    U$101 = &dest[621];
;** 487	-----------------------    L$4 = 3;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     _disp_alpha_blend ; |489| 
||         ADDAD   .D1     A24,4,A4
||         MVK     .S2     672,B4
||         MVK     .L1     0x3,A0            ; |487| 

           MVK     .S2     602,B31
||         MVK     .S1     1242,A3
||         ADD     .L2X    B4,A24,B7

           MV      .L2X    A4,B6             ; Define a twin register
||         ADD     .L1     A3,A24,A8

	.dwpsn	"utility.c",487,0
           ADD     .L2X    B31,A24,B8
DW$L$_disp_draw_half_frame$13$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L65:    
DW$L$_disp_draw_half_frame$14$B:
	.dwpsn	"utility.c",488,0
;**	-----------------------g9:
;** 489	-----------------------    *U$76++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 490	-----------------------    *U$93++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 492	-----------------------    *U$97++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 493	-----------------------    *U$101++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 487	-----------------------    if ( --L$4 ) goto g9;
           ADDKPC  .S2     RL27,B3,0         ; |489| 

           EXTU    .S2     B19,16,16,B4      ; |489| 
||         EXTU    .S1     A23,16,16,A4      ; |489| 

RL27:      ; CALL OCCURS {_disp_alpha_blend}  ; |489| 
DW$L$_disp_draw_half_frame$14$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$15$B:
           CALL    .S1     _disp_alpha_blend ; |490| 
           EXTU    .S2     B19,16,16,B4      ; |490| 
           ADDKPC  .S2     RL28,B3,1         ; |490| 
           MV      .L2X    A4,B5             ; |489| 

           EXTU    .S1     A23,16,16,A4      ; |490| 
||         STH     .D2T2   B5,*B6++          ; |489| 

RL28:      ; CALL OCCURS {_disp_alpha_blend}  ; |490| 
           CALL    .S1     _disp_alpha_blend ; |492| 
           EXTU    .S2     B19,16,16,B4      ; |492| 
           ADDKPC  .S2     RL29,B3,1         ; |492| 
           MV      .L2X    A4,B5             ; |490| 

           EXTU    .S1     A23,16,16,A4      ; |492| 
||         STH     .D2T2   B5,*B8++          ; |490| 

RL29:      ; CALL OCCURS {_disp_alpha_blend}  ; |492| 
           CALL    .S1     _disp_alpha_blend ; |493| 
           EXTU    .S2     B19,16,16,B4      ; |493| 
           ADDKPC  .S2     RL30,B3,1         ; |493| 
           MV      .L2X    A4,B5             ; |492| 

           EXTU    .S1     A23,16,16,A4      ; |493| 
||         STH     .D2T2   B5,*B7++          ; |492| 

RL30:      ; CALL OCCURS {_disp_alpha_blend}  ; |493| 
DW$L$_disp_draw_half_frame$15$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$16$B:

           SUB     .L1     A0,1,A0           ; |487| 
||         STH     .D1T1   A4,*A8++          ; |493| 

   [ A0]   BNOP    .S1     L65,1             ; |487| 
   [ A0]   CALL    .S1     _disp_alpha_blend ; |489| 
	.dwpsn	"utility.c",494,0
           NOP             3
           ; BRANCHCC OCCURS {L65}           ; |487| 
DW$L$_disp_draw_half_frame$16$E:
;** --------------------------------------------------------------------------*
L66:    
DW$L$_disp_draw_half_frame$17$B:
;**	-----------------------g10:
;** 498	-----------------------    _set_logo(dest, j);
;** 452	-----------------------    U$32 += 160;
;** 452	-----------------------    U$35 += 160;
;** 452	-----------------------    U$38 += 160;
;** 452	-----------------------    U$41 += 160;
;** 452	-----------------------    U$44 += 160;
;** 452	-----------------------    U$47 += 160;
;** 452	-----------------------    U$50 += 1280;
;** 452	-----------------------    dest += 640;
;** 452	-----------------------    if ( (++j) < 234 ) goto g2;
;** 500	-----------------------    return 0;
           CALL    .S1     __set_logo        ; |498| 
           ADDKPC  .S2     RL31,B3,2         ; |498| 
           MV      .L2X    A25,B4            ; |498| 
           MV      .L1     A24,A4            ; |498| 
RL31:      ; CALL OCCURS {__set_logo}        ; |498| 
DW$L$_disp_draw_half_frame$17$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$18$B:

           ADDK    .S2     1280,B23          ; |452| 
||         MVK     .S1     234,A3            ; |452| 
||         ADD     .L1     1,A25,A25         ; |452| 

           CMPLT   .L1     A25,A3,A0         ; |452| 
||         MVKL    .S1     _color_l_edge,A31 ; |456| 
||         ADDK    .S2     1280,B22          ; |452| 

   [ A0]   MVKL    .S2     _color_r_edge,B4  ; |458| 
|| [ A0]   MVKL    .S1     _color_background,A3 ; |455| 

           MVKH    .S1     _color_l_edge,A31 ; |456| 
||         ADDK    .S2     1280,B21          ; |452| 

   [ A0]   MVKH    .S2     _color_r_edge,B4  ; |458| 
|| [ A0]   LDDW    .D1T1   *A31,A7:A6        ; |456| 
|| [ A0]   MVKH    .S1     _color_background,A3 ; |455| 

   [ A0]   BNOP    .S2     L60,1             ; |452| 
|| [ A0]   LDDW    .D2T1   *B4,A5:A4         ; |458| 
|| [ A0]   LDDW    .D1T2   *A3,B5:B4         ; |455| 
|| [ A0]   MVK     .S1     71,A0             ; |468| 

           ADDK    .S1     1280,A26          ; |452| 
||         ADDK    .S2     1280,B20          ; |452| 

           ADDK    .S1     1280,A27          ; |452| 
           ADDK    .S1     1280,A28          ; |452| 
           ADDK    .S1     1280,A24          ; |452| 
           ; BRANCHCC OCCURS {L60}           ; |452| 
DW$L$_disp_draw_half_frame$18$E:
;** --------------------------------------------------------------------------*
           RETNOP  .S2     B30,4             ; |501| 
	.dwpsn	"utility.c",501,1
           ZERO    .L1     A4                ; |500| 
           ; BRANCH OCCURS {B30}             ; |501| 

DW$171	.dwtag  DW_TAG_loop
	.dwattr DW$171, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L60:1:1297920373")
	.dwattr DW$171, DW_AT_begin_file("utility.c")
	.dwattr DW$171, DW_AT_begin_line(0x1c4)
	.dwattr DW$171, DW_AT_end_line(0x1f2)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_disp_draw_half_frame$13$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_disp_draw_half_frame$13$E)
DW$173	.dwtag  DW_TAG_loop_range
	.dwattr DW$173, DW_AT_low_pc(DW$L$_disp_draw_half_frame$8$B)
	.dwattr DW$173, DW_AT_high_pc(DW$L$_disp_draw_half_frame$8$E)
DW$174	.dwtag  DW_TAG_loop_range
	.dwattr DW$174, DW_AT_low_pc(DW$L$_disp_draw_half_frame$7$B)
	.dwattr DW$174, DW_AT_high_pc(DW$L$_disp_draw_half_frame$7$E)
DW$175	.dwtag  DW_TAG_loop_range
	.dwattr DW$175, DW_AT_low_pc(DW$L$_disp_draw_half_frame$12$B)
	.dwattr DW$175, DW_AT_high_pc(DW$L$_disp_draw_half_frame$12$E)
DW$176	.dwtag  DW_TAG_loop_range
	.dwattr DW$176, DW_AT_low_pc(DW$L$_disp_draw_half_frame$17$B)
	.dwattr DW$176, DW_AT_high_pc(DW$L$_disp_draw_half_frame$17$E)
DW$177	.dwtag  DW_TAG_loop_range
	.dwattr DW$177, DW_AT_low_pc(DW$L$_disp_draw_half_frame$18$B)
	.dwattr DW$177, DW_AT_high_pc(DW$L$_disp_draw_half_frame$18$E)

DW$178	.dwtag  DW_TAG_loop
	.dwattr DW$178, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L61:2:1297920373")
	.dwattr DW$178, DW_AT_begin_file("utility.c")
	.dwattr DW$178, DW_AT_begin_line(0x1d4)
	.dwattr DW$178, DW_AT_end_line(0x1d8)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$_disp_draw_half_frame$5$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$_disp_draw_half_frame$5$E)
	.dwendtag DW$178


DW$180	.dwtag  DW_TAG_loop
	.dwattr DW$180, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L63:2:1297920373")
	.dwattr DW$180, DW_AT_begin_file("utility.c")
	.dwattr DW$180, DW_AT_begin_line(0x1de)
	.dwattr DW$180, DW_AT_end_line(0x1e2)
DW$181	.dwtag  DW_TAG_loop_range
	.dwattr DW$181, DW_AT_low_pc(DW$L$_disp_draw_half_frame$9$B)
	.dwattr DW$181, DW_AT_high_pc(DW$L$_disp_draw_half_frame$9$E)
DW$182	.dwtag  DW_TAG_loop_range
	.dwattr DW$182, DW_AT_low_pc(DW$L$_disp_draw_half_frame$10$B)
	.dwattr DW$182, DW_AT_high_pc(DW$L$_disp_draw_half_frame$10$E)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$_disp_draw_half_frame$11$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$_disp_draw_half_frame$11$E)
	.dwendtag DW$180


DW$184	.dwtag  DW_TAG_loop
	.dwattr DW$184, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L65:2:1297920373")
	.dwattr DW$184, DW_AT_begin_file("utility.c")
	.dwattr DW$184, DW_AT_begin_line(0x1e7)
	.dwattr DW$184, DW_AT_end_line(0x1ee)
DW$185	.dwtag  DW_TAG_loop_range
	.dwattr DW$185, DW_AT_low_pc(DW$L$_disp_draw_half_frame$14$B)
	.dwattr DW$185, DW_AT_high_pc(DW$L$_disp_draw_half_frame$14$E)
DW$186	.dwtag  DW_TAG_loop_range
	.dwattr DW$186, DW_AT_low_pc(DW$L$_disp_draw_half_frame$15$B)
	.dwattr DW$186, DW_AT_high_pc(DW$L$_disp_draw_half_frame$15$E)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$_disp_draw_half_frame$16$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$_disp_draw_half_frame$16$E)
	.dwendtag DW$184

	.dwendtag DW$171

	.dwattr DW$169, DW_AT_end_file("utility.c")
	.dwattr DW$169, DW_AT_end_line(0x1f5)
	.dwattr DW$169, DW_AT_end_column(0x01)
	.dwendtag DW$169

	.sect	".text"
	.global	_disp_direct

DW$188	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_direct"), DW_AT_symbol_name("_disp_direct")
	.dwattr DW$188, DW_AT_low_pc(_disp_direct)
	.dwattr DW$188, DW_AT_high_pc(0x00)
	.dwattr DW$188, DW_AT_begin_file("utility.c")
	.dwattr DW$188, DW_AT_begin_line(0x1f7)
	.dwattr DW$188, DW_AT_begin_column(0x06)
	.dwattr DW$188, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$188, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",504,1

;******************************************************************************
;* FUNCTION NAME: _disp_direct                                                *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B4,B5,B6,B7,B8,B9,A16, *
;*                           A17,A18,A31,B16,B17,B18,B19,B20,B21,B22,B23,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B3,B4,B5,B6,B7,B8,B9,  *
;*                           DP,SP,A16,A17,A18,A31,B16,B17,B18,B19,B20,B21,   *
;*                           B22,B23,B28,B29,B30,B31                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_direct:
;** --------------------------------------------------------------------------*
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("org"), DW_AT_symbol_name("_org")
	.dwattr DW$189, DW_AT_type(*DW$T$38)
	.dwattr DW$189, DW_AT_location[DW_OP_reg4]
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rgb"), DW_AT_symbol_name("_rgb")
	.dwattr DW$190, DW_AT_type(*DW$T$46)
	.dwattr DW$190, DW_AT_location[DW_OP_reg20]
;** 504	-----------------------    org = org;
;** 504	-----------------------    rgb = rgb;
;**  	-----------------------    V$0 = *(&u);
;**  	-----------------------    U$12 = org;
;**  	-----------------------    U$18 = &rgb[306560];
;**  	-----------------------    K$51 = (-2017);
;**  	-----------------------    K$64 = 0xfffff800u;
;**  	-----------------------    K$67 = (-32);
;** 510	-----------------------    L$1 = 480;
;**  	-----------------------    #pragma MUST_ITERATE(480, 480, 480)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVKL    .S1     0x95b00,A3
           MVKH    .S1     0x95b00,A3
           MVK     .S1     0xffffffe0,A16

           ADD     .L2X    A3,B4,B22
||         MVK     .S2     0x1e0,B1          ; |510| 
||         MV      .L1     A4,A18            ; |504| 

           MVK     .S1     0xfffff81f,A17
||         MVK     .S2     0xfffff800,B18

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L67
;** --------------------------------------------------------------------------*
L67:    
DW$L$_disp_direct$2$B:
;**	-----------------------g2:
;** 514	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(8)
;**  	-----------------------    U$21 = U$12;
;**  	-----------------------    U$76 = &U$18[-8];
;** 514	-----------------------    L$2 = 80;
;**  	-----------------------    #pragma MUST_ITERATE(80, 80, 80)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g3:
;** 516	-----------------------    s$16 = U$21[1];
;** 516	-----------------------    s$17 = U$21[2];
;** 516	-----------------------    s$18 = U$21[3];
;** 516	-----------------------    s$19 = U$21[4];
;** 516	-----------------------    s$20 = U$21[5];
;** 516	-----------------------    s$21 = U$21[6];
;** 516	-----------------------    s$22 = U$21[7];
;** 96	-----------------------    C$3 = *U$21++{8};  // [7]
;** 96	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)C$3, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$3<<8&K$64);  // [7]
;** 97	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|C$3>>3));  // [7]
;** 98	-----------------------    *(U$76 += 8) = y$26;  // [7]
;** 96	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$16, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$16<<8&K$64);  // [7]
;** 97	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$16>>3));  // [7]
;** 98	-----------------------    U$76[1] = y$26;  // [7]
;** 96	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$17, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$17<<8&K$64);  // [7]
;** 97	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$17>>3));  // [7]
;** 98	-----------------------    U$76[2] = y$26;  // [7]
;** 96	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$18, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$18<<8&K$64);  // [7]
;** 97	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$18>>3));  // [7]
;** 98	-----------------------    U$76[3] = y$26;  // [7]
;** 96	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$19, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$19<<8&K$64);  // [7]
;** 97	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$19>>3));  // [7]
;** 98	-----------------------    U$76[4] = y$26;  // [7]
;** 96	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$20, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$20<<8&K$64);  // [7]
;** 97	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$20>>3));  // [7]
;** 98	-----------------------    U$76[5] = y$26;  // [7]
;** 96	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$21, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$21<<8&K$64);  // [7]
;** 97	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$21>>3));  // [7]
;** 98	-----------------------    U$76[6] = y$26;  // [7]
;** 96	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$22, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$22<<8&K$64);  // [7]
;** 97	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$22>>3));  // [7]
;** 98	-----------------------    U$76[7] = y$26;  // [7]
;** 514	-----------------------    if ( --L$2 ) goto g3;
;** 510	-----------------------    U$12 += 640;

           MVC     .S2     CSR,B23
||         MV      .L1X    B22,A3
||         SUB     .L2X    A18,1,B9
||         MVK     .S1     0x1,A0            ; init prolog collapse predicate
||         MV      .D1     A18,A7

           AND     .L2     -2,B23,B4
||         SUB     .D1     A3,16,A9
||         MVK     .S2     0x50,B0           ; |514| 

           MVC     .S2     B4,CSR            ; interrupts off
DW$L$_disp_direct$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 514
;*      Loop opening brace source line   : 515
;*      Loop closing brace source line   : 517
;*      Loop Unroll Multiple             : 8x
;*      Known Minimum Trip Count         : 80                    
;*      Known Maximum Trip Count         : 80                    
;*      Known Max Trip Count Factor      : 80
;*      Loop Carried Dependency Bound(^) : 72
;*      Unpartitioned Resource Bound     : 33
;*      Partitioned Resource Bound(*)    : 33
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                    33*      32     
;*      .D units                    12        4     
;*      .M units                     0        0     
;*      .X cross paths              24       24     
;*      .T address paths             8        8     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)         42       21     (.L or .S or .D unit)
;*      Bound(.L .S .LS)            17       16     
;*      Bound(.L .S .D .LS .LSD)    29       19     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 72 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Epilog not removed
;*      Collapsed epilog stages     : 0
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 0 bytes
;*
;*      For further improvement on this loop, try option -mh8
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
L68:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L69:    ; PIPED LOOP KERNEL
DW$L$_disp_direct$4$B:
	.dwpsn	"utility.c",515,0

           SHL     .S2X    A5,8,B17          ; |96| <0,13> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,13>  ^ 

           SHL     .S2     B16,5,B16         ; |96| <0,14> 
||         AND     .L2     B18,B17,B19       ; |96| <0,14> 
||         EXTU    .S1     A3,21,21,A3       ; |96| <0,14>  ^ 

           SHL     .S2     B6,8,B7           ; |96| <0,15> 
||         OR      .L1X    B7,A3,A3          ; |96| <0,15>  ^ 

           SHRU    .S2     B6,3,B17          ; |97| <0,16> 
||         AND     .L2     B18,B7,B7         ; |96| <0,16> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,16>  ^ 

           SHL     .S2     B8,5,B6           ; |96| <0,17> 
||         AND     .L1     A16,A3,A3         ; |97| <0,17>  ^ 

           SHL     .S2     B5,8,B4           ; |96| <0,18> 
||         OR      .L1X    B4,A3,A3          ; |97| <0,18>  ^ 

           SHRU    .S2     B5,3,B5           ; |97| <0,19> 
||         AND     .L2     B18,B4,B4         ; |96| <0,19> 
||         EXTU    .S1     A3,16,16,A3       ; |97| <0,19>  ^ 

           SHRU    .S2X    A5,3,B8           ; |97| <0,20> 
||         AND     .L1     A17,A3,A4         ; |96| <0,20>  ^ 

           MV      .L2X    A3,B21            ; |97| <0,21> 
||         OR      .L1X    B6,A4,A3          ; |96| <0,21>  ^ 

           EXTU    .S1     A3,16,16,A3       ; |96| <0,22>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |96| <0,23>  ^ 
           OR      .L1X    B4,A3,A3          ; |96| <0,24>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| <0,25>  ^ 
           AND     .L1     A16,A3,A3         ; |97| <0,26>  ^ 
           OR      .L1X    B5,A3,A3          ; |97| <0,27>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |97| <0,28>  ^ 
           AND     .L1     A17,A3,A4         ; |96| <0,29>  ^ 

   [!A0]   LDBU    .D2T1   *+B9(4),A4        ; |516| <0,30> 
||         MV      .L2X    A3,B16            ; |97| <0,30> 
||         OR      .L1X    B16,A4,A3         ; |96| <0,30>  ^ 

           EXTU    .S1     A3,16,16,A3       ; |96| <0,31>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |96| <0,32>  ^ 
           OR      .L1X    B7,A3,A3          ; |96| <0,33>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| <0,34>  ^ 

           MV      .L2X    A4,B4             ; |516| <0,35> Define a twin register
||         AND     .L1     A16,A3,A3         ; |97| <0,35>  ^ 

           EXTU    .S2     B4,3,5,B4         ; |96| <0,36> 
||         OR      .L1X    B17,A3,A3         ; |97| <0,36>  ^ 

           SHL     .S2     B4,5,B5           ; |96| <0,37> 
||         EXTU    .S1     A3,16,16,A3       ; |97| <0,37>  ^ 

           SHL     .S2X    A4,8,B4           ; |96| <0,38> 
||         AND     .L1     A17,A3,A5         ; |96| <0,38>  ^ 

   [!A0]   LDBU    .D2T1   *+B9(5),A3        ; |516| <0,39> 
||         AND     .L2     B18,B4,B4         ; |96| <0,39> 
||         MV      .S2X    A3,B5             ; |97| <0,39> 
||         OR      .L1X    B5,A5,A3          ; |96| <0,39>  ^ 

           SHRU    .S2X    A4,3,B6           ; |97| <0,40> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,40>  ^ 

           EXTU    .S1     A3,21,21,A3       ; |96| <0,41>  ^ 
           OR      .L1X    B4,A3,A3          ; |96| <0,42>  ^ 
           EXTU    .S1     A3,16,16,A4       ; |96| <0,43>  ^ 

           MV      .L2X    A3,B4             ; |516| <0,44> Define a twin register
||         AND     .L1     A16,A4,A4         ; |97| <0,44>  ^ 

           EXTU    .S2     B4,3,5,B4         ; |96| <0,45> 
||         OR      .L1X    B6,A4,A4          ; |97| <0,45>  ^ 

           SHL     .S2     B4,5,B4           ; |96| <0,46> 
||         EXTU    .S1     A4,16,16,A4       ; |97| <0,46>  ^ 

           SHL     .S2X    A3,8,B6           ; |96| <0,47> 
||         AND     .L1     A17,A4,A5         ; |96| <0,47>  ^ 

   [!A0]   LDBU    .D2T1   *+B9(6),A4        ; |516| <0,48> 
||         AND     .L2     B18,B6,B4         ; |96| <0,48> 
||         MV      .S2X    A4,B6             ; |97| <0,48> 
||         OR      .L1X    B4,A5,A4          ; |96| <0,48>  ^ 

           SHRU    .S2X    A3,3,B7           ; |97| <0,49> 
||         EXTU    .S1     A4,16,16,A3       ; |96| <0,49>  ^ 

           EXTU    .S1     A3,21,21,A3       ; |96| <0,50>  ^ 
           OR      .L1X    B4,A3,A3          ; |96| <0,51>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| <0,52>  ^ 

           MV      .L2X    A4,B4             ; |516| <0,53> Define a twin register
||         AND     .L1     A16,A3,A3         ; |97| <0,53>  ^ 

           EXTU    .S2     B4,3,5,B4         ; |96| <0,54> 
||         OR      .L1X    B7,A3,A3          ; |97| <0,54>  ^ 

           SHL     .S2     B4,5,B4           ; |96| <0,55> 
||         EXTU    .S1     A3,16,16,A3       ; |97| <0,55>  ^ 

           SHL     .S2X    A4,8,B7           ; |96| <0,56> 
||         AND     .L1     A17,A3,A5         ; |96| <0,56>  ^ 

           AND     .L2     B18,B7,B7         ; |96| <0,57> 
|| [!A0]   STH     .D1T2   B21,*++A9(16)     ; |98| <0,57> 
||         MV      .S2X    A3,B4             ; |97| <0,57> 
||         OR      .L1X    B4,A5,A3          ; |96| <0,57>  ^ 

           SHRU    .S2X    A4,3,B4           ; |97| <0,58> 
|| [!A0]   STH     .D1T2   B4,*+A9(8)        ; |98| <0,58> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,58>  ^ 

   [!A0]   STH     .D1T2   B6,*+A9(6)        ; |98| <0,59> 
||         EXTU    .S1     A3,21,21,A3       ; |96| <0,59>  ^ 

   [!A0]   STH     .D1T2   B5,*+A9(4)        ; |98| <0,60> 
||         OR      .L1X    B7,A3,A3          ; |96| <0,60>  ^ 

   [!A0]   STH     .D1T2   B16,*+A9(2)       ; |98| <0,61> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,61>  ^ 

           AND     .L1     A16,A3,A3         ; |97| <0,62>  ^ 
           OR      .L1X    B4,A3,A3          ; |97| <0,63>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |97| <0,64>  ^ 
           AND     .L1     A17,A3,A4         ; |96| <0,65>  ^ 

   [!A0]   LDBU    .D2T1   *++B9(8),A4       ; |516| <0,66> 
||         MV      .L2X    A3,B4             ; |97| <0,66> 
||         OR      .L1X    B20,A4,A3         ; |96| <0,66>  ^ 

   [!A0]   STH     .D1T2   B4,*+A9(10)       ; |98| <0,67> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,67>  ^ 

           EXTU    .S1     A3,21,21,A3       ; |96| <0,68>  ^ 
           OR      .L1X    B19,A3,A3         ; |96| <0,69>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| <0,70>  ^ 

           MV      .L2X    A4,B4             ; |516| <0,71> Define a twin register
||         AND     .L1     A16,A3,A3         ; |97| <0,71>  ^ 

           EXTU    .S2     B4,3,5,B4         ; |96| <0,72> 
||         OR      .L1X    B8,A3,A3          ; |97| <0,72>  ^ 
||         LDBU    .D1T2   *+A7(1),B5        ; |516| <1,0> 

           SHL     .S2     B4,5,B4           ; |96| <0,73> 
||         EXTU    .S1     A3,16,16,A3       ; |97| <0,73>  ^ 
||         LDBU    .D1T2   *+A7(2),B6        ; |516| <1,1> 

           SHL     .S2X    A4,8,B5           ; |96| <0,74> 
||         AND     .S1     A17,A3,A5         ; |96| <0,74>  ^ 
||         LDBU    .D1T1   *+A7(6),A5        ; |516| <1,2> 

           SHRU    .S2X    A4,3,B7           ; |97| <0,75> 
||         AND     .L2     B18,B5,B4         ; |96| <0,75> 
||         OR      .L1X    B4,A5,A4          ; |96| <0,75>  ^ 
||         LDBU    .D1T1   *A7++(8),A3       ; |96| <1,3> 

   [!A0]   STH     .D1T1   A3,*+A9(12)       ; |98| <0,76> 
||         EXTU    .S1     A4,16,16,A3       ; |96| <0,76>  ^ 

           EXTU    .S1     A3,21,21,A3       ; |96| <0,77>  ^ 
||         EXTU    .S2     B5,3,5,B8         ; |96| <1,5> 

   [ B0]   SUB     .L2     B0,1,B0           ; |514| <0,78> 
||         OR      .L1X    B4,A3,A3          ; |96| <0,78>  ^ 
||         EXTU    .S2     B6,3,5,B16        ; |96| <1,6> 

   [ B0]   B       .S2     L69               ; |514| <0,79> 
||         EXTU    .S1     A3,16,16,A4       ; |96| <0,79>  ^ 
||         MV      .L2X    A5,B4             ; |516| <1,7> Define a twin register

           AND     .L1     A16,A4,A4         ; |97| <0,80>  ^ 
||         EXTU    .S2     B4,3,5,B17        ; |96| <1,8> 
||         MV      .L2X    A3,B4             ; |96| <1,8> Define a twin register

           OR      .L1X    B7,A4,A4          ; |97| <0,81>  ^ 
||         EXTU    .S2     B4,3,5,B4         ; |96| <1,9> 

   [!A0]   EXTU    .S1     A4,16,16,A8       ; |97| <0,82>  ^ 
||         SHL     .S2X    A3,8,B7           ; |96| <1,10> 

           MV      .L1     A8,A4             ; |97| <0,83> 
||         SHRU    .S2X    A3,3,B4           ; |97| <1,11> 
||         AND     .L2     B18,B7,B7         ; |96| <1,11> 
||         AND     .D1     A17,A8,A3         ; |96| <1,11>  ^ 
||         SHL     .S1X    B4,5,A6           ; |96| <1,11> 

	.dwpsn	"utility.c",517,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,84> 
|| [!A0]   STH     .D1T1   A4,*+A9(14)       ; |98| <0,84> 
||         SHL     .S2     B17,5,B20         ; |96| <1,12> 
||         OR      .S1     A6,A3,A3          ; |96| <1,12>  ^ 

DW$L$_disp_direct$4$E:
;** --------------------------------------------------------------------------*
L70:    ; PIPED LOOP EPILOG
;** 510	-----------------------    U$18 -= 640;
;** 510	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    return;

           SUB     .L2     B1,1,B1           ; |510| 
||         EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,13>  ^ 
||         SHL     .S2X    A5,8,B17          ; |96| (E) <1,13> 

           AND     .L2     B18,B17,B19       ; |96| (E) <1,14> 
||         EXTU    .S1     A3,21,21,A3       ; |96| (E) <1,14>  ^ 
||         SHL     .S2     B16,5,B16         ; |96| (E) <1,14> 

           ADDK    .S1     640,A18           ; |510| 
||         OR      .L1X    B7,A3,A3          ; |96| (E) <1,15>  ^ 
||         SHL     .S2     B6,8,B7           ; |96| (E) <1,15> 

           SHRU    .S2     B6,3,B17          ; |97| (E) <1,16> 
||         AND     .L2     B18,B7,B7         ; |96| (E) <1,16> 
||         EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,16>  ^ 

           AND     .L1     A16,A3,A3         ; |97| (E) <1,17>  ^ 
||         SHL     .S2     B8,5,B6           ; |96| (E) <1,17> 

           OR      .L1X    B4,A3,A3          ; |97| (E) <1,18>  ^ 
||         SHL     .S2     B5,8,B4           ; |96| (E) <1,18> 

           SHRU    .S2     B5,3,B5           ; |97| (E) <1,19> 
||         AND     .L2     B18,B4,B4         ; |96| (E) <1,19> 
||         EXTU    .S1     A3,16,16,A3       ; |97| (E) <1,19>  ^ 

           AND     .L1     A17,A3,A4         ; |96| (E) <1,20>  ^ 
||         SHRU    .S2X    A5,3,B8           ; |97| (E) <1,20> 

           ADDK    .S2     -1280,B22         ; |510| 
||         OR      .L1X    B6,A4,A3          ; |96| (E) <1,21>  ^ 
||         MV      .L2X    A3,B21            ; |97| (E) <1,21> 

           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,22>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |96| (E) <1,23>  ^ 
           OR      .L1X    B4,A3,A3          ; |96| (E) <1,24>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,25>  ^ 
           AND     .L1     A16,A3,A3         ; |97| (E) <1,26>  ^ 
           OR      .L1X    B5,A3,A3          ; |97| (E) <1,27>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |97| (E) <1,28>  ^ 
           AND     .L1     A17,A3,A4         ; |96| (E) <1,29>  ^ 

           MV      .L2X    A3,B16            ; |97| (E) <1,30> 
||         OR      .L1X    B16,A4,A3         ; |96| (E) <1,30>  ^ 
||         LDBU    .D2T1   *+B9(4),A4        ; |516| (E) <1,30> 

           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,31>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |96| (E) <1,32>  ^ 
           OR      .L1X    B7,A3,A3          ; |96| (E) <1,33>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,34>  ^ 

           AND     .L1     A16,A3,A3         ; |97| (E) <1,35>  ^ 
||         MV      .L2X    A4,B4             ; |516| (E) <1,35> Define a twin register

           OR      .L1X    B17,A3,A3         ; |97| (E) <1,36>  ^ 
||         EXTU    .S2     B4,3,5,B4         ; |96| (E) <1,36> 

           SHL     .S2     B4,5,B5           ; |96| (E) <1,37> 
||         EXTU    .S1     A3,16,16,A3       ; |97| (E) <1,37>  ^ 

           AND     .L1     A17,A3,A5         ; |96| (E) <1,38>  ^ 
||         SHL     .S2X    A4,8,B4           ; |96| (E) <1,38> 

           AND     .L2     B18,B4,B4         ; |96| (E) <1,39> 
||         MV      .S2X    A3,B5             ; |97| (E) <1,39> 
||         OR      .L1X    B5,A5,A3          ; |96| (E) <1,39>  ^ 
||         LDBU    .D2T1   *+B9(5),A3        ; |516| (E) <1,39> 

           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,40>  ^ 
||         SHRU    .S2X    A4,3,B6           ; |97| (E) <1,40> 

           EXTU    .S1     A3,21,21,A3       ; |96| (E) <1,41>  ^ 
           OR      .L1X    B4,A3,A3          ; |96| (E) <1,42>  ^ 
           EXTU    .S1     A3,16,16,A4       ; |96| (E) <1,43>  ^ 

           AND     .L1     A16,A4,A4         ; |97| (E) <1,44>  ^ 
||         MV      .L2X    A3,B4             ; |516| (E) <1,44> Define a twin register

           OR      .L1X    B6,A4,A4          ; |97| (E) <1,45>  ^ 
||         EXTU    .S2     B4,3,5,B4         ; |96| (E) <1,45> 

           SHL     .S2     B4,5,B4           ; |96| (E) <1,46> 
||         EXTU    .S1     A4,16,16,A4       ; |97| (E) <1,46>  ^ 

           AND     .L1     A17,A4,A5         ; |96| (E) <1,47>  ^ 
||         SHL     .S2X    A3,8,B6           ; |96| (E) <1,47> 

           STH     .D1T2   B21,*++A9(16)     ; |98| (E) <1,57> 
||         AND     .L2     B18,B6,B4         ; |96| (E) <1,48> 
||         MV      .S2X    A4,B6             ; |97| (E) <1,48> 
||         OR      .L1X    B4,A5,A4          ; |96| (E) <1,48>  ^ 
||         LDBU    .D2T1   *+B9(6),A4        ; |516| (E) <1,48> 

           STH     .D1T2   B5,*+A9(4)        ; |98| (E) <1,60> 
||         EXTU    .S1     A4,16,16,A3       ; |96| (E) <1,49>  ^ 
||         SHRU    .S2X    A3,3,B7           ; |97| (E) <1,49> 

;** --------------------------------------------------------------------------*
DW$L$_disp_direct$6$B:

           EXTU    .S1     A3,21,21,A3       ; |96| (E) <1,50>  ^ 
||         STH     .D1T2   B6,*+A9(6)        ; |98| (E) <1,59> 
||         MVC     .S2     B23,CSR           ; interrupts on

           OR      .L1X    B4,A3,A3          ; |96| (E) <1,51>  ^ 
||         STH     .D1T2   B16,*+A9(2)       ; |98| (E) <1,61> 

           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,52>  ^ 

           MV      .L2X    A4,B31            ; |516| (E) <1,53> Define a twin register
||         AND     .L1     A16,A3,A3         ; |97| (E) <1,53>  ^ 

           OR      .L1X    B7,A3,A3          ; |97| (E) <1,54>  ^ 
||         EXTU    .S2     B31,3,5,B4        ; |96| (E) <1,54> 

           EXTU    .S1     A3,16,16,A3       ; |97| (E) <1,55>  ^ 
||         SHL     .S2     B4,5,B4           ; |96| (E) <1,55> 

           AND     .L1     A17,A3,A5         ; |96| (E) <1,56>  ^ 
||         SHL     .S2X    A4,8,B30          ; |96| (E) <1,56> 

           MV      .L2X    A3,B4             ; |97| (E) <1,57> 
||         OR      .L1X    B4,A5,A3          ; |96| (E) <1,57>  ^ 
||         AND     .S2     B18,B30,B7        ; |96| (E) <1,57> 

           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,58>  ^ 
||         SHRU    .S2X    A4,3,B29          ; |97| (E) <1,58> 
||         STH     .D1T2   B4,*+A9(8)        ; |98| (E) <1,58> 

           EXTU    .S1     A3,21,21,A3       ; |96| (E) <1,59>  ^ 
||         LDBU    .D2T1   *++B9(8),A31      ; |516| (E) <1,66> 

           OR      .L1X    B7,A3,A3          ; |96| (E) <1,60>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,61>  ^ 
           AND     .L1     A16,A3,A3         ; |97| (E) <1,62>  ^ 
           OR      .L1X    B29,A3,A3         ; |97| (E) <1,63>  ^ 

           EXTU    .S1     A3,16,16,A3       ; |97| (E) <1,64>  ^ 
||         SHL     .S2X    A31,8,B5          ; |96| (E) <1,74> 

           AND     .L1     A17,A3,A4         ; |96| (E) <1,65>  ^ 
||         AND     .L2     B18,B5,B28        ; |96| (E) <1,75> 
||         SHRU    .S2X    A31,3,B7          ; |97| (E) <1,75> 

           MV      .L2X    A3,B4             ; |97| (E) <1,66> 
||         OR      .L1X    B20,A4,A3         ; |96| (E) <1,66>  ^ 

           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,67>  ^ 
||         STH     .D1T2   B4,*+A9(10)       ; |98| (E) <1,67> 
||         MV      .L2X    A31,B4            ; |516| (E) <1,71> Define a twin register

           EXTU    .S1     A3,21,21,A3       ; |96| (E) <1,68>  ^ 
||         EXTU    .S2     B4,3,5,B4         ; |96| (E) <1,72> 

           OR      .L1X    B19,A3,A3         ; |96| (E) <1,69>  ^ 
||         SHL     .S2     B4,5,B4           ; |96| (E) <1,73> 

           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,70>  ^ 
           AND     .L1     A16,A3,A3         ; |97| (E) <1,71>  ^ 
           OR      .L1X    B8,A3,A3          ; |97| (E) <1,72>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |97| (E) <1,73>  ^ 

           AND     .L1     A17,A3,A5         ; |96| (E) <1,74>  ^ 
||         STH     .D1T1   A3,*+A9(12)       ; |98| (E) <1,76> 

           OR      .L1X    B4,A5,A4          ; |96| (E) <1,75>  ^ 
           EXTU    .S1     A4,16,16,A3       ; |96| (E) <1,76>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |96| (E) <1,77>  ^ 
           OR      .L1X    B28,A3,A3         ; |96| (E) <1,78>  ^ 

           EXTU    .S1     A3,16,16,A4       ; |96| (E) <1,79>  ^ 
|| [ B1]   B       .S2     L67               ; |510| 

           AND     .L1     A16,A4,A4         ; |97| (E) <1,80>  ^ 
|| [!B1]   RET     .S2     B3                ; |520| 

           OR      .L1X    B7,A4,A4          ; |97| (E) <1,81>  ^ 
           EXTU    .S1     A4,16,16,A8       ; |97| (E) <1,82>  ^ 
           MV      .L1     A8,A4             ; |97| (E) <1,83> 
           STH     .D1T1   A4,*+A9(14)       ; |98| (E) <1,84> 
           ; BRANCHCC OCCURS {L67}           ; |510| 
DW$L$_disp_direct$6$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"utility.c",520,1
           NOP             1
           ; BRANCH OCCURS {B3}              ; |520| 

DW$191	.dwtag  DW_TAG_loop
	.dwattr DW$191, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L67:1:1297920373")
	.dwattr DW$191, DW_AT_begin_file("utility.c")
	.dwattr DW$191, DW_AT_begin_line(0x60)
	.dwattr DW$191, DW_AT_end_line(0x208)
DW$192	.dwtag  DW_TAG_loop_range
	.dwattr DW$192, DW_AT_low_pc(DW$L$_disp_direct$2$B)
	.dwattr DW$192, DW_AT_high_pc(DW$L$_disp_direct$2$E)
DW$193	.dwtag  DW_TAG_loop_range
	.dwattr DW$193, DW_AT_low_pc(DW$L$_disp_direct$6$B)
	.dwattr DW$193, DW_AT_high_pc(DW$L$_disp_direct$6$E)

DW$194	.dwtag  DW_TAG_loop
	.dwattr DW$194, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\disp\utility.asm:L69:2:1297920373")
	.dwattr DW$194, DW_AT_begin_file("utility.c")
	.dwattr DW$194, DW_AT_begin_line(0x202)
	.dwattr DW$194, DW_AT_end_line(0x205)
DW$195	.dwtag  DW_TAG_loop_range
	.dwattr DW$195, DW_AT_low_pc(DW$L$_disp_direct$4$B)
	.dwattr DW$195, DW_AT_high_pc(DW$L$_disp_direct$4$E)
	.dwendtag DW$194

	.dwendtag DW$191

	.dwattr DW$188, DW_AT_end_file("utility.c")
	.dwattr DW$188, DW_AT_end_line(0x208)
	.dwattr DW$188, DW_AT_end_column(0x01)
	.dwendtag DW$188

;; Inlined function references:
;; [  7] _conv_565
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Assertion failed, (disp_line_count >= (240 - 6)), file util"
	.string	"ity.c, line 384",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_DAT_copy
	.global	_DAT_wait
	.global	_DAT_copy2d
	.global	_memset
	.global	__abort_msg

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$29	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$29

DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x20)

DW$T$33	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$35


DW$T$39	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$39


DW$T$42	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)

DW$T$45	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$215	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
	.dwendtag DW$T$48

DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$37, DW_AT_address_class(0x20)
DW$T$38	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$38, DW_AT_type(*DW$T$37)

DW$T$55	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$55, DW_AT_byte_size(0x8000)
DW$218	.dwtag  DW_TAG_subrange_type
	.dwattr DW$218, DW_AT_upper_bound(0x7fff)
	.dwendtag DW$T$55

DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x02)
DW$T$41	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$41, DW_AT_address_class(0x20)
DW$T$46	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$46, DW_AT_type(*DW$T$41)
DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)

DW$T$59	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$219	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$59


DW$T$60	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$220	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
DW$221	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$62, DW_AT_byte_size(0x500)
DW$222	.dwtag  DW_TAG_subrange_type
	.dwattr DW$222, DW_AT_upper_bound(0x27f)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$64, DW_AT_byte_size(0x08)
DW$223	.dwtag  DW_TAG_subrange_type
	.dwattr DW$223, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$64

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$65	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$224	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$225	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$65


DW$T$66	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$231	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$232	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$233	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
DW$234	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$66


DW$T$67	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$235	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$236	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$237	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$238	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$239	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$240	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$241	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$242	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$243	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$69


DW$T$71	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$244	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$46)
	.dwendtag DW$T$71


DW$T$72	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)

DW$T$76	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$245	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$246	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$247	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$76


DW$T$77	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$248	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$249	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$250	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$251	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$252	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$253	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$77


DW$T$78	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$78, DW_AT_byte_size(0x80)
DW$254	.dwtag  DW_TAG_subrange_type
	.dwattr DW$254, DW_AT_upper_bound(0x1f)
	.dwendtag DW$T$78

DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$17, DW_AT_byte_size(0x08)
DW$T$83	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$17)
	.dwattr DW$T$83, DW_AT_address_class(0x20)

DW$T$84	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$84, DW_AT_language(DW_LANG_C)
DW$255	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$84

DW$T$87	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$86)
	.dwattr DW$T$87, DW_AT_address_class(0x20)

DW$T$88	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$87)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$T$88

DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_address_class(0x20)
DW$T$27	.dwtag  DW_TAG_const_type
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$63	.dwtag  DW_TAG_const_type
	.dwattr DW$T$63, DW_AT_type(*DW$T$9)
DW$T$86	.dwtag  DW_TAG_const_type
	.dwattr DW$T$86, DW_AT_type(*DW$T$17)
DW$T$31	.dwtag  DW_TAG_const_type
	.dwattr DW$T$31, DW_AT_type(*DW$T$30)
DW$T$30	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$30, DW_AT_byte_size(0x01)

	.dwattr DW$99, DW_AT_type(*DW$T$10)
	.dwattr DW$103, DW_AT_external(0x01)
	.dwattr DW$103, DW_AT_type(*DW$T$9)
	.dwattr DW$188, DW_AT_external(0x01)
	.dwattr DW$157, DW_AT_external(0x01)
	.dwattr DW$157, DW_AT_type(*DW$T$10)
	.dwattr DW$169, DW_AT_external(0x01)
	.dwattr DW$169, DW_AT_type(*DW$T$10)
	.dwattr DW$156, DW_AT_external(0x01)
	.dwattr DW$131, DW_AT_external(0x01)
	.dwattr DW$131, DW_AT_type(*DW$T$10)
	.dwattr DW$91, DW_AT_external(0x01)
	.dwattr DW$91, DW_AT_type(*DW$T$10)
	.dwattr DW$84, DW_AT_external(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$257, DW_AT_location[DW_OP_reg0]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$258, DW_AT_location[DW_OP_reg1]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$259, DW_AT_location[DW_OP_reg2]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$260, DW_AT_location[DW_OP_reg3]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$261, DW_AT_location[DW_OP_reg4]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$262, DW_AT_location[DW_OP_reg5]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$263, DW_AT_location[DW_OP_reg6]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$264, DW_AT_location[DW_OP_reg7]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$265, DW_AT_location[DW_OP_reg8]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$266, DW_AT_location[DW_OP_reg9]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$267, DW_AT_location[DW_OP_reg10]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$268, DW_AT_location[DW_OP_reg11]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$269, DW_AT_location[DW_OP_reg12]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$270, DW_AT_location[DW_OP_reg13]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$271, DW_AT_location[DW_OP_reg14]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$272, DW_AT_location[DW_OP_reg15]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$273, DW_AT_location[DW_OP_reg16]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$274, DW_AT_location[DW_OP_reg17]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$275, DW_AT_location[DW_OP_reg18]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$276, DW_AT_location[DW_OP_reg19]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$277, DW_AT_location[DW_OP_reg20]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$278, DW_AT_location[DW_OP_reg21]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$279, DW_AT_location[DW_OP_reg22]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$280, DW_AT_location[DW_OP_reg23]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$281, DW_AT_location[DW_OP_reg24]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$282, DW_AT_location[DW_OP_reg25]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$283, DW_AT_location[DW_OP_reg26]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$284, DW_AT_location[DW_OP_reg27]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$285, DW_AT_location[DW_OP_reg28]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$286, DW_AT_location[DW_OP_reg29]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$287, DW_AT_location[DW_OP_reg30]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$288, DW_AT_location[DW_OP_reg31]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$289, DW_AT_location[DW_OP_regx 0x20]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$290, DW_AT_location[DW_OP_regx 0x21]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$291, DW_AT_location[DW_OP_regx 0x22]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$292, DW_AT_location[DW_OP_regx 0x23]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$293, DW_AT_location[DW_OP_regx 0x24]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$294, DW_AT_location[DW_OP_regx 0x25]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$295, DW_AT_location[DW_OP_regx 0x26]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$296, DW_AT_location[DW_OP_regx 0x27]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$297, DW_AT_location[DW_OP_regx 0x28]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$298, DW_AT_location[DW_OP_regx 0x29]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$299, DW_AT_location[DW_OP_regx 0x2a]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$300, DW_AT_location[DW_OP_regx 0x2b]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$301, DW_AT_location[DW_OP_regx 0x2c]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$302, DW_AT_location[DW_OP_regx 0x2d]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$303, DW_AT_location[DW_OP_regx 0x2e]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$304, DW_AT_location[DW_OP_regx 0x2f]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$305, DW_AT_location[DW_OP_regx 0x30]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$306, DW_AT_location[DW_OP_regx 0x31]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$307, DW_AT_location[DW_OP_regx 0x32]
DW$308	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$308, DW_AT_location[DW_OP_regx 0x33]
DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$309, DW_AT_location[DW_OP_regx 0x34]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$310, DW_AT_location[DW_OP_regx 0x35]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$311, DW_AT_location[DW_OP_regx 0x36]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$312, DW_AT_location[DW_OP_regx 0x37]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$313, DW_AT_location[DW_OP_regx 0x38]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$314, DW_AT_location[DW_OP_regx 0x39]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$315, DW_AT_location[DW_OP_regx 0x3a]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$316, DW_AT_location[DW_OP_regx 0x3b]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$317, DW_AT_location[DW_OP_regx 0x3c]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$318, DW_AT_location[DW_OP_regx 0x3d]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$319, DW_AT_location[DW_OP_regx 0x3e]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$320, DW_AT_location[DW_OP_regx 0x3f]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$321, DW_AT_location[DW_OP_regx 0x40]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$322, DW_AT_location[DW_OP_regx 0x41]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$323, DW_AT_location[DW_OP_regx 0x42]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$324, DW_AT_location[DW_OP_regx 0x43]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$325, DW_AT_location[DW_OP_regx 0x44]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$326, DW_AT_location[DW_OP_regx 0x45]
DW$327	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$327, DW_AT_location[DW_OP_regx 0x46]
DW$328	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$328, DW_AT_location[DW_OP_regx 0x47]
DW$329	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$329, DW_AT_location[DW_OP_regx 0x48]
DW$330	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$330, DW_AT_location[DW_OP_regx 0x49]
DW$331	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$331, DW_AT_location[DW_OP_regx 0x4a]
DW$332	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$332, DW_AT_location[DW_OP_regx 0x4b]
DW$333	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$333, DW_AT_location[DW_OP_regx 0x4c]
DW$334	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$334, DW_AT_location[DW_OP_regx 0x4d]
DW$335	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$335, DW_AT_location[DW_OP_regx 0x4e]
DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$336, DW_AT_location[DW_OP_regx 0x4f]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$337, DW_AT_location[DW_OP_regx 0x50]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$338, DW_AT_location[DW_OP_regx 0x51]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$339, DW_AT_location[DW_OP_regx 0x52]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$340, DW_AT_location[DW_OP_regx 0x53]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$341, DW_AT_location[DW_OP_regx 0x54]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$342, DW_AT_location[DW_OP_regx 0x55]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$343, DW_AT_location[DW_OP_regx 0x56]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$344, DW_AT_location[DW_OP_regx 0x57]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$345, DW_AT_location[DW_OP_regx 0x58]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$346, DW_AT_location[DW_OP_regx 0x59]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$347, DW_AT_location[DW_OP_regx 0x5a]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$348, DW_AT_location[DW_OP_regx 0x5b]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$349, DW_AT_location[DW_OP_regx 0x5c]
DW$350	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$350, DW_AT_location[DW_OP_regx 0x5d]
DW$351	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$351, DW_AT_location[DW_OP_regx 0x5e]
DW$352	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$352, DW_AT_location[DW_OP_regx 0x5f]
DW$353	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$353, DW_AT_location[DW_OP_regx 0x60]
DW$354	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$354, DW_AT_location[DW_OP_regx 0x61]
DW$355	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$355, DW_AT_location[DW_OP_regx 0x62]
DW$356	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$356, DW_AT_location[DW_OP_regx 0x63]
DW$357	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$357, DW_AT_location[DW_OP_regx 0x64]
DW$358	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$358, DW_AT_location[DW_OP_regx 0x65]
DW$359	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$359, DW_AT_location[DW_OP_regx 0x66]
DW$360	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$360, DW_AT_location[DW_OP_regx 0x67]
DW$361	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$361, DW_AT_location[DW_OP_regx 0x68]
DW$362	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$362, DW_AT_location[DW_OP_regx 0x69]
DW$363	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$363, DW_AT_location[DW_OP_regx 0x6a]
DW$364	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$364, DW_AT_location[DW_OP_regx 0x6b]
DW$365	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$365, DW_AT_location[DW_OP_regx 0x6c]
DW$366	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$366, DW_AT_location[DW_OP_regx 0x6d]
DW$367	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$367, DW_AT_location[DW_OP_regx 0x6e]
DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$368, DW_AT_location[DW_OP_regx 0x6f]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$369, DW_AT_location[DW_OP_regx 0x70]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$370, DW_AT_location[DW_OP_regx 0x71]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$371, DW_AT_location[DW_OP_regx 0x72]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$372, DW_AT_location[DW_OP_regx 0x73]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$373, DW_AT_location[DW_OP_regx 0x74]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$374, DW_AT_location[DW_OP_regx 0x75]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$375, DW_AT_location[DW_OP_regx 0x76]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$376, DW_AT_location[DW_OP_regx 0x77]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$377, DW_AT_location[DW_OP_regx 0x78]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$378, DW_AT_location[DW_OP_regx 0x79]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$379, DW_AT_location[DW_OP_regx 0x7a]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$380, DW_AT_location[DW_OP_regx 0x7b]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$381, DW_AT_location[DW_OP_regx 0x7c]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$382, DW_AT_location[DW_OP_regx 0x7d]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$383, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

