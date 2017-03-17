;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Nov 01 16:07:59 2010                                *
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
	.dwattr DW$8, DW_AT_type(*DW$T$84)
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$8


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("_amemd8"), DW_AT_symbol_name("__amemd8")
	.dwattr DW$10, DW_AT_type(*DW$T$80)
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

_cb_h_thick:	.usect	".far",4,4
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("cb_h_thick"), DW_AT_symbol_name("_cb_h_thick")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_location[DW_OP_addr _cb_h_thick]
_cb_v_thick:	.usect	".far",4,4
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("cb_v_thick"), DW_AT_symbol_name("_cb_v_thick")
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_location[DW_OP_addr _cb_v_thick]
_cb_top:	.usect	".far",4,4
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("cb_top"), DW_AT_symbol_name("_cb_top")
	.dwattr DW$27, DW_AT_type(*DW$T$10)
	.dwattr DW$27, DW_AT_location[DW_OP_addr _cb_top]
_cb_bottom:	.usect	".far",4,4
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("cb_bottom"), DW_AT_symbol_name("_cb_bottom")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_location[DW_OP_addr _cb_bottom]
_cb_left:	.usect	".far",4,4
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("cb_left"), DW_AT_symbol_name("_cb_left")
	.dwattr DW$29, DW_AT_type(*DW$T$10)
	.dwattr DW$29, DW_AT_location[DW_OP_addr _cb_left]
_cb_right:	.usect	".far",4,4
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("cb_right"), DW_AT_symbol_name("_cb_right")
	.dwattr DW$30, DW_AT_type(*DW$T$10)
	.dwattr DW$30, DW_AT_location[DW_OP_addr _cb_right]
_cb_color:	.usect	".far",4,4
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("cb_color"), DW_AT_symbol_name("_cb_color")
	.dwattr DW$31, DW_AT_type(*DW$T$10)
	.dwattr DW$31, DW_AT_location[DW_OP_addr _cb_color]
_left_logo:	.usect	".far",128,8
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("left_logo"), DW_AT_symbol_name("_left_logo")
	.dwattr DW$32, DW_AT_type(*DW$T$74)
	.dwattr DW$32, DW_AT_location[DW_OP_addr _left_logo]
_right_logo:	.usect	".far",128,8
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("right_logo"), DW_AT_symbol_name("_right_logo")
	.dwattr DW$33, DW_AT_type(*DW$T$74)
	.dwattr DW$33, DW_AT_location[DW_OP_addr _right_logo]
_color_background:	.usect	"l2_section",8,8
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("color_background"), DW_AT_symbol_name("_color_background")
	.dwattr DW$34, DW_AT_type(*DW$T$17)
	.dwattr DW$34, DW_AT_location[DW_OP_addr _color_background]
_color_l_edge:	.usect	"l2_section",8,8
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("color_l_edge"), DW_AT_symbol_name("_color_l_edge")
	.dwattr DW$35, DW_AT_type(*DW$T$17)
	.dwattr DW$35, DW_AT_location[DW_OP_addr _color_l_edge]
_color_r_edge:	.usect	"l2_section",8,8
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("color_r_edge"), DW_AT_symbol_name("_color_r_edge")
	.dwattr DW$36, DW_AT_type(*DW$T$17)
	.dwattr DW$36, DW_AT_location[DW_OP_addr _color_r_edge]
_color_bk:	.usect	".far",2,2
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("color_bk"), DW_AT_symbol_name("_color_bk")
	.dwattr DW$37, DW_AT_type(*DW$T$9)
	.dwattr DW$37, DW_AT_location[DW_OP_addr _color_bk]
	.global	_L2_buffer
_L2_buffer:	.usect	"l2_section",32768,128
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("L2_buffer"), DW_AT_symbol_name("_L2_buffer")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _L2_buffer]
	.dwattr DW$38, DW_AT_type(*DW$T$55)
	.dwattr DW$38, DW_AT_external(0x01)
_stamp_left:	.usect	".far",4,4
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("stamp_left"), DW_AT_symbol_name("_stamp_left")
	.dwattr DW$39, DW_AT_type(*DW$T$10)
	.dwattr DW$39, DW_AT_location[DW_OP_addr _stamp_left]
_stamp_top:	.usect	".far",4,4
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("stamp_top"), DW_AT_symbol_name("_stamp_top")
	.dwattr DW$40, DW_AT_type(*DW$T$10)
	.dwattr DW$40, DW_AT_location[DW_OP_addr _stamp_top]
_stamp_width:	.usect	".far",4,4
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("stamp_width"), DW_AT_symbol_name("_stamp_width")
	.dwattr DW$41, DW_AT_type(*DW$T$10)
	.dwattr DW$41, DW_AT_location[DW_OP_addr _stamp_width]
_stamp_height:	.usect	".far",4,4
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("stamp_height"), DW_AT_symbol_name("_stamp_height")
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$42, DW_AT_location[DW_OP_addr _stamp_height]
_stamp_bmp:	.usect	".far",4,4
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("stamp_bmp"), DW_AT_symbol_name("_stamp_bmp")
	.dwattr DW$43, DW_AT_type(*DW$T$41)
	.dwattr DW$43, DW_AT_location[DW_OP_addr _stamp_bmp]
_stamp_mask:	.usect	".far",4,4
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("stamp_mask"), DW_AT_symbol_name("_stamp_mask")
	.dwattr DW$44, DW_AT_type(*DW$T$37)
	.dwattr DW$44, DW_AT_location[DW_OP_addr _stamp_mask]
	.sect	".const"
	.align	8
_$T0$1:
	.field  	2416,16			; _$T0$1[0] @ 0
	.field  	2416,16			; _$T0$1[1] @ 16
	.field  	2416,16			; _$T0$1[2] @ 32
	.field  	2416,16			; _$T0$1[3] @ 48

DW$45	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1"), DW_AT_symbol_name("_$T0$1")
	.dwattr DW$45, DW_AT_type(*DW$T$63)
	.dwattr DW$45, DW_AT_location[DW_OP_addr _$T0$1]
	.sect	".const"
	.align	8
_$T1$2:
	.field  	2416,16			; _$T1$2[0] @ 0
	.field  	54970,16			; _$T1$2[1] @ 16
	.field  	54970,16			; _$T1$2[2] @ 32
	.field  	54970,16			; _$T1$2[3] @ 48

DW$46	.dwtag  DW_TAG_variable, DW_AT_name("$T1$2"), DW_AT_symbol_name("_$T1$2")
	.dwattr DW$46, DW_AT_type(*DW$T$63)
	.dwattr DW$46, DW_AT_location[DW_OP_addr _$T1$2]
	.sect	".const"
	.align	8
_$T2$3:
	.field  	54970,16			; _$T2$3[0] @ 0
	.field  	54970,16			; _$T2$3[1] @ 16
	.field  	54970,16			; _$T2$3[2] @ 32
	.field  	2416,16			; _$T2$3[3] @ 48

DW$47	.dwtag  DW_TAG_variable, DW_AT_name("$T2$3"), DW_AT_symbol_name("_$T2$3")
	.dwattr DW$47, DW_AT_type(*DW$T$63)
	.dwattr DW$47, DW_AT_location[DW_OP_addr _$T2$3]
;	D:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI9722 C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI9724 
	.sect	".text"
	.global	_disp_set_stamp

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_set_stamp"), DW_AT_symbol_name("_disp_set_stamp")
	.dwattr DW$48, DW_AT_low_pc(_disp_set_stamp)
	.dwattr DW$48, DW_AT_high_pc(0x00)
	.dwattr DW$48, DW_AT_begin_file("utility.c")
	.dwattr DW$48, DW_AT_begin_line(0xef)
	.dwattr DW$48, DW_AT_begin_column(0x06)
	.dwattr DW$48, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$48, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",240,1

;******************************************************************************
;* FUNCTION NAME: _disp_set_stamp                                             *
;*                                                                            *
;*   Regs Modified     : A3,A5,A7,B5,B7,B9                                    *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,B3,B4,B5,B6,B7,B8,B9               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_set_stamp:
;** --------------------------------------------------------------------------*
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bmp"), DW_AT_symbol_name("_bmp")
	.dwattr DW$49, DW_AT_type(*DW$T$41)
	.dwattr DW$49, DW_AT_location[DW_OP_reg4]
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mask"), DW_AT_symbol_name("_mask")
	.dwattr DW$50, DW_AT_type(*DW$T$37)
	.dwattr DW$50, DW_AT_location[DW_OP_reg20]
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("top"), DW_AT_symbol_name("_top")
	.dwattr DW$51, DW_AT_type(*DW$T$10)
	.dwattr DW$51, DW_AT_location[DW_OP_reg6]
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("left"), DW_AT_symbol_name("_left")
	.dwattr DW$52, DW_AT_type(*DW$T$10)
	.dwattr DW$52, DW_AT_location[DW_OP_reg22]
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("width"), DW_AT_symbol_name("_width")
	.dwattr DW$53, DW_AT_type(*DW$T$10)
	.dwattr DW$53, DW_AT_location[DW_OP_reg8]
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_name("height"), DW_AT_symbol_name("_height")
	.dwattr DW$54, DW_AT_type(*DW$T$10)
	.dwattr DW$54, DW_AT_location[DW_OP_reg24]
;** 241	-----------------------    stamp_left = left;
;** 242	-----------------------    stamp_top = top;
;** 244	-----------------------    stamp_bmp = bmp;
;** 245	-----------------------    stamp_mask = mask;
;** 247	-----------------------    stamp_width = width;
;** 248	-----------------------    stamp_height = height;
;** 248	-----------------------    return;
           MVKL    .S2     _stamp_left,B7    ; |241| 

           MVKL    .S2     _stamp_width,B5   ; |247| 
||         MVKL    .S1     _stamp_top,A7     ; |242| 

           RET     .S2     B3                ; |250| 
||         MVKL    .S1     _stamp_height,A3  ; |248| 

           MVKL    .S2     _stamp_bmp,B9     ; |244| 
||         MVKL    .S1     _stamp_mask,A5    ; |245| 

           MVKH    .S2     _stamp_left,B7    ; |241| 
||         MVKH    .S1     _stamp_top,A7     ; |242| 

           STW     .D2T2   B6,*B7            ; |241| 
||         STW     .D1T1   A6,*A7            ; |242| 
||         MVKH    .S1     _stamp_height,A3  ; |248| 
||         MVKH    .S2     _stamp_width,B5   ; |247| 

           STW     .D2T1   A8,*B5            ; |247| 
||         STW     .D1T2   B8,*A3            ; |248| 
||         MVKH    .S2     _stamp_bmp,B9     ; |244| 
||         MVKH    .S1     _stamp_mask,A5    ; |245| 

	.dwpsn	"utility.c",250,1

           STW     .D1T2   B4,*A5            ; |245| 
||         STW     .D2T1   A4,*B9            ; |244| 

           ; BRANCH OCCURS {B3}              ; |250| 
	.dwattr DW$48, DW_AT_end_file("utility.c")
	.dwattr DW$48, DW_AT_end_line(0xfa)
	.dwattr DW$48, DW_AT_end_column(0x01)
	.dwendtag DW$48

	.sect	".text"
	.global	_disp_set_cb

DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_set_cb"), DW_AT_symbol_name("_disp_set_cb")
	.dwattr DW$55, DW_AT_low_pc(_disp_set_cb)
	.dwattr DW$55, DW_AT_high_pc(0x00)
	.dwattr DW$55, DW_AT_begin_file("utility.c")
	.dwattr DW$55, DW_AT_begin_line(0xfc)
	.dwattr DW$55, DW_AT_begin_column(0x06)
	.dwattr DW$55, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$55, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",253,1

;******************************************************************************
;* FUNCTION NAME: _disp_set_cb                                                *
;*                                                                            *
;*   Regs Modified     : A3,A5,A7,A9,B5,B7,B9                                 *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,A10,B3,B4,B5,B6,B7,B8,B9        *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_set_cb:
;** --------------------------------------------------------------------------*
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h_thick"), DW_AT_symbol_name("_h_thick")
	.dwattr DW$56, DW_AT_type(*DW$T$11)
	.dwattr DW$56, DW_AT_location[DW_OP_reg4]
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_name("v_thick"), DW_AT_symbol_name("_v_thick")
	.dwattr DW$57, DW_AT_type(*DW$T$11)
	.dwattr DW$57, DW_AT_location[DW_OP_reg20]
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("top"), DW_AT_symbol_name("_top")
	.dwattr DW$58, DW_AT_type(*DW$T$10)
	.dwattr DW$58, DW_AT_location[DW_OP_reg6]
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bottom"), DW_AT_symbol_name("_bottom")
	.dwattr DW$59, DW_AT_type(*DW$T$10)
	.dwattr DW$59, DW_AT_location[DW_OP_reg22]
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("left"), DW_AT_symbol_name("_left")
	.dwattr DW$60, DW_AT_type(*DW$T$10)
	.dwattr DW$60, DW_AT_location[DW_OP_reg8]
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("right"), DW_AT_symbol_name("_right")
	.dwattr DW$61, DW_AT_type(*DW$T$10)
	.dwattr DW$61, DW_AT_location[DW_OP_reg24]
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color"), DW_AT_symbol_name("_color")
	.dwattr DW$62, DW_AT_type(*DW$T$10)
	.dwattr DW$62, DW_AT_location[DW_OP_reg10]
;** 255	-----------------------    cb_h_thick = h_thick;
;** 256	-----------------------    cb_v_thick = v_thick;
;** 257	-----------------------    cb_top = top;
;** 258	-----------------------    cb_bottom = bottom;
;** 259	-----------------------    cb_left = left;
;** 260	-----------------------    cb_right = right;
;** 261	-----------------------    cb_color = color;
;** 261	-----------------------    return;
           MVKL    .S1     _cb_color,A9      ; |261| 

           MVKL    .S1     _cb_h_thick,A7    ; |255| 
||         MVKL    .S2     _cb_bottom,B5     ; |258| 

           MVKL    .S2     _cb_v_thick,B7    ; |256| 
||         MVKL    .S1     _cb_top,A5        ; |257| 

           RET     .S2     B3                ; |262| 
||         MVKL    .S1     _cb_left,A3       ; |259| 

           MVKL    .S2     _cb_right,B9      ; |260| 
||         MVKH    .S1     _cb_color,A9      ; |261| 

           STW     .D1T1   A10,*A9           ; |261| 
||         MVKH    .S1     _cb_h_thick,A7    ; |255| 
||         MVKH    .S2     _cb_bottom,B5     ; |258| 

           STW     .D2T2   B6,*B5            ; |258| 
||         STW     .D1T1   A4,*A7            ; |255| 
||         MVKH    .S2     _cb_v_thick,B7    ; |256| 
||         MVKH    .S1     _cb_top,A5        ; |257| 

           STW     .D1T1   A6,*A5            ; |257| 
||         STW     .D2T2   B4,*B7            ; |256| 
||         MVKH    .S2     _cb_right,B9      ; |260| 
||         MVKH    .S1     _cb_left,A3       ; |259| 

	.dwpsn	"utility.c",262,1

           STW     .D1T1   A8,*A3            ; |259| 
||         STW     .D2T2   B8,*B9            ; |260| 

           ; BRANCH OCCURS {B3}              ; |262| 
	.dwattr DW$55, DW_AT_end_file("utility.c")
	.dwattr DW$55, DW_AT_end_line(0x106)
	.dwattr DW$55, DW_AT_end_column(0x01)
	.dwendtag DW$55

	.sect	".text"

DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("_alpha_blend_nbit"), DW_AT_symbol_name("__alpha_blend_nbit")
	.dwattr DW$63, DW_AT_low_pc(__alpha_blend_nbit)
	.dwattr DW$63, DW_AT_high_pc(0x00)
	.dwattr DW$63, DW_AT_begin_file("utility.c")
	.dwattr DW$63, DW_AT_begin_line(0x182)
	.dwattr DW$63, DW_AT_begin_column(0x0c)
	.dwattr DW$63, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$63, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",387,1

;******************************************************************************
;* FUNCTION NAME: __alpha_blend_nbit                                          *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5                                             *
;*   Regs Used         : A3,A4,A5,A6,B3,B4                                    *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
__alpha_blend_nbit:
;** --------------------------------------------------------------------------*
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i1"), DW_AT_symbol_name("_i1")
	.dwattr DW$64, DW_AT_type(*DW$T$10)
	.dwattr DW$64, DW_AT_location[DW_OP_reg4]
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_name("i2"), DW_AT_symbol_name("_i2")
	.dwattr DW$65, DW_AT_type(*DW$T$10)
	.dwattr DW$65, DW_AT_location[DW_OP_reg20]
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_name("n"), DW_AT_symbol_name("_n")
	.dwattr DW$66, DW_AT_type(*DW$T$10)
	.dwattr DW$66, DW_AT_location[DW_OP_reg6]
;** 389	-----------------------    C$1 = 8-n;
;** 389	-----------------------    return (unsigned char)(_mpy(i2<<C$1, 10)+_mpy(i1<<C$1, 6)>>4)>>C$1;
           SUB     .L1     8,A6,A3           ; |389| 
           SHL     .S1     A4,A3,A4          ; |389| 

           RET     .S2     B3                ; |391| 
||         SHL     .S1X    B4,A3,A4          ; |389| 
||         MPY     .M1     A4,6,A5           ; |389| 

           MPY     .M1     A4,10,A4          ; |389| 
           NOP             1
           ADD     .L1     A5,A4,A4          ; |389| 
           EXTU    .S1     A4,20,24,A4       ; |389| 
	.dwpsn	"utility.c",391,1
           SHRU    .S1     A4,A3,A4          ; |389| 
           ; BRANCH OCCURS {B3}              ; |391| 
	.dwattr DW$63, DW_AT_end_file("utility.c")
	.dwattr DW$63, DW_AT_end_line(0x187)
	.dwattr DW$63, DW_AT_end_column(0x01)
	.dwendtag DW$63

	.sect	".text"
	.global	_disp_alpha_blend

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_alpha_blend"), DW_AT_symbol_name("_disp_alpha_blend")
	.dwattr DW$67, DW_AT_low_pc(_disp_alpha_blend)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("utility.c")
	.dwattr DW$67, DW_AT_begin_line(0x189)
	.dwattr DW$67, DW_AT_begin_column(0x10)
	.dwattr DW$67, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$67, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",394,1

;******************************************************************************
;* FUNCTION NAME: _disp_alpha_blend                                           *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A9,B3,B4,B5,B31                       *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,B3,B4,B5,SP,B31                 *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_alpha_blend:
;** --------------------------------------------------------------------------*
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c1"), DW_AT_symbol_name("_c1")
	.dwattr DW$68, DW_AT_type(*DW$T$9)
	.dwattr DW$68, DW_AT_location[DW_OP_reg4]
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c2"), DW_AT_symbol_name("_c2")
	.dwattr DW$69, DW_AT_type(*DW$T$9)
	.dwattr DW$69, DW_AT_location[DW_OP_reg20]
;** 408	-----------------------    v$1 = *(&u)&0xffffffe0|_alpha_blend_nbit(c1&0x1fu, c2&0x1fu, 5)&0x1f;
;** 409	-----------------------    v$1 = v$1&0xfffff81f|_extu((unsigned)_alpha_blend_nbit((int)_extu((unsigned)c1, 21u, 26u), (int)_extu((unsigned)c2, 21u, 26u), 6), 26u, 26u)<<5;
;** 410	-----------------------    return (unsigned short)((int)_extu((unsigned)v$1, 21u, 21u)|_alpha_blend_nbit(c1>>11, c2>>11, 5)<<11);
           CALL    .S1     __alpha_blend_nbit ; |408| 
           MV      .L2     B4,B5             ; |394| 
           EXTU    .S2     B5,27,27,B4       ; |408| 
           MV      .L1     A4,A7             ; |394| 
           EXTU    .S1     A7,27,27,A4       ; |408| 

           MVK     .L1     0x5,A6            ; |408| 
||         MV      .L2     B3,B31            ; |394| 
||         ADDKPC  .S2     RL0,B3,0          ; |408| 

RL0:       ; CALL OCCURS {__alpha_blend_nbit}  ; |408| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __alpha_blend_nbit ; |409| 
           EXTU    .S2     B5,21,26,B4       ; |409| 
           ADDKPC  .S2     RL1,B3,0          ; |409| 
           MVK     .L1     0x6,A6            ; |409| 
           MV      .D1     A4,A9             ; |408| 
           EXTU    .S1     A7,21,26,A4       ; |409| 
RL1:       ; CALL OCCURS {__alpha_blend_nbit}  ; |409| 
           CALL    .S1     __alpha_blend_nbit ; |410| 
           SHRU    .S2     B5,11,B4          ; |410| 
           ADDKPC  .S2     RL2,B3,0          ; |410| 
           MV      .L2X    A4,B5             ; |409| 
           SHRU    .S1     A7,11,A4          ; |410| 
           MVK     .L1     0x5,A6            ; |410| 
RL2:       ; CALL OCCURS {__alpha_blend_nbit}  ; |410| 
;** --------------------------------------------------------------------------*
           CLR     .S1     A8,0,4,A3         ; |408| 
           EXTU    .S1     A9,27,27,A5       ; |408| 
           OR      .L1     A5,A3,A3          ; |408| 

           CLR     .S1     A3,5,10,A3        ; |409| 
||         EXTU    .S2     B5,26,21,B4       ; |409| 

           RET     .S2     B31               ; |414| 
           OR      .L2X    B4,A3,B4          ; |409| 
           EXTU    .S2     B4,21,21,B4       ; |410| 
           SHL     .S1     A4,11,A3          ; |410| 
           OR      .L1X    A3,B4,A3          ; |410| 
	.dwpsn	"utility.c",414,1
           EXTU    .S1     A3,16,16,A4       ; |410| 
           ; BRANCH OCCURS {B31}             ; |414| 
	.dwattr DW$67, DW_AT_end_file("utility.c")
	.dwattr DW$67, DW_AT_end_line(0x19e)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendtag DW$67

	.sect	".text"

DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("_process_line"), DW_AT_symbol_name("__process_line")
	.dwattr DW$70, DW_AT_low_pc(__process_line)
	.dwattr DW$70, DW_AT_high_pc(0x00)
	.dwattr DW$70, DW_AT_begin_file("utility.c")
	.dwattr DW$70, DW_AT_begin_line(0x64)
	.dwattr DW$70, DW_AT_begin_column(0x0d)
	.dwattr DW$70, DW_AT_frame_base[DW_OP_breg31 8]
	.dwattr DW$70, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",101,1

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
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("source"), DW_AT_symbol_name("_source")
	.dwattr DW$71, DW_AT_type(*DW$T$38)
	.dwattr DW$71, DW_AT_location[DW_OP_reg4]
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dest"), DW_AT_symbol_name("_dest")
	.dwattr DW$72, DW_AT_type(*DW$T$38)
	.dwattr DW$72, DW_AT_location[DW_OP_reg20]
DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_name("line_no"), DW_AT_symbol_name("_line_no")
	.dwattr DW$73, DW_AT_type(*DW$T$10)
	.dwattr DW$73, DW_AT_location[DW_OP_reg6]
DW$74	.dwtag  DW_TAG_formal_parameter, DW_AT_name("show_stamp"), DW_AT_symbol_name("_show_stamp")
	.dwattr DW$74, DW_AT_type(*DW$T$10)
	.dwattr DW$74, DW_AT_location[DW_OP_reg22]
;** 101	-----------------------    source = source;
;** 101	-----------------------    dest = dest;
;** 103	-----------------------    line = (unsigned short * restrict)dest;
;** 112	-----------------------    *(double * restrict)dest = v$5 = color_background;
;** 113	-----------------------    ((double *)dest)[1] = color_l_edge;
;** 115	-----------------------    dest += 16;
;** 116	-----------------------    p = &source[16];
;**  	-----------------------    V$3 = *(&u);
;**  	-----------------------    V$2 = *(&u);
;**  	-----------------------    V$1 = *(&u);
;**  	-----------------------    V$0 = *(&u);
;**  	-----------------------    K$40 = (-2017);
;**  	-----------------------    K$56 = 0xfffff800u;
;**  	-----------------------    K$59 = (-32);
;** 116	-----------------------    L$1 = 76;
;**  	-----------------------    #pragma MUST_ITERATE(76, 76, 76)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g2:
;** 118	-----------------------    s0.d = *(const double *)p++{8};
;** 95	-----------------------    C$46 = *(&s0);  // [7]
;** 95	-----------------------    V$3 = (unsigned short)(_extu((unsigned)(unsigned short)(V$3&K$40|_extu((unsigned)C$46, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$46<<8&K$56);  // [7]
;** 96	-----------------------    y$35 = (int)(V$3 = (unsigned short)(V$3&K$59|C$46>>3));  // [7]
;** 97	-----------------------    *(&s0) = y$35;  // [7]
;** 95	-----------------------    C$45 = *(&s0+2);  // [7]
;** 95	-----------------------    V$2 = (unsigned short)(_extu((unsigned)(unsigned short)(V$2&K$40|_extu((unsigned)C$45, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$45<<8&K$56);  // [7]
;** 96	-----------------------    y$44 = (int)(V$2 = (unsigned short)(V$2&K$59|C$45>>3));  // [7]
;** 97	-----------------------    *(&s0+2) = y$44;  // [7]
;** 95	-----------------------    C$44 = *(&s0+4);  // [7]
;** 95	-----------------------    V$1 = (unsigned short)(_extu((unsigned)(unsigned short)(V$1&K$40|_extu((unsigned)C$44, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$44<<8&K$56);  // [7]
;** 96	-----------------------    y$53 = (int)(V$1 = (unsigned short)(V$1&K$59|C$44>>3));  // [7]
;** 97	-----------------------    *(&s0+4) = y$53;  // [7]
;** 95	-----------------------    C$43 = *(&s0+6);  // [7]
;** 95	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$40|_extu((unsigned)C$43, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$43<<8&K$56);  // [7]
;** 96	-----------------------    y$62 = (int)(V$0 = (unsigned short)(V$0&K$59|C$43>>3));  // [7]
;** 97	-----------------------    *(&s0+6) = y$62;  // [7]
;** 124	-----------------------    *(double *)dest++{8} = s0.d;
;** 116	-----------------------    if ( --L$1 ) goto g2;
;** 129	-----------------------    *(double * restrict)dest = color_r_edge;

           STW     .D2T1   A11,*SP--(8)      ; |101| 
||         MVKL    .S1     _color_l_edge,A3  ; |113| 

           STW     .D2T1   A10,*+SP(4)       ; |101| 
||         MVKH    .S1     _color_l_edge,A3  ; |113| 
||         MVKL    .S2     _color_background,B5 ; |112| 

           LDDW    .D1T1   *A3,A5:A4         ; |113| 
||         MVKH    .S2     _color_background,B5 ; |112| 
||         MV      .L2X    A4,B21            ; |101| 

           LDDW    .D2T1   *B5,A11:A10       ; |112| 
||         MV      .L1X    B4,A19            ; |101| 
||         MVK     .S2     0xfffff800,B17

           MVK     .L1     0x1,A2            ; init prolog collapse predicate
||         MV      .S1X    B4,A29            ; |101| 
||         MVK     .S2     0xffffffe0,B9

           MVK     .S2     0x4c,B5           ; |116| 
||         MV      .L1X    B21,A3            ; |101| Define a twin register
||         MVK     .S1     0xfffff81f,A24
||         MV      .D1     A6,A30            ; |101| 

           ADD     .L2     1,B5,B0
||         ZERO    .L1     A3
||         ADD     .D1     A3,16,A22         ; |116| 
||         MV      .S1X    B17,A25
||         MVC     .S2     CSR,B19

           SET     .S1     A3,0xf,0xf,A1     ; init prolog collapse predicate
||         STDW    .D1T1   A5:A4,*+A19(8)    ; |113| 
||         AND     .L2     -2,B19,B4
||         MV      .L1X    B9,A23

           ADDK    .S1     16,A19            ; |115| 
||         STDW    .D1T1   A11:A10,*A19      ; |112| 
||         SUB     .L1X    B0,1,A0
||         MVC     .S2     B4,CSR            ; interrupts off
||         MV      .L2     B6,B1             ; |101| 
||         MV      .D2     B3,B30            ; |101| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 116
;*      Loop opening brace source line   : 117
;*      Loop closing brace source line   : 127
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
L1:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L2:    ; PIPED LOOP KERNEL
DW$L$__process_line$3$B:
	.dwpsn	"utility.c",117,0

           SHL     .S1     A4,5,A4           ; |95| <0,35> 
||         EXTU    .S2     B4,16,16,B5       ; |95| <1,14> 
||         AND     .L2X    A25,B5,B4         ; |95| <1,14> 

           OR      .L1     A4,A9,A9          ; |95| <0,36> 
||         EXTU    .S2     B5,21,21,B8       ; |95| <1,15> 
||         EXTU    .S1     A5,3,5,A4         ; |95| <1,15> 

           EXTU    .S2     B7,24,16,B4       ; |95| <0,37> 
||         OR      .L2     B4,B8,B17         ; |95| <1,16> 
||         SHL     .S1     A4,5,A4           ; |95| <1,16> 

           AND     .L2X    A25,B4,B8         ; |95| <0,38> 
||         EXTU    .S2     B7,24,24,B4       ; |95| <0,38> 
||         EXTU    .S1     A3,24,16,A5       ; |95| <0,38> 
||         OR      .L1     A4,A7,A4          ; |95| <1,17> 

           EXTU    .S2     B4,3,5,B4         ; |95| <0,39> 
||         AND     .L1     A25,A5,A5         ; |95| <0,39> 
||         EXTU    .S1     A4,16,16,A4       ; |95| <1,18> 

           SHL     .S2     B4,5,B4           ; |95| <0,40> 
||         EXTU    .S1     A4,21,21,A4       ; |95| <1,19> 

           EXTU    .S1     A3,24,27,A6       ; |95| <0,41> 
||         OR      .L2X    B4,A27,B9         ; |95| <0,41>  ^ 
||         EXTU    .S2     B6,24,27,B16      ; |95| <1,20> 
||         OR      .L1     A28,A4,A3         ; |95| <1,20> 

           EXTU    .S1     A9,16,16,A4       ; |95| <0,42> 
||         EXTU    .S2     B17,16,16,B4      ; |95| <1,21> 
|| [ A0]   LDDW    .D1T1   *A22++,A5:A4      ; |118| <2,0> 

           EXTU    .S2     B9,16,16,B4       ; |95| <0,43>  ^ 
||         EXTU    .S1     A4,21,21,A4       ; |95| <0,43> 
||         AND     .L2X    A23,B4,B9         ; |96| <1,22> 

           EXTU    .S2     B4,21,21,B4       ; |95| <0,44>  ^ 
||         OR      .L1     A5,A4,A4          ; |95| <0,44> 
||         OR      .L2     B16,B9,B9         ; |96| <1,23> 
||         EXTU    .S1     A3,16,16,A3       ; |95| <1,23> 

           EXTU    .S2     B7,24,27,B7       ; |95| <0,45> 
||         OR      .L2     B8,B4,B4          ; |95| <0,45>  ^ 
||         EXTU    .S1     A4,16,16,A4       ; |95| <0,45> 
||         AND     .L1     A23,A3,A3         ; |96| <1,24> 

           EXTU    .S2     B4,16,16,B4       ; |95| <0,46>  ^ 
||         AND     .L1     A23,A4,A3         ; |96| <0,46> 
||         OR      .S1     A8,A3,A8          ; |96| <1,25> 

           AND     .L2X    A23,B4,B4         ; |96| <0,47>  ^ 
||         OR      .L1     A6,A3,A3          ; |96| <0,47> 
||         EXTU    .S1     A5,24,16,A6       ; |95| <2,5> 

           OR      .L2     B7,B4,B4          ; |96| <0,48>  ^ 
|| [!A1]   EXTU    .S1     A3,16,16,A16      ; |96| <0,48> 
||         AND     .L1     A25,A6,A28        ; |95| <2,6> 

   [ B0]   SUB     .L2     B0,1,B0           ; |116| <0,49> 
||         EXTU    .S2     B4,16,16,B4       ; |96| <0,49>  ^ 
||         MV      .D1     A16,A6            ; |96| <0,49> 
||         AND     .L1     A24,A16,A9        ; |95| <1,28> 
||         MVD     .M1     A5,A18            ; |118| <2,7> Split a long life
||         EXTU    .S1     A4,24,24,A3       ; |95| <2,7> 

   [ B0]   B       .S2     L2                ; |116| <0,50> 
||         PACK2   .L1     A6,A26,A21        ; |97| <0,50> 
|| [!A2]   EXTU    .S1     A8,16,16,A7       ; |96| <1,29> 

   [!A2]   EXTU    .S2     B9,16,16,B18      ; |96| <1,30> 
||         MV      .D1     A7,A3             ; |96| <1,30> 
||         EXTU    .S1     A5,24,27,A8       ; |95| <2,9> 
||         MV      .L2X    A3,B7             ; |95| <2,9> Define a twin register
||         AND     .L1     A24,A7,A7         ; |95| <2,9> 

   [!A1]   MV      .D1X    B4,A17            ; |96| <0,52>  ^ Define a twin register
||         MV      .L2     B18,B4            ; |96| <1,31> 
||         PACKHL2 .L1     A18,A3,A26        ; |97| <1,31> 
||         EXTU    .S1     A5,24,24,A5       ; |95| <2,10> 
||         EXTU    .S2     B7,3,5,B7         ; |95| <2,10> 

           MV      .D1     A17,A6            ; |96| <0,53> 
||         AND     .L1     A24,A17,A27       ; |95| <1,32>  ^ 
||         PACKHL2 .L2     B6,B4,B4          ; |97| <1,32> 
||         EXTU    .S1     A26,8,24,A3       ; |95| <1,32> 
||         AND     .D2X    A24,B18,B6        ; |95| <2,11> 
||         SHL     .S2     B7,5,B7           ; |95| <2,11> 

   [ A2]   SUB     .D1     A2,1,A2           ; <0,54> 
||         PACK2   .L1X    A6,B5,A20         ; |97| <0,54> 
||         MVD     .M2     B4,B5             ; |97| <1,33> Split a long life
||         EXTU    .S2     B4,8,24,B7        ; |95| <1,33> 
||         EXTU    .S1     A3,24,24,A4       ; |95| <1,33> 
||         OR      .L2     B7,B6,B4          ; |95| <2,12> 
||         MV      .D2X    A4,B6             ; |118| <2,12> Define a twin register

	.dwpsn	"utility.c",127,0

   [ A1]   MPYSU   .M1     2,A1,A1           ; <0,55> 
|| [ A0]   SUB     .L1     A0,1,A0           ; <0,55> 
|| [!A1]   STDW    .D1T1   A21:A20,*A19++    ; |124| <0,55> 
||         EXTU    .S1     A4,3,5,A4         ; |95| <1,34> 
||         EXTU    .S2     B6,24,16,B5       ; |95| <2,13> 

DW$L$__process_line$3$E:
;** --------------------------------------------------------------------------*
L3:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;** 130	-----------------------    ((double *)dest)[1] = v$5;
;** 132	-----------------------    if ( !((line_no >= 14)&(line_no < 16)|(line_no >= 226)&(line_no < 228)) ) goto g6;
;**  	-----------------------    V$4 = *(&u);
;** 135	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(4)
;**  	-----------------------    U$157 = &source[24];
;**  	-----------------------    K$160 = 1272;
;**  	-----------------------    U$180 = &line[12];
;** 135	-----------------------    L$2 = 72;
;**  	-----------------------    #pragma MUST_ITERATE(72, 72, 72)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)

           EXTU    .S2     B7,24,24,B31      ; |95| (E) <2,38> 
||         SHL     .S1     A4,5,A4           ; |95| (E) <2,35> 
||         CMPLT   .L1     A30,14,A28        ; |132| 
||         MV      .L2X    A25,B17

           EXTU    .S2     B7,24,16,B4       ; |95| (E) <2,37> 
||         OR      .L1     A4,A9,A9          ; |95| (E) <2,36> 
||         EXTU    .S1     A3,24,16,A5       ; |95| (E) <2,38> 

           AND     .L2X    A25,B4,B8         ; |95| (E) <2,38> 
||         EXTU    .S2     B31,3,5,B4        ; |95| (E) <2,39> 
||         EXTU    .S1     A9,16,16,A4       ; |95| (E) <2,42> 
||         AND     .L1     A25,A5,A5         ; |95| (E) <2,39> 

           SHL     .S2     B4,5,B4           ; |95| (E) <2,40> 
||         EXTU    .S1     A4,21,21,A4       ; |95| (E) <2,43> 

           OR      .L2X    B4,A27,B9         ; |95| (E) <2,41>  ^ 
||         OR      .L1     A5,A4,A4          ; |95| (E) <2,44> 
||         EXTU    .S1     A3,24,27,A6       ; |95| (E) <2,41> 
||         EXTU    .S2     B7,24,27,B29      ; |95| (E) <2,45> 

           EXTU    .S2     B9,16,16,B4       ; |95| (E) <2,43>  ^ 
||         EXTU    .S1     A4,16,16,A4       ; |95| (E) <2,45> 
||         MV      .L2X    A23,B9

           EXTU    .S2     B4,21,21,B4       ; |95| (E) <2,44>  ^ 
||         AND     .L1     A23,A4,A3         ; |96| (E) <2,46> 
||         MVK     .S1     16,A22            ; |132| 

           OR      .L2     B8,B4,B4          ; |95| (E) <2,45>  ^ 
||         OR      .D1     A6,A3,A3          ; |96| (E) <2,47> 
||         MVK     .S2     226,B28           ; |132| 
||         CMPLT   .L1     A30,A22,A18       ; |132| 
||         MVKL    .S1     _color_r_edge,A31 ; |129| 

           EXTU    .S2     B4,16,16,B4       ; |95| (E) <2,46>  ^ 
||         EXTU    .S1     A3,16,16,A16      ; |96| (E) <2,48> 
||         XOR     .L1     1,A28,A3          ; |132| 

           AND     .L2X    A23,B4,B4         ; |96| (E) <2,47>  ^ 
||         MV      .L1     A16,A6            ; |96| (E) <2,49> 
||         MVK     .S2     228,B27           ; |132| 
||         AND     .D1     A18,A3,A3         ; |132| 
||         MVKH    .S1     _color_r_edge,A31 ; |129| 

           OR      .L2     B29,B4,B4         ; |96| (E) <2,48>  ^ 
||         PACK2   .L1     A6,A26,A21        ; |97| (E) <2,50> 
||         MVC     .S2     B19,CSR           ; interrupts on

           EXTU    .S2     B4,16,16,B4       ; |96| (E) <2,49>  ^ 
           NOP             1

           CMPLT   .L2X    A30,B28,B4        ; |132| 
||         MV      .L1X    B4,A6             ; |96| 

           XOR     .S2     1,B4,B4           ; |132| 
||         MVK     .S1     0x4f8,A6
||         CMPLT   .L2X    A30,B27,B5        ; |132| 
||         PACK2   .L1X    A6,B5,A20         ; |97| (E) <2,54> 

           ADD     .D2     B21,24,B5
||         AND     .L2     B5,B4,B4          ; |132| 
||         STDW    .D1T1   A21:A20,*A19++    ; |124| (E) <2,55> 

           MVK     .S2     0x48,B4           ; |135| 
||         OR      .L2X    B4,A3,B0          ; |132| 
||         LDDW    .D1T1   *A31,A5:A4        ; |129| 

           NOP             1
   [!B0]   BNOP    .S1     L7,2              ; |132| 
           STDW    .D1T1   A5:A4,*A19        ; |129| 
           STDW    .D1T1   A11:A10,*+A19(8)  ; |130| 
           ADD     .D1     A29,24,A4
           ; BRANCHCC OCCURS {L7}            ; |132| 
;** --------------------------------------------------------------------------*
;**	-----------------------g5:
;** 95	-----------------------    C$42 = _mpyus(*(U$157 += 8), 10)+K$160;  // [7]
;** 95	-----------------------    C$41 = (unsigned char)(C$42>>4);  // [7]
;** 95	-----------------------    V$4 = (unsigned short)(_extu((unsigned)(unsigned short)(V$4&K$40|_extu((unsigned)C$41, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$42<<4&K$56);  // [7]
;** 96	-----------------------    y$79 = (int)(V$4 = (unsigned short)(V$4&K$59|C$41>>3));  // [7]
;** 97	-----------------------    *(U$180 += 4) = y$79;  // [7]
;** 95	-----------------------    C$40 = _mpyus(U$157[2], 10)+K$160;  // [7]
;** 95	-----------------------    C$39 = (unsigned char)(C$40>>4);  // [7]
;** 95	-----------------------    V$4 = (unsigned short)(_extu((unsigned)(unsigned short)(V$4&K$40|_extu((unsigned)C$39, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$40<<4&K$56);  // [7]
;** 96	-----------------------    y$79 = (int)(V$4 = (unsigned short)(V$4&K$59|C$39>>3));  // [7]
;** 97	-----------------------    U$180[1] = y$79;  // [7]
;** 95	-----------------------    C$38 = _mpyus(U$157[4], 10)+K$160;  // [7]
;** 95	-----------------------    C$37 = (unsigned char)(C$38>>4);  // [7]
;** 95	-----------------------    V$4 = (unsigned short)(_extu((unsigned)(unsigned short)(V$4&K$40|_extu((unsigned)C$37, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$38<<4&K$56);  // [7]
;** 96	-----------------------    y$79 = (int)(V$4 = (unsigned short)(V$4&K$59|C$37>>3));  // [7]
;** 97	-----------------------    U$180[2] = y$79;  // [7]
;** 95	-----------------------    C$36 = _mpyus(U$157[6], 10)+K$160;  // [7]
;** 95	-----------------------    C$35 = (unsigned char)(C$36>>4);  // [7]
;** 95	-----------------------    V$4 = (unsigned short)(_extu((unsigned)(unsigned short)(V$4&K$40|_extu((unsigned)C$35, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$36<<4&K$56);  // [7]
;** 96	-----------------------    y$79 = (int)(V$4 = (unsigned short)(V$4&K$59|C$35>>3));  // [7]
;** 97	-----------------------    U$180[3] = y$79;  // [7]
;** 135	-----------------------    if ( --L$2 ) goto g5;

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
;*      Loop source line                 : 135
;*      Loop opening brace source line   : 136
;*      Loop closing brace source line   : 136
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
L4:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L5:    ; PIPED LOOP KERNEL
DW$L$__process_line$8$B:
	.dwpsn	"utility.c",136,0

           AND     .L2X    B17,A3,B6         ; |95| <0,19> 
||         EXTU    .S2     B4,16,16,B4       ; |95| <0,19>  ^ 

           SHL     .S1X    B18,5,A3          ; |95| <0,20> 
||         EXTU    .S2     B4,21,21,B4       ; |95| <0,20>  ^ 

           EXTU    .S2     B5,20,27,B4       ; |95| <0,21> 
||         OR      .L2     B8,B4,B5          ; |95| <0,21>  ^ 

           EXTU    .S2     B5,16,16,B5       ; |95| <0,22>  ^ 
           AND     .L2     B9,B5,B5          ; |96| <0,23>  ^ 
           OR      .L2X    A7,B5,B5          ; |96| <0,24>  ^ 
           EXTU    .S2     B5,16,16,B5       ; |96| <0,25>  ^ 

           AND     .L2     B16,B5,B8         ; |95| <0,26>  ^ 
||         ADD     .L1     A6,A9,A7          ; |95| <0,26> 

           MV      .L1X    B5,A3             ; |96| <0,27> 
||         OR      .L2X    A3,B8,B5          ; |95| <0,27>  ^ 
||         EXTU    .S1     A7,20,24,A8       ; |95| <0,27> 

           EXTU    .S2     B5,16,16,B5       ; |95| <0,28>  ^ 
||         EXTU    .S1     A8,3,5,A8         ; |95| <0,28> 

           EXTU    .S2     B5,21,21,B5       ; |95| <0,29>  ^ 
||         SHL     .S1     A8,5,A8           ; |95| <0,29> 

           SHL     .S2X    A7,4,B6           ; |95| <0,30> 
||         OR      .L2     B6,B5,B5          ; |95| <0,30>  ^ 
||         EXTU    .S1     A7,20,27,A7       ; |95| <0,30> 

           AND     .L2     B17,B6,B6         ; |95| <0,31> 
||         EXTU    .S2     B5,16,16,B5       ; |95| <0,31>  ^ 

           AND     .L2     B9,B5,B5          ; |96| <0,32>  ^ 
           OR      .L2     B4,B5,B4          ; |96| <0,33>  ^ 
           EXTU    .S2     B4,16,16,B8       ; |96| <0,34>  ^ 

           ADD     .L2X    A6,B7,B4          ; |95| <0,35> 
||         AND     .D2     B16,B8,B5         ; |95| <0,35>  ^ 

           EXTU    .S2     B4,20,24,B5       ; |95| <0,36> 
||         OR      .L2X    A8,B5,B7          ; |95| <0,36>  ^ 
||         LDBU    .D1T1   *++A5(8),A8       ; |95| <1,0> 

           EXTU    .S2     B7,16,16,B7       ; |95| <0,37>  ^ 
||         LDBU    .D1T1   *+A5(2),A8        ; |95| <1,1> 

           EXTU    .S2     B7,21,21,B7       ; |95| <0,38>  ^ 
||         SHL     .S1X    B4,4,A8           ; |95| <0,38> 
||         LDBU    .D1T1   *+A5(4),A7        ; |95| <1,2> 

           EXTU    .S2     B5,3,5,B6         ; |95| <0,39> 
||         OR      .L2     B6,B7,B5          ; |95| <0,39>  ^ 

           AND     .L2X    B17,A8,B5         ; |95| <0,40> 
||         EXTU    .S2     B5,16,16,B7       ; |95| <0,40>  ^ 

           SHL     .S2     B6,5,B7           ; |95| <0,41> 
||         AND     .L2     B9,B7,B6          ; |96| <0,41>  ^ 
||         MPYSU   .M1     10,A8,A9          ; |95| <1,5> 

           EXTU    .S2     B4,20,27,B6       ; |95| <0,42> 
||         OR      .L2X    A7,B6,B4          ; |96| <0,42>  ^ 
||         LDBU    .D1T1   *+A5(6),A3        ; |95| <1,6> 

           EXTU    .S2     B4,16,16,B4       ; |96| <0,43>  ^ 
||         MPYSU   .M2X    10,A8,B19         ; |95| <1,7> 
||         MPYSU   .M1     10,A7,A9          ; |95| <1,7> 
||         ADD     .L1     A6,A9,A8          ; |95| <1,7> 

   [!A1]   STH     .D1T1   A3,*++A4(8)       ; |97| <0,44> 
||         AND     .S2     B16,B4,B20        ; |95| <0,44>  ^ 
||         EXTU    .S1     A8,20,27,A7       ; |95| <1,8> 

   [!A1]   STH     .D1T2   B4,*+A4(4)        ; |97| <0,45> 
||         OR      .L2     B7,B20,B7         ; |95| <0,45>  ^ 
||         SHL     .S2X    A8,4,B4           ; |95| <1,9> 
||         EXTU    .S1     A8,20,24,A3       ; |95| <1,9> 

   [!A1]   STH     .D1T2   B8,*+A4(2)        ; |97| <0,46> 
||         EXTU    .S2     B7,16,16,B4       ; |95| <0,46>  ^ 
||         AND     .L2     B17,B4,B8         ; |95| <1,10> 
||         EXTU    .S1     A3,3,5,A8         ; |95| <1,10> 

           EXTU    .S2     B4,21,21,B4       ; |95| <0,47>  ^ 
||         MPYSU   .M2X    10,A3,B7          ; |95| <1,11> 
||         SHL     .S1     A8,5,A8           ; |95| <1,11> 

   [ A0]   SUB     .L1     A0,1,A0           ; |135| <0,48> 
||         OR      .L2     B5,B4,B4          ; |95| <0,48>  ^ 

   [ A0]   B       .S1     L5                ; |135| <0,49> 
||         EXTU    .S2     B4,16,16,B4       ; |95| <0,49>  ^ 

           AND     .L2     B9,B4,B4          ; |96| <0,50>  ^ 

           OR      .L2     B6,B4,B4          ; |96| <0,51>  ^ 
||         ADD     .S2X    A6,B19,B5         ; |95| <1,15> 

   [!A1]   EXTU    .S2     B4,16,16,B18      ; |96| <0,52>  ^ 

           MV      .L2     B18,B6            ; |96| <0,53> 
||         EXTU    .S2     B5,20,24,B4       ; |95| <1,17> 
||         AND     .D2     B16,B18,B18       ; |95| <1,17>  ^ 
||         SHL     .S1X    B5,4,A3           ; |95| <1,17> 

   [ A1]   SUB     .L1     A1,1,A1           ; <0,54> 
|| [!A1]   STH     .D1T2   B6,*+A4(6)        ; |97| <0,54> 
||         EXTU    .S2     B4,3,5,B18        ; |95| <1,18> 
||         OR      .L2X    A8,B18,B4         ; |95| <1,18>  ^ 

DW$L$__process_line$8$E:
;** --------------------------------------------------------------------------*
L6:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           EXTU    .S2     B4,16,16,B4       ; |95| (E) <1,19>  ^ 
           EXTU    .S2     B4,21,21,B4       ; |95| (E) <1,20>  ^ 

           OR      .L2     B8,B4,B5          ; |95| (E) <1,21>  ^ 
||         EXTU    .S2     B5,20,27,B4       ; |95| (E) <1,21> 

           EXTU    .S2     B5,16,16,B5       ; |95| (E) <1,22>  ^ 
           AND     .L2     B9,B5,B5          ; |96| (E) <1,23>  ^ 
           OR      .L2X    A7,B5,B5          ; |96| (E) <1,24>  ^ 

           EXTU    .S2     B5,16,16,B5       ; |96| (E) <1,25>  ^ 
||         SHL     .S1X    B18,5,A3          ; |95| (E) <1,20> 
||         AND     .L2X    B17,A3,B6         ; |95| (E) <1,19> 

           AND     .L2     B16,B5,B8         ; |95| (E) <1,26>  ^ 

           OR      .L2X    A3,B8,B5          ; |95| (E) <1,27>  ^ 
||         MV      .L1X    B5,A3             ; |96| (E) <1,27> 

           EXTU    .S2     B5,16,16,B5       ; |95| (E) <1,28>  ^ 
           EXTU    .S2     B5,21,21,B5       ; |95| (E) <1,29>  ^ 
           OR      .L2     B6,B5,B5          ; |95| (E) <1,30>  ^ 

           EXTU    .S2     B5,16,16,B5       ; |95| (E) <1,31>  ^ 
||         ADD     .L1     A6,A9,A31         ; |95| (E) <1,26> 

           AND     .L2     B9,B5,B5          ; |96| (E) <1,32>  ^ 
||         EXTU    .S1     A31,20,24,A8      ; |95| (E) <1,27> 

           OR      .L2     B4,B5,B4          ; |96| (E) <1,33>  ^ 
||         EXTU    .S1     A8,3,5,A8         ; |95| (E) <1,28> 

           EXTU    .S2     B4,16,16,B8       ; |96| (E) <1,34>  ^ 
||         SHL     .S1     A8,5,A8           ; |95| (E) <1,29> 
||         ADD     .L2X    A6,B7,B29         ; |95| (E) <1,35> 

           AND     .L2     B16,B8,B5         ; |95| (E) <1,35>  ^ 
||         SHL     .S2X    A31,4,B31         ; |95| (E) <1,30> 

           OR      .L2X    A8,B5,B7          ; |95| (E) <1,36>  ^ 
||         EXTU    .S2     B29,20,24,B28     ; |95| (E) <1,36> 

           EXTU    .S2     B7,16,16,B7       ; |95| (E) <1,37>  ^ 

           EXTU    .S2     B7,21,21,B7       ; |95| (E) <1,38>  ^ 
||         AND     .L2     B17,B31,B6        ; |95| (E) <1,31> 

           EXTU    .S2     B28,3,5,B6        ; |95| (E) <1,39> 
||         OR      .L2     B6,B7,B5          ; |95| (E) <1,39>  ^ 

           EXTU    .S2     B5,16,16,B7       ; |95| (E) <1,40>  ^ 
||         EXTU    .S1     A31,20,27,A28     ; |95| (E) <1,30> 

           AND     .L2     B9,B7,B6          ; |96| (E) <1,41>  ^ 
||         SHL     .S2     B6,5,B7           ; |95| (E) <1,41> 

           OR      .L2X    A28,B6,B4         ; |96| (E) <1,42>  ^ 
           EXTU    .S2     B4,16,16,B4       ; |96| (E) <1,43>  ^ 
           AND     .L2     B16,B4,B20        ; |95| (E) <1,44>  ^ 

           SHL     .S1X    B29,4,A8          ; |95| (E) <1,38> 
||         OR      .L2     B7,B20,B7         ; |95| (E) <1,45>  ^ 
||         STH     .D1T1   A3,*++A4(8)       ; |97| (E) <1,44> 

           EXTU    .S2     B7,16,16,B4       ; |95| (E) <1,46>  ^ 
||         STH     .D1T2   B4,*+A4(4)        ; |97| (E) <1,45> 

           EXTU    .S2     B4,21,21,B4       ; |95| (E) <1,47>  ^ 
||         AND     .L2X    B17,A8,B27        ; |95| (E) <1,40> 

           OR      .L2     B27,B4,B4         ; |95| (E) <1,48>  ^ 
           EXTU    .S2     B4,16,16,B4       ; |95| (E) <1,49>  ^ 

           AND     .L2     B9,B4,B4          ; |96| (E) <1,50>  ^ 
||         EXTU    .S2     B29,20,27,B6      ; |95| (E) <1,42> 

           OR      .L2     B6,B4,B4          ; |96| (E) <1,51>  ^ 
||         STH     .D1T2   B8,*+A4(2)        ; |97| (E) <1,46> 

           STH     .D1T2   B4,*+A4(6)        ; |97| 
||         MVC     .S2     B22,CSR           ; interrupts on
||         MV      .L1X    B16,A24

;** --------------------------------------------------------------------------*
L7:    
;**	-----------------------g6:
;** 95	-----------------------    K$48 = 32;  // [7]
;** 139	-----------------------    if ( !((line_no >= 16)&(line_no < (K$141 = 226))) ) goto g10;
;**  	-----------------------    V$6 = *(&u);
;**  	-----------------------    V$5 = *(&u);
;**  	-----------------------    K$160 = 1272;
;**  	-----------------------    U$180 = &line[16];
;**  	-----------------------    U$264 = &source[32];
;**  	-----------------------    U$291 = &source[602];
;**  	-----------------------    U$314 = &line[301];
;** 141	-----------------------    L$3 = 3;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           MVK     .S1     16,A3             ; |139| 
||         MVK     .S2     0xe2,B4           ; |139| 

           CMPLT   .L1     A30,A3,A3         ; |139| 
||         CMPLT   .L2X    A30,B4,B4         ; |139| 
||         MVK     .S2     602,B5
||         MVK     .S1     602,A4

           XOR     .L1     1,A3,A3           ; |139| 
||         ADD     .S1     A4,A29,A7
||         ADDAD   .D1     A29,4,A4
||         MVK     .S2     0x20,B18          ; |95| 

           MVK     .S2     0x4f8,B6

           AND     .L2X    B4,A3,B0          ; |139| 
||         MVK     .L1     0x3,A3            ; |141| 
||         ADD     .S2     B5,B21,B4
||         ADDAD   .D2     B21,4,B5

   [!B0]   BNOP    .S1     L11,5             ; |139| 
|| [ B0]   MV      .L1X    B17,A17

           ; BRANCHCC OCCURS {L11}           ; |139| 
;** --------------------------------------------------------------------------*
;**	-----------------------g8:
;** 95	-----------------------    C$34 = _mpyus(*U$264++{2}, 10)+K$160;  // [7]
;** 95	-----------------------    C$33 = (unsigned char)(C$34>>4);  // [7]
;** 95	-----------------------    V$6 = (unsigned short)(_extu((unsigned)(unsigned short)(V$6&K$40|_mpyu(_extu((unsigned)C$33, 3u, 5u), 32u)), 21u, 21u)|(unsigned)C$34<<4&K$56);  // [7]
;** 96	-----------------------    y$99 = (int)(V$6 = (unsigned short)(V$6&K$59|C$33>>3));  // [7]
;** 97	-----------------------    *U$180++ = y$99;  // [7]
;** 95	-----------------------    C$32 = _mpyus(*U$291++{2}, 10)+K$160;  // [7]
;** 95	-----------------------    C$31 = (unsigned char)(C$32>>4);  // [7]
;** 95	-----------------------    V$5 = (unsigned short)(_extu((unsigned)(unsigned short)(V$5&K$40|_extu((unsigned)C$31, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$32<<4&K$56);  // [7]
;** 96	-----------------------    y$107 = (int)(V$5 = (unsigned short)(V$5&K$59|C$31>>3));  // [7]
;** 97	-----------------------    *U$314++ = y$107;  // [7]
;** 141	-----------------------    if ( --L$3 ) goto g8;
;** 95	-----------------------    K$48 = 32;  // [7]

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
;*      Loop source line                 : 141
;*      Loop opening brace source line   : 142
;*      Loop closing brace source line   : 145
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
L8:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L9:    ; PIPED LOOP KERNEL
DW$L$__process_line$14$B:
	.dwpsn	"utility.c",142,0

           AND     .L2X    A17,B5,B5         ; |95| <0,15> 
||         EXTU    .S2     B4,16,16,B4       ; |95| <0,15>  ^ 
||         EXTU    .S1     A3,21,21,A3       ; |95| <0,15>  ^ 
||         MPYSU   .M1     10,A19,A18        ; |95| <1,5> 

           EXTU    .S2     B4,21,21,B4       ; |95| <0,16>  ^ 
||         OR      .L1     A18,A3,A3         ; |95| <0,16>  ^ 
||         MVK     .S1     32,A20            ; |95| <1,6> 
||         MPYSU   .M2     10,B16,B6         ; |95| <1,6> 

           EXTU    .S2     B6,20,27,B4       ; |95| <0,17> 
||         OR      .L2     B5,B4,B5          ; |95| <0,17>  ^ 
||         EXTU    .S1     A3,16,16,A3       ; |95| <0,17>  ^ 
||         ADD     .L1     A5,A18,A18        ; |95| <1,7> 

           EXTU    .S2     B5,16,16,B5       ; |95| <0,18>  ^ 
||         AND     .L1     A9,A3,A3          ; |96| <0,18>  ^ 
||         EXTU    .S1     A18,20,24,A19     ; |95| <1,8> 

   [ B0]   BDEC    .S2     L9,B0             ; |141| <0,19> 
||         OR      .L1     A4,A3,A3          ; |96| <0,19>  ^ 
||         ADD     .L2X    A5,B6,B6          ; |95| <1,9> 
||         EXTU    .S1     A19,3,5,A4        ; |95| <1,9> 

           AND     .L2X    A9,B5,B16         ; |96| <0,20>  ^ 
|| [!A0]   EXTU    .S1     A3,16,16,A6       ; |96| <0,20>  ^ 
||         EXTU    .S2     B6,20,24,B5       ; |95| <1,10> 
||         LDBU    .D1T1   *A8++(2),A19      ; |95| <2,0> 

           OR      .L2     B4,B16,B4         ; |96| <0,21>  ^ 
||         MV      .D1     A6,A3             ; |96| <0,21> 
||         EXTU    .S2     B5,3,5,B5         ; |95| <1,11> 
||         SHL     .S1     A18,4,A4          ; |95| <1,11> 
||         AND     .L1     A16,A6,A19        ; |95| <1,11>  ^ 
||         MPYU    .M1     A4,A20,A3         ; |95| <1,11> 
||         LDBU    .D2T2   *B9++(2),B16      ; |95| <2,1> 

   [!A0]   EXTU    .S2     B4,16,16,B8       ; |96| <0,22>  ^ 
|| [!A0]   STH     .D2T1   A3,*B7++          ; |97| <0,22> 
||         EXTU    .S1     A18,20,27,A4      ; |95| <1,12> 
||         AND     .L1     A17,A4,A18        ; |95| <1,12> 

           MV      .D2     B8,B4             ; |96| <0,23> 
||         AND     .L2X    A16,B8,B5         ; |95| <1,13>  ^ 
||         SHL     .S2     B5,5,B16          ; |95| <1,13> 
||         OR      .L1     A3,A19,A3         ; |95| <1,13>  ^ 

	.dwpsn	"utility.c",145,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,24> 
|| [!A0]   STH     .D1T2   B4,*A7++          ; |97| <0,24> 
||         SHL     .S2     B6,4,B5           ; |95| <1,14> 
||         OR      .L2     B16,B5,B4         ; |95| <1,14>  ^ 
||         EXTU    .S1     A3,16,16,A3       ; |95| <1,14>  ^ 

DW$L$__process_line$14$E:
;** --------------------------------------------------------------------------*
L10:    ; PIPED LOOP EPILOG

           MV      .L1     A16,A24
||         AND     .L2X    A17,B5,B4         ; |95| (E) <1,15> 
||         EXTU    .S1     A3,21,21,A3       ; |95| (E) <1,15>  ^ 
||         MPYSU   .M1     10,A19,A3         ; |95| (E) <2,5> 
||         EXTU    .S2     B4,16,16,B5       ; |95| (E) <1,15>  ^ 

           MV      .L2X    A9,B9
||         OR      .L1     A18,A3,A6         ; |95| (E) <1,16>  ^ 
||         MVK     .S1     32,A20            ; |95| (E) <2,6> 
||         MPYSU   .M2     10,B16,B4         ; |95| (E) <2,6> 
||         EXTU    .S2     B5,21,21,B5       ; |95| (E) <1,16>  ^ 

           EXTU    .S2     B6,20,27,B8       ; |95| (E) <1,17> 
||         OR      .L2     B4,B5,B5          ; |95| (E) <1,17>  ^ 
||         ADD     .L1     A5,A3,A3          ; |95| (E) <2,7> 
||         EXTU    .S1     A6,16,16,A6       ; |95| (E) <1,17>  ^ 

           AND     .L1     A9,A6,A6          ; |96| (E) <1,18>  ^ 
||         EXTU    .S1     A3,20,24,A18      ; |95| (E) <2,8> 
||         EXTU    .S2     B5,16,16,B6       ; |95| (E) <1,18>  ^ 

           OR      .L1     A4,A6,A5          ; |96| (E) <1,19>  ^ 
||         ADD     .L2X    A5,B4,B5          ; |95| (E) <2,9> 
||         EXTU    .S1     A18,3,5,A4        ; |95| (E) <2,9> 

           AND     .L2X    A9,B6,B4          ; |96| (E) <1,20>  ^ 
||         EXTU    .S2     B5,20,24,B6       ; |95| (E) <2,10> 
||         EXTU    .S1     A5,16,16,A6       ; |96| (E) <1,20>  ^ 

           OR      .L2     B8,B4,B4          ; |96| (E) <1,21>  ^ 
||         MV      .L1     A6,A5             ; |96| (E) <1,21> 
||         EXTU    .S2     B6,3,5,B6         ; |95| (E) <2,11> 
||         AND     .D1     A16,A6,A6         ; |95| (E) <2,11>  ^ 
||         MPYU    .M1     A4,A20,A4         ; |95| (E) <2,11> 
||         SHL     .S1     A3,4,A4           ; |95| (E) <2,11> 

           EXTU    .S2     B4,16,16,B4       ; |96| (E) <1,22>  ^ 
||         EXTU    .S1     A3,20,27,A3       ; |95| (E) <2,12> 
||         AND     .L1     A17,A4,A5         ; |95| (E) <2,12> 
||         STH     .D2T1   A5,*B7++          ; |97| (E) <1,22> 

;** --------------------------------------------------------------------------*

           MV      .L2     B4,B6             ; |96| (E) <1,23> 
||         SHL     .S2     B6,5,B4           ; |95| (E) <2,13> 
||         AND     .D2X    A16,B4,B8         ; |95| (E) <2,13>  ^ 

           OR      .L2     B4,B8,B4          ; |95| (E) <2,14>  ^ 
||         SHL     .S2     B5,4,B31          ; |95| (E) <2,14> 

           EXTU    .S2     B4,16,16,B6       ; |95| (E) <2,15>  ^ 
||         STH     .D1T2   B6,*A7++          ; |97| (E) <1,24> 
||         OR      .L1     A4,A6,A4          ; |95| (E) <2,13>  ^ 

           AND     .L2X    A17,B31,B4        ; |95| (E) <2,15> 
||         EXTU    .S2     B6,21,21,B6       ; |95| (E) <2,16>  ^ 
||         EXTU    .S1     A4,16,16,A4       ; |95| (E) <2,14>  ^ 

           OR      .L2     B4,B6,B4          ; |95| (E) <2,17>  ^ 
||         EXTU    .S1     A4,21,21,A4       ; |95| (E) <2,15>  ^ 

           EXTU    .S2     B4,16,16,B4       ; |95| (E) <2,18>  ^ 
||         OR      .L1     A5,A4,A4          ; |95| (E) <2,16>  ^ 

           AND     .L2X    A9,B4,B16         ; |96| (E) <2,20>  ^ 
||         EXTU    .S1     A4,16,16,A4       ; |95| (E) <2,17>  ^ 
||         EXTU    .S2     B5,20,27,B29      ; |95| (E) <2,17> 

           OR      .L2     B29,B16,B4        ; |96| (E) <2,21>  ^ 
||         AND     .L1     A9,A4,A4          ; |96| (E) <2,18>  ^ 

           EXTU    .S2     B4,16,16,B8       ; |96| (E) <2,22>  ^ 
||         OR      .L1     A3,A4,A3          ; |96| (E) <2,19>  ^ 

           MV      .L2     B8,B4             ; |96| (E) <2,23> 
||         EXTU    .S1     A3,16,16,A3       ; |96| 

           STH     .D2T1   A3,*B7++          ; |97| (E) <2,22> 
||         STH     .D1T2   B4,*A7++          ; |97| (E) <2,24> 
||         MV      .L2X    A17,B17
||         MVC     .S2     B17,CSR           ; interrupts on

;** --------------------------------------------------------------------------*
L11:    
;**	-----------------------g10:
;** 150	-----------------------    v$6 = cb_top;
;** 150	-----------------------    if ( !(v$3 = cb_color) ) goto g25;

           MVKL    .S2     _cb_color,B4      ; |150| 
||         MVKL    .S1     _cb_top,A3        ; |150| 

           MVKH    .S2     _cb_color,B4      ; |150| 
||         MVKH    .S1     _cb_top,A3        ; |150| 

           LDW     .D2T2   *B4,B2            ; |150| 
||         MVKL    .S2     _cb_v_thick,B4    ; |152| 
||         LDW     .D1T1   *A3,A20           ; |150| 

           NOP             3
           MVKH    .S2     _cb_v_thick,B4    ; |152| 

   [!B2]   BNOP    .S1     L20,4             ; |150| 
||         CMPLT   .L1     A30,A20,A4        ; |152| 
|| [ B2]   LDW     .D2T1   *B4,A19           ; |152| 

           ADD     .L1     A19,A20,A3        ; |152| 
           ; BRANCHCC OCCURS {L20}           ; |150| 
;** --------------------------------------------------------------------------*
;** 152	-----------------------    v$7 = cb_v_thick;
;** 152	-----------------------    if ( !((line_no < v$6)|(line_no >= v$6+v$7)) ) goto g16;

           CMPLT   .L1     A30,A3,A3         ; |152| 
||         MVKL    .S2     _cb_bottom,B4

           XOR     .L1     1,A3,A5           ; |152| 
||         MVKL    .S1     _cb_bottom,A3     ; |152| 
||         MVKH    .S2     _cb_bottom,B4

           OR      .L1     A5,A4,A0          ; |152| 
||         MVKH    .S1     _cb_bottom,A3     ; |152| 

   [!A0]   BNOP    .S1     L13,4             ; |152| 
|| [ A0]   LDW     .D1T1   *A3,A18           ; |152| 

           CMPLT   .L1     A30,A18,A1        ; |152| 
|| [!A0]   LDW     .D2T1   *B4,A18

           ; BRANCHCC OCCURS {L13}           ; |152| 
;** --------------------------------------------------------------------------*
;** 152	-----------------------    v$8 = cb_bottom;
;** 152	-----------------------    if ( line_no < v$8 ) goto g15;

           ADD     .L1     A19,A18,A3        ; |152| 
|| [ A1]   B       .S1     L12               ; |152| 
||         MVKL    .S2     _cb_h_thick,B4

           CMPLT   .L1     A30,A3,A0         ; |152| 
|| [ A1]   B       .S2     L17
|| [!A1]   MVKL    .S1     _cb_h_thick,A3

   [ A1]   ZERO    .L1     A0                ; nullify predicate
|| [!A1]   MVKH    .S1     _cb_h_thick,A3
||         MVKH    .S2     _cb_h_thick,B4

   [ A0]   BNOP    .S1     L14,2             ; |152| 
|| [ A1]   LDW     .D2T2   *B4,B6

           ; BRANCHCC OCCURS {L12}           ; |152| 
;** --------------------------------------------------------------------------*
;** 152	-----------------------    if ( line_no < v$8+v$7 ) goto g17;
   [!A0]   B       .S1     L18

   [!A0]   LDW     .D1T2   *A3,B6
|| [ A0]   MVKL    .S1     _cb_right,A3      ; |155| 
|| [ A0]   MVKL    .S2     _cb_h_thick,B4    ; |155| 

   [ A0]   MVKH    .S1     _cb_right,A3      ; |155| 
|| [ A0]   MVKH    .S2     _cb_h_thick,B4    ; |155| 

           ; BRANCHCC OCCURS {L14}           ; |152| 
;** --------------------------------------------------------------------------*
;**  	-----------------------    v$9 = cb_h_thick;
;**  	-----------------------    goto g21;

           ADD     .S1     A19,A20,A3        ; |159| 
||         CMPLT   .L1     A30,A18,A5        ; |159| 

           CMPLT   .L1     A30,A3,A3         ; |159| 
           XOR     .L1     1,A3,A4           ; |159| 
           ; BRANCH OCCURS {L18} 
;** --------------------------------------------------------------------------*
L12:    
;**	-----------------------g15:
;**  	-----------------------    v$9 = cb_h_thick;
;**  	-----------------------    goto g21;
           ADD     .L1     A19,A20,A3        ; |159| 
           ; BRANCH OCCURS {L17} 
;** --------------------------------------------------------------------------*
L13:    
;**	-----------------------g16:
;**  	-----------------------    v$8 = cb_bottom;

           MVKL    .S2     _cb_h_thick,B4    ; |155| 
||         MVKL    .S1     _cb_right,A3      ; |155| 

           MVKH    .S2     _cb_h_thick,B4    ; |155| 
||         MVKH    .S1     _cb_right,A3      ; |155| 

;** --------------------------------------------------------------------------*
L14:    
;**	-----------------------g17:
;** 155	-----------------------    v$9 = cb_h_thick;
;** 155	-----------------------    C$29 = cb_right+v$9;
;** 155	-----------------------    C$30 = cb_left;
;** 155	-----------------------    if ( C$30 >= C$29 ) goto g21;
;**  	-----------------------    V$7 = *(&u);
;**  	-----------------------    U$157 = &source[2*C$30];
;**  	-----------------------    U$180 = &line[C$30];
;**  	-----------------------    U$364 = (unsigned short)v$3;
;**  	-----------------------    L$4 = C$29-C$30;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MVKL    .S1     _cb_left,A31      ; |155| 
||         LDW     .D1T1   *A3,A5            ; |155| 
||         LDW     .D2T2   *B4,B6            ; |155| 
||         MV      .L1X    B21,A4
||         EXTU    .S2     B2,16,16,B7

           MVKH    .S1     _cb_left,A31      ; |155| 
           LDW     .D1T1   *A31,A3           ; |155| 
           NOP             2
           ADD     .L2X    B6,A5,B4          ; |155| 
           NOP             1

           CMPLT   .L1X    A3,B4,A0          ; |155| 
||         ADDAH   .D1     A4,A3,A16
||         SUB     .L2X    B4,A3,B0

   [!A0]   B       .S1     L16               ; |155| 
||         ADDAH   .D1     A29,A3,A17

   [ A0]   LDBU    .D1T1   *A16++(2),A3      ; |95| 
           NOP             4
           ; BRANCHCC OCCURS {L16}           ; |155| 
;** --------------------------------------------------------------------------*
	.dwpsn	"utility.c",155,0
           EXTU    .S1     A3,3,5,A4         ; |95| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L15:    
DW$L$__process_line$26$B:
	.dwpsn	"utility.c",156,0
;**	-----------------------g19:
;** 95	-----------------------    C$28 = *U$157++{2};  // [7]
;** 95	-----------------------    V$7 = (unsigned short)(_extu((unsigned)(unsigned short)(V$7&K$40|_extu((unsigned)C$28, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$28<<8&K$56);  // [7]
;** 96	-----------------------    y$136 = (int)(V$7 = (unsigned short)(V$7&K$59|C$28>>3));  // [7]
;** 97	-----------------------    *U$180++ = disp_alpha_blend(U$364, (unsigned short)y$136);  // [7]
;** 155	-----------------------    if ( --L$4 ) goto g19;
;** 95	-----------------------    K$48 = 32;  // [7]

           AND     .L1     A24,A8,A31        ; |95| 
||         SHL     .S1     A4,5,A5           ; |95| 
||         SHL     .S2X    A3,8,B4           ; |95| 

           OR      .L1     A5,A31,A4         ; |95| 
||         AND     .L2     B17,B4,B4         ; |95| 
||         SHRU    .S1     A3,3,A3           ; |96| 

           EXTU    .S1     A4,16,16,A4       ; |95| 
           EXTU    .S1     A4,21,21,A4       ; |95| 
           NOP             1

           MV      .L1X    B7,A4             ; |97| 
||         OR      .L2X    B4,A4,B4          ; |95| 

           EXTU    .S2     B4,16,16,B4       ; |95| 

           CALL    .S1     _disp_alpha_blend ; |97| 
||         AND     .L2     B9,B4,B4          ; |96| 

           ADDKPC  .S2     RL3,B3,0          ; |97| 
           OR      .L1X    A3,B4,A3          ; |96| 
           EXTU    .S1     A3,16,16,A8       ; |96| 
           NOP             1
           MV      .L2X    A8,B4             ; |97| 
RL3:       ; CALL OCCURS {_disp_alpha_blend}  ; |97| 
DW$L$__process_line$26$E:
;** --------------------------------------------------------------------------*
DW$L$__process_line$27$B:

           SUB     .L2     B0,1,B0           ; |155| 
||         STH     .D1T1   A4,*A17++         ; |97| 

   [ B0]   BNOP    .S1     L15,4             ; |155| 
|| [ B0]   LDBU    .D1T1   *A16++(2),A3      ; |95| 

           EXTU    .S1     A3,3,5,A4         ; |95| 
           ; BRANCHCC OCCURS {L15}           ; |155| 
DW$L$__process_line$27$E:
;** --------------------------------------------------------------------------*
L16:    
           ADD     .L1     A19,A20,A3        ; |159| 
;** --------------------------------------------------------------------------*
L17:    
           CMPLT   .L1     A30,A3,A3         ; |159| 

           XOR     .S1     1,A3,A4           ; |159| 
||         CMPLT   .L1     A30,A18,A5        ; |159| 

;** --------------------------------------------------------------------------*
L18:    
;**	-----------------------g21:
;** 159	-----------------------    if ( (((line_no >= v$6+v$7)&(line_no < v$8)) == 0)|(v$9 <= 0) ) goto g25;

           AND     .L1     A5,A4,A4          ; |159| 
||         CMPGT   .L2     B6,0,B4           ; |159| 
||         MVKL    .S2     _cb_right,B5
||         MV      .S1X    B2,A31

           CMPEQ   .L1     A4,0,A5           ; |159| 
||         XOR     .L2     1,B4,B4           ; |159| 
||         MVKL    .S1     _cb_left,A4
||         MVKH    .S2     _cb_right,B5
||         MV      .D1X    B6,A0

           MVKH    .S1     _cb_left,A4

           OR      .L2X    B4,A5,B0          ; |159| 
||         EXTU    .S1     A31,16,16,A18

   [ B0]   BNOP    .S1     L20,5             ; |159| 
           ; BRANCHCC OCCURS {L20}           ; |159| 
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

           LDBU    .D2T2   *B7++(2),B5       ; |95| 
           NOP             4
	.dwpsn	"utility.c",161,0
           EXTU    .S2     B5,3,5,B4         ; |95| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L19:    
DW$L$__process_line$32$B:
	.dwpsn	"utility.c",162,0
;**	-----------------------g23:
;** 95	-----------------------    C$25 = *U$388++{2};  // [7]
;** 95	-----------------------    V$9 = (unsigned short)(_extu((unsigned)(unsigned short)(V$9&K$40|_extu((unsigned)C$25, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$25<<8&K$56);  // [7]
;** 96	-----------------------    y$162 = (int)(V$9 = (unsigned short)(V$9&K$59|C$25>>3));  // [7]
;** 97	-----------------------    *U$405++ = disp_alpha_blend(U$364, (unsigned short)y$162);  // [7]
;** 95	-----------------------    C$24 = *U$410++{2};  // [7]
;** 95	-----------------------    V$8 = (unsigned short)(_extu((unsigned)(unsigned short)(V$8&K$40|_extu((unsigned)C$24, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$24<<8&K$56);  // [7]
;** 96	-----------------------    y$171 = (int)(V$8 = (unsigned short)(V$8&K$59|C$24>>3));  // [7]
;** 97	-----------------------    *U$427++ = disp_alpha_blend(U$364, (unsigned short)y$171);  // [7]
;** 161	-----------------------    if ( --L$5 ) goto g23;
;** 95	-----------------------    K$48 = 32;  // [7]

           SHL     .S2     B4,5,B8           ; |95| 
||         AND     .L2X    A24,B8,B4         ; |95| 
||         SHL     .S1X    B5,8,A3           ; |95| 

           OR      .L2     B8,B4,B4          ; |95| 
||         AND     .L1X    B17,A3,A3         ; |95| 

           EXTU    .S2     B4,16,16,B4       ; |95| 
           EXTU    .S2     B4,21,21,B4       ; |95| 
           SHRU    .S2     B5,3,B5           ; |96| 
           OR      .L1X    A3,B4,A3          ; |95| 

           CALL    .S2     _disp_alpha_blend ; |97| 
||         EXTU    .S1     A3,16,16,A3       ; |95| 

           ADDKPC  .S2     RL4,B3,0          ; |97| 
           AND     .L2X    B9,A3,B4          ; |96| 
           OR      .L2     B5,B4,B4          ; |96| 
           EXTU    .S2     B4,16,16,B8       ; |96| 

           MV      .L2     B8,B4             ; |97| 
||         MV      .L1     A18,A4            ; |97| 

RL4:       ; CALL OCCURS {_disp_alpha_blend}  ; |97| 
DW$L$__process_line$32$E:
;** --------------------------------------------------------------------------*
DW$L$__process_line$33$B:
           LDBU    .D1T1   *A17++(2),A6      ; |95| 
           NOP             3
           AND     .L1     A24,A16,A31       ; |95| 
           EXTU    .S1     A6,3,5,A3         ; |95| 
           SHL     .S1     A3,5,A5           ; |95| 
           OR      .L1     A5,A31,A3         ; |95| 
           EXTU    .S1     A3,16,16,A3       ; |95| 

           SHL     .S2X    A6,8,B4           ; |95| 
||         EXTU    .S1     A3,21,21,A3       ; |95| 

           AND     .L2     B17,B4,B4         ; |95| 
           OR      .L2X    B4,A3,B4          ; |95| 
           EXTU    .S2     B4,16,16,B4       ; |95| 

           AND     .L2     B9,B4,B4          ; |96| 
||         CALL    .S1     _disp_alpha_blend ; |97| 

           SHRU    .S1     A6,3,A28          ; |96| 
           OR      .L1X    A28,B4,A3         ; |96| 
           EXTU    .S1     A3,16,16,A16      ; |96| 
           MV      .L2X    A4,B29            ; |97| 

           MV      .L1     A18,A4            ; |97| 
||         STH     .D2T2   B29,*B6++         ; |97| 
||         MV      .L2X    A16,B4            ; |97| 
||         ADDKPC  .S2     RL5,B3,0          ; |97| 

RL5:       ; CALL OCCURS {_disp_alpha_blend}  ; |97| 
DW$L$__process_line$33$E:
;** --------------------------------------------------------------------------*
DW$L$__process_line$34$B:

           SUB     .L1     A0,1,A0           ; |161| 
||         STH     .D1T1   A4,*A8++          ; |97| 

   [ A0]   BNOP    .S1     L19,4             ; |161| 
|| [ A0]   LDBU    .D2T2   *B7++(2),B5       ; |95| 

	.dwpsn	"utility.c",165,0
           EXTU    .S2     B5,3,5,B4         ; |95| 
           ; BRANCHCC OCCURS {L19}           ; |161| 
DW$L$__process_line$34$E:
;** --------------------------------------------------------------------------*
L20:    
;**	-----------------------g25:
;** 170	-----------------------    if ( !show_stamp ) goto g47;

   [!B1]   B       .S2     L22               ; |170| 
||         MVKL    .S1     _stamp_top,A3     ; |173| 

           MVKH    .S1     _stamp_top,A3     ; |173| 
   [ B1]   LDW     .D1T1   *A3,A3            ; |173| 
           NOP             3
           ; BRANCHCC OCCURS {L22}           ; |170| 
;** --------------------------------------------------------------------------*
;** 173	-----------------------    C$23 = stamp_top;
;** 173	-----------------------    if ( line_no < C$23 ) goto g47;
           MVKL    .S2     _stamp_height,B4  ; |173| 

           CMPLT   .L1     A30,A3,A0         ; |173| 
||         MVKH    .S2     _stamp_height,B4  ; |173| 

   [!A0]   LDW     .D2T2   *B4,B4            ; |173| 
|| [!A0]   MVKL    .S2     _stamp_mask,B6    ; |182| 
|| [!A0]   MVKL    .S1     _stamp_bmp,A5     ; |181| 

   [ A0]   BNOP    .S1     L22,1             ; |173| 
|| [!A0]   MVKL    .S2     _stamp_width,B5   ; |181| 

   [!A0]   MVKH    .S2     _stamp_mask,B6    ; |182| 
   [!A0]   MVKH    .S2     _stamp_width,B5   ; |181| 
           ADD     .L1X    A3,B4,A4          ; |173| 
           CMPLT   .L1     A30,A4,A0         ; |173| 
           ; BRANCHCC OCCURS {L22}           ; |173| 
;** --------------------------------------------------------------------------*
;** 173	-----------------------    if ( line_no >= stamp_height+C$23 ) goto g47;

   [!A0]   BNOP    .S2     L22,4             ; |173| 
||         SUB     .L1     A30,A3,A3         ; |181| 
||         MVKH    .S1     _stamp_bmp,A5     ; |181| 
|| [ A0]   LDW     .D2T2   *B5,B4            ; |181| 

           MPYLH   .M2X    B4,A3,B5          ; |181| 
|| [ A0]   MPYLH   .M1X    A3,B4,A4          ; |181| 

           ; BRANCHCC OCCURS {L22}           ; |173| 
;** --------------------------------------------------------------------------*
;** 181	-----------------------    C$21 = stamp_width;
;** 181	-----------------------    C$22 = (line_no-C$23)*C$21;
;** 181	-----------------------    bmp = C$22*2+stamp_bmp;
;** 182	-----------------------    mask = ((C$22>>2>>29)+C$22>>3)+stamp_mask;
;** 184	-----------------------    if ( C$21 <= 0 ) goto g47;

           MPYU    .M1X    B4,A3,A3          ; |181| 
||         CMPGT   .L2     B4,0,B1           ; |184| 
||         LDW     .D1T1   *A5,A31           ; |181| 
||         LDW     .D2T2   *B6,B7            ; |182| 
||         MVKL    .S2     _stamp_left,B9
||         ZERO    .L1     A9                ; |184| 

           ADD     .L2     7,B4,B8
||         MVKH    .S2     _stamp_left,B9

           ADD     .L1X    B5,A4,A4          ; |181| 
||         SHR     .S2     B8,3,B0
|| [ B1]   LDW     .D2T1   *B9,A16

           SHL     .S1     A4,16,A4          ; |181| 
||         MVK     .S2     0xffffff80,B5

           ADD     .L1     A3,A4,A3          ; |181| 
||         MVK     .S2     0x40,B6

   [!B1]   B       .S2     L22               ; |184| 
||         SHR     .S1     A3,2,A5           ; |182| 
||         ADDAH   .D1     A31,A3,A17        ; |181| 

           SHRU    .S1     A5,29,A5          ; |182| 
           ADD     .L1     A3,A5,A5          ; |182| 
           SHR     .S1     A5,3,A5           ; |182| 
           NOP             1
           ADD     .L2X    B7,A5,B8          ; |182| 
           ; BRANCHCC OCCURS {L22}           ; |184| 
;**  	-----------------------    v$14 = stamp_left;
;**  	-----------------------    K$508 = 64;
;**  	-----------------------    K$517 = (-128);
;**  	-----------------------    L$6 = C$21+7>>3;
;** 184	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 268435455, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 184
;*      Loop opening brace source line   : 185
;*      Loop closing brace source line   : 195
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
L21:    
DW$L$__process_line$39$B:
	.dwpsn	"utility.c",185,0
;**	-----------------------g30:
;** 186	-----------------------    m = mask[(i>>3)];
;**  	-----------------------    if ( !(m&1) ) goto g32;
;** 192	-----------------------    line[i+v$14] = bmp[i];
;**	-----------------------g32:
;**  	-----------------------    if ( !(m&2) ) goto g34;
;** 192	-----------------------    line[i+v$14+1] = bmp[i+1];
;**	-----------------------g34:
;**  	-----------------------    if ( !(m&4) ) goto g36;
;** 192	-----------------------    line[i+v$14+2] = bmp[i+2];
;**	-----------------------g36:
;**  	-----------------------    if ( !(m&0x8) ) goto g38;
;** 192	-----------------------    line[i+v$14+3] = bmp[i+3];
;**	-----------------------g38:
;**  	-----------------------    if ( !(m&0x10) ) goto g40;
;** 192	-----------------------    line[i+v$14+4] = bmp[i+4];
;**	-----------------------g40:
;**  	-----------------------    if ( !(m&K$48) ) goto g42;
;** 192	-----------------------    line[i+v$14+5] = bmp[i+5];
;**	-----------------------g42:
;**  	-----------------------    if ( !(m&K$508) ) goto g44;
;** 192	-----------------------    line[i+v$14+6] = bmp[i+6];
;**	-----------------------g44:
;**  	-----------------------    if ( !(m&K$517) ) goto g46;
;** 192	-----------------------    line[i+v$14+7] = bmp[i+7];
;**	-----------------------g46:
;** 184	-----------------------    i += 8;
;** 184	-----------------------    if ( --L$6 ) goto g30;
;**	-----------------------g47:
;**  	-----------------------    return;

           SHR     .S2X    A9,3,B4           ; |186| 
||         ADDAH   .D1     A17,A9,A4         ; |192| 
||         ADD     .L1     A9,A9,A31         ; |192| 
||         SUB     .L2     B0,1,B0           ; |184| 

           LDBU    .D2T2   *+B4[B8],B7       ; |186| 
||         ADDAH   .D1     A17,A9,A5         ; |192| 
||         ADD     .L1     A9,A9,A26         ; |192| 

           ADDAH   .D1     A17,A9,A3         ; |192| 
||         ADD     .L1     A9,A9,A28         ; |192| 

           ADDAH   .D1     A17,A9,A6         ; |192| 
||         ADD     .L1     A9,A9,A30         ; |192| 

           ADDAH   .D1     A31,A16,A18       ; |192| 
||         ADD     .L1     A9,A9,A31         ; |192| 

           ADDAH   .D1     A17,A9,A19        ; |192| 

           AND     .L2     B18,B7,B4
||         AND     .S2     B6,B7,B2
||         AND     .L1X    1,B7,A2
||         ADDAH   .D1     A17,A9,A7         ; |192| 

   [ B2]   LDHU    .D1T2   *+A4(12),B9       ; |192| 
||         AND     .L1X    8,B7,A1

           MV      .L1X    B4,A4             ; |192| 
|| [ A2]   LDHU    .D1T1   *+A17[A9],A23     ; |192| 

           EXTU    .S2     B7,27,31,B4
||         MV      .L1X    B4,A0             ; |192| 
||         ADDAH   .D1     A17,A9,A20        ; |192| 

   [ A0]   LDHU    .D1T2   *+A5(10),B16      ; |192| 
||         ADD     .L1     A9,A9,A5          ; |192| 

           MV      .L1X    B4,A8             ; |192| 
|| [ A1]   LDHU    .D1T1   *+A19(6),A19      ; |192| 

           AND     .L2     4,B7,B4
||         MV      .L1X    B4,A0             ; |192| 
||         ADDAH   .D1     A28,A16,A24       ; |192| 

   [ A0]   LDHU    .D1T1   *+A3(8),A21       ; |192| 

           AND     .L2     2,B7,B4
||         MV      .L1X    B4,A0             ; |192| 
||         ADDAH   .D1     A26,A16,A28       ; |192| 

           MV      .L2     B4,B1             ; |192| 
|| [ A0]   LDHU    .D1T1   *+A20(4),A25      ; |192| 

           AND     .L2     B5,B7,B1
|| [ B1]   LDHU    .D1T1   *+A6(2),A27       ; |192| 

   [ B1]   LDHU    .D1T1   *+A7(14),A20      ; |192| 

           ADDAH   .D1     A31,A16,A26       ; |192| 
||         ADD     .L1     A9,A9,A31         ; |192| 

           ADDAH   .D1     A30,A16,A22       ; |192| 
||         ADD     .L1     A9,A9,A30         ; |192| 
||         ADD     .S1     8,A9,A9           ; |184| 

           ADDAH   .D1     A5,A16,A7         ; |192| 

           ADDAH   .D1     A30,A16,A5        ; |192| 
||         ADD     .L1     A29,A26,A30       ; |192| 
||         ADD     .S1     A29,A22,A26       ; |192| 

   [ A2]   STH     .D1T1   A23,*A30          ; |192| 
||         MV      .L1     A4,A2             ; |192| 
||         ADD     .S1     A29,A24,A30       ; |192| 

   [ A2]   STH     .D1T2   B16,*+A26(10)     ; |192| 
||         MV      .L1     A8,A2             ; |192| 
||         ADD     .S1     A29,A5,A22        ; |192| 

           ADDAH   .D1     A31,A16,A6        ; |192| 
||         ADD     .L1     A29,A18,A31       ; |192| 
||         ADD     .S1     A29,A28,A18       ; |192| 

   [ A2]   STH     .D1T1   A21,*+A30(8)      ; |192| 
||         MV      .L1X    B4,A2             ; |192| 
||         ADD     .S1     A29,A6,A4         ; |192| 
|| [ B0]   B       .S2     L21               ; |184| 

   [ B2]   STH     .D1T2   B9,*+A31(12)      ; |192| 
||         ADD     .L1     A29,A7,A31        ; |192| 

   [ B1]   STH     .D1T1   A20,*+A4(14)      ; |192| 
   [ A2]   STH     .D1T1   A27,*+A22(2)      ; |192| 
   [ A0]   STH     .D1T1   A25,*+A31(4)      ; |192| 
	.dwpsn	"utility.c",195,0
   [ A1]   STH     .D1T1   A19,*+A18(6)      ; |192| 
           ; BRANCHCC OCCURS {L21}           ; |184| 
DW$L$__process_line$39$E:
;** --------------------------------------------------------------------------*
L22:    

           RET     .S2     B30               ; |198| 
||         LDW     .D2T1   *+SP(4),A10       ; |198| 

           LDW     .D2T1   *++SP(8),A11      ; |198| 
	.dwpsn	"utility.c",198,1
           NOP             4
           ; BRANCH OCCURS {B30}             ; |198| 

DW$75	.dwtag  DW_TAG_loop
	.dwattr DW$75, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L21:1:1288598882")
	.dwattr DW$75, DW_AT_begin_file("utility.c")
	.dwattr DW$75, DW_AT_begin_line(0xb8)
	.dwattr DW$75, DW_AT_end_line(0xc3)
DW$76	.dwtag  DW_TAG_loop_range
	.dwattr DW$76, DW_AT_low_pc(DW$L$__process_line$39$B)
	.dwattr DW$76, DW_AT_high_pc(DW$L$__process_line$39$E)
	.dwendtag DW$75


DW$77	.dwtag  DW_TAG_loop
	.dwattr DW$77, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L19:1:1288598882")
	.dwattr DW$77, DW_AT_begin_file("utility.c")
	.dwattr DW$77, DW_AT_begin_line(0xa1)
	.dwattr DW$77, DW_AT_end_line(0xa5)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$__process_line$32$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$__process_line$32$E)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$__process_line$33$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$__process_line$33$E)
DW$80	.dwtag  DW_TAG_loop_range
	.dwattr DW$80, DW_AT_low_pc(DW$L$__process_line$34$B)
	.dwattr DW$80, DW_AT_high_pc(DW$L$__process_line$34$E)
	.dwendtag DW$77


DW$81	.dwtag  DW_TAG_loop
	.dwattr DW$81, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L15:1:1288598882")
	.dwattr DW$81, DW_AT_begin_file("utility.c")
	.dwattr DW$81, DW_AT_begin_line(0x9b)
	.dwattr DW$81, DW_AT_end_line(0x9c)
DW$82	.dwtag  DW_TAG_loop_range
	.dwattr DW$82, DW_AT_low_pc(DW$L$__process_line$26$B)
	.dwattr DW$82, DW_AT_high_pc(DW$L$__process_line$26$E)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$__process_line$27$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$__process_line$27$E)
	.dwendtag DW$81


DW$84	.dwtag  DW_TAG_loop
	.dwattr DW$84, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L9:1:1288598882")
	.dwattr DW$84, DW_AT_begin_file("utility.c")
	.dwattr DW$84, DW_AT_begin_line(0x8d)
	.dwattr DW$84, DW_AT_end_line(0x91)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$__process_line$14$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$__process_line$14$E)
	.dwendtag DW$84


DW$86	.dwtag  DW_TAG_loop
	.dwattr DW$86, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L5:1:1288598882")
	.dwattr DW$86, DW_AT_begin_file("utility.c")
	.dwattr DW$86, DW_AT_begin_line(0x87)
	.dwattr DW$86, DW_AT_end_line(0x88)
DW$87	.dwtag  DW_TAG_loop_range
	.dwattr DW$87, DW_AT_low_pc(DW$L$__process_line$8$B)
	.dwattr DW$87, DW_AT_high_pc(DW$L$__process_line$8$E)
	.dwendtag DW$86


DW$88	.dwtag  DW_TAG_loop
	.dwattr DW$88, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L2:1:1288598882")
	.dwattr DW$88, DW_AT_begin_file("utility.c")
	.dwattr DW$88, DW_AT_begin_line(0x74)
	.dwattr DW$88, DW_AT_end_line(0x7f)
DW$89	.dwtag  DW_TAG_loop_range
	.dwattr DW$89, DW_AT_low_pc(DW$L$__process_line$3$B)
	.dwattr DW$89, DW_AT_high_pc(DW$L$__process_line$3$E)
	.dwendtag DW$88

	.dwattr DW$70, DW_AT_end_file("utility.c")
	.dwattr DW$70, DW_AT_end_line(0xc6)
	.dwattr DW$70, DW_AT_end_column(0x01)
	.dwendtag DW$70

	.sect	".text"

DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("_set_logo"), DW_AT_symbol_name("__set_logo")
	.dwattr DW$90, DW_AT_low_pc(__set_logo)
	.dwattr DW$90, DW_AT_high_pc(0x00)
	.dwattr DW$90, DW_AT_begin_file("utility.c")
	.dwattr DW$90, DW_AT_begin_line(0xc9)
	.dwattr DW$90, DW_AT_begin_column(0x0d)
	.dwattr DW$90, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$90, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",202,1

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
DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_name("line"), DW_AT_symbol_name("_line")
	.dwattr DW$91, DW_AT_type(*DW$T$41)
	.dwattr DW$91, DW_AT_location[DW_OP_reg4]
DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_name("line_no"), DW_AT_symbol_name("_line_no")
	.dwattr DW$92, DW_AT_type(*DW$T$10)
	.dwattr DW$92, DW_AT_location[DW_OP_reg20]
;** 207	-----------------------    if ( (line_no < 21)|(line_no > 52) ) goto g20;

           MVK     .S2     52,B5             ; |207| 
||         MVK     .S1     21,A5             ; |207| 

           CMPGT   .L2     B4,B5,B6          ; |207| 
||         CMPLT   .L1X    B4,A5,A5          ; |207| 
||         MVKL    .S2     _left_logo-84,B5  ; |212| 
||         MVKL    .S1     _right_logo-84,A3 ; |213| 

           SHL     .S2     B4,2,B4           ; |212| 
||         MVKH    .S1     _right_logo-84,A3 ; |213| 

           OR      .L1X    B6,A5,A0          ; |207| 
||         MVKH    .S2     _left_logo-84,B5  ; |212| 
||         MVKL    .S1     0xd6ba,A7

   [ A0]   BNOP    .S2     L26,2             ; |207| 
||         ADD     .L2     B5,B4,B5          ; |212| 
||         ADD     .L1X    A3,B4,A3          ; |213| 
||         ZERO    .D2     B4                ; |215| 
||         MVKH    .S1     0xd6ba,A7
|| [!A0]   MVK     .D1     1,A6              ; |217| 

   [!A0]   LDW     .D2T1   *B5,A9            ; |212| 
   [!A0]   LDW     .D1T1   *A3,A8            ; |213| 
           NOP             1
           ; BRANCHCC OCCURS {L26}           ; |207| 
;** --------------------------------------------------------------------------*
;** 212	-----------------------    C$1 = line_no*4;
;** 212	-----------------------    l_logo = *(&left_logo+C$1-84);
;** 213	-----------------------    r_logo = *(&right_logo+C$1-84);
;** 215	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(4)
;**  	-----------------------    K$31 = 54970;
;** 215	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(8, 8, 8)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g3:
;** 217	-----------------------    U$26 = 1<<i;
;** 217	-----------------------    if ( !(U$26&l_logo) ) goto g5;
;** 218	-----------------------    line[i+24] = K$31;
;**	-----------------------g5:
;**  	-----------------------    if ( !(U$26&r_logo) ) goto g7;
;** 221	-----------------------    line[i+584] = K$31;
;**	-----------------------g7:
;**  	-----------------------    U$46 = 1<<i+1;
;**  	-----------------------    if ( !(U$46&l_logo) ) goto g9;
;** 218	-----------------------    line[i+25] = K$31;
;**	-----------------------g9:
;**  	-----------------------    if ( !(U$46&r_logo) ) goto g11;
;** 221	-----------------------    line[i+585] = K$31;
;**	-----------------------g11:
;**  	-----------------------    U$61 = 1<<i+2;
;**  	-----------------------    if ( !(U$61&l_logo) ) goto g13;
;** 218	-----------------------    line[i+26] = K$31;
;**	-----------------------g13:
;**  	-----------------------    if ( !(U$61&r_logo) ) goto g15;
;** 221	-----------------------    line[i+586] = K$31;
;**	-----------------------g15:
;**  	-----------------------    U$76 = 1<<i+3;
;**  	-----------------------    if ( !(U$76&l_logo) ) goto g17;
;** 218	-----------------------    line[i+27] = K$31;
;**	-----------------------g17:
;**  	-----------------------    if ( !(U$76&r_logo) ) goto g19;
;** 221	-----------------------    line[i+587] = K$31;
;**	-----------------------g19:
;** 215	-----------------------    if ( (i += 4) < 32 ) goto g3;
;**	-----------------------g20:
;**  	-----------------------    return;

           SHL     .S2X    A6,B4,B17         ; |217| (P) <0,2> 
||         ADD     .L1X    3,B4,A5
||         ADD     .L2     2,B4,B7
||         MVK     .S1     32,A17            ; |215| 

           MVC     .S2     CSR,B18
||         SHL     .S1     A6,A5,A21         ; (P) <0,4> 
||         ADD     .L1X    1,B4,A5
||         MV      .L2X    A4,B5

           SHL     .S2X    A6,B7,B16         ; (P) <0,1>  ^ 
||         AND     .L2     -2,B18,B7
||         MV      .L1X    B4,A3
||         SHL     .S1     A6,A5,A16         ; (P) <0,3> 
||         ADDAH   .D2     B5,B4,B8          ; |218| (P) <0,3> 

           MVC     .S2     B7,CSR            ; interrupts off
||         ADDAH   .D1     A4,A3,A19         ; |221| (P) <0,4>  ^ 
||         AND     .L1X    A9,B17,A0         ; |217| (P) <0,4> 
||         ADDAH   .D2     B5,B4,B9          ; |218| (P) <0,2> 
||         AND     .L2X    A8,B16,B1         ; (P) <0,3>  ^ 
||         MVK     .S1     587,A18           ; |221| 

           AND     .L2X    A8,B17,B0         ; (P) <0,4> 
||         ADDAH   .D1     A4,A3,A22         ; |221| (P) <0,1> 
||         MVK     .S2     585,B6            ; |221| 

           ADDAH   .D1     A4,A3,A20         ; |218| (P) <0,0> 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 215
;*      Loop opening brace source line   : 216
;*      Loop closing brace source line   : 222
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
L23:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L24:    ; PIPED LOOP KERNEL
DW$L$__set_logo$4$B:
	.dwpsn	"utility.c",216,0

           AND     .L1     A9,A21,A0         ; <0,5> 
||         ADD     .S1     4,A3,A3           ; |215| <0,5>  ^ 
|| [ B0]   ADDAH   .D1     A4,A3,A5          ; |221| <0,5> 
|| [ A0]   STH     .D2T1   A7,*+B8(48)       ; |218| <0,5> 

           ADDAH   .D2     B5,B4,B8          ; |221| <0,6> 
||         AND     .S1     A8,A21,A1         ; <0,6> 
|| [ A0]   STH     .D1T1   A7,*+A20(54)      ; |218| <0,6> 
||         CMPLT   .L1     A3,A17,A0         ; |215| <0,6> 

           ADDAH   .D2     B5,B4,B7          ; |218| <0,7> 
||         AND     .L2X    A9,B16,B2         ; <0,7> 
||         AND     .L1     A8,A16,A0         ; <0,7> 
|| [ A1]   STH     .D1T1   A7,*+A22[A18]     ; |221| <0,7> 
|| [ A0]   B       .S2     L24               ; |215| <0,7> 

   [ A0]   STH     .D2T1   A7,*+B8[B6]       ; |221| <0,8> 
||         AND     .L1     A9,A16,A0         ; <0,8> 
||         ADDAH   .D1     A4,A3,A20         ; |218| <1,0> 
||         ADD     .L2X    2,A3,B8           ; <1,0>  ^ 

           ADD     .L2     4,B4,B4           ; |215| <0,9> Define a twin register
|| [ B0]   ADDK    .S1     1168,A5           ; |221| <0,9> 
|| [ A0]   STH     .D2T1   A7,*+B9(50)       ; |218| <0,9> 
||         ADDAH   .D1     A4,A3,A22         ; |221| <1,1> 
||         SHL     .S2X    A6,B8,B16         ; <1,1>  ^ 

   [ B1]   ADDK    .S1     1172,A19          ; |221| <0,10> 
|| [ B0]   STH     .D1T1   A7,*A5            ; |221| <0,10> 
||         ADDAH   .D2     B5,B4,B9          ; |218| <1,2> 
||         ADD     .L1     1,A3,A16          ; <1,2> 
||         SHL     .S2X    A6,B4,B17         ; |217| <1,2> 

   [ B1]   STH     .D1T1   A7,*A19           ; |221| <0,11> 
||         ADD     .L1     3,A3,A21          ; <1,3> 
||         ADDAH   .D2     B5,B4,B8          ; |218| <1,3> 
||         SHL     .S1     A6,A16,A16        ; <1,3> 
||         AND     .L2X    A8,B16,B1         ; <1,3>  ^ 

	.dwpsn	"utility.c",222,0

   [ B2]   STH     .D2T1   A7,*+B7(52)       ; |218| <0,12> 
||         AND     .L2X    A8,B17,B0         ; <1,4> 
||         SHL     .S1     A6,A21,A21        ; <1,4> 
||         AND     .L1X    A9,B17,A0         ; |217| <1,4> 
|| [ B1]   ADDAH   .D1     A4,A3,A19         ; |221| <1,4>  ^ 

DW$L$__set_logo$4$E:
;** --------------------------------------------------------------------------*
L25:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
           MVC     .S2     B18,CSR           ; interrupts on
;** --------------------------------------------------------------------------*
L26:    
	.dwpsn	"utility.c",224,1
           RETNOP  .S2     B3,5              ; |224| 
           ; BRANCH OCCURS {B3}              ; |224| 

DW$93	.dwtag  DW_TAG_loop
	.dwattr DW$93, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L24:1:1288598882")
	.dwattr DW$93, DW_AT_begin_file("utility.c")
	.dwattr DW$93, DW_AT_begin_line(0xd7)
	.dwattr DW$93, DW_AT_end_line(0xde)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$__set_logo$4$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$__set_logo$4$E)
	.dwendtag DW$93

	.dwattr DW$90, DW_AT_end_file("utility.c")
	.dwattr DW$90, DW_AT_end_line(0xe0)
	.dwattr DW$90, DW_AT_end_column(0x01)
	.dwendtag DW$90

	.sect	".text"
	.global	_disp_rgb565

DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_rgb565"), DW_AT_symbol_name("_disp_rgb565")
	.dwattr DW$95, DW_AT_low_pc(_disp_rgb565)
	.dwattr DW$95, DW_AT_high_pc(0x00)
	.dwattr DW$95, DW_AT_begin_file("utility.c")
	.dwattr DW$95, DW_AT_begin_line(0x109)
	.dwattr DW$95, DW_AT_begin_column(0x05)
	.dwattr DW$95, DW_AT_frame_base[DW_OP_breg31 88]
	.dwattr DW$95, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",266,1

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
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_name("left_y"), DW_AT_symbol_name("_left_y")
	.dwattr DW$96, DW_AT_type(*DW$T$37)
	.dwattr DW$96, DW_AT_location[DW_OP_reg4]
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_name("right_y"), DW_AT_symbol_name("_right_y")
	.dwattr DW$97, DW_AT_type(*DW$T$37)
	.dwattr DW$97, DW_AT_location[DW_OP_reg20]
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rgb"), DW_AT_symbol_name("_rgb")
	.dwattr DW$98, DW_AT_type(*DW$T$47)
	.dwattr DW$98, DW_AT_location[DW_OP_reg6]
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_name("show_stamp"), DW_AT_symbol_name("_show_stamp")
	.dwattr DW$99, DW_AT_type(*DW$T$10)
	.dwattr DW$99, DW_AT_location[DW_OP_reg22]
;** 266	-----------------------    rgb = rgb;
;** 286	-----------------------    C$1 = &L2_buffer[0];
;** 286	-----------------------    next_l = &C$1[1280];
;** 288	-----------------------    cur_r = &L2_buffer[2560];
;** 289	-----------------------    next_r = &L2_buffer[3840];
;** 291	-----------------------    cur_rgb = &((unsigned short *)L2_buffer)[2560];
;** 292	-----------------------    next_rgb = &((unsigned short *)L2_buffer)[7680];
;** 299	-----------------------    id_l = DAT_copy(left_y-5120+304640, (void *)C$1, 1280u);
;** 300	-----------------------    id_r = DAT_copy(right_y-5120+304640, cur_r, 1280u);
;** 303	-----------------------    rgb_ptr = &rgb[158720];
;** 305	-----------------------    dest = cur_rgb;
;**  	-----------------------    K$41 = 640;
;**  	-----------------------    U$44 = left_y+294400;
;**  	-----------------------    K$45 = 0x5200001u;
;**  	-----------------------    U$48 = right_y+294400;
;** 308	-----------------------    L$1 = 113;
;** 285	-----------------------    cur_l = C$1;
;** 283	-----------------------    disp_line_count = 8;
;** 306	-----------------------    rgb_line_count = 0;
;** 286	-----------------------    K$7 = 1280;
;**  	-----------------------    #pragma MUST_ITERATE(113, 113, 113)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVKL    .S1     _DAT_copy,A3      ; |299| 
           MVKH    .S1     _DAT_copy,A3      ; |299| 
           MV      .L1X    SP,A31            ; |266| 
           CALL    .S2X    A3                ; |299| 
           STW     .D2T1   A15,*SP--(88)     ; |266| 

           STDW    .D1T1   A11:A10,*-A31(40)
||         STDW    .D2T2   B13:B12,*+SP(80)
||         MVKL    .S1     0x49200,A5        ; |299| 

           STW     .D1T1   A14,*-A31(24)
||         MVKL    .S2     _L2_buffer,B12    ; |286| 
||         STDW    .D2T2   B11:B10,*+SP(72)
||         MVKH    .S1     0x49200,A5        ; |299| 

           STDW    .D1T1   A13:A12,*-A31(32)
||         MVKH    .S2     _L2_buffer,B12    ; |286| 
||         MVK     .S1     0x500,A6          ; |299| 
||         MV      .L2X    A6,B13            ; |266| 
||         STW     .D2T2   B3,*+SP(68)

           ADDKPC  .S2     RL6,B3,0          ; |299| 
||         ADD     .L1     A5,A4,A4          ; |299| 
||         MV      .L2     B12,B4            ; |286| 
||         MV      .S1     A4,A10            ; |266| 
||         MV      .D1X    B4,A14            ; |266| 
||         MV      .D2     B6,B11            ; |266| 

RL6:       ; CALL OCCURS {_DAT_copy}         ; |299| 
;** --------------------------------------------------------------------------*
           MVKL    .S2     _DAT_copy,B5      ; |300| 
           MVKH    .S2     _DAT_copy,B5      ; |300| 
           CALL    .S2     B5                ; |300| 
           MVKL    .S2     0x49200,B6        ; |300| 
           MVKL    .S1     _L2_buffer+2560,A13 ; |288| 

           MVKH    .S2     0x49200,B6        ; |300| 
||         MVKH    .S1     _L2_buffer+2560,A13 ; |288| 

           ADDKPC  .S2     RL7,B3,0          ; |300| 

           MV      .L2X    A13,B4            ; |288| 
||         MVK     .S1     0x500,A6          ; |300| 
||         STW     .D2T1   A4,*+SP(4)        ; |299| 
||         ADD     .L1X    B6,A14,A4         ; |300| 

RL7:       ; CALL OCCURS {_DAT_copy}         ; |300| 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _L2_buffer+3840,A5 ; |289| 
           MVKH    .S1     _L2_buffer+3840,A5 ; |289| 
           MVKL    .S1     0x5200001,A8

           STW     .D2T1   A5,*+SP(24)       ; |289| 
||         MVKL    .S1     _L2_buffer+15360,A6 ; |292| 
||         MVK     .S2     0x71,B7           ; |308| 

           STW     .D2T1   A4,*+SP(36)       ; |300| 
||         MVKL    .S2     _L2_buffer+5120,B4 ; |291| 
||         MVK     .S1     1280,A3           ; |286| 

           STW     .D2T2   B7,*+SP(12)       ; |308| 
||         MV      .L1     A8,A5             ; |286| 
||         MVKH    .S1     _L2_buffer+15360,A6 ; |292| 
||         ADD     .D1X    A3,B12,A3         ; |286| 
||         MVKL    .S2     0x4d800,B6        ; |303| 

           STW     .D2T1   A3,*+SP(32)       ; |286| 
||         MVKH    .S1     0x5200001,A5
||         MVKL    .S2     0x47e00,B5

           MVKL    .S1     _DAT_copy2d,A5    ; |314| 
||         STW     .D2T1   A5,*+SP(8)        ; |286| 
||         MVKH    .S2     _L2_buffer+5120,B4 ; |291| 

           MVKH    .S1     _DAT_copy2d,A5    ; |314| 
||         STW     .D2T1   A6,*+SP(20)       ; |292| 
||         MVKH    .S2     0x4d800,B6        ; |303| 

           STW     .D2T2   B4,*+SP(28)       ; |291| 
||         MVKH    .S2     0x47e00,B5
||         MVKL    .S1     0x47e00,A7

           CALL    .S2X    A5                ; |314| 
||         LDW     .D2T1   *+SP(32),A6       ; |314| 
||         MVKH    .S1     0x47e00,A7
||         MVK     .L2     0x8,B10           ; |283| 

           LDW     .D2T1   *+SP(8),A4        ; |314| 
||         MVK     .S1     0x280,A3
||         ADD     .L2     B6,B13,B12        ; |303| 
||         ZERO    .S2     B7                ; |306| 
||         MV      .L1X    B12,A12           ; |286| 

	.dwpsn	"utility.c",308,0

           ADD     .L1     A7,A10,A14
||         MVK     .S2     0x500,B4          ; |286| 
||         EXTU    .S1     A3,16,16,A3       ; |314| 
||         ADD     .L2X    B5,A14,B13
||         STW     .D2T2   B7,*+SP(16)
||         MV      .D1X    B4,A11            ; |291| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L27
;** --------------------------------------------------------------------------*
L27:    
DW$L$_disp_rgb565$4$B:
	.dwpsn	"utility.c",309,0
;**	-----------------------g2:
;** 314	-----------------------    new_id_l = DAT_copy2d(K$45, U$44, (void *)next_l, (unsigned short)K$41, 2u, (unsigned short)K$7);
;** 315	-----------------------    new_id_r = DAT_copy2d(K$45, U$48, (void *)next_r, (unsigned short)K$41, 2u, (unsigned short)K$7);
;** 318	-----------------------    DAT_wait(id_l);
;** 319	-----------------------    id_l = new_id_l;
;**  	-----------------------    U$53 = (unsigned char *)dest;
;**  	-----------------------    U$56 = &cur_l[640];
;** 321	-----------------------    j = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 2, 2)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDKPC  .S2     RL8,B3,0          ; |314| 
           MV      .L2X    A3,B6             ; |314| 

           EXTU    .S2     B4,16,16,B8       ; |314| 
||         MVK     .L1     0x2,A8            ; |314| 
||         MV      .L2X    A14,B4            ; |314| 

RL8:       ; CALL OCCURS {_DAT_copy2d}       ; |314| 
DW$L$_disp_rgb565$4$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$5$B:
           MVKL    .S1     _DAT_copy2d,A5    ; |315| 
           MVKH    .S1     _DAT_copy2d,A5    ; |315| 
           STW     .D2T1   A4,*+SP(40)       ; |314| 

           CALL    .S2X    A5                ; |315| 
||         LDW     .D2T1   *+SP(24),A6       ; |315| 

           LDW     .D2T1   *+SP(8),A4        ; |315| 
           MVK     .S1     0x280,A3

           EXTU    .S1     A3,16,16,A3       ; |315| 
||         MVK     .S2     0x500,B4          ; |286| 

           EXTU    .S2     B4,16,16,B8       ; |315| 

           ADDKPC  .S2     RL9,B3,0          ; |315| 
||         MV      .L2X    A3,B6             ; |315| 
||         MV      .D2     B13,B4            ; |315| 
||         MVK     .L1     0x2,A8            ; |315| 

RL9:       ; CALL OCCURS {_DAT_copy2d}       ; |315| 
           MVKL    .S2     _DAT_wait,B4      ; |318| 
           MVKH    .S2     _DAT_wait,B4      ; |318| 

           CALL    .S2     B4                ; |318| 
||         STW     .D2T1   A4,*+SP(44)       ; |315| 

           LDW     .D2T1   *+SP(4),A4        ; |318| 
           ADDKPC  .S2     RL10,B3,3         ; |318| 
RL10:      ; CALL OCCURS {_DAT_wait}         ; |318| 
DW$L$_disp_rgb565$5$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$6$B:
           LDW     .D2T1   *+SP(40),A31
           CALL    .S1     __process_line    ; |326| 
           MV      .L2X    A11,B23
           ZERO    .S1     A10               ; |321| 
           MVK     .S1     640,A3
	.dwpsn	"utility.c",321,0

           ADD     .L1     A3,A12,A15
||         STW     .D2T1   A31,*+SP(4)       ; |319| 

DW$L$_disp_rgb565$6$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L28:    
DW$L$_disp_rgb565$7$B:
	.dwpsn	"utility.c",322,0
;**	-----------------------g3:
;** 326	-----------------------    _process_line(U$56, U$53, disp_line_count+j, show_stamp);
;** 321	-----------------------    U$53 += 1280;
;** 321	-----------------------    U$56 -= 640;
;** 321	-----------------------    if ( (++j) < 2 ) goto g3;
;** 330	-----------------------    temp = (void *)next_l;

           MV      .L2     B11,B6            ; |326| 
||         MV      .D2     B23,B4            ; |326| 
||         MV      .L1     A15,A4            ; |326| 
||         ADD     .S1X    A10,B10,A6        ; |326| 
||         ADDKPC  .S2     RL11,B3,0         ; |326| 

RL11:      ; CALL OCCURS {__process_line}    ; |326| 
DW$L$_disp_rgb565$7$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$8$B:

           ADD     .L1     1,A10,A10         ; |321| 
||         ADDK    .S1     -640,A15          ; |321| 
||         ADDK    .S2     1280,B23          ; |321| 

           CMPLT   .L1     A10,2,A0          ; |321| 

   [ A0]   B       .S2     L28               ; |321| 
|| [!A0]   MVKL    .S1     _DAT_wait,A3      ; |332| 
|| [!A0]   LDW     .D2T1   *+SP(36),A4       ; |332| 

   [ A0]   CALL    .S2     __process_line    ; |326| 
|| [!A0]   MVKH    .S1     _DAT_wait,A3      ; |332| 

           NOP             1
   [!A0]   CALL    .S2X    A3                ; |332| 
	.dwpsn	"utility.c",328,0
           NOP             2
           ; BRANCHCC OCCURS {L28}           ; |321| 
DW$L$_disp_rgb565$8$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$9$B:
;** 330	-----------------------    next_l = cur_l;
;** 330	-----------------------    cur_l = (unsigned char *)temp;
;** 332	-----------------------    DAT_wait(id_r);
;** 333	-----------------------    id_r = new_id_r;
;**  	-----------------------    U$62 = &((unsigned char *)dest)[640];
;**  	-----------------------    U$64 = &cur_r[640];
;** 335	-----------------------    j = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 2, 2)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           ADDKPC  .S2     RL12,B3,2         ; |332| 
RL12:      ; CALL OCCURS {_DAT_wait}         ; |332| 
DW$L$_disp_rgb565$9$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$10$B:
           LDW     .D2T1   *+SP(32),A3       ; |332| 
           LDW     .D2T1   *+SP(44),A4       ; |330| 
           CALL    .S1     __process_line    ; |340| 
           MVK     .S2     640,B4
           STW     .D2T1   A12,*+SP(32)      ; |330| 
           MVK     .S2     640,B5
	.dwpsn	"utility.c",335,0

           MV      .L1     A3,A12            ; |330| 
||         STW     .D2T1   A4,*+SP(36)       ; |333| 
||         ADD     .S1X    B4,A13,A15
||         ADD     .L2X    B5,A11,B23
||         ZERO    .D1     A10               ; |335| 

DW$L$_disp_rgb565$10$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L29:    
DW$L$_disp_rgb565$11$B:
	.dwpsn	"utility.c",336,0
;**	-----------------------g5:
;** 340	-----------------------    _process_line(U$64, U$62, disp_line_count+j, show_stamp);
;** 335	-----------------------    U$62 += 1280;
;** 335	-----------------------    U$64 -= 640;
;** 335	-----------------------    if ( (++j) < 2 ) goto g5;
;**  	-----------------------    U$53 = (unsigned char *)dest;

           MV      .L2     B11,B6            ; |340| 
||         MV      .D2     B23,B4            ; |340| 
||         MV      .L1     A15,A4            ; |340| 
||         ADD     .S1X    A10,B10,A6        ; |340| 
||         ADDKPC  .S2     RL13,B3,0         ; |340| 

RL13:      ; CALL OCCURS {__process_line}    ; |340| 
DW$L$_disp_rgb565$11$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$12$B:

           ADD     .L1     1,A10,A10         ; |335| 
||         ADDK    .S1     -640,A15          ; |335| 
||         ADDK    .S2     1280,B23          ; |335| 

           CMPLT   .L1     A10,2,A0          ; |335| 

   [ A0]   B       .S1     L29               ; |335| 
|| [!A0]   MV      .L1     A11,A4
|| [!A0]   ZERO    .D1     A23               ; |344| 

   [ A0]   CALL    .S1     __process_line    ; |340| 
	.dwpsn	"utility.c",342,0
           NOP             4
           ; BRANCHCC OCCURS {L29}           ; |335| 
DW$L$_disp_rgb565$12$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$13$B:
;** 344	-----------------------    j = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 2, 2)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           CALL    .S1     __set_logo        ; |345| 
	.dwpsn	"utility.c",344,0
           NOP             4
DW$L$_disp_rgb565$13$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L30:    
DW$L$_disp_rgb565$14$B:
	.dwpsn	"utility.c",345,0
;**	-----------------------g7:
;** 345	-----------------------    _set_logo((unsigned short *)U$53, disp_line_count+j);
;** 344	-----------------------    U$53 += 1280;
;** 344	-----------------------    if ( (++j) < 2 ) goto g7;
;** 347	-----------------------    temp = (void *)next_r;

           ADD     .L2X    A23,B10,B4        ; |345| 
||         ADDKPC  .S2     RL14,B3,0         ; |345| 

RL14:      ; CALL OCCURS {__set_logo}        ; |345| 
DW$L$_disp_rgb565$14$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$15$B:

           ADD     .L1     1,A23,A23         ; |344| 
||         ADDK    .S1     1280,A4           ; |344| 

           CMPLT   .L1     A23,2,A0          ; |344| 

   [ A0]   B       .S1     L30               ; |344| 
|| [!A0]   LDW     .D2T2   *+SP(16),B4       ; |347| 

   [ A0]   CALL    .S1     __set_logo        ; |345| 
           NOP             3
   [!A0]   CMPEQ   .L2     B4,6,B0           ; |353| 
           ; BRANCHCC OCCURS {L30}           ; |344| 
DW$L$_disp_rgb565$15$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$16$B:
;** 347	-----------------------    next_r = cur_r;
;** 347	-----------------------    cur_r = (unsigned char *)temp;
;** 353	-----------------------    if ( rgb_line_count == 6 ) goto g10;
;** 351	-----------------------    dest += 1280;
;** 350	-----------------------    rgb_line_count += 2;
;**  	-----------------------    goto g11;

           LDW     .D2T1   *+SP(24),A3
|| [!B0]   B       .S2     L31
|| [!B0]   ADD     .L2     2,B4,B4           ; |350| 
|| [!B0]   ADDK    .S1     2560,A11          ; |351| 

   [!B0]   STW     .D2T2   B4,*+SP(16)       ; |350| 
   [!B0]   LDW     .D2T2   *+SP(12),B4
           NOP             1
           STW     .D2T1   A13,*+SP(24)      ; |347| 

           MVKL    .S1     _DAT_copy,A3      ; |355| 
||         MV      .L1     A3,A13            ; |347| 

           ; BRANCHCC OCCURS {L31} 
DW$L$_disp_rgb565$16$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$17$B:
;**	-----------------------g10:
;** 355	-----------------------    DAT_copy((void *)cur_rgb, (void *)rgb_ptr, 10240u);
;** 357	-----------------------    rgb_ptr += 5120;
;** 359	-----------------------    dest = next_rgb;
;** 360	-----------------------    next_rgb = cur_rgb;
;** 360	-----------------------    cur_rgb = dest;
;** 361	-----------------------    rgb_line_count = 0;
           MVKH    .S1     _DAT_copy,A3      ; |355| 
           LDW     .D2T1   *+SP(28),A10      ; |355| 
           CALL    .S2X    A3                ; |355| 
           ADDKPC  .S2     RL15,B3,1         ; |355| 
           MVK     .S1     0x2800,A6         ; |355| 
           MV      .L2     B12,B4            ; |355| 
           MV      .L1     A10,A4            ; |355| 
RL15:      ; CALL OCCURS {_DAT_copy}         ; |355| 
DW$L$_disp_rgb565$17$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_rgb565$18$B:

           LDW     .D2T1   *+SP(20),A11      ; |355| 
||         ZERO    .L2     B4                ; |361| 

           STW     .D2T2   B4,*+SP(16)       ; |357| 
           LDW     .D2T2   *+SP(12),B4
           STW     .D2T1   A10,*+SP(20)      ; |360| 
           ADDK    .S2     10240,B12         ; |357| 
           STW     .D2T1   A11,*+SP(28)      ; |360| 
DW$L$_disp_rgb565$18$E:
;** --------------------------------------------------------------------------*
L31:    
DW$L$_disp_rgb565$19$B:
;**	-----------------------g11:
;** 308	-----------------------    U$44 -= 2560;
;** 308	-----------------------    U$48 -= 2560;
;** 349	-----------------------    disp_line_count += 2;
;**  	-----------------------    K$41 = 640;
;**  	-----------------------    K$7 = 1280;
;** 308	-----------------------    if ( --L$1 ) goto g2;
;** 366	-----------------------    assert(disp_line_count >= 234);

           MVKL    .S1     _DAT_copy2d,A5    ; |314| 
||         ADD     .L2     2,B10,B10         ; |349| 
||         ADDK    .S2     -2560,B13         ; |308| 

           SUB     .L1X    B4,1,A0           ; |308| 
||         MVKH    .S1     _DAT_copy2d,A5    ; |314| 
||         SUB     .L2     B4,1,B4           ; |308| 

   [ A0]   B       .S2     L27               ; |308| 
|| [ A0]   MVK     .S1     0x280,A3
|| [ A0]   LDW     .D2T1   *+SP(32),A6       ; |314| 

   [ A0]   LDW     .D2T1   *+SP(8),A4        ; |314| 
|| [ A0]   EXTU    .S1     A3,16,16,A3       ; |314| 

           STW     .D2T2   B4,*+SP(12)       ; |308| 
||         ADDK    .S1     -2560,A14         ; |308| 
|| [!A0]   MVK     .S2     234,B4            ; |366| 

   [ A0]   CALL    .S2X    A5                ; |314| 
|| [!A0]   CMPLT   .L2     B10,B4,B0         ; |366| 

           NOP             1
	.dwpsn	"utility.c",363,0
   [ A0]   MVK     .S2     0x500,B4          ; |286| 
           ; BRANCHCC OCCURS {L27}           ; |308| 
DW$L$_disp_rgb565$19$E:
;** --------------------------------------------------------------------------*

           MVKL    .S1     SL1+0,A4          ; |366| 
|| [!B0]   LDW     .D2T2   *+SP(16),B4
|| [!B0]   MVK     .S2     234,B5            ; |368| 

           MVKH    .S1     SL1+0,A4          ; |366| 
|| [!B0]   B       .S2     L32               ; |366| 

   [ B0]   CALL    .S1     __abort_msg       ; |366| 
           NOP             2
   [!B0]   SUB     .L2     B4,B10,B4         ; |368| 
   [!B0]   ADD     .L2     B5,B4,B6          ; |368| 
           ; BRANCHCC OCCURS {L32}           ; |366| 
;** --------------------------------------------------------------------------*
           ADDKPC  .S2     RL16,B3,0         ; |366| 
RL16:      ; CALL OCCURS {__abort_msg}       ; |366| 

           LDW     .D2T2   *+SP(16),B4
||         MVK     .S2     234,B5            ; |368| 

           NOP             4
           SUB     .L2     B4,B10,B4         ; |368| 
           ADD     .L2     B5,B4,B6          ; |368| 
;** --------------------------------------------------------------------------*
L32:    
;** 368	-----------------------    if ( !(rgb_line_count = rgb_line_count-disp_line_count+234) ) goto g14;

           MVKL    .S1     _DAT_copy,A3      ; |371| 
||         ADD     .L2     B5,B4,B4          ; |368| 
||         MVK     .S2     0x500,B31         ; |286| 
||         LDW     .D2T1   *+SP(28),A4       ; |371| 

           MV      .L1X    B6,A0             ; |371| 
||         MVKH    .S1     _DAT_copy,A3      ; |371| 
||         STW     .D2T2   B4,*+SP(16)       ; |368| 
||         MPY     .M2     B6,B31,B4         ; |371| 

   [!A0]   B       .S1     L33               ; |368| 
|| [!A0]   LDW     .D2T2   *+SP(68),B3       ; |374| 
|| [!A0]   MV      .L1X    SP,A31            ; |374| 

           EXTU    .S2     B4,16,16,B5       ; |371| 
|| [!A0]   LDDW    .D1T1   *+A31(48),A11:A10 ; |374| 
|| [!A0]   LDDW    .D2T2   *+SP(80),B13:B12  ; |374| 
||         MV      .L2     B12,B4            ; |371| 

   [ A0]   CALL    .S2X    A3                ; |371| 
|| [!A0]   LDDW    .D1T1   *+A31(56),A13:A12 ; |374| 
|| [!A0]   LDDW    .D2T2   *+SP(72),B11:B10  ; |374| 

           MV      .L1X    B5,A6             ; |371| 
|| [!A0]   LDW     .D1T1   *+A31(64),A14     ; |374| 
|| [!A0]   ZERO    .S1     A4                ; |373| 

   [!A0]   LDW     .D2T1   *++SP(88),A15     ; |374| 
   [!A0]   RET     .S2     B3                ; |374| 
           ; BRANCHCC OCCURS {L33}           ; |368| 
;** --------------------------------------------------------------------------*
;** 371	-----------------------    DAT_copy((void *)cur_rgb, (void *)rgb_ptr, (unsigned short)_mpy(rgb_line_count, K$7));
           ADDKPC  .S2     RL17,B3,1         ; |371| 
RL17:      ; CALL OCCURS {_DAT_copy}         ; |371| 

           LDW     .D2T2   *+SP(68),B3       ; |374| 
||         MV      .L1X    SP,A31            ; |374| 
||         ZERO    .S1     A4                ; |373| 

           LDW     .D1T1   *+A31(64),A14     ; |374| 
||         LDDW    .D2T2   *+SP(80),B13:B12  ; |374| 

           LDDW    .D1T1   *+A31(56),A13:A12 ; |374| 
||         LDDW    .D2T2   *+SP(72),B11:B10  ; |374| 

           LDDW    .D1T1   *+A31(48),A11:A10 ; |374| 
           LDW     .D2T1   *++SP(88),A15     ; |374| 
           RET     .S2     B3                ; |374| 
;** --------------------------------------------------------------------------*
L33:    
;**	-----------------------g14:
;** 373	-----------------------    return 0;
	.dwpsn	"utility.c",374,1
           NOP             5
           ; BRANCH OCCURS {B3}              ; |374| 

DW$100	.dwtag  DW_TAG_loop
	.dwattr DW$100, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L27:1:1288598882")
	.dwattr DW$100, DW_AT_begin_file("utility.c")
	.dwattr DW$100, DW_AT_begin_line(0x134)
	.dwattr DW$100, DW_AT_end_line(0x16b)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$_disp_rgb565$4$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$_disp_rgb565$4$E)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_disp_rgb565$17$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_disp_rgb565$17$E)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_disp_rgb565$5$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_disp_rgb565$5$E)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_disp_rgb565$6$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_disp_rgb565$6$E)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$_disp_rgb565$9$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$_disp_rgb565$9$E)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_disp_rgb565$10$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_disp_rgb565$10$E)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_disp_rgb565$13$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_disp_rgb565$13$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_disp_rgb565$16$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_disp_rgb565$16$E)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_disp_rgb565$18$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_disp_rgb565$18$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_disp_rgb565$19$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_disp_rgb565$19$E)

DW$111	.dwtag  DW_TAG_loop
	.dwattr DW$111, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L28:2:1288598882")
	.dwattr DW$111, DW_AT_begin_file("utility.c")
	.dwattr DW$111, DW_AT_begin_line(0x141)
	.dwattr DW$111, DW_AT_end_line(0x148)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_disp_rgb565$7$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_disp_rgb565$7$E)
DW$113	.dwtag  DW_TAG_loop_range
	.dwattr DW$113, DW_AT_low_pc(DW$L$_disp_rgb565$8$B)
	.dwattr DW$113, DW_AT_high_pc(DW$L$_disp_rgb565$8$E)
	.dwendtag DW$111


DW$114	.dwtag  DW_TAG_loop
	.dwattr DW$114, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L29:2:1288598882")
	.dwattr DW$114, DW_AT_begin_file("utility.c")
	.dwattr DW$114, DW_AT_begin_line(0x14f)
	.dwattr DW$114, DW_AT_end_line(0x156)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$_disp_rgb565$11$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$_disp_rgb565$11$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_disp_rgb565$12$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_disp_rgb565$12$E)
	.dwendtag DW$114


DW$117	.dwtag  DW_TAG_loop
	.dwattr DW$117, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L30:2:1288598882")
	.dwattr DW$117, DW_AT_begin_file("utility.c")
	.dwattr DW$117, DW_AT_begin_line(0x158)
	.dwattr DW$117, DW_AT_end_line(0x159)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_disp_rgb565$14$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_disp_rgb565$14$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_disp_rgb565$15$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_disp_rgb565$15$E)
	.dwendtag DW$117

	.dwendtag DW$100

	.dwattr DW$95, DW_AT_end_file("utility.c")
	.dwattr DW$95, DW_AT_end_line(0x176)
	.dwattr DW$95, DW_AT_end_column(0x01)
	.dwendtag DW$95

	.sect	".text"
	.global	_disp_init

DW$120	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_init"), DW_AT_symbol_name("_disp_init")
	.dwattr DW$120, DW_AT_low_pc(_disp_init)
	.dwattr DW$120, DW_AT_high_pc(0x00)
	.dwattr DW$120, DW_AT_begin_file("utility.c")
	.dwattr DW$120, DW_AT_begin_line(0xe2)
	.dwattr DW$120, DW_AT_begin_column(0x06)
	.dwattr DW$120, DW_AT_frame_base[DW_OP_breg31 32]
	.dwattr DW$120, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",227,1

;******************************************************************************
;* FUNCTION NAME: _disp_init                                                  *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,B4,B5,B6,SP                           *
;*   Regs Used         : A3,A4,A5,A6,A7,B3,B4,B5,B6,SP                        *
;*   Local Frame Size  : 0 Args + 28 Auto + 0 Save = 28 byte                  *
;******************************************************************************
_disp_init:
;** --------------------------------------------------------------------------*
;** 228	-----------------------    c_bk[] = {...};
;** 229	-----------------------    c_le[] = {...};
;** 230	-----------------------    c_re[] = {...};
;** 232	-----------------------    memcpy(&color_background, &c_bk, 8u);
;** 233	-----------------------    memcpy(&color_l_edge, &c_le, 8u);
;** 234	-----------------------    memcpy(&color_r_edge, &c_re, 8u);
;** 236	-----------------------    color_bk = 2416u;
;** 236	-----------------------    return;
           MVKL    .S1     _$T0$1,A3         ; |228| 

           MVKH    .S1     _$T0$1,A3         ; |228| 
||         MVKL    .S2     _$T1$2,B4         ; |229| 

           MVKL    .S1     _$T2$3,A3         ; |230| 
||         LDDW    .D1T1   *A3,A5:A4         ; |228| 
||         MVKH    .S2     _$T1$2,B4         ; |229| 

           LDDW    .D2T2   *B4,B5:B4         ; |229| 
||         MVKH    .S1     _$T2$3,A3         ; |230| 

           LDDW    .D1T1   *A3,A7:A6         ; |230| 
           ADDK    .S2     -32,SP            ; |227| 
           MVKL    .S2     _color_r_edge,B6  ; |234| 
           STDW    .D2T1   A5:A4,*+SP(8)     ; |228| 
           STDW    .D2T2   B5:B4,*+SP(16)    ; |229| 

           ADD     .L1X    8,SP,A3           ; |232| 
||         STDW    .D2T1   A7:A6,*+SP(24)    ; |230| 

           LDDW    .D1T1   *A3,A5:A4         ; |232| 
           MVKL    .S1     _color_background,A3 ; |232| 
           MVKH    .S1     _color_background,A3 ; |232| 
           ADD     .D2     SP,16,B4          ; |233| 
           MVKH    .S2     _color_r_edge,B6  ; |234| 
           STDW    .D1T1   A5:A4,*A3         ; |232| 
           LDDW    .D2T1   *B4,A5:A4         ; |233| 
           MVKL    .S1     _color_l_edge,A3  ; |233| 
           MVKH    .S1     _color_l_edge,A3  ; |233| 
           ADD     .D2     SP,24,B4          ; |234| 
           ADDK    .S2     32,SP             ; |237| 
           STDW    .D1T1   A5:A4,*A3         ; |233| 
           LDDW    .D2T2   *B4,B5:B4         ; |234| 
           RETNOP  .S2     B3,1              ; |237| 
           MVKL    .S1     _color_bk,A3      ; |236| 
           MVKH    .S1     _color_bk,A3      ; |236| 

           STDW    .D2T2   B5:B4,*B6         ; |234| 
||         MVK     .S2     2416,B4           ; |236| 

	.dwpsn	"utility.c",237,1
           STH     .D1T2   B4,*A3            ; |236| 
           ; BRANCH OCCURS {B3}              ; |237| 
	.dwattr DW$120, DW_AT_end_file("utility.c")
	.dwattr DW$120, DW_AT_end_line(0xed)
	.dwattr DW$120, DW_AT_end_column(0x01)
	.dwendtag DW$120

	.sect	".text"
	.global	_disp_draw_box

DW$121	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_draw_box"), DW_AT_symbol_name("_disp_draw_box")
	.dwattr DW$121, DW_AT_low_pc(_disp_draw_box)
	.dwattr DW$121, DW_AT_high_pc(0x00)
	.dwattr DW$121, DW_AT_begin_file("utility.c")
	.dwattr DW$121, DW_AT_begin_line(0x178)
	.dwattr DW$121, DW_AT_begin_column(0x05)
	.dwattr DW$121, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$121, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",377,1

;******************************************************************************
;* FUNCTION NAME: _disp_draw_box                                              *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,B0,B1,B4,B5,B7,B9,B16                 *
;*   Regs Used         : A0,A3,A4,A5,A6,A8,B0,B1,B3,B4,B5,B6,B7,B8,B9,B16     *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_disp_draw_box:
;** --------------------------------------------------------------------------*
DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x1"), DW_AT_symbol_name("_x1")
	.dwattr DW$122, DW_AT_type(*DW$T$10)
	.dwattr DW$122, DW_AT_location[DW_OP_reg4]
DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x2"), DW_AT_symbol_name("_x2")
	.dwattr DW$123, DW_AT_type(*DW$T$10)
	.dwattr DW$123, DW_AT_location[DW_OP_reg20]
DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y1"), DW_AT_symbol_name("_y1")
	.dwattr DW$124, DW_AT_type(*DW$T$10)
	.dwattr DW$124, DW_AT_location[DW_OP_reg6]
DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y2"), DW_AT_symbol_name("_y2")
	.dwattr DW$125, DW_AT_type(*DW$T$10)
	.dwattr DW$125, DW_AT_location[DW_OP_reg22]
DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_name("color"), DW_AT_symbol_name("_color")
	.dwattr DW$126, DW_AT_type(*DW$T$10)
	.dwattr DW$126, DW_AT_location[DW_OP_reg8]
DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rgb"), DW_AT_symbol_name("_rgb")
	.dwattr DW$127, DW_AT_type(*DW$T$47)
	.dwattr DW$127, DW_AT_location[DW_OP_reg24]
;** 377	-----------------------    rgb = rgb;
;** 379	-----------------------    y = y1;
;** 379	-----------------------    if ( y > y2 ) goto g7;
;** 380	-----------------------    L$1 = y2-y+1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)

           CMPGT   .L1X    A6,B6,A0          ; |379| 
||         SUB     .L2X    B6,A6,B5          ; |380| 
||         MV      .S2     B4,B9             ; |377| 

   [ A0]   BNOP    .S1     L39,3             ; |379| 
||         ADD     .L2     1,B5,B0           ; |380| 
||         MV      .S2X    A8,B16            ; |377| 

           MV      .L2X    A4,B7             ; |377| 
           CMPGT   .L2     B7,B9,B1          ; |380| 
           ; BRANCHCC OCCURS {L39}           ; |379| 
;** --------------------------------------------------------------------------*

   [ B1]   BNOP    .S2     L38,1             ; |380| 
|| [!B1]   SUB     .L2     B9,B7,B5          ; |381| 
|| [!B1]   MVK     .S1     1280,A3

   [!B1]   MPYLI   .M1     A3,A6,A5:A4
   [!B1]   ADD     .L1X    1,B5,A3           ; |381| 
	.dwpsn	"utility.c",379,0
   [!B1]   SUB     .L1     A3,1,A0
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L34
;** --------------------------------------------------------------------------*
L34:    
DW$L$_disp_draw_box$3$B:
	.dwpsn	"utility.c",380,0
;**	-----------------------g3:
;** 380	-----------------------    if ( x1 > x2 ) goto g6;
           NOP             1
           ; BRANCHCC OCCURS {L38}           ; |380| 
;**  	-----------------------    K$17 = (unsigned short)color;
;**  	-----------------------    U$23 = x1*2+(_lo(_mpyli(1280, y))+rgb);
;** 381	-----------------------    L$2 = x2-x1+1;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g5:
;** 381	-----------------------    *U$23++ = K$17;
;** 380	-----------------------    if ( --L$2 ) goto g5;
DW$L$_disp_draw_box$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 380
;*      Loop opening brace source line   : 381
;*      Loop closing brace source line   : 381
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
L35:    ; PIPED LOOP PROLOG
   [ A0]   BDEC    .S1     L36,A0            ; |380| (P) <0,0> 
   [ A0]   BDEC    .S1     L36,A0            ; |380| (P) <1,0> 
   [ A0]   BDEC    .S1     L36,A0            ; |380| (P) <2,0> 

           ADD     .L2X    B8,A4,B4
|| [ A0]   BDEC    .S1     L36,A0            ; |380| (P) <3,0> 


           ADDAH   .D2     B4,B7,B5
||         EXTU    .S2     B16,16,16,B4
|| [ A0]   BDEC    .S1     L36,A0            ; |380| (P) <4,0> 

;** --------------------------------------------------------------------------*
L36:    ; PIPED LOOP KERNEL
DW$L$_disp_draw_box$5$B:
	.dwpsn	"utility.c",381,0

           STH     .D2T2   B4,*B5++          ; |381| <0,5> 
|| [ A0]   BDEC    .S1     L36,A0            ; |380| <5,0> 

DW$L$_disp_draw_box$5$E:
;** --------------------------------------------------------------------------*
L37:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
L38:    
DW$L$_disp_draw_box$7$B:
;**	-----------------------g6:
;** 379	-----------------------    ++y;
;** 379	-----------------------    if ( --L$1 ) goto g3;

           SUB     .S2     B0,1,B0           ; |379| 
||         ADD     .L1     1,A6,A6           ; |379| 
||         CMPGT   .L2     B7,B9,B1          ; |380| 

   [ B0]   B       .S1     L34               ; |379| 
|| [!B0]   ZERO    .L2     B1                ; |380| nullify predicate

   [ B1]   BNOP    .S2     L38,1             ; |380| 
|| [!B1]   SUB     .L2     B9,B7,B5          ; |381| 
|| [!B1]   MVK     .S1     1280,A3

   [!B1]   MPYLI   .M1     A3,A6,A5:A4
   [!B1]   ADD     .L1X    1,B5,A3           ; |381| 
   [!B1]   SUB     .L1     A3,1,A0
           ; BRANCHCC OCCURS {L34}           ; |379| 
DW$L$_disp_draw_box$7$E:
;** --------------------------------------------------------------------------*
L39:    
;**	-----------------------g7:
;** 383	-----------------------    return 1;
           RETNOP  .S2     B3,4              ; |384| 
	.dwpsn	"utility.c",384,1
           MVK     .L1     0x1,A4            ; |383| 
           ; BRANCH OCCURS {B3}              ; |384| 

DW$128	.dwtag  DW_TAG_loop
	.dwattr DW$128, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L34:1:1288598882")
	.dwattr DW$128, DW_AT_begin_file("utility.c")
	.dwattr DW$128, DW_AT_begin_line(0x17b)
	.dwattr DW$128, DW_AT_end_line(0x17d)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_disp_draw_box$3$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_disp_draw_box$3$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_disp_draw_box$7$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_disp_draw_box$7$E)

DW$131	.dwtag  DW_TAG_loop
	.dwattr DW$131, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L36:2:1288598882")
	.dwattr DW$131, DW_AT_begin_file("utility.c")
	.dwattr DW$131, DW_AT_begin_line(0x17c)
	.dwattr DW$131, DW_AT_end_line(0x17d)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_disp_draw_box$5$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_disp_draw_box$5$E)
	.dwendtag DW$131

	.dwendtag DW$128

	.dwattr DW$121, DW_AT_end_file("utility.c")
	.dwattr DW$121, DW_AT_end_line(0x180)
	.dwattr DW$121, DW_AT_end_column(0x01)
	.dwendtag DW$121

	.sect	".text"
	.global	_disp_draw_half_frame

DW$133	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_draw_half_frame"), DW_AT_symbol_name("_disp_draw_half_frame")
	.dwattr DW$133, DW_AT_low_pc(_disp_draw_half_frame)
	.dwattr DW$133, DW_AT_high_pc(0x00)
	.dwattr DW$133, DW_AT_begin_file("utility.c")
	.dwattr DW$133, DW_AT_begin_line(0x1a0)
	.dwattr DW$133, DW_AT_begin_column(0x05)
	.dwattr DW$133, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$133, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",417,1

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
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rgb"), DW_AT_symbol_name("_rgb")
	.dwattr DW$134, DW_AT_type(*DW$T$47)
	.dwattr DW$134, DW_AT_location[DW_OP_reg4]
;** 417	-----------------------    rgb = rgb;
;** 423	-----------------------    v$1 = (int)color_bk;
;** 423	-----------------------    disp_draw_box(0, 639, 240, 247, v$1, rgb);
;** 424	-----------------------    disp_draw_box(0, 639, 474, 479, v$1, rgb);
;** 426	-----------------------    disp_draw_box(5, 314, 246, 247, 54970, rgb);
;** 427	-----------------------    disp_draw_box(325, 634, 246, 247, 54970, rgb);
;** 429	-----------------------    disp_draw_box(5, 314, 474, 475, 54970, rgb);
;** 430	-----------------------    disp_draw_box(325, 634, 474, 475, 54970, rgb);
;** 432	-----------------------    dest = &rgb[158720];
;**  	-----------------------    U$32 = &((double *)dest)[78];
;**  	-----------------------    U$35 = &((double *)dest)[79];
;**  	-----------------------    U$38 = &((double *)dest)[80];
;**  	-----------------------    U$41 = &((double *)dest)[81];
;**  	-----------------------    U$44 = &((double *)dest)[158];
;**  	-----------------------    U$47 = &((double *)dest)[159];
;**  	-----------------------    U$50 = &((unsigned char *)dest)[16];
;**  	-----------------------    K$67 = 226;
;**  	-----------------------    K$69 = 228;
;** 434	-----------------------    j = 8;
;** 426	-----------------------    K$10 = 54970;
;**  	-----------------------    #pragma MUST_ITERATE(226, 226, 226)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           MVKL    .S1     _color_bk,A3      ; |423| 
           MVKH    .S1     _color_bk,A3      ; |423| 

           CALL    .S1     _disp_draw_box    ; |423| 
||         LDHU    .D1T2   *A3,B19           ; |423| 

           MVK     .S2     0xf7,B6           ; |423| 
           MVK     .S2     0x27f,B4          ; |423| 
           MV      .L1     A4,A7             ; |417| 
           MVK     .S1     0xf0,A6           ; |423| 

           MV      .L1X    B19,A8            ; |423| 
||         MV      .L2     B3,B30            ; |417| 
||         ADDKPC  .S2     RL18,B3,0         ; |423| 
||         MV      .D2X    A4,B8             ; |417| 
||         ZERO    .D1     A4                ; |423| 

RL18:      ; CALL OCCURS {_disp_draw_box}    ; |423| 
;** --------------------------------------------------------------------------*
           CALL    .S1     _disp_draw_box    ; |424| 
           MVK     .S2     0x1df,B6          ; |424| 
           MVK     .S2     0x27f,B4          ; |424| 
           ADDKPC  .S2     RL19,B3,0         ; |424| 
           MVK     .S1     0x1da,A6          ; |424| 
           ZERO    .L1     A4                ; |424| 
RL19:      ; CALL OCCURS {_disp_draw_box}    ; |424| 
           CALL    .S1     _disp_draw_box    ; |426| 
           MVK     .S2     0xf7,B6           ; |426| 
           MVKL    .S1     0xd6ba,A8         ; |426| 
           MVK     .S2     0x13a,B4          ; |426| 
           MVK     .S1     0xf6,A6           ; |426| 

           ADDKPC  .S2     RL20,B3,0         ; |426| 
||         MVKH    .S1     0xd6ba,A8         ; |426| 
||         MVK     .L1     0x5,A4            ; |426| 

RL20:      ; CALL OCCURS {_disp_draw_box}    ; |426| 
           CALL    .S1     _disp_draw_box    ; |427| 
           MVKL    .S1     0xd6ba,A8         ; |427| 
           MVK     .S1     0xf6,A6           ; |427| 
           MVK     .S1     0x145,A4          ; |427| 
           MVK     .S2     0x27a,B4          ; |427| 

           ADDKPC  .S2     RL21,B3,0         ; |427| 
||         MVKH    .S1     0xd6ba,A8         ; |427| 

RL21:      ; CALL OCCURS {_disp_draw_box}    ; |427| 
           CALL    .S1     _disp_draw_box    ; |429| 
           MVK     .S2     0x13a,B4          ; |429| 
           MVKL    .S1     0xd6ba,A8         ; |429| 
           MVK     .S2     0x1db,B6          ; |429| 
           MVK     .S1     0x1da,A6          ; |429| 

           ADDKPC  .S2     RL22,B3,0         ; |429| 
||         MVKH    .S1     0xd6ba,A8         ; |429| 
||         MVK     .L1     0x5,A4            ; |429| 

RL22:      ; CALL OCCURS {_disp_draw_box}    ; |429| 
           CALL    .S1     _disp_draw_box    ; |430| 
           MVKL    .S1     0xd6ba,A8         ; |430| 
           MVK     .S1     0x1da,A6          ; |430| 
           MVK     .S1     0x145,A4          ; |430| 
           MVK     .S2     0x27a,B4          ; |430| 

           ADDKPC  .S2     RL23,B3,0         ; |430| 
||         MVKH    .S1     0xd6ba,A8         ; |430| 

RL23:      ; CALL OCCURS {_disp_draw_box}    ; |430| 
;** --------------------------------------------------------------------------*
;**	-----------------------g2:
;** 437	-----------------------    v$2 = color_background;
;** 437	-----------------------    *(double *)dest = v$2;
;** 438	-----------------------    v$3 = color_l_edge;
;** 438	-----------------------    ((double *)dest)[1] = v$3;
;** 440	-----------------------    v$4 = color_r_edge;
;** 440	-----------------------    *U$32 = v$4;
;** 441	-----------------------    *U$35 = v$2;
;** 443	-----------------------    *U$38 = v$2;
;** 444	-----------------------    *U$41 = v$3;
;** 447	-----------------------    *U$44 = v$4;
;** 448	-----------------------    *U$47 = v$2;
;** 450	-----------------------    p = U$50;
;**  	-----------------------    U$55 = &((double *)p)[80];
;** 450	-----------------------    L$2 = 76;
;**  	-----------------------    #pragma MUST_ITERATE(76, 76, 76)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g3:
;** 452	-----------------------    *(double *)p = v$2;
;** 453	-----------------------    *U$55++ = v$2;
;** 450	-----------------------    p += 8;
;** 450	-----------------------    if ( --L$2 ) goto g3;
;** 457	-----------------------    if ( !((j >= 14)&(j < 16)|(j >= K$67)&(j < K$69)) ) goto g7;
           MVKL    .S1     _color_l_edge,A31 ; |438| 
           MVK     .S1     1272,A3

           MVK     .S1     648,A6
||         MVKL    .S2     0x4d800,B4        ; |432| 

           MVKH    .S2     0x4d800,B4        ; |432| 
||         MVK     .S1     1264,A4

           MVK     .S1     640,A5

           ADD     .L2X    B4,A7,B4          ; |432| Define a twin register
||         ADD     .L1X    B4,A7,A24         ; |432| 
||         MVKL    .S1     0xd6ba,A23        ; |426| 

           ADD     .L2X    A3,B4,B21
||         MVKH    .S1     _color_l_edge,A31 ; |438| 
||         MVK     .S2     624,B5

           MVKL    .S2     _color_r_edge,B4  ; |440| 
||         MVKL    .S1     _color_background,A3 ; |437| 
||         ADD     .L2X    A6,B4,B22         ; Define a twin register
||         ADD     .D2     B4,16,B20

           LDDW    .D1T1   *A31,A7:A6        ; |438| 
||         MVKH    .S2     _color_r_edge,B4  ; |440| 
||         MVKH    .S1     _color_background,A3 ; |437| 
||         ADD     .L1     A4,A24,A27

           LDDW    .D1T2   *A3,B5:B4         ; |437| 
||         LDDW    .D2T1   *B4,A5:A4         ; |440| 
||         ADD     .L1X    B5,A24,A28
||         ADD     .S1     A5,A24,A26

           MVK     .S1     0xe2,A29

           MVK     .S1     71,A0             ; |450| 
||         MVK     .S2     632,B6

           ADD     .L2X    B6,A24,B23
||         MVKH    .S1     0xd6ba,A23        ; |426| 
||         MVK     .S2     0xe4,B24
||         MVK     .L1     0x8,A25           ; |434| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 450
;*      Loop opening brace source line   : 451
;*      Loop closing brace source line   : 454
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
L40:    ; PIPED LOOP PROLOG

   [ A0]   BDEC    .S1     L41,A0            ; |450| (P) <0,0> 
||         STDW    .D1T1   A7:A6,*+A24(8)    ; |438| 

   [ A0]   BDEC    .S1     L41,A0            ; |450| (P) <1,0> 
||         STDW    .D1T2   B5:B4,*A24        ; |437| 

   [ A0]   BDEC    .S1     L41,A0            ; |450| (P) <2,0> 
||         MV      .L1X    B20,A3            ; |450| 
||         STDW    .D1T1   A5:A4,*A27        ; |447| 
||         STDW    .D2T2   B5:B4,*B23        ; |441| 

           MVK     .S2     640,B6
|| [ A0]   BDEC    .S1     L41,A0            ; |450| (P) <3,0> 
||         STDW    .D1T1   A5:A4,*A28        ; |440| 
||         MV      .L1X    B5,A5
||         STDW    .D2T2   B5:B4,*B21        ; |448| 

	.dwpsn	"utility.c",450,0

           ADD     .L2     B6,B20,B6
|| [ A0]   BDEC    .S1     L41,A0            ; |450| (P) <4,0> 
||         STDW    .D2T1   A7:A6,*B22        ; |444| 
||         MV      .L1X    B4,A4
||         STDW    .D1T2   B5:B4,*A26        ; |443| 

;** --------------------------------------------------------------------------*
L41:    ; PIPED LOOP KERNEL
DW$L$_disp_draw_half_frame$5$B:
	.dwpsn	"utility.c",451,0
	.dwpsn	"utility.c",454,0

           STDW    .D1T1   A5:A4,*A3++       ; |452| <0,5> 
||         STDW    .D2T2   B5:B4,*B6++       ; |453| <0,5> 
|| [ A0]   BDEC    .S1     L41,A0            ; |450| <5,0> 

DW$L$_disp_draw_half_frame$5$E:
;** --------------------------------------------------------------------------*
L42:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$7$B:

           STDW    .D2T2   B5:B4,*B6++       ; |453| (E) <2,5> 
||         STDW    .D1T1   A5:A4,*A3++       ; |452| (E) <2,5> 
||         CMPLT   .L1     A25,14,A30        ; |457| 
||         CMPLT   .L2X    A25,B24,B31       ; |457| 
||         MVK     .S1     16,A22            ; |457| 

           STDW    .D1T1   A5:A4,*A3++       ; |452| (E) <3,5> 
||         STDW    .D2T2   B5:B4,*B6++       ; |453| (E) <3,5> 
||         CMPLT   .L1     A25,A29,A31       ; |457| 

           STDW    .D2T2   B5:B4,*B6++       ; |453| (E) <4,5> 
||         STDW    .D1T1   A5:A4,*A3++       ; |452| (E) <4,5> 
||         CMPLT   .L1     A25,A22,A6        ; |457| 

           STDW    .D1T1   A5:A4,*A3++       ; |452| (E) <5,5> 
||         STDW    .D2T2   B5:B4,*B6++       ; |453| (E) <5,5> 
||         XOR     .L1     1,A30,A4          ; |457| 
||         XOR     .S1     1,A31,A5          ; |457| 

           AND     .L1X    B31,A5,A3         ; |457| 
||         AND     .S1     A6,A4,A4          ; |457| 

           OR      .L1     A3,A4,A0          ; |457| 
   [!A0]   BNOP    .S1     L44,5             ; |457| 
           ; BRANCHCC OCCURS {L44}           ; |457| 
DW$L$_disp_draw_half_frame$7$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$8$B:
;**  	-----------------------    U$76 = &dest[16];
;**  	-----------------------    U$78 = (unsigned short *)U$38+32;
;** 460	-----------------------    L$3 = 288;
;**  	-----------------------    #pragma MUST_ITERATE(288, 288, 288)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     _disp_alpha_blend ; |462| 
||         MV      .L2X    A24,B4
||         MVK     .S2     0x120,B0          ; |460| 
||         ADDAD   .D1     A26,4,A8

           NOP             2
	.dwpsn	"utility.c",460,0
           ADDAD   .D2     B4,4,B6
DW$L$_disp_draw_half_frame$8$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L43:    
DW$L$_disp_draw_half_frame$9$B:
	.dwpsn	"utility.c",461,0
;**	-----------------------g6:
;** 462	-----------------------    *U$76++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 463	-----------------------    *U$78++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 460	-----------------------    if ( --L$3 ) goto g6;
           ADDKPC  .S2     RL24,B3,0         ; |462| 

           EXTU    .S2     B19,16,16,B4      ; |462| 
||         EXTU    .S1     A23,16,16,A4      ; |462| 

RL24:      ; CALL OCCURS {_disp_alpha_blend}  ; |462| 
DW$L$_disp_draw_half_frame$9$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$10$B:
           CALL    .S1     _disp_alpha_blend ; |463| 
           EXTU    .S2     B19,16,16,B4      ; |463| 
           ADDKPC  .S2     RL25,B3,1         ; |463| 
           MV      .L2X    A4,B5             ; |462| 

           EXTU    .S1     A23,16,16,A4      ; |463| 
||         STH     .D2T2   B5,*B6++          ; |462| 

RL25:      ; CALL OCCURS {_disp_alpha_blend}  ; |463| 
DW$L$_disp_draw_half_frame$10$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$11$B:

           SUB     .L2     B0,1,B0           ; |460| 
||         STH     .D1T1   A4,*A8++          ; |463| 

   [ B0]   BNOP    .S1     L43,1             ; |460| 
   [ B0]   CALL    .S1     _disp_alpha_blend ; |462| 
	.dwpsn	"utility.c",464,0
           NOP             3
           ; BRANCHCC OCCURS {L43}           ; |460| 
DW$L$_disp_draw_half_frame$11$E:
;** --------------------------------------------------------------------------*
L44:    
DW$L$_disp_draw_half_frame$12$B:
;**	-----------------------g7:
;** 467	-----------------------    if ( !((j >= 16)&(j < K$67)) ) goto g10;

           MVK     .S1     16,A3             ; |467| 
||         CMPLT   .L1     A25,A29,A4        ; |467| 

           CMPLT   .L1     A25,A3,A3         ; |467| 
           XOR     .L1     1,A3,A3           ; |467| 
           AND     .L1     A4,A3,A0          ; |467| 
   [!A0]   BNOP    .S1     L46,5             ; |467| 
           ; BRANCHCC OCCURS {L46}           ; |467| 
DW$L$_disp_draw_half_frame$12$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$13$B:
;**  	-----------------------    U$76 = &dest[16];
;**  	-----------------------    U$93 = &dest[301];
;**  	-----------------------    U$97 = &dest[336];
;**  	-----------------------    U$101 = &dest[621];
;** 469	-----------------------    L$4 = 3;
;**  	-----------------------    #pragma MUST_ITERATE(3, 3, 3)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           CALL    .S1     _disp_alpha_blend ; |471| 
||         ADDAD   .D1     A24,4,A4
||         MVK     .S2     672,B4
||         MVK     .L1     0x3,A0            ; |469| 

           MVK     .S2     602,B31
||         MVK     .S1     1242,A3
||         ADD     .L2X    B4,A24,B7

           MV      .L2X    A4,B6             ; Define a twin register
||         ADD     .L1     A3,A24,A8

	.dwpsn	"utility.c",469,0
           ADD     .L2X    B31,A24,B8
DW$L$_disp_draw_half_frame$13$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L45:    
DW$L$_disp_draw_half_frame$14$B:
	.dwpsn	"utility.c",470,0
;**	-----------------------g9:
;** 471	-----------------------    *U$76++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 472	-----------------------    *U$93++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 474	-----------------------    *U$97++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 475	-----------------------    *U$101++ = disp_alpha_blend((unsigned short)K$10, (unsigned short)v$1);
;** 469	-----------------------    if ( --L$4 ) goto g9;
           ADDKPC  .S2     RL26,B3,0         ; |471| 

           EXTU    .S2     B19,16,16,B4      ; |471| 
||         EXTU    .S1     A23,16,16,A4      ; |471| 

RL26:      ; CALL OCCURS {_disp_alpha_blend}  ; |471| 
DW$L$_disp_draw_half_frame$14$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$15$B:
           CALL    .S1     _disp_alpha_blend ; |472| 
           EXTU    .S2     B19,16,16,B4      ; |472| 
           ADDKPC  .S2     RL27,B3,1         ; |472| 
           MV      .L2X    A4,B5             ; |471| 

           EXTU    .S1     A23,16,16,A4      ; |472| 
||         STH     .D2T2   B5,*B6++          ; |471| 

RL27:      ; CALL OCCURS {_disp_alpha_blend}  ; |472| 
           CALL    .S1     _disp_alpha_blend ; |474| 
           EXTU    .S2     B19,16,16,B4      ; |474| 
           ADDKPC  .S2     RL28,B3,1         ; |474| 
           MV      .L2X    A4,B5             ; |472| 

           EXTU    .S1     A23,16,16,A4      ; |474| 
||         STH     .D2T2   B5,*B8++          ; |472| 

RL28:      ; CALL OCCURS {_disp_alpha_blend}  ; |474| 
           CALL    .S1     _disp_alpha_blend ; |475| 
           EXTU    .S2     B19,16,16,B4      ; |475| 
           ADDKPC  .S2     RL29,B3,1         ; |475| 
           MV      .L2X    A4,B5             ; |474| 

           EXTU    .S1     A23,16,16,A4      ; |475| 
||         STH     .D2T2   B5,*B7++          ; |474| 

RL29:      ; CALL OCCURS {_disp_alpha_blend}  ; |475| 
DW$L$_disp_draw_half_frame$15$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$16$B:

           SUB     .L1     A0,1,A0           ; |469| 
||         STH     .D1T1   A4,*A8++          ; |475| 

   [ A0]   BNOP    .S1     L45,1             ; |469| 
   [ A0]   CALL    .S1     _disp_alpha_blend ; |471| 
	.dwpsn	"utility.c",476,0
           NOP             3
           ; BRANCHCC OCCURS {L45}           ; |469| 
DW$L$_disp_draw_half_frame$16$E:
;** --------------------------------------------------------------------------*
L46:    
DW$L$_disp_draw_half_frame$17$B:
;**	-----------------------g10:
;** 480	-----------------------    _set_logo(dest, j);
;** 434	-----------------------    U$32 += 160;
;** 434	-----------------------    U$35 += 160;
;** 434	-----------------------    U$38 += 160;
;** 434	-----------------------    U$41 += 160;
;** 434	-----------------------    U$44 += 160;
;** 434	-----------------------    U$47 += 160;
;** 434	-----------------------    U$50 += 1280;
;** 434	-----------------------    dest += 640;
;** 434	-----------------------    if ( (++j) < 234 ) goto g2;
;** 482	-----------------------    return 0;
           CALL    .S1     __set_logo        ; |480| 
           ADDKPC  .S2     RL30,B3,2         ; |480| 
           MV      .L2X    A25,B4            ; |480| 
           MV      .L1     A24,A4            ; |480| 
RL30:      ; CALL OCCURS {__set_logo}        ; |480| 
DW$L$_disp_draw_half_frame$17$E:
;** --------------------------------------------------------------------------*
DW$L$_disp_draw_half_frame$18$B:

           ADDK    .S2     1280,B23          ; |434| 
||         MVK     .S1     234,A3            ; |434| 
||         ADD     .L1     1,A25,A25         ; |434| 

           CMPLT   .L1     A25,A3,A0         ; |434| 
||         MVKL    .S1     _color_l_edge,A31 ; |438| 
||         ADDK    .S2     1280,B22          ; |434| 

   [ A0]   MVKL    .S2     _color_r_edge,B4  ; |440| 
|| [ A0]   MVKL    .S1     _color_background,A3 ; |437| 

           MVKH    .S1     _color_l_edge,A31 ; |438| 
||         ADDK    .S2     1280,B21          ; |434| 

   [ A0]   MVKH    .S2     _color_r_edge,B4  ; |440| 
|| [ A0]   LDDW    .D1T1   *A31,A7:A6        ; |438| 
|| [ A0]   MVKH    .S1     _color_background,A3 ; |437| 

   [ A0]   BNOP    .S2     L40,1             ; |434| 
|| [ A0]   LDDW    .D2T1   *B4,A5:A4         ; |440| 
|| [ A0]   LDDW    .D1T2   *A3,B5:B4         ; |437| 
|| [ A0]   MVK     .S1     71,A0             ; |450| 

           ADDK    .S1     1280,A26          ; |434| 
||         ADDK    .S2     1280,B20          ; |434| 

           ADDK    .S1     1280,A27          ; |434| 
           ADDK    .S1     1280,A28          ; |434| 
           ADDK    .S1     1280,A24          ; |434| 
           ; BRANCHCC OCCURS {L40}           ; |434| 
DW$L$_disp_draw_half_frame$18$E:
;** --------------------------------------------------------------------------*
           RETNOP  .S2     B30,4             ; |483| 
	.dwpsn	"utility.c",483,1
           ZERO    .L1     A4                ; |482| 
           ; BRANCH OCCURS {B30}             ; |483| 

DW$135	.dwtag  DW_TAG_loop
	.dwattr DW$135, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L40:1:1288598882")
	.dwattr DW$135, DW_AT_begin_file("utility.c")
	.dwattr DW$135, DW_AT_begin_line(0x1b2)
	.dwattr DW$135, DW_AT_end_line(0x1e0)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_disp_draw_half_frame$13$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_disp_draw_half_frame$13$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_disp_draw_half_frame$8$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_disp_draw_half_frame$8$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_disp_draw_half_frame$7$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_disp_draw_half_frame$7$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_disp_draw_half_frame$12$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_disp_draw_half_frame$12$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_disp_draw_half_frame$17$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_disp_draw_half_frame$17$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_disp_draw_half_frame$18$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_disp_draw_half_frame$18$E)

DW$142	.dwtag  DW_TAG_loop
	.dwattr DW$142, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L41:2:1288598882")
	.dwattr DW$142, DW_AT_begin_file("utility.c")
	.dwattr DW$142, DW_AT_begin_line(0x1c2)
	.dwattr DW$142, DW_AT_end_line(0x1c6)
DW$143	.dwtag  DW_TAG_loop_range
	.dwattr DW$143, DW_AT_low_pc(DW$L$_disp_draw_half_frame$5$B)
	.dwattr DW$143, DW_AT_high_pc(DW$L$_disp_draw_half_frame$5$E)
	.dwendtag DW$142


DW$144	.dwtag  DW_TAG_loop
	.dwattr DW$144, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L43:2:1288598882")
	.dwattr DW$144, DW_AT_begin_file("utility.c")
	.dwattr DW$144, DW_AT_begin_line(0x1cc)
	.dwattr DW$144, DW_AT_end_line(0x1d0)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$_disp_draw_half_frame$9$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$_disp_draw_half_frame$9$E)
DW$146	.dwtag  DW_TAG_loop_range
	.dwattr DW$146, DW_AT_low_pc(DW$L$_disp_draw_half_frame$10$B)
	.dwattr DW$146, DW_AT_high_pc(DW$L$_disp_draw_half_frame$10$E)
DW$147	.dwtag  DW_TAG_loop_range
	.dwattr DW$147, DW_AT_low_pc(DW$L$_disp_draw_half_frame$11$B)
	.dwattr DW$147, DW_AT_high_pc(DW$L$_disp_draw_half_frame$11$E)
	.dwendtag DW$144


DW$148	.dwtag  DW_TAG_loop
	.dwattr DW$148, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L45:2:1288598882")
	.dwattr DW$148, DW_AT_begin_file("utility.c")
	.dwattr DW$148, DW_AT_begin_line(0x1d5)
	.dwattr DW$148, DW_AT_end_line(0x1dc)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$_disp_draw_half_frame$14$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$_disp_draw_half_frame$14$E)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$_disp_draw_half_frame$15$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$_disp_draw_half_frame$15$E)
DW$151	.dwtag  DW_TAG_loop_range
	.dwattr DW$151, DW_AT_low_pc(DW$L$_disp_draw_half_frame$16$B)
	.dwattr DW$151, DW_AT_high_pc(DW$L$_disp_draw_half_frame$16$E)
	.dwendtag DW$148

	.dwendtag DW$135

	.dwattr DW$133, DW_AT_end_file("utility.c")
	.dwattr DW$133, DW_AT_end_line(0x1e3)
	.dwattr DW$133, DW_AT_end_column(0x01)
	.dwendtag DW$133

	.sect	".text"
	.global	_disp_direct

DW$152	.dwtag  DW_TAG_subprogram, DW_AT_name("disp_direct"), DW_AT_symbol_name("_disp_direct")
	.dwattr DW$152, DW_AT_low_pc(_disp_direct)
	.dwattr DW$152, DW_AT_high_pc(0x00)
	.dwattr DW$152, DW_AT_begin_file("utility.c")
	.dwattr DW$152, DW_AT_begin_line(0x1e5)
	.dwattr DW$152, DW_AT_begin_column(0x06)
	.dwattr DW$152, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$152, DW_AT_skeletal(0x01)
	.dwpsn	"utility.c",486,1

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
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_name("org"), DW_AT_symbol_name("_org")
	.dwattr DW$153, DW_AT_type(*DW$T$38)
	.dwattr DW$153, DW_AT_location[DW_OP_reg4]
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("rgb"), DW_AT_symbol_name("_rgb")
	.dwattr DW$154, DW_AT_type(*DW$T$47)
	.dwattr DW$154, DW_AT_location[DW_OP_reg20]
;** 486	-----------------------    org = org;
;** 486	-----------------------    rgb = rgb;
;**  	-----------------------    V$0 = *(&u);
;**  	-----------------------    U$12 = org;
;**  	-----------------------    U$18 = &rgb[306560];
;**  	-----------------------    K$51 = (-2017);
;**  	-----------------------    K$64 = 0xfffff800u;
;**  	-----------------------    K$67 = (-32);
;** 492	-----------------------    L$1 = 480;
;**  	-----------------------    #pragma MUST_ITERATE(480, 480, 480)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
           MVKL    .S1     0x95b00,A3
           MVKH    .S1     0x95b00,A3
           MVK     .S1     0xffffffe0,A16

           ADD     .L2X    A3,B4,B22
||         MVK     .S2     0x1e0,B1          ; |492| 
||         MV      .L1     A4,A18            ; |486| 

           MVK     .S1     0xfffff81f,A17
||         MVK     .S2     0xfffff800,B18

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L47
;** --------------------------------------------------------------------------*
L47:    
DW$L$_disp_direct$2$B:
;**	-----------------------g2:
;** 496	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(8)
;**  	-----------------------    U$21 = U$12;
;**  	-----------------------    U$76 = &U$18[-8];
;** 496	-----------------------    L$2 = 80;
;**  	-----------------------    #pragma MUST_ITERATE(80, 80, 80)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g3:
;** 498	-----------------------    s$16 = U$21[1];
;** 498	-----------------------    s$17 = U$21[2];
;** 498	-----------------------    s$18 = U$21[3];
;** 498	-----------------------    s$19 = U$21[4];
;** 498	-----------------------    s$20 = U$21[5];
;** 498	-----------------------    s$21 = U$21[6];
;** 498	-----------------------    s$22 = U$21[7];
;** 95	-----------------------    C$3 = *U$21++{8};  // [7]
;** 95	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)C$3, 3u, 5u)<<5), 21u, 21u)|(unsigned)C$3<<8&K$64);  // [7]
;** 96	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|C$3>>3));  // [7]
;** 97	-----------------------    *(U$76 += 8) = y$26;  // [7]
;** 95	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$16, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$16<<8&K$64);  // [7]
;** 96	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$16>>3));  // [7]
;** 97	-----------------------    U$76[1] = y$26;  // [7]
;** 95	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$17, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$17<<8&K$64);  // [7]
;** 96	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$17>>3));  // [7]
;** 97	-----------------------    U$76[2] = y$26;  // [7]
;** 95	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$18, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$18<<8&K$64);  // [7]
;** 96	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$18>>3));  // [7]
;** 97	-----------------------    U$76[3] = y$26;  // [7]
;** 95	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$19, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$19<<8&K$64);  // [7]
;** 96	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$19>>3));  // [7]
;** 97	-----------------------    U$76[4] = y$26;  // [7]
;** 95	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$20, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$20<<8&K$64);  // [7]
;** 96	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$20>>3));  // [7]
;** 97	-----------------------    U$76[5] = y$26;  // [7]
;** 95	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$21, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$21<<8&K$64);  // [7]
;** 96	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$21>>3));  // [7]
;** 97	-----------------------    U$76[6] = y$26;  // [7]
;** 95	-----------------------    V$0 = (unsigned short)(_extu((unsigned)(unsigned short)(V$0&K$51|_extu((unsigned)s$22, 3u, 5u)<<5), 21u, 21u)|(unsigned)s$22<<8&K$64);  // [7]
;** 96	-----------------------    y$26 = (int)(V$0 = (unsigned short)(V$0&K$67|s$22>>3));  // [7]
;** 97	-----------------------    U$76[7] = y$26;  // [7]
;** 496	-----------------------    if ( --L$2 ) goto g3;
;** 492	-----------------------    U$12 += 640;

           MVC     .S2     CSR,B23
||         MV      .L1X    B22,A3
||         SUB     .L2X    A18,1,B9
||         MVK     .S1     0x1,A0            ; init prolog collapse predicate
||         MV      .D1     A18,A7

           AND     .L2     -2,B23,B4
||         SUB     .D1     A3,16,A9
||         MVK     .S2     0x50,B0           ; |496| 

           MVC     .S2     B4,CSR            ; interrupts off
DW$L$_disp_direct$2$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 496
;*      Loop opening brace source line   : 497
;*      Loop closing brace source line   : 499
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
L48:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
L49:    ; PIPED LOOP KERNEL
DW$L$_disp_direct$4$B:
	.dwpsn	"utility.c",497,0

           SHL     .S2X    A5,8,B17          ; |95| <0,13> 
||         EXTU    .S1     A3,16,16,A3       ; |95| <0,13>  ^ 

           SHL     .S2     B16,5,B16         ; |95| <0,14> 
||         AND     .L2     B18,B17,B19       ; |95| <0,14> 
||         EXTU    .S1     A3,21,21,A3       ; |95| <0,14>  ^ 

           SHL     .S2     B6,8,B7           ; |95| <0,15> 
||         OR      .L1X    B7,A3,A3          ; |95| <0,15>  ^ 

           SHRU    .S2     B6,3,B17          ; |96| <0,16> 
||         AND     .L2     B18,B7,B7         ; |95| <0,16> 
||         EXTU    .S1     A3,16,16,A3       ; |95| <0,16>  ^ 

           SHL     .S2     B8,5,B6           ; |95| <0,17> 
||         AND     .L1     A16,A3,A3         ; |96| <0,17>  ^ 

           SHL     .S2     B5,8,B4           ; |95| <0,18> 
||         OR      .L1X    B4,A3,A3          ; |96| <0,18>  ^ 

           SHRU    .S2     B5,3,B5           ; |96| <0,19> 
||         AND     .L2     B18,B4,B4         ; |95| <0,19> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,19>  ^ 

           SHRU    .S2X    A5,3,B8           ; |96| <0,20> 
||         AND     .L1     A17,A3,A4         ; |95| <0,20>  ^ 

           MV      .L2X    A3,B21            ; |96| <0,21> 
||         OR      .L1X    B6,A4,A3          ; |95| <0,21>  ^ 

           EXTU    .S1     A3,16,16,A3       ; |95| <0,22>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |95| <0,23>  ^ 
           OR      .L1X    B4,A3,A3          ; |95| <0,24>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |95| <0,25>  ^ 
           AND     .L1     A16,A3,A3         ; |96| <0,26>  ^ 
           OR      .L1X    B5,A3,A3          ; |96| <0,27>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| <0,28>  ^ 
           AND     .L1     A17,A3,A4         ; |95| <0,29>  ^ 

   [!A0]   LDBU    .D2T1   *+B9(4),A4        ; |498| <0,30> 
||         MV      .L2X    A3,B16            ; |96| <0,30> 
||         OR      .L1X    B16,A4,A3         ; |95| <0,30>  ^ 

           EXTU    .S1     A3,16,16,A3       ; |95| <0,31>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |95| <0,32>  ^ 
           OR      .L1X    B7,A3,A3          ; |95| <0,33>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |95| <0,34>  ^ 

           MV      .L2X    A4,B4             ; |498| <0,35> Define a twin register
||         AND     .L1     A16,A3,A3         ; |96| <0,35>  ^ 

           EXTU    .S2     B4,3,5,B4         ; |95| <0,36> 
||         OR      .L1X    B17,A3,A3         ; |96| <0,36>  ^ 

           SHL     .S2     B4,5,B5           ; |95| <0,37> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,37>  ^ 

           SHL     .S2X    A4,8,B4           ; |95| <0,38> 
||         AND     .L1     A17,A3,A5         ; |95| <0,38>  ^ 

   [!A0]   LDBU    .D2T1   *+B9(5),A3        ; |498| <0,39> 
||         AND     .L2     B18,B4,B4         ; |95| <0,39> 
||         MV      .S2X    A3,B5             ; |96| <0,39> 
||         OR      .L1X    B5,A5,A3          ; |95| <0,39>  ^ 

           SHRU    .S2X    A4,3,B6           ; |96| <0,40> 
||         EXTU    .S1     A3,16,16,A3       ; |95| <0,40>  ^ 

           EXTU    .S1     A3,21,21,A3       ; |95| <0,41>  ^ 
           OR      .L1X    B4,A3,A3          ; |95| <0,42>  ^ 
           EXTU    .S1     A3,16,16,A4       ; |95| <0,43>  ^ 

           MV      .L2X    A3,B4             ; |498| <0,44> Define a twin register
||         AND     .L1     A16,A4,A4         ; |96| <0,44>  ^ 

           EXTU    .S2     B4,3,5,B4         ; |95| <0,45> 
||         OR      .L1X    B6,A4,A4          ; |96| <0,45>  ^ 

           SHL     .S2     B4,5,B4           ; |95| <0,46> 
||         EXTU    .S1     A4,16,16,A4       ; |96| <0,46>  ^ 

           SHL     .S2X    A3,8,B6           ; |95| <0,47> 
||         AND     .L1     A17,A4,A5         ; |95| <0,47>  ^ 

   [!A0]   LDBU    .D2T1   *+B9(6),A4        ; |498| <0,48> 
||         AND     .L2     B18,B6,B4         ; |95| <0,48> 
||         MV      .S2X    A4,B6             ; |96| <0,48> 
||         OR      .L1X    B4,A5,A4          ; |95| <0,48>  ^ 

           SHRU    .S2X    A3,3,B7           ; |96| <0,49> 
||         EXTU    .S1     A4,16,16,A3       ; |95| <0,49>  ^ 

           EXTU    .S1     A3,21,21,A3       ; |95| <0,50>  ^ 
           OR      .L1X    B4,A3,A3          ; |95| <0,51>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |95| <0,52>  ^ 

           MV      .L2X    A4,B4             ; |498| <0,53> Define a twin register
||         AND     .L1     A16,A3,A3         ; |96| <0,53>  ^ 

           EXTU    .S2     B4,3,5,B4         ; |95| <0,54> 
||         OR      .L1X    B7,A3,A3          ; |96| <0,54>  ^ 

           SHL     .S2     B4,5,B4           ; |95| <0,55> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,55>  ^ 

           SHL     .S2X    A4,8,B7           ; |95| <0,56> 
||         AND     .L1     A17,A3,A5         ; |95| <0,56>  ^ 

           AND     .L2     B18,B7,B7         ; |95| <0,57> 
|| [!A0]   STH     .D1T2   B21,*++A9(16)     ; |97| <0,57> 
||         MV      .S2X    A3,B4             ; |96| <0,57> 
||         OR      .L1X    B4,A5,A3          ; |95| <0,57>  ^ 

           SHRU    .S2X    A4,3,B4           ; |96| <0,58> 
|| [!A0]   STH     .D1T2   B4,*+A9(8)        ; |97| <0,58> 
||         EXTU    .S1     A3,16,16,A3       ; |95| <0,58>  ^ 

   [!A0]   STH     .D1T2   B6,*+A9(6)        ; |97| <0,59> 
||         EXTU    .S1     A3,21,21,A3       ; |95| <0,59>  ^ 

   [!A0]   STH     .D1T2   B5,*+A9(4)        ; |97| <0,60> 
||         OR      .L1X    B7,A3,A3          ; |95| <0,60>  ^ 

   [!A0]   STH     .D1T2   B16,*+A9(2)       ; |97| <0,61> 
||         EXTU    .S1     A3,16,16,A3       ; |95| <0,61>  ^ 

           AND     .L1     A16,A3,A3         ; |96| <0,62>  ^ 
           OR      .L1X    B4,A3,A3          ; |96| <0,63>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| <0,64>  ^ 
           AND     .L1     A17,A3,A4         ; |95| <0,65>  ^ 

   [!A0]   LDBU    .D2T1   *++B9(8),A4       ; |498| <0,66> 
||         MV      .L2X    A3,B4             ; |96| <0,66> 
||         OR      .L1X    B20,A4,A3         ; |95| <0,66>  ^ 

   [!A0]   STH     .D1T2   B4,*+A9(10)       ; |97| <0,67> 
||         EXTU    .S1     A3,16,16,A3       ; |95| <0,67>  ^ 

           EXTU    .S1     A3,21,21,A3       ; |95| <0,68>  ^ 
           OR      .L1X    B19,A3,A3         ; |95| <0,69>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |95| <0,70>  ^ 

           MV      .L2X    A4,B4             ; |498| <0,71> Define a twin register
||         AND     .L1     A16,A3,A3         ; |96| <0,71>  ^ 

           EXTU    .S2     B4,3,5,B4         ; |95| <0,72> 
||         OR      .L1X    B8,A3,A3          ; |96| <0,72>  ^ 
||         LDBU    .D1T2   *+A7(1),B5        ; |498| <1,0> 

           SHL     .S2     B4,5,B4           ; |95| <0,73> 
||         EXTU    .S1     A3,16,16,A3       ; |96| <0,73>  ^ 
||         LDBU    .D1T2   *+A7(2),B6        ; |498| <1,1> 

           SHL     .S2X    A4,8,B5           ; |95| <0,74> 
||         AND     .S1     A17,A3,A5         ; |95| <0,74>  ^ 
||         LDBU    .D1T1   *+A7(6),A5        ; |498| <1,2> 

           SHRU    .S2X    A4,3,B7           ; |96| <0,75> 
||         AND     .L2     B18,B5,B4         ; |95| <0,75> 
||         OR      .L1X    B4,A5,A4          ; |95| <0,75>  ^ 
||         LDBU    .D1T1   *A7++(8),A3       ; |95| <1,3> 

   [!A0]   STH     .D1T1   A3,*+A9(12)       ; |97| <0,76> 
||         EXTU    .S1     A4,16,16,A3       ; |95| <0,76>  ^ 

           EXTU    .S1     A3,21,21,A3       ; |95| <0,77>  ^ 
||         EXTU    .S2     B5,3,5,B8         ; |95| <1,5> 

   [ B0]   SUB     .L2     B0,1,B0           ; |496| <0,78> 
||         OR      .L1X    B4,A3,A3          ; |95| <0,78>  ^ 
||         EXTU    .S2     B6,3,5,B16        ; |95| <1,6> 

   [ B0]   B       .S2     L49               ; |496| <0,79> 
||         EXTU    .S1     A3,16,16,A4       ; |95| <0,79>  ^ 
||         MV      .L2X    A5,B4             ; |498| <1,7> Define a twin register

           AND     .L1     A16,A4,A4         ; |96| <0,80>  ^ 
||         EXTU    .S2     B4,3,5,B17        ; |95| <1,8> 
||         MV      .L2X    A3,B4             ; |95| <1,8> Define a twin register

           OR      .L1X    B7,A4,A4          ; |96| <0,81>  ^ 
||         EXTU    .S2     B4,3,5,B4         ; |95| <1,9> 

   [!A0]   EXTU    .S1     A4,16,16,A8       ; |96| <0,82>  ^ 
||         SHL     .S2X    A3,8,B7           ; |95| <1,10> 

           MV      .L1     A8,A4             ; |96| <0,83> 
||         SHRU    .S2X    A3,3,B4           ; |96| <1,11> 
||         AND     .L2     B18,B7,B7         ; |95| <1,11> 
||         AND     .D1     A17,A8,A3         ; |95| <1,11>  ^ 
||         SHL     .S1X    B4,5,A6           ; |95| <1,11> 

	.dwpsn	"utility.c",499,0

   [ A0]   SUB     .L1     A0,1,A0           ; <0,84> 
|| [!A0]   STH     .D1T1   A4,*+A9(14)       ; |97| <0,84> 
||         SHL     .S2     B17,5,B20         ; |95| <1,12> 
||         OR      .S1     A6,A3,A3          ; |95| <1,12>  ^ 

DW$L$_disp_direct$4$E:
;** --------------------------------------------------------------------------*
L50:    ; PIPED LOOP EPILOG
;** 492	-----------------------    U$18 -= 640;
;** 492	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    return;

           SUB     .L2     B1,1,B1           ; |492| 
||         EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,13>  ^ 
||         SHL     .S2X    A5,8,B17          ; |95| (E) <1,13> 

           AND     .L2     B18,B17,B19       ; |95| (E) <1,14> 
||         EXTU    .S1     A3,21,21,A3       ; |95| (E) <1,14>  ^ 
||         SHL     .S2     B16,5,B16         ; |95| (E) <1,14> 

           ADDK    .S1     640,A18           ; |492| 
||         OR      .L1X    B7,A3,A3          ; |95| (E) <1,15>  ^ 
||         SHL     .S2     B6,8,B7           ; |95| (E) <1,15> 

           SHRU    .S2     B6,3,B17          ; |96| (E) <1,16> 
||         AND     .L2     B18,B7,B7         ; |95| (E) <1,16> 
||         EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,16>  ^ 

           AND     .L1     A16,A3,A3         ; |96| (E) <1,17>  ^ 
||         SHL     .S2     B8,5,B6           ; |95| (E) <1,17> 

           OR      .L1X    B4,A3,A3          ; |96| (E) <1,18>  ^ 
||         SHL     .S2     B5,8,B4           ; |95| (E) <1,18> 

           SHRU    .S2     B5,3,B5           ; |96| (E) <1,19> 
||         AND     .L2     B18,B4,B4         ; |95| (E) <1,19> 
||         EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,19>  ^ 

           AND     .L1     A17,A3,A4         ; |95| (E) <1,20>  ^ 
||         SHRU    .S2X    A5,3,B8           ; |96| (E) <1,20> 

           ADDK    .S2     -1280,B22         ; |492| 
||         OR      .L1X    B6,A4,A3          ; |95| (E) <1,21>  ^ 
||         MV      .L2X    A3,B21            ; |96| (E) <1,21> 

           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,22>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |95| (E) <1,23>  ^ 
           OR      .L1X    B4,A3,A3          ; |95| (E) <1,24>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,25>  ^ 
           AND     .L1     A16,A3,A3         ; |96| (E) <1,26>  ^ 
           OR      .L1X    B5,A3,A3          ; |96| (E) <1,27>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,28>  ^ 
           AND     .L1     A17,A3,A4         ; |95| (E) <1,29>  ^ 

           MV      .L2X    A3,B16            ; |96| (E) <1,30> 
||         OR      .L1X    B16,A4,A3         ; |95| (E) <1,30>  ^ 
||         LDBU    .D2T1   *+B9(4),A4        ; |498| (E) <1,30> 

           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,31>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |95| (E) <1,32>  ^ 
           OR      .L1X    B7,A3,A3          ; |95| (E) <1,33>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,34>  ^ 

           AND     .L1     A16,A3,A3         ; |96| (E) <1,35>  ^ 
||         MV      .L2X    A4,B4             ; |498| (E) <1,35> Define a twin register

           OR      .L1X    B17,A3,A3         ; |96| (E) <1,36>  ^ 
||         EXTU    .S2     B4,3,5,B4         ; |95| (E) <1,36> 

           SHL     .S2     B4,5,B5           ; |95| (E) <1,37> 
||         EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,37>  ^ 

           AND     .L1     A17,A3,A5         ; |95| (E) <1,38>  ^ 
||         SHL     .S2X    A4,8,B4           ; |95| (E) <1,38> 

           AND     .L2     B18,B4,B4         ; |95| (E) <1,39> 
||         MV      .S2X    A3,B5             ; |96| (E) <1,39> 
||         OR      .L1X    B5,A5,A3          ; |95| (E) <1,39>  ^ 
||         LDBU    .D2T1   *+B9(5),A3        ; |498| (E) <1,39> 

           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,40>  ^ 
||         SHRU    .S2X    A4,3,B6           ; |96| (E) <1,40> 

           EXTU    .S1     A3,21,21,A3       ; |95| (E) <1,41>  ^ 
           OR      .L1X    B4,A3,A3          ; |95| (E) <1,42>  ^ 
           EXTU    .S1     A3,16,16,A4       ; |95| (E) <1,43>  ^ 

           AND     .L1     A16,A4,A4         ; |96| (E) <1,44>  ^ 
||         MV      .L2X    A3,B4             ; |498| (E) <1,44> Define a twin register

           OR      .L1X    B6,A4,A4          ; |96| (E) <1,45>  ^ 
||         EXTU    .S2     B4,3,5,B4         ; |95| (E) <1,45> 

           SHL     .S2     B4,5,B4           ; |95| (E) <1,46> 
||         EXTU    .S1     A4,16,16,A4       ; |96| (E) <1,46>  ^ 

           AND     .L1     A17,A4,A5         ; |95| (E) <1,47>  ^ 
||         SHL     .S2X    A3,8,B6           ; |95| (E) <1,47> 

           STH     .D1T2   B21,*++A9(16)     ; |97| (E) <1,57> 
||         AND     .L2     B18,B6,B4         ; |95| (E) <1,48> 
||         MV      .S2X    A4,B6             ; |96| (E) <1,48> 
||         OR      .L1X    B4,A5,A4          ; |95| (E) <1,48>  ^ 
||         LDBU    .D2T1   *+B9(6),A4        ; |498| (E) <1,48> 

           STH     .D1T2   B5,*+A9(4)        ; |97| (E) <1,60> 
||         EXTU    .S1     A4,16,16,A3       ; |95| (E) <1,49>  ^ 
||         SHRU    .S2X    A3,3,B7           ; |96| (E) <1,49> 

;** --------------------------------------------------------------------------*
DW$L$_disp_direct$6$B:

           EXTU    .S1     A3,21,21,A3       ; |95| (E) <1,50>  ^ 
||         STH     .D1T2   B6,*+A9(6)        ; |97| (E) <1,59> 
||         MVC     .S2     B23,CSR           ; interrupts on

           OR      .L1X    B4,A3,A3          ; |95| (E) <1,51>  ^ 
||         STH     .D1T2   B16,*+A9(2)       ; |97| (E) <1,61> 

           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,52>  ^ 

           MV      .L2X    A4,B31            ; |498| (E) <1,53> Define a twin register
||         AND     .L1     A16,A3,A3         ; |96| (E) <1,53>  ^ 

           OR      .L1X    B7,A3,A3          ; |96| (E) <1,54>  ^ 
||         EXTU    .S2     B31,3,5,B4        ; |95| (E) <1,54> 

           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,55>  ^ 
||         SHL     .S2     B4,5,B4           ; |95| (E) <1,55> 

           AND     .L1     A17,A3,A5         ; |95| (E) <1,56>  ^ 
||         SHL     .S2X    A4,8,B30          ; |95| (E) <1,56> 

           MV      .L2X    A3,B4             ; |96| (E) <1,57> 
||         OR      .L1X    B4,A5,A3          ; |95| (E) <1,57>  ^ 
||         AND     .S2     B18,B30,B7        ; |95| (E) <1,57> 

           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,58>  ^ 
||         SHRU    .S2X    A4,3,B29          ; |96| (E) <1,58> 
||         STH     .D1T2   B4,*+A9(8)        ; |97| (E) <1,58> 

           EXTU    .S1     A3,21,21,A3       ; |95| (E) <1,59>  ^ 
||         LDBU    .D2T1   *++B9(8),A31      ; |498| (E) <1,66> 

           OR      .L1X    B7,A3,A3          ; |95| (E) <1,60>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,61>  ^ 
           AND     .L1     A16,A3,A3         ; |96| (E) <1,62>  ^ 
           OR      .L1X    B29,A3,A3         ; |96| (E) <1,63>  ^ 

           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,64>  ^ 
||         SHL     .S2X    A31,8,B5          ; |95| (E) <1,74> 

           AND     .L1     A17,A3,A4         ; |95| (E) <1,65>  ^ 
||         AND     .L2     B18,B5,B28        ; |95| (E) <1,75> 
||         SHRU    .S2X    A31,3,B7          ; |96| (E) <1,75> 

           MV      .L2X    A3,B4             ; |96| (E) <1,66> 
||         OR      .L1X    B20,A4,A3         ; |95| (E) <1,66>  ^ 

           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,67>  ^ 
||         STH     .D1T2   B4,*+A9(10)       ; |97| (E) <1,67> 
||         MV      .L2X    A31,B4            ; |498| (E) <1,71> Define a twin register

           EXTU    .S1     A3,21,21,A3       ; |95| (E) <1,68>  ^ 
||         EXTU    .S2     B4,3,5,B4         ; |95| (E) <1,72> 

           OR      .L1X    B19,A3,A3         ; |95| (E) <1,69>  ^ 
||         SHL     .S2     B4,5,B4           ; |95| (E) <1,73> 

           EXTU    .S1     A3,16,16,A3       ; |95| (E) <1,70>  ^ 
           AND     .L1     A16,A3,A3         ; |96| (E) <1,71>  ^ 
           OR      .L1X    B8,A3,A3          ; |96| (E) <1,72>  ^ 
           EXTU    .S1     A3,16,16,A3       ; |96| (E) <1,73>  ^ 

           AND     .L1     A17,A3,A5         ; |95| (E) <1,74>  ^ 
||         STH     .D1T1   A3,*+A9(12)       ; |97| (E) <1,76> 

           OR      .L1X    B4,A5,A4          ; |95| (E) <1,75>  ^ 
           EXTU    .S1     A4,16,16,A3       ; |95| (E) <1,76>  ^ 
           EXTU    .S1     A3,21,21,A3       ; |95| (E) <1,77>  ^ 
           OR      .L1X    B28,A3,A3         ; |95| (E) <1,78>  ^ 

           EXTU    .S1     A3,16,16,A4       ; |95| (E) <1,79>  ^ 
|| [ B1]   B       .S2     L47               ; |492| 

           AND     .L1     A16,A4,A4         ; |96| (E) <1,80>  ^ 
|| [!B1]   RET     .S2     B3                ; |502| 

           OR      .L1X    B7,A4,A4          ; |96| (E) <1,81>  ^ 
           EXTU    .S1     A4,16,16,A8       ; |96| (E) <1,82>  ^ 
           MV      .L1     A8,A4             ; |96| (E) <1,83> 
           STH     .D1T1   A4,*+A9(14)       ; |97| (E) <1,84> 
           ; BRANCHCC OCCURS {L47}           ; |492| 
DW$L$_disp_direct$6$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"utility.c",502,1
           NOP             1
           ; BRANCH OCCURS {B3}              ; |502| 

DW$155	.dwtag  DW_TAG_loop
	.dwattr DW$155, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L47:1:1288598882")
	.dwattr DW$155, DW_AT_begin_file("utility.c")
	.dwattr DW$155, DW_AT_begin_line(0x5f)
	.dwattr DW$155, DW_AT_end_line(0x1f6)
DW$156	.dwtag  DW_TAG_loop_range
	.dwattr DW$156, DW_AT_low_pc(DW$L$_disp_direct$2$B)
	.dwattr DW$156, DW_AT_high_pc(DW$L$_disp_direct$2$E)
DW$157	.dwtag  DW_TAG_loop_range
	.dwattr DW$157, DW_AT_low_pc(DW$L$_disp_direct$6$B)
	.dwattr DW$157, DW_AT_high_pc(DW$L$_disp_direct$6$E)

DW$158	.dwtag  DW_TAG_loop
	.dwattr DW$158, DW_AT_name("E:\project\IRISking\dsp-framework\dsp_all_v2\disp\utility.asm:L49:2:1288598882")
	.dwattr DW$158, DW_AT_begin_file("utility.c")
	.dwattr DW$158, DW_AT_begin_line(0x1f0)
	.dwattr DW$158, DW_AT_end_line(0x1f3)
DW$159	.dwtag  DW_TAG_loop_range
	.dwattr DW$159, DW_AT_low_pc(DW$L$_disp_direct$4$B)
	.dwattr DW$159, DW_AT_high_pc(DW$L$_disp_direct$4$E)
	.dwendtag DW$158

	.dwendtag DW$155

	.dwattr DW$152, DW_AT_end_file("utility.c")
	.dwattr DW$152, DW_AT_end_line(0x1f6)
	.dwattr DW$152, DW_AT_end_column(0x01)
	.dwendtag DW$152

;; Inlined function references:
;; [  7] _conv_565
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Assertion failed, (disp_line_count >= (240 - 6)), file util"
	.string	"ity.c, line 366",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_DAT_copy
	.global	_DAT_wait
	.global	_DAT_copy2d
	.global	__abort_msg

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$29	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
	.dwendtag DW$T$29

DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x20)

DW$T$33	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
	.dwendtag DW$T$35


DW$T$39	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$39


DW$T$42	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)

DW$T$45	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$41)
DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$11)
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$38)
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$47)
	.dwendtag DW$T$48

DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$37, DW_AT_address_class(0x20)
DW$T$38	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$38, DW_AT_type(*DW$T$37)

DW$T$55	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$6)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$55, DW_AT_byte_size(0x8000)
DW$187	.dwtag  DW_TAG_subrange_type
	.dwattr DW$187, DW_AT_upper_bound(0x7fff)
	.dwendtag DW$T$55

DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x02)
DW$T$41	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$41, DW_AT_address_class(0x20)
DW$T$47	.dwtag  DW_TAG_restrict_type
	.dwattr DW$T$47, DW_AT_type(*DW$T$41)
DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)

DW$T$59	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$6)
	.dwendtag DW$T$59


DW$T$60	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$9)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$9)
	.dwendtag DW$T$60


DW$T$63	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$62)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$63, DW_AT_byte_size(0x08)
DW$191	.dwtag  DW_TAG_subrange_type
	.dwattr DW$191, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$63

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$64	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$37)
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$47)
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$64


DW$T$65	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$47)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$67, DW_AT_language(DW_LANG_C)
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$47)
	.dwendtag DW$T$69

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)

DW$T$72	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$72, DW_AT_language(DW_LANG_C)
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$72


DW$T$73	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$34)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$34)
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$73


DW$T$74	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$74, DW_AT_byte_size(0x80)
DW$215	.dwtag  DW_TAG_subrange_type
	.dwattr DW$215, DW_AT_upper_bound(0x1f)
	.dwendtag DW$T$74

DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$17, DW_AT_byte_size(0x08)
DW$T$80	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$17)
	.dwattr DW$T$80, DW_AT_address_class(0x20)

DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$80)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$216	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
	.dwendtag DW$T$81

DW$T$84	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$83)
	.dwattr DW$T$84, DW_AT_address_class(0x20)

DW$T$85	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$84)
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
DW$217	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
	.dwendtag DW$T$85

DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_address_class(0x20)
DW$T$27	.dwtag  DW_TAG_const_type
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$62	.dwtag  DW_TAG_const_type
	.dwattr DW$T$62, DW_AT_type(*DW$T$9)
DW$T$83	.dwtag  DW_TAG_const_type
	.dwattr DW$T$83, DW_AT_type(*DW$T$17)
DW$T$31	.dwtag  DW_TAG_const_type
	.dwattr DW$T$31, DW_AT_type(*DW$T$30)
DW$T$30	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$30, DW_AT_byte_size(0x01)

	.dwattr DW$63, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_external(0x01)
	.dwattr DW$67, DW_AT_type(*DW$T$9)
	.dwattr DW$152, DW_AT_external(0x01)
	.dwattr DW$121, DW_AT_external(0x01)
	.dwattr DW$121, DW_AT_type(*DW$T$10)
	.dwattr DW$133, DW_AT_external(0x01)
	.dwattr DW$133, DW_AT_type(*DW$T$10)
	.dwattr DW$120, DW_AT_external(0x01)
	.dwattr DW$95, DW_AT_external(0x01)
	.dwattr DW$95, DW_AT_type(*DW$T$10)
	.dwattr DW$55, DW_AT_external(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$218, DW_AT_location[DW_OP_reg0]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$219, DW_AT_location[DW_OP_reg1]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$220, DW_AT_location[DW_OP_reg2]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$221, DW_AT_location[DW_OP_reg3]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$222, DW_AT_location[DW_OP_reg4]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$223, DW_AT_location[DW_OP_reg5]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$224, DW_AT_location[DW_OP_reg6]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$225, DW_AT_location[DW_OP_reg7]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$226, DW_AT_location[DW_OP_reg8]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$227, DW_AT_location[DW_OP_reg9]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$228, DW_AT_location[DW_OP_reg10]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$229, DW_AT_location[DW_OP_reg11]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$230, DW_AT_location[DW_OP_reg12]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$231, DW_AT_location[DW_OP_reg13]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$232, DW_AT_location[DW_OP_reg14]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$233, DW_AT_location[DW_OP_reg15]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$234, DW_AT_location[DW_OP_reg16]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$235, DW_AT_location[DW_OP_reg17]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$236, DW_AT_location[DW_OP_reg18]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$237, DW_AT_location[DW_OP_reg19]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$238, DW_AT_location[DW_OP_reg20]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$239, DW_AT_location[DW_OP_reg21]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$240, DW_AT_location[DW_OP_reg22]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$241, DW_AT_location[DW_OP_reg23]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$242, DW_AT_location[DW_OP_reg24]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$243, DW_AT_location[DW_OP_reg25]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$244, DW_AT_location[DW_OP_reg26]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$245, DW_AT_location[DW_OP_reg27]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$246, DW_AT_location[DW_OP_reg28]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$247, DW_AT_location[DW_OP_reg29]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$248, DW_AT_location[DW_OP_reg30]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$249, DW_AT_location[DW_OP_reg31]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x20]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x21]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$252, DW_AT_location[DW_OP_regx 0x22]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$253, DW_AT_location[DW_OP_regx 0x23]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$254, DW_AT_location[DW_OP_regx 0x24]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$255, DW_AT_location[DW_OP_regx 0x25]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$256, DW_AT_location[DW_OP_regx 0x26]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$257, DW_AT_location[DW_OP_regx 0x27]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$258, DW_AT_location[DW_OP_regx 0x28]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$259, DW_AT_location[DW_OP_regx 0x29]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$260, DW_AT_location[DW_OP_regx 0x2a]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$261, DW_AT_location[DW_OP_regx 0x2b]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$262, DW_AT_location[DW_OP_regx 0x2c]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$263, DW_AT_location[DW_OP_regx 0x2d]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$264, DW_AT_location[DW_OP_regx 0x2e]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$265, DW_AT_location[DW_OP_regx 0x2f]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$266, DW_AT_location[DW_OP_regx 0x30]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$267, DW_AT_location[DW_OP_regx 0x31]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$268, DW_AT_location[DW_OP_regx 0x32]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$269, DW_AT_location[DW_OP_regx 0x33]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$270, DW_AT_location[DW_OP_regx 0x34]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$271, DW_AT_location[DW_OP_regx 0x35]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$272, DW_AT_location[DW_OP_regx 0x36]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$273, DW_AT_location[DW_OP_regx 0x37]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$274, DW_AT_location[DW_OP_regx 0x38]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$275, DW_AT_location[DW_OP_regx 0x39]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$276, DW_AT_location[DW_OP_regx 0x3a]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$277, DW_AT_location[DW_OP_regx 0x3b]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$278, DW_AT_location[DW_OP_regx 0x3c]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$279, DW_AT_location[DW_OP_regx 0x3d]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$280, DW_AT_location[DW_OP_regx 0x3e]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$281, DW_AT_location[DW_OP_regx 0x3f]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$282, DW_AT_location[DW_OP_regx 0x40]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$283, DW_AT_location[DW_OP_regx 0x41]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$284, DW_AT_location[DW_OP_regx 0x42]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$285, DW_AT_location[DW_OP_regx 0x43]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$286, DW_AT_location[DW_OP_regx 0x44]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$287, DW_AT_location[DW_OP_regx 0x45]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$288, DW_AT_location[DW_OP_regx 0x46]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$289, DW_AT_location[DW_OP_regx 0x47]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$290, DW_AT_location[DW_OP_regx 0x48]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$291, DW_AT_location[DW_OP_regx 0x49]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$292, DW_AT_location[DW_OP_regx 0x4a]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$293, DW_AT_location[DW_OP_regx 0x4b]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$294, DW_AT_location[DW_OP_regx 0x4c]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$295, DW_AT_location[DW_OP_regx 0x4d]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$296, DW_AT_location[DW_OP_regx 0x4e]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$297, DW_AT_location[DW_OP_regx 0x4f]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$298, DW_AT_location[DW_OP_regx 0x50]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$299, DW_AT_location[DW_OP_regx 0x51]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$300, DW_AT_location[DW_OP_regx 0x52]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$301, DW_AT_location[DW_OP_regx 0x53]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$302, DW_AT_location[DW_OP_regx 0x54]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$303, DW_AT_location[DW_OP_regx 0x55]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$304, DW_AT_location[DW_OP_regx 0x56]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$305, DW_AT_location[DW_OP_regx 0x57]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$306, DW_AT_location[DW_OP_regx 0x58]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$307, DW_AT_location[DW_OP_regx 0x59]
DW$308	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$308, DW_AT_location[DW_OP_regx 0x5a]
DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$309, DW_AT_location[DW_OP_regx 0x5b]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$310, DW_AT_location[DW_OP_regx 0x5c]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$311, DW_AT_location[DW_OP_regx 0x5d]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$312, DW_AT_location[DW_OP_regx 0x5e]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$313, DW_AT_location[DW_OP_regx 0x5f]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$314, DW_AT_location[DW_OP_regx 0x60]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$315, DW_AT_location[DW_OP_regx 0x61]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$316, DW_AT_location[DW_OP_regx 0x62]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$317, DW_AT_location[DW_OP_regx 0x63]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$318, DW_AT_location[DW_OP_regx 0x64]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$319, DW_AT_location[DW_OP_regx 0x65]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$320, DW_AT_location[DW_OP_regx 0x66]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$321, DW_AT_location[DW_OP_regx 0x67]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$322, DW_AT_location[DW_OP_regx 0x68]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$323, DW_AT_location[DW_OP_regx 0x69]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$324, DW_AT_location[DW_OP_regx 0x6a]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$325, DW_AT_location[DW_OP_regx 0x6b]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$326, DW_AT_location[DW_OP_regx 0x6c]
DW$327	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$327, DW_AT_location[DW_OP_regx 0x6d]
DW$328	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$328, DW_AT_location[DW_OP_regx 0x6e]
DW$329	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$329, DW_AT_location[DW_OP_regx 0x6f]
DW$330	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$330, DW_AT_location[DW_OP_regx 0x70]
DW$331	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$331, DW_AT_location[DW_OP_regx 0x71]
DW$332	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$332, DW_AT_location[DW_OP_regx 0x72]
DW$333	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$333, DW_AT_location[DW_OP_regx 0x73]
DW$334	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$334, DW_AT_location[DW_OP_regx 0x74]
DW$335	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$335, DW_AT_location[DW_OP_regx 0x75]
DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$336, DW_AT_location[DW_OP_regx 0x76]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$337, DW_AT_location[DW_OP_regx 0x77]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$338, DW_AT_location[DW_OP_regx 0x78]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$339, DW_AT_location[DW_OP_regx 0x79]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$340, DW_AT_location[DW_OP_regx 0x7a]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$341, DW_AT_location[DW_OP_regx 0x7b]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$342, DW_AT_location[DW_OP_regx 0x7c]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$343, DW_AT_location[DW_OP_regx 0x7d]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$344, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

