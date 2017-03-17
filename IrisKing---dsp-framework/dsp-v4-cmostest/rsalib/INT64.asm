;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Thu Feb 17 13:26:17 2011                                *
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
	.dwattr DW$CU, DW_AT_name("INT64.C")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_assert"), DW_AT_symbol_name("__assert")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy"), DW_AT_symbol_name("_memcpy")
	.dwattr DW$4, DW_AT_type(*DW$T$3)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$4

;	E:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI0602 C:\DOCUME~1\yqhe\LOCALS~1\Temp\TI0604 
	.sect	".text"
	.global	_uint64_to_double

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_to_double"), DW_AT_symbol_name("_uint64_to_double")
	.dwattr DW$8, DW_AT_low_pc(_uint64_to_double)
	.dwattr DW$8, DW_AT_high_pc(0x00)
	.dwattr DW$8, DW_AT_begin_file("INT64.C")
	.dwattr DW$8, DW_AT_begin_line(0x58)
	.dwattr DW$8, DW_AT_begin_column(0x08)
	.dwattr DW$8, DW_AT_frame_base[DW_OP_breg31 16]
	.dwattr DW$8, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",89,1

;******************************************************************************
;* FUNCTION NAME: _uint64_to_double                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B13,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                  *
;******************************************************************************
_uint64_to_double:
;** --------------------------------------------------------------------------*
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$9, DW_AT_type(*DW$T$51)
	.dwattr DW$9, DW_AT_location[DW_OP_reg4]
;** 90	-----------------------    return (double)(*x).hi*4.294967296e9+(double)(*x).lo;
           STW     .D2T1   A11,*SP--(16)     ; |89| 

           CALL    .S1     __fltuld          ; |90| 
||         MV      .L1     A4,A10            ; |89| 
||         STW     .D2T1   A10,*+SP(8)       ; |89| 

           LDDW    .D1T1   *A10,A5:A4        ; |90| 
           STW     .D2T2   B13,*+SP(12)      ; |89| 
           MV      .L2     B3,B13            ; |89| 
           ADDKPC  .S2     RL4,B3,1          ; |90| 
RL4:       ; CALL OCCURS {__fltuld}          ; |90| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __mpyd            ; |90| 
           ZERO    .L2     B5                ; |90| 
           MVKH    .S2     0x41f00000,B5     ; |90| 
           ADDKPC  .S2     RL5,B3,1          ; |90| 
           ZERO    .L2     B4                ; |90| 
RL5:       ; CALL OCCURS {__mpyd}            ; |90| 

           LDDW    .D1T1   *+A10(8),A7:A6    ; |90| 
||         CALL    .S1     __fltuld          ; |90| 

           MV      .L1     A4,A11            ; |90| 
           MV      .D1     A5,A10            ; |90| 
           ADDKPC  .S2     RL6,B3,1          ; |90| 

           MV      .L1     A7,A5             ; |90| 
||         MV      .S1     A6,A4             ; |90| 

RL6:       ; CALL OCCURS {__fltuld}          ; |90| 
           CALL    .S1     __addd            ; |90| 
           MV      .L2X    A4,B4             ; |90| 
           MV      .L2X    A5,B5             ; |90| 
           MV      .S1     A11,A4            ; |90| 
           ADDKPC  .S2     RL7,B3,0          ; |90| 
           MV      .L1     A10,A5            ; |90| 
RL7:       ; CALL OCCURS {__addd}            ; |90| 
;** --------------------------------------------------------------------------*

           LDW     .D2T1   *+SP(8),A10       ; |91| 
||         MV      .L2     B13,B3            ; |91| 

           RET     .S2     B3                ; |91| 
||         LDW     .D2T2   *+SP(12),B13      ; |91| 

           LDW     .D2T1   *++SP(16),A11     ; |91| 
	.dwpsn	"INT64.C",91,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |91| 
	.dwattr DW$8, DW_AT_end_file("INT64.C")
	.dwattr DW$8, DW_AT_end_line(0x5b)
	.dwattr DW$8, DW_AT_end_column(0x01)
	.dwendtag DW$8

	.sect	".text"
	.global	_uint64_subtract

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_subtract"), DW_AT_symbol_name("_uint64_subtract")
	.dwattr DW$10, DW_AT_low_pc(_uint64_subtract)
	.dwattr DW$10, DW_AT_high_pc(0x00)
	.dwattr DW$10, DW_AT_begin_file("INT64.C")
	.dwattr DW$10, DW_AT_begin_line(0x51)
	.dwattr DW$10, DW_AT_begin_column(0x08)
	.dwattr DW$10, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$10, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",82,1

;******************************************************************************
;* FUNCTION NAME: _uint64_subtract                                            *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,B0,B4,B5,B6,B7,B8,B9,SP,B16,B17 *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,B0,B3,B4,B5,B6,B7,B8,B9,SP,B16, *
;*                           B17                                              *
;*   Local Frame Size  : 0 Args + 20 Auto + 0 Save = 20 byte                  *
;******************************************************************************
_uint64_subtract:
;** --------------------------------------------------------------------------*
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$11, DW_AT_type(*DW$T$51)
	.dwattr DW$11, DW_AT_location[DW_OP_reg4]
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$12, DW_AT_type(*DW$T$51)
	.dwattr DW$12, DW_AT_location[DW_OP_reg20]
;** 82	-----------------------    x = *x;
;** 83	-----------------------    C$1 = (*y).lo;
;** 83	-----------------------    x.lo = v$1 = x.lo-C$1;
;** 84	-----------------------    x.hi = x.hi-(*y).hi-(unsigned long)(v$1 > ~C$1);
;** 85	-----------------------    return x;
           LDDW    .D1T1   *A4,A7:A6         ; |82| 
           LDDW    .D1T1   *+A4(8),A5:A4     ; |82| 
           SUB     .D2     SP,24,SP          ; |82| 
           MV      .S1     A3,A0             ; |82| 
           ADD     .L1X    8,SP,A8           ; |82| 
           STDW    .D1T1   A7:A6,*A8         ; |82| 
           STDW    .D1T1   A5:A4,*+A8(8)     ; |82| 
           LDDW    .D2T2   *+B4(8),B7:B6     ; |83| 
           LDDW    .D2T2   *+SP(16),B9:B8    ; |83| 
           NOP             1
           LDDW    .D2T1   *B4,A5:A4         ; |84| 
           LDDW    .D2T2   *+SP(8),B17:B16   ; |84| 
           ADD     .L1X    8,SP,A3           ; |85| 

           SUBU    .L2     B8,B6,B9:B8       ; |83| 
||         SUB     .S2     B9,B7,B4          ; |83| 
||         NOT     .D2     B7,B5             ; |84| 

           EXTU    .S2     B5,24,24,B4       ; |84| 
||         ADD     .L2     B4,B9,B9          ; |83| 

           EXTU    .S2     B9,24,24,B5       ; |84| 
           CMPEQ   .L2     B5,B4,B0          ; |84| 

           NOT     .L1X    B6,A5             ; |84| 
||         SUB     .S2X    B17,A5,B5         ; |84| 
|| [!B0]   CMPGTU  .L2     B5,B4,B4          ; |84| 

           STDW    .D2T2   B9:B8,*+SP(16)    ; |83| 

           SUBU    .L1X    B16,A4,A5:A4      ; |84| 
|| [ B0]   CMPGTU  .L2X    B8,A5,B4          ; |84| 

           NOP             1

           SHR     .S2     B4,31,B5          ; |84| 
||         ADD     .L2X    B5,A5,B6          ; |84| 

           SUBU    .L2X    A4,B4,B5:B4       ; |84| 
||         SUB     .S2     B6,B5,B6          ; |84| 

           ADD     .L2     B6,B5,B5          ; |84| 
           STDW    .D2T2   B5:B4,*+SP(8)     ; |84| 
   [ A0]   LDDW    .D1T2   *A3,B5:B4         ; |85| 

           RETNOP  .S2     B3,3              ; |86| 
|| [ A0]   LDDW    .D1T1   *+A3(8),A5:A4     ; |85| 

   [ A0]   STDW    .D1T2   B5:B4,*A0         ; |85| 
	.dwpsn	"INT64.C",86,1

   [ A0]   STDW    .D1T1   A5:A4,*+A0(8)     ; |85| 
||         ADDK    .S2     24,SP             ; |86| 

           ; BRANCH OCCURS {B3}              ; |86| 
	.dwattr DW$10, DW_AT_end_file("INT64.C")
	.dwattr DW$10, DW_AT_end_line(0x56)
	.dwattr DW$10, DW_AT_end_column(0x01)
	.dwendtag DW$10

	.sect	".text"
	.global	_uint64_shift_right

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_shift_right"), DW_AT_symbol_name("_uint64_shift_right")
	.dwattr DW$13, DW_AT_low_pc(_uint64_shift_right)
	.dwattr DW$13, DW_AT_high_pc(0x00)
	.dwattr DW$13, DW_AT_begin_file("INT64.C")
	.dwattr DW$13, DW_AT_begin_line(0x5d)
	.dwattr DW$13, DW_AT_begin_column(0x08)
	.dwattr DW$13, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$13, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",94,1

;******************************************************************************
;* FUNCTION NAME: _uint64_shift_right                                         *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,SP,B16, *
;*                           B17                                              *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,SP,  *
;*                           B16,B17                                          *
;*   Local Frame Size  : 0 Args + 20 Auto + 0 Save = 20 byte                  *
;******************************************************************************
_uint64_shift_right:
;** --------------------------------------------------------------------------*
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$14, DW_AT_type(*DW$T$51)
	.dwattr DW$14, DW_AT_location[DW_OP_reg4]
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_name("shift"), DW_AT_symbol_name("_shift")
	.dwattr DW$15, DW_AT_type(*DW$T$10)
	.dwattr DW$15, DW_AT_location[DW_OP_reg20]
;** 94	-----------------------    x = *x;
;** 95	-----------------------    if ( shift >= 32 ) goto g3;
;** 97	-----------------------    v$2 = x.hi;
;** 97	-----------------------    x.lo = v$2<<32-shift|x.lo>>shift;
;** 98	-----------------------    x.hi = v$2>>shift;
;** 99	-----------------------    return x;
;**	-----------------------g3:
;** 100	-----------------------    x.lo = x.hi>>shift-32;
;** 101	-----------------------    x.hi = 0uL;
;** 101	-----------------------    return x;
           LDDW    .D1T1   *A4,A7:A6         ; |94| 
           LDDW    .D1T2   *+A4(8),B7:B6     ; |94| 
           SUB     .D2     SP,24,SP          ; |94| 
           ADD     .L2     8,SP,B5           ; |94| 
           MVK     .S2     32,B16            ; |97| 
           STDW    .D2T1   A7:A6,*B5         ; |94| 
           STDW    .D2T2   B7:B6,*+B5(8)     ; |94| 
           LDDW    .D2T1   *+SP(16),A9:A8    ; |97| 
           LDDW    .D2T2   *+SP(8),B7:B6     ; |97| 
           LDDW    .D2T1   *+SP(8),A7:A6     ; |100| 
           MV      .D2     B4,B5             ; |94| 
           MV      .L1X    B4,A4             ; |94| 

           ZERO    .L2     B9:B8             ; |101| 
||         MVK     .S2     32,B17            ; |95| 
||         MVK     .S1     32,A5             ; |100| 

           SHRU    .S1     A9:A8,A4,A9:A8    ; |97| 
||         SHRU    .S2     B7:B6,B5,B5:B4    ; |98| 
||         SUB     .L1X    B4,A5,A3          ; |100| 
||         SUB     .D2     B16,B4,B16        ; |97| 
||         CMPLT   .L2     B4,B17,B0         ; |95| 
||         MV      .D1     A3,A0             ; |94| 

   [!B0]   STDW    .D2T2   B9:B8,*+SP(8)     ; |101| 
||         SHL     .S2     B7:B6,B16,B7:B6   ; |97| 

           OR      .L2X    A9,B7,B5          ; |97| 
|| [ B0]   STDW    .D2T2   B5:B4,*+SP(8)     ; |98| 
||         SHRU    .S1     A7:A6,A3,A5:A4    ; |100| 

   [!B0]   STDW    .D2T1   A5:A4,*+SP(16)    ; |100| 
||         OR      .L2X    A8,B6,B4          ; |97| 
||         ADD     .L1X    8,SP,A3           ; |99| 

   [ B0]   STDW    .D2T2   B5:B4,*+SP(16)    ; |97| 
|| [!B0]   ADD     .L1X    8,SP,A3           ; |101| 

   [ A0]   LDDW    .D1T1   *+A3(8),A5:A4     ; |101| 

           RETNOP  .S2     B3,3              ; |104| 
|| [ A0]   LDDW    .D1T1   *A3,A7:A6         ; |101| 

   [ A0]   STDW    .D1T1   A5:A4,*+A0(8)     ; |101| 
	.dwpsn	"INT64.C",104,1

   [ A0]   STDW    .D1T1   A7:A6,*A0         ; |101| 
||         ADDK    .S2     24,SP             ; |104| 

           ; BRANCH OCCURS {B3}              ; |104| 
	.dwattr DW$13, DW_AT_end_file("INT64.C")
	.dwattr DW$13, DW_AT_end_line(0x68)
	.dwattr DW$13, DW_AT_end_column(0x01)
	.dwendtag DW$13

	.sect	".text"
	.global	_uint64_shift_left

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_shift_left"), DW_AT_symbol_name("_uint64_shift_left")
	.dwattr DW$16, DW_AT_low_pc(_uint64_shift_left)
	.dwattr DW$16, DW_AT_high_pc(0x00)
	.dwattr DW$16, DW_AT_begin_file("INT64.C")
	.dwattr DW$16, DW_AT_begin_line(0x6a)
	.dwattr DW$16, DW_AT_begin_column(0x08)
	.dwattr DW$16, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$16, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",107,1

;******************************************************************************
;* FUNCTION NAME: _uint64_shift_left                                          *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,B9,SP,B16, *
;*                           B17                                              *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,B9,SP,  *
;*                           B16,B17                                          *
;*   Local Frame Size  : 0 Args + 20 Auto + 0 Save = 20 byte                  *
;******************************************************************************
_uint64_shift_left:
;** --------------------------------------------------------------------------*
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$17, DW_AT_type(*DW$T$51)
	.dwattr DW$17, DW_AT_location[DW_OP_reg4]
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_name("shift"), DW_AT_symbol_name("_shift")
	.dwattr DW$18, DW_AT_type(*DW$T$10)
	.dwattr DW$18, DW_AT_location[DW_OP_reg20]
;** 107	-----------------------    x = *x;
;** 108	-----------------------    if ( shift >= 32 ) goto g3;
;** 110	-----------------------    v$2 = x.lo;
;** 110	-----------------------    x.hi = v$2>>32-shift|x.hi<<shift;
;** 111	-----------------------    x.lo = v$2<<shift;
;** 112	-----------------------    return x;
;**	-----------------------g3:
;** 113	-----------------------    x.hi = x.lo<<shift-32;
;** 114	-----------------------    x.lo = 0uL;
;** 114	-----------------------    return x;
           LDDW    .D1T1   *A4,A7:A6         ; |107| 
           LDDW    .D1T2   *+A4(8),B7:B6     ; |107| 
           SUB     .D2     SP,24,SP          ; |107| 
           ADD     .L2     8,SP,B5           ; |107| 
           MVK     .S2     32,B16            ; |110| 
           STDW    .D2T1   A7:A6,*B5         ; |107| 
           STDW    .D2T2   B7:B6,*+B5(8)     ; |107| 
           LDDW    .D2T1   *+SP(8),A9:A8     ; |110| 
           LDDW    .D2T2   *+SP(16),B7:B6    ; |110| 
           LDDW    .D2T1   *+SP(16),A7:A6    ; |113| 
           MV      .D2     B4,B5             ; |107| 
           MV      .L1X    B4,A4             ; |107| 

           ZERO    .L2     B9:B8             ; |114| 
||         MVK     .S2     32,B17            ; |108| 
||         MVK     .S1     32,A5             ; |113| 

           SHL     .S1     A9:A8,A4,A9:A8    ; |110| 
||         SHL     .S2     B7:B6,B5,B5:B4    ; |111| 
||         SUB     .L1X    B4,A5,A3          ; |113| 
||         SUB     .D2     B16,B4,B16        ; |110| 
||         CMPLT   .L2     B4,B17,B0         ; |108| 
||         MV      .D1     A3,A0             ; |107| 

   [!B0]   STDW    .D2T2   B9:B8,*+SP(16)    ; |114| 
||         SHRU    .S2     B7:B6,B16,B7:B6   ; |110| 

           OR      .L2X    A9,B7,B5          ; |110| 
|| [ B0]   STDW    .D2T2   B5:B4,*+SP(16)    ; |111| 
||         SHL     .S1     A7:A6,A3,A5:A4    ; |113| 

   [!B0]   STDW    .D2T1   A5:A4,*+SP(8)     ; |113| 
||         OR      .L2X    A8,B6,B4          ; |110| 
||         ADD     .L1X    8,SP,A3           ; |112| 

   [ B0]   STDW    .D2T2   B5:B4,*+SP(8)     ; |110| 
|| [!B0]   ADD     .L1X    8,SP,A3           ; |114| 

   [ A0]   LDDW    .D1T1   *+A3(8),A5:A4     ; |114| 

           RETNOP  .S2     B3,3              ; |117| 
|| [ A0]   LDDW    .D1T1   *A3,A7:A6         ; |114| 

   [ A0]   STDW    .D1T1   A5:A4,*+A0(8)     ; |114| 
	.dwpsn	"INT64.C",117,1

   [ A0]   STDW    .D1T1   A7:A6,*A0         ; |114| 
||         ADDK    .S2     24,SP             ; |117| 

           ; BRANCH OCCURS {B3}              ; |117| 
	.dwattr DW$16, DW_AT_end_file("INT64.C")
	.dwattr DW$16, DW_AT_end_line(0x75)
	.dwattr DW$16, DW_AT_end_column(0x01)
	.dwendtag DW$16

	.sect	".text"
	.global	_uint64_make

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_make"), DW_AT_symbol_name("_uint64_make")
	.dwattr DW$19, DW_AT_low_pc(_uint64_make)
	.dwattr DW$19, DW_AT_high_pc(0x00)
	.dwattr DW$19, DW_AT_begin_file("INT64.C")
	.dwattr DW$19, DW_AT_begin_line(0x31)
	.dwattr DW$19, DW_AT_begin_column(0x08)
	.dwattr DW$19, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$19, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",50,1

;******************************************************************************
;* FUNCTION NAME: _uint64_make                                                *
;*                                                                            *
;*   Regs Modified     : A0,B4,B5,B6,B7,SP                                    *
;*   Regs Used         : A0,A3,A4,A5,B3,B4,B5,B6,B7,SP                        *
;*   Local Frame Size  : 0 Args + 20 Auto + 0 Save = 20 byte                  *
;******************************************************************************
_uint64_make:
;** --------------------------------------------------------------------------*
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$20, DW_AT_type(*DW$T$13)
	.dwattr DW$20, DW_AT_location[DW_OP_reg4]
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$21, DW_AT_type(*DW$T$13)
	.dwattr DW$21, DW_AT_location[DW_OP_reg20]
;** 52	-----------------------    y.hi = hi;
;** 53	-----------------------    y.lo = lo;
;** 54	-----------------------    return y;
           SUB     .D2     SP,24,SP          ; |50| 
           STDW    .D2T2   B5:B4,*+SP(16)    ; |53| 

           ADD     .L2     8,SP,B4           ; |54| 
||         STDW    .D2T1   A5:A4,*+SP(8)     ; |52| 
||         MV      .L1     A3,A0             ; |50| 

   [ A0]   LDDW    .D2T2   *+B4(8),B7:B6     ; |54| 

           RETNOP  .S2     B3,3              ; |55| 
|| [ A0]   LDDW    .D2T2   *B4,B5:B4         ; |54| 

   [ A0]   STDW    .D1T2   B7:B6,*+A0(8)     ; |54| 
	.dwpsn	"INT64.C",55,1

   [ A0]   STDW    .D1T2   B5:B4,*A0         ; |54| 
||         ADDK    .S2     24,SP             ; |55| 

           ; BRANCH OCCURS {B3}              ; |55| 
	.dwattr DW$19, DW_AT_end_file("INT64.C")
	.dwattr DW$19, DW_AT_end_line(0x37)
	.dwattr DW$19, DW_AT_end_column(0x01)
	.dwendtag DW$19

	.sect	".text"
	.global	_uint64_add

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_add"), DW_AT_symbol_name("_uint64_add")
	.dwattr DW$22, DW_AT_low_pc(_uint64_add)
	.dwattr DW$22, DW_AT_high_pc(0x00)
	.dwattr DW$22, DW_AT_begin_file("INT64.C")
	.dwattr DW$22, DW_AT_begin_line(0x39)
	.dwattr DW$22, DW_AT_begin_column(0x08)
	.dwattr DW$22, DW_AT_frame_base[DW_OP_breg31 24]
	.dwattr DW$22, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",58,1

;******************************************************************************
;* FUNCTION NAME: _uint64_add                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,B0,B4,B5,B6,B7,B8,B9,SP,B16,B17    *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,B0,B3,B4,B5,B6,B7,B8,B9,SP,B16,B17 *
;*   Local Frame Size  : 0 Args + 20 Auto + 0 Save = 20 byte                  *
;******************************************************************************
_uint64_add:
;** --------------------------------------------------------------------------*
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$23, DW_AT_type(*DW$T$51)
	.dwattr DW$23, DW_AT_location[DW_OP_reg4]
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$24, DW_AT_type(*DW$T$51)
	.dwattr DW$24, DW_AT_location[DW_OP_reg20]
;** 58	-----------------------    x = *x;
;** 59	-----------------------    C$1 = (*y).lo;
;** 59	-----------------------    x.lo = v$1 = x.lo+C$1;
;** 60	-----------------------    x.hi = x.hi+(unsigned long)(v$1 < C$1)+(*y).hi;
;** 61	-----------------------    return x;
           LDDW    .D1T2   *A4,B9:B8         ; |58| 
           LDDW    .D1T2   *+A4(8),B7:B6     ; |58| 
           SUB     .D2     SP,24,SP          ; |58| 
           ADD     .L2     8,SP,B5           ; |58| 
           MV      .S1     A3,A0             ; |58| 
           STDW    .D2T2   B9:B8,*B5         ; |58| 
           STDW    .D2T2   B7:B6,*+B5(8)     ; |58| 
           LDDW    .D2T2   *+SP(16),B17:B16  ; |59| 
           LDDW    .D2T2   *+B4(8),B7:B6     ; |59| 
           NOP             3
           ADD     .L1X    8,SP,A3           ; |61| 
           ADDU    .L2     B16,B7:B6,B9:B8   ; |59| 

           ADD     .L2     B17,B9,B9         ; |59| 
||         EXTU    .S2     B7,24,24,B5       ; |60| 

           EXTU    .S2     B9,24,24,B7       ; |60| 

           LDDW    .D2T2   *+SP(8),B17:B16   ; |60| 
||         CMPEQ   .L2     B7,B5,B0          ; |60| 

           LDDW    .D2T2   *B4,B5:B4         ; |60| 
|| [!B0]   CMPLTU  .L2     B7,B5,B6          ; |60| 

   [ B0]   CMPLTU  .L2     B8,B6,B6          ; |60| 
           SHR     .S2     B6,31,B7          ; |60| 
           STDW    .D2T2   B9:B8,*+SP(16)    ; |59| 
           ADDU    .L2     B16,B7:B6,B7:B6   ; |60| 

           ADD     .S2     B17,B7,B6         ; |60| 
||         ADDU    .L2     B6,B5:B4,B5:B4    ; |60| 

           ADD     .L2     B6,B5,B5          ; |60| 
           STDW    .D2T2   B5:B4,*+SP(8)     ; |60| 
   [ A0]   LDDW    .D1T1   *+A3(8),A7:A6     ; |61| 

           RETNOP  .S2     B3,3              ; |62| 
|| [ A0]   LDDW    .D1T1   *A3,A5:A4         ; |61| 

   [ A0]   STDW    .D1T1   A7:A6,*+A0(8)     ; |61| 
	.dwpsn	"INT64.C",62,1

           ADDK    .S2     24,SP             ; |62| 
|| [ A0]   STDW    .D1T1   A5:A4,*A0         ; |61| 

           ; BRANCH OCCURS {B3}              ; |62| 
	.dwattr DW$22, DW_AT_end_file("INT64.C")
	.dwattr DW$22, DW_AT_end_line(0x3e)
	.dwattr DW$22, DW_AT_end_column(0x01)
	.dwendtag DW$22

	.sect	".text"
	.global	_uint64_add32

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_add32"), DW_AT_symbol_name("_uint64_add32")
	.dwattr DW$25, DW_AT_low_pc(_uint64_add32)
	.dwattr DW$25, DW_AT_high_pc(0x00)
	.dwattr DW$25, DW_AT_begin_file("INT64.C")
	.dwattr DW$25, DW_AT_begin_line(0x40)
	.dwattr DW$25, DW_AT_begin_column(0x08)
	.dwattr DW$25, DW_AT_frame_base[DW_OP_breg31 40]
	.dwattr DW$25, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",65,1

;******************************************************************************
;* FUNCTION NAME: _uint64_add32                                               *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,B0,B3,B4,B5,B6,B7,B8,B9,SP,B16,B17,*
;*                           B31                                              *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,B0,B3,B4,B5,B6,B7,B8,B9,SP,B16,B17,*
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 36 Auto + 0 Save = 36 byte                  *
;******************************************************************************
_uint64_add32:
;** --------------------------------------------------------------------------*
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$26, DW_AT_type(*DW$T$51)
	.dwattr DW$26, DW_AT_location[DW_OP_reg4]
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$27, DW_AT_type(*DW$T$13)
	.dwattr DW$27, DW_AT_location[DW_OP_reg20]
;** 65	-----------------------    x = *x;
;** 67	-----------------------    yy.hi = 0uL;
;** 68	-----------------------    yy.lo = y;
;** 69	-----------------------    return uint64_add(&(x), &(yy));
           LDDW    .D1T1   *A4,A7:A6         ; |65| 
           LDDW    .D1T1   *+A4(8),A5:A4     ; |65| 
           ADDK    .S2     -40,SP            ; |65| 
           CALL    .S1     _uint64_add       ; |69| 

           ADD     .D2     SP,24,B4          ; |69| 
||         ADD     .L2     8,SP,B6           ; |65| 
||         MV      .S2     B4,B8             ; |65| 

           STDW    .D2T1   A7:A6,*B6         ; |65| 

           STDW    .D2T1   A5:A4,*+B6(8)     ; |65| 
||         MV      .L2     B5,B9             ; |65| 

           STDW    .D2T2   B9:B8,*+SP(32)    ; |68| 
||         ZERO    .L2     B7:B6             ; |67| 

           ADDKPC  .S2     RL8,B3,0          ; |69| 
||         STDW    .D2T2   B7:B6,*+SP(24)    ; |67| 
||         ADD     .L1X    8,SP,A4           ; |69| 
||         MV      .L2     B3,B31            ; |65| 

RL8:       ; CALL OCCURS {_uint64_add}       ; |69| 
;** --------------------------------------------------------------------------*
           RETNOP  .S2     B31,4             ; |70| 
	.dwpsn	"INT64.C",70,1
           ADDK    .S2     40,SP             ; |70| 
           ; BRANCH OCCURS {B31}             ; |70| 
	.dwattr DW$25, DW_AT_end_file("INT64.C")
	.dwattr DW$25, DW_AT_end_line(0x46)
	.dwattr DW$25, DW_AT_end_column(0x01)
	.dwendtag DW$25

	.sect	".text"
	.global	_uint64_from_decimal

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_from_decimal"), DW_AT_symbol_name("_uint64_from_decimal")
	.dwattr DW$28, DW_AT_low_pc(_uint64_from_decimal)
	.dwattr DW$28, DW_AT_high_pc(0x00)
	.dwattr DW$28, DW_AT_begin_file("INT64.C")
	.dwattr DW$28, DW_AT_begin_line(0x77)
	.dwattr DW$28, DW_AT_begin_column(0x08)
	.dwattr DW$28, DW_AT_frame_base[DW_OP_breg31 56]
	.dwattr DW$28, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",120,1

;******************************************************************************
;* FUNCTION NAME: _uint64_from_decimal                                        *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B3,B4,B5,B6,B7,B8,B9,  *
;*                           SP,A16,A17,A18,B16,B17,B18,B19,B30,B31           *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,A9,B0,B1,B3,B4,B5,B6,B7,B8,B9,  *
;*                           SP,A16,A17,A18,B16,B17,B18,B19,B30,B31           *
;*   Local Frame Size  : 0 Args + 52 Auto + 0 Save = 52 byte                  *
;******************************************************************************
_uint64_from_decimal:
;** --------------------------------------------------------------------------*
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("str"), DW_AT_symbol_name("_str")
	.dwattr DW$29, DW_AT_type(*DW$T$30)
	.dwattr DW$29, DW_AT_location[DW_OP_reg4]
;** 120	-----------------------    str = str;
;** 122	-----------------------    ret.lo = C$3 = 0uL;
;** 122	-----------------------    ret.hi = C$3;
;** 123	-----------------------    C$2 = *str;
;** 123	-----------------------    if ( !((C$2 >= 48)&(C$2 < 58)) ) goto g4;
;**  	-----------------------    K$22 = (-48);
;** 123	-----------------------    K$7 = 48;
;** 123	-----------------------    K$9 = 58;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)

           MV      .L1     A4,A16            ; |120| 
||         MVK     .S1     48,A5             ; |123| 
||         MVK     .S2     58,B6             ; |123| 
||         ZERO    .L2     B5:B4             ; |122| 
||         MV      .D2X    A3,B1             ; |120| 

           LDB     .D1T1   *A16,A4           ; |123| 
||         ADDK    .S2     -56,SP            ; |120| 
||         MVK     .S1     0x30,A18          ; |123| 
||         MV      .L2     B3,B30            ; |120| 

           STDW    .D2T2   B5:B4,*+SP(48)    ; |122| 
           MVK     .S2     0x3a,B19          ; |123| 
           MVK     .S1     0xffffffd0,A17
           STDW    .D2T2   B5:B4,*+SP(40)    ; |122| 

           CMPLT   .L1     A4,A5,A5          ; |123| 
||         CMPLT   .L2X    A4,B6,B6          ; |123| 

           XOR     .L1     1,A5,A5           ; |123| 
           NOP             1
           AND     .L2X    B6,A5,B0          ; |123| 
   [!B0]   BNOP    .S1     L2,5              ; |123| 
           ; BRANCHCC OCCURS {L2}            ; |123| 
;** --------------------------------------------------------------------------*

           CALL    .S1     _uint64_shift_left ; |124| 
||         ADDAD   .D2     SP,5,B18          ; |124| 

           NOP             2
	.dwpsn	"INT64.C",123,0
           ADD     .D2     SP,24,B5          ; |124| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
L1:    
DW$L$_uint64_from_decimal$3$B:
;**	-----------------------g3:
;** 124	-----------------------    C$1 = &(ret);
;** 124	-----------------------    Z$3 = uint64_shift_left(C$1, 3);
;** 124	-----------------------    Z$4 = uint64_shift_left(C$1, 1);
;** 124	-----------------------    ret = uint64_add(&(Z$3), &(Z$4));
;** 126	-----------------------    ret = uint64_add32(&(ret), (unsigned long)(*str+K$22));
;** 127	-----------------------    s$0 = *(++str);
;** 127	-----------------------    if ( (s$0 >= K$7)&(s$0 < K$9) ) goto g3;
           MV      .L1X    B18,A4            ; |124| 

           MV      .L1X    B5,A3             ; |124| 
||         MVK     .L2     0x3,B4            ; |124| 
||         ADDKPC  .S2     RL9,B3,0          ; |124| 

RL9:       ; CALL OCCURS {_uint64_shift_left}  ; |124| 
DW$L$_uint64_from_decimal$3$E:
;** --------------------------------------------------------------------------*
DW$L$_uint64_from_decimal$4$B:
           CALL    .S1     _uint64_shift_left ; |124| 
           ADD     .L1X    8,SP,A3           ; |124| 
           ADDKPC  .S2     RL10,B3,1         ; |124| 
           MVK     .L2     0x1,B4            ; |124| 
           MV      .L1X    B18,A4            ; |124| 
RL10:      ; CALL OCCURS {_uint64_shift_left}  ; |124| 
           CALL    .S1     _uint64_add       ; |124| 
           ADD     .D2     SP,24,B5          ; |124| 
           ADDAD   .D2     SP,5,B6           ; |124| 
           MV      .L1X    B5,A4             ; |124| 
           ADD     .L2     8,SP,B4           ; |124| 

           MV      .L1X    B6,A3             ; |124| 
||         ADDKPC  .S2     RL11,B3,0         ; |124| 

RL11:      ; CALL OCCURS {_uint64_add}       ; |124| 
           LDB     .D1T1   *A16,A3           ; |126| 
           ADDAD   .D2     SP,5,B5           ; |126| 
           ADDAD   .D2     SP,5,B4           ; |126| 
           CALL    .S1     _uint64_add32     ; |126| 
           MV      .L1X    B5,A4             ; |126| 
           ADD     .L1     A17,A3,A5         ; |126| 
           MV      .L1X    B4,A3             ; |126| 
           SHR     .S2X    A5,31,B5          ; |126| 

           ADDKPC  .S2     RL12,B3,0         ; |126| 
||         MV      .L2X    A5,B4             ; |126| 

RL12:      ; CALL OCCURS {_uint64_add32}     ; |126| 
DW$L$_uint64_from_decimal$4$E:
;** --------------------------------------------------------------------------*
DW$L$_uint64_from_decimal$5$B:
           LDB     .D1T1   *++A16,A4         ; |127| 
           NOP             4

           CMPLT   .L2X    A4,B19,B4         ; |127| 
||         CMPLT   .L1     A4,A18,A3         ; |127| 

           XOR     .L1     1,A3,A3           ; |127| 
           NOP             1
           AND     .L2X    B4,A3,B0          ; |127| 

   [ B0]   B       .S1     L1                ; |127| 
|| [ B0]   ADD     .D2     SP,24,B5          ; |124| 

   [ B0]   ADDAD   .D2     SP,5,B18          ; |124| 
   [ B0]   CALL    .S1     _uint64_shift_left ; |124| 
	.dwpsn	"INT64.C",128,0
           NOP             3
           ; BRANCHCC OCCURS {L1}            ; |127| 
DW$L$_uint64_from_decimal$5$E:
;** --------------------------------------------------------------------------*
L2:    
;**	-----------------------g4:
;** 129	-----------------------    return ret;
           ADDAD   .D2     SP,5,B6           ; |129| 
   [ B1]   LDDW    .D2T2   *+B6(8),B5:B4     ; |129| 

           RETNOP  .S2     B30,3             ; |130| 
|| [ B1]   LDDW    .D2T2   *B6,B7:B6         ; |129| 

   [ B1]   STDW    .D2T2   B5:B4,*+B1(8)     ; |129| 
	.dwpsn	"INT64.C",130,1

   [ B1]   STDW    .D2T2   B7:B6,*B1         ; |129| 
||         ADDK    .S2     56,SP             ; |130| 

           ; BRANCH OCCURS {B30}             ; |130| 

DW$30	.dwtag  DW_TAG_loop
	.dwattr DW$30, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\INT64.asm:L1:1:1297920378")
	.dwattr DW$30, DW_AT_begin_file("INT64.C")
	.dwattr DW$30, DW_AT_begin_line(0x7b)
	.dwattr DW$30, DW_AT_end_line(0x80)
DW$31	.dwtag  DW_TAG_loop_range
	.dwattr DW$31, DW_AT_low_pc(DW$L$_uint64_from_decimal$3$B)
	.dwattr DW$31, DW_AT_high_pc(DW$L$_uint64_from_decimal$3$E)
DW$32	.dwtag  DW_TAG_loop_range
	.dwattr DW$32, DW_AT_low_pc(DW$L$_uint64_from_decimal$4$B)
	.dwattr DW$32, DW_AT_high_pc(DW$L$_uint64_from_decimal$4$E)
DW$33	.dwtag  DW_TAG_loop_range
	.dwattr DW$33, DW_AT_low_pc(DW$L$_uint64_from_decimal$5$B)
	.dwattr DW$33, DW_AT_high_pc(DW$L$_uint64_from_decimal$5$E)
	.dwendtag DW$30

	.dwattr DW$28, DW_AT_end_file("INT64.C")
	.dwattr DW$28, DW_AT_end_line(0x82)
	.dwattr DW$28, DW_AT_end_column(0x01)
	.dwendtag DW$28

	.sect	".text"
	.global	_uint64_div10

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_div10"), DW_AT_symbol_name("_uint64_div10")
	.dwattr DW$34, DW_AT_low_pc(_uint64_div10)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("INT64.C")
	.dwattr DW$34, DW_AT_begin_line(0x0c)
	.dwattr DW$34, DW_AT_begin_column(0x08)
	.dwattr DW$34, DW_AT_frame_base[DW_OP_breg31 56]
	.dwattr DW$34, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",13,1

;******************************************************************************
;* FUNCTION NAME: _uint64_div10                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B13,SP,A16,*
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B13,SP,A16,*
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 0 Args + 20 Auto + 32 Save = 52 byte                 *
;******************************************************************************
_uint64_div10:
;** --------------------------------------------------------------------------*
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$35, DW_AT_type(*DW$T$51)
	.dwattr DW$35, DW_AT_location[DW_OP_reg4]
DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("remainder"), DW_AT_symbol_name("_remainder")
	.dwattr DW$36, DW_AT_type(*DW$T$39)
	.dwattr DW$36, DW_AT_location[DW_OP_reg20]
;** 16	-----------------------    C$4 = (*x).hi;
;** 16	-----------------------    y.hi = C$4/10uL;
;** 25	-----------------------    C$3 = (*x).lo;
;** 25	-----------------------    C$2 = (int)(C$4%10uL);
;** 25	-----------------------    C$1 = (int)((unsigned)C$2<<4)+(int)(C$3%10uL);
;** 25	-----------------------    y.lo = C$1/10+(unsigned long)((unsigned short)C$2*0x19999998u)+C$3/10uL;
;** 28	-----------------------    if ( remainder == NULL ) goto g3;

           STW     .D2T2   B10,*SP--(56)     ; |13| 
||         MV      .L1X    SP,A31            ; |13| 

           STDW    .D2T1   A11:A10,*+SP(32)

           MV      .L1     A4,A12            ; |13| 
||         STDW    .D1T1   A13:A12,*-A31(16)

           CALL    .S1     __divul           ; |16| 
||         LDDW    .D1T1   *A12,A11:A10      ; |16| 

           STDW    .D1T1   A15:A14,*-A31(8)
           MV      .S2     B4,B10            ; |13| 
           MVK     .L2     0xa,B4            ; |16| 
           ZERO    .D2     B5                ; |16| 

           ADDKPC  .S2     RL13,B3,0         ; |16| 
||         MV      .L1     A10,A4            ; |16| 
||         MV      .S1     A11,A5            ; |16| 
||         MV      .D1     A3,A14            ; |13| 
||         MV      .L2     B3,B13
||         STW     .D2T2   B13,*+SP(28)

RL13:      ; CALL OCCURS {__divul}           ; |16| 
;** --------------------------------------------------------------------------*
           CALL    .S1     __remul           ; |25| 
           LDDW    .D1T1   *+A12(8),A13:A12  ; |25| 
           MV      .L2X    A4,B6             ; |16| 
           MVK     .L2     0xa,B4            ; |25| 
           MV      .S2X    A5,B7             ; |16| 

           ADDKPC  .S2     RL14,B3,0         ; |25| 
||         STDW    .D2T2   B7:B6,*+SP(8)     ; |16| 
||         MV      .L1     A11,A5            ; |25| 
||         MV      .S1     A10,A4            ; |25| 
||         ZERO    .L2     B5                ; |25| 

RL14:      ; CALL OCCURS {__remul}           ; |25| 
           CALL    .S1     __remul           ; |25| 
           ADDKPC  .S2     RL15,B3,0         ; |25| 
           MV      .S1     A13,A5            ; |25| 
           MV      .D1     A4,A11            ; |25| 
           MV      .L1     A12,A4            ; |25| 

           ZERO    .L2     B5                ; |25| 
||         MVK     .D2     0xa,B4            ; |25| 

RL15:      ; CALL OCCURS {__remul}           ; |25| 
           CALL    .S1     __divi            ; |25| 
           SHL     .S1     A11,4,A3          ; |25| 
           ADDKPC  .S2     RL17,B3,0         ; |25| 
           ADD     .S1     A4,A3,A15         ; |25| 
           ADD     .L1     A4,A3,A4          ; |25| 
           MVK     .L2     0xa,B4            ; |25| 
RL17:      ; CALL OCCURS {__divi}            ; |25| 
           CALL    .S1     __divul           ; |25| 
           ADDKPC  .S2     RL16,B3,0         ; |25| 
           MV      .S1     A4,A10            ; |25| 
           MV      .L1     A12,A4            ; |25| 
           ZERO    .L2     B5                ; |25| 

           MVK     .D2     0xa,B4            ; |25| 
||         MV      .D1     A13,A5            ; |25| 

RL16:      ; CALL OCCURS {__divul}           ; |25| 
;** --------------------------------------------------------------------------*

           MVKL    .S1     0x19999998,A3     ; |25| 
||         MV      .L1X    B10,A0            ; |25| 
||         MVK     .L2     0xa,B4            ; |29| 

           MVKH    .S1     0x19999998,A3     ; |25| 
|| [!A0]   ADD     .L2     8,SP,B4           ; |30| 

           MPYLHU  .M1     A11,A3,A6         ; |25| 

           MPYU    .M1     A11,A3,A3         ; |25| 
||         SHR     .S1     A10,31,A11        ; |25| 

           SHL     .S1     A6,16,A6          ; |25| 
|| [!A0]   B       .S2     L3                ; |28| 

   [ A0]   CALL    .S1     __remi            ; |29| 
||         ADD     .L1     A3,A6,A3          ; |25| 
|| [!A0]   MV      .D1     A14,A0            ; |30| 

           ADDU    .L1     A3,A11:A10,A9:A8  ; |25| 

           ADDU    .L1     A8,A5:A4,A7:A6    ; |25| 
||         MV      .S1     A15,A4            ; |29| 

           ADD     .L1     A9,A7,A7          ; |25| 
           STDW    .D2T1   A7:A6,*+SP(16)    ; |25| 
           ; BRANCHCC OCCURS {L3}            ; |28| 
;** --------------------------------------------------------------------------*
;** 29	-----------------------    *remainder = C$1%10;
           ADDKPC  .S2     RL18,B3,0         ; |29| 
RL18:      ; CALL OCCURS {__remi}            ; |29| 
;** --------------------------------------------------------------------------*
           MV      .L1X    B10,A3            ; |29| 

           STW     .D1T1   A4,*A3            ; |29| 
||         ADD     .L2     8,SP,B4           ; |30| 
||         MV      .L1     A14,A0            ; |30| 

;** --------------------------------------------------------------------------*
L3:    
;**	-----------------------g3:
;** 30	-----------------------    return y;

   [ A0]   LDDW    .D2T2   *+B4(8),B7:B6     ; |30| 
||         MV      .L2     B13,B3            ; |31| 
||         MV      .L1X    SP,A31            ; |31| 

   [ A0]   LDDW    .D2T2   *B4,B9:B8         ; |30| 
|| [ A0]   MV      .L2X    A14,B4

           NOP             3

   [ A0]   MV      .L2X    A14,B4            ; |30| 
|| [ A0]   STDW    .D2T2   B7:B6,*+B4(8)     ; |30| 

   [ A0]   STDW    .D2T2   B9:B8,*B4         ; |30| 

           LDW     .D2T2   *+SP(28),B13      ; |31| 
||         LDDW    .D1T1   *+A31(40),A13:A12 ; |31| 

           LDDW    .D1T1   *+A31(48),A15:A14 ; |31| 

           RET     .S2     B3                ; |31| 
||         LDDW    .D2T1   *+SP(32),A11:A10  ; |31| 

           LDW     .D2T2   *++SP(56),B10     ; |31| 
	.dwpsn	"INT64.C",31,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |31| 
	.dwattr DW$34, DW_AT_end_file("INT64.C")
	.dwattr DW$34, DW_AT_end_line(0x1f)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendtag DW$34

	.sect	".text"
	.global	_uint64_decimal

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_decimal"), DW_AT_symbol_name("_uint64_decimal")
	.dwattr DW$37, DW_AT_low_pc(_uint64_decimal)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("INT64.C")
	.dwattr DW$37, DW_AT_begin_line(0x21)
	.dwattr DW$37, DW_AT_begin_column(0x06)
	.dwattr DW$37, DW_AT_frame_base[DW_OP_breg31 64]
	.dwattr DW$37, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",34,1

;******************************************************************************
;* FUNCTION NAME: _uint64_decimal                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,A16,A17,A18,   *
;*                           A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A30, *
;*                           A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25,B26, *
;*                           B27,B28,B29,B30,B31                              *
;*   Local Frame Size  : 0 Args + 40 Auto + 24 Save = 64 byte                 *
;******************************************************************************
_uint64_decimal:
;** --------------------------------------------------------------------------*
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$38, DW_AT_type(*DW$T$51)
	.dwattr DW$38, DW_AT_location[DW_OP_reg4]
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buffer"), DW_AT_symbol_name("_buffer")
	.dwattr DW$39, DW_AT_type(*DW$T$30)
	.dwattr DW$39, DW_AT_location[DW_OP_reg20]
;** 34	-----------------------    x = *x;
;**  	-----------------------    K$12 = 48;
;**  	-----------------------    U$17 = &buf+20;
;**  	-----------------------    Q$1 = &buf[-1];
;** 36	-----------------------    start = 20;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
           STW     .D2T2   B12,*SP--(64)     ; |34| 
           STDW    .D2T2   B11:B10,*+SP(56)  ; |34| 
           STDW    .D2T1   A11:A10,*+SP(48)  ; |34| 
           STW     .D2T2   B13,*+SP(44)      ; |34| 
           LDDW    .D1T1   *+A4(8),A7:A6     ; |34| 
           LDDW    .D1T1   *A4,A5:A4         ; |34| 
           ADDAW   .D2     SP,11,B5
           CALL    .S1     _uint64_div10     ; |40| 

           ADD     .D2     SP,23,B10
||         ADD     .L2     8,SP,B4           ; |34| 
||         MV      .L1X    B4,A11            ; |34| 

           STDW    .D2T1   A7:A6,*+B4(8)     ; |34| 
||         MVK     .S2     0x30,B12

	.dwpsn	"INT64.C",39,0

           STDW    .D2T1   A5:A4,*B4         ; |34| 
||         MV      .L1X    B5,A10            ; Register A/B partition copy
||         MVK     .S2     0x14,B11          ; |36| 
||         MV      .L2     B3,B13            ; |34| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
L4:    
DW$L$_uint64_decimal$2$B:
;**	-----------------------g2:
;** 40	-----------------------    x = uint64_div10(&(x), &d);
;** 41	-----------------------    assert(start > 0);
           ADD     .L1X    8,SP,A4           ; |40| 

           ADD     .L1X    8,SP,A3           ; |40| 
||         ADD     .L2     4,SP,B4           ; |40| 
||         ADDKPC  .S2     RL19,B3,0         ; |40| 

RL19:      ; CALL OCCURS {_uint64_div10}     ; |40| 
DW$L$_uint64_decimal$2$E:
;** --------------------------------------------------------------------------*
DW$L$_uint64_decimal$3$B:
           CMPGT   .L2     B11,0,B0          ; |41| 

   [ B0]   B       .S2     L5                ; |41| 
|| [!B0]   MVKL    .S1     SL1+0,A4          ; |41| 
|| [ B0]   LDW     .D2T2   *+SP(4),B4        ; |42| 

   [!B0]   CALL    .S1     __abort_msg       ; |41| 
           NOP             3
   [ B0]   ADD     .L2     B12,B4,B4         ; |42| 
           ; BRANCHCC OCCURS {L5}            ; |41| 
DW$L$_uint64_decimal$3$E:
;** --------------------------------------------------------------------------*
DW$L$_uint64_decimal$4$B:

           ADDKPC  .S2     RL20,B3,0         ; |41| 
||         MVKH    .S1     SL1+0,A4          ; |41| 

RL20:      ; CALL OCCURS {__abort_msg}       ; |41| 
           LDW     .D2T2   *+SP(4),B4        ; |42| 
           NOP             4
           ADD     .L2     B12,B4,B4         ; |42| 
DW$L$_uint64_decimal$4$E:
;** --------------------------------------------------------------------------*
L5:    
DW$L$_uint64_decimal$5$B:
;** 42	-----------------------    Q$1[start] = d+K$12;
;** 42	-----------------------    --U$17;
;** 42	-----------------------    --start;
;** 43	-----------------------    if ( (x.hi != 0uL)|(x.lo != 0uL) ) goto g2;
;** 45	-----------------------    memcpy((void * const)buffer, U$17, 20u-(unsigned)start);

           STB     .D2T2   B4,*+B11[B10]     ; |42| 
||         SUB     .L1     A10,1,A10         ; |42| 
||         SUB     .L2     B11,1,B11         ; |42| 

           LDDW    .D2T2   *+SP(16),B5:B4    ; |43| 
           LDDW    .D2T1   *+SP(8),A5:A4     ; |43| 
           NOP             3
           CMPEQ   .L2     B5:B4,0,B4        ; |43| 
           CMPEQ   .L1     A5:A4,0,A3        ; |43| 
           AND     .L1X    A3,B4,A0

   [ A0]   MVK     .S1     20,A3             ; |45| 
|| [!A0]   B       .S2     L4                ; |43| 

   [ A0]   CALL    .S1     _memcpy           ; |45| 
   [!A0]   CALL    .S1     _uint64_div10     ; |40| 
	.dwpsn	"INT64.C",43,0
           NOP             3
           ; BRANCHCC OCCURS {L4}            ; |43| 
DW$L$_uint64_decimal$5$E:
;** --------------------------------------------------------------------------*
;** 46	-----------------------    buffer[-(unsigned)start+20] = 0;
;** 46	-----------------------    return;

           MV      .L2X    A10,B4            ; |45| 
||         MV      .L1     A11,A4            ; |45| 
||         SUB     .S1X    A3,B11,A6         ; |45| 
||         ADDKPC  .S2     RL21,B3,0         ; |45| 

RL21:      ; CALL OCCURS {_memcpy}           ; |45| 
;** --------------------------------------------------------------------------*

           LDW     .D2T2   *+SP(44),B13      ; |47| 
||         MV      .L2     B13,B3            ; |47| 

           LDDW    .D2T2   *+SP(56),B11:B10  ; |47| 
||         ZERO    .L2     B4                ; |46| 
||         SUB     .L1X    A11,B11,A3        ; |46| 

           RET     .S2     B3                ; |47| 
||         STB     .D1T2   B4,*+A3(20)       ; |46| 
||         LDDW    .D2T1   *+SP(48),A11:A10  ; |47| 

           LDW     .D2T2   *++SP(64),B12     ; |47| 
	.dwpsn	"INT64.C",47,1
           NOP             4
           ; BRANCH OCCURS {B3}              ; |47| 

DW$40	.dwtag  DW_TAG_loop
	.dwattr DW$40, DW_AT_name("D:\SVNs\IKEMB-100\develop\dsp-v4-cmostest\rsalib\INT64.asm:L4:1:1297920378")
	.dwattr DW$40, DW_AT_begin_file("INT64.C")
	.dwattr DW$40, DW_AT_begin_line(0x27)
	.dwattr DW$40, DW_AT_end_line(0x2b)
DW$41	.dwtag  DW_TAG_loop_range
	.dwattr DW$41, DW_AT_low_pc(DW$L$_uint64_decimal$2$B)
	.dwattr DW$41, DW_AT_high_pc(DW$L$_uint64_decimal$2$E)
DW$42	.dwtag  DW_TAG_loop_range
	.dwattr DW$42, DW_AT_low_pc(DW$L$_uint64_decimal$3$B)
	.dwattr DW$42, DW_AT_high_pc(DW$L$_uint64_decimal$3$E)
DW$43	.dwtag  DW_TAG_loop_range
	.dwattr DW$43, DW_AT_low_pc(DW$L$_uint64_decimal$4$B)
	.dwattr DW$43, DW_AT_high_pc(DW$L$_uint64_decimal$4$E)
DW$44	.dwtag  DW_TAG_loop_range
	.dwattr DW$44, DW_AT_low_pc(DW$L$_uint64_decimal$5$B)
	.dwattr DW$44, DW_AT_high_pc(DW$L$_uint64_decimal$5$E)
	.dwendtag DW$40

	.dwattr DW$37, DW_AT_end_file("INT64.C")
	.dwattr DW$37, DW_AT_end_line(0x2f)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendtag DW$37

	.sect	".text"
	.global	_uint64_compare

DW$45	.dwtag  DW_TAG_subprogram, DW_AT_name("uint64_compare"), DW_AT_symbol_name("_uint64_compare")
	.dwattr DW$45, DW_AT_low_pc(_uint64_compare)
	.dwattr DW$45, DW_AT_high_pc(0x00)
	.dwattr DW$45, DW_AT_begin_file("INT64.C")
	.dwattr DW$45, DW_AT_begin_line(0x48)
	.dwattr DW$45, DW_AT_begin_column(0x05)
	.dwattr DW$45, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$45, DW_AT_skeletal(0x01)
	.dwpsn	"INT64.C",73,1

;******************************************************************************
;* FUNCTION NAME: _uint64_compare                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A6,A7,A8,A9,B0,B4,B6,B7,A16,A17,A18,  *
;*                           A19                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A6,A7,A8,A9,B0,B3,B4,B6,B7,A16,A17,   *
;*                           A18,A19                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_uint64_compare:
;** --------------------------------------------------------------------------*
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$46, DW_AT_type(*DW$T$51)
	.dwattr DW$46, DW_AT_location[DW_OP_reg4]
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_name("y"), DW_AT_symbol_name("_y")
	.dwattr DW$47, DW_AT_type(*DW$T$51)
	.dwattr DW$47, DW_AT_location[DW_OP_reg20]
;** 73	-----------------------    CSU$x$lo = (*x).lo;
;** 73	-----------------------    CSU$y$lo = (*y).lo;
;** 74	-----------------------    C$20 = (*y).hi;
;** 74	-----------------------    C$19 = (*x).hi;
;** 74	-----------------------    return (C$19 != C$20) ? ((C$19 < C$20) ? (-1) : 1) : (CSU$x$lo != CSU$y$lo) ? ((CSU$x$lo < CSU$y$lo) ? (-1) : 1) : 0;

           MV      .L1     A4,A3             ; |73| 
||         LDDW    .D2T2   *B4,B7:B6         ; |74| 

           LDDW    .D1T1   *A3,A17:A16       ; |74| 
           LDDW    .D1T1   *+A3(8),A7:A6     ; |73| 
           LDDW    .D2T1   *+B4(8),A9:A8     ; |73| 
           NOP             1
           EXTU    .S2     B7,24,24,B4       ; |74| 

           EXTU    .S1     A17,24,24,A3      ; |74| 
||         XOR     .L1X    A17,B7,A19        ; |74| 

           XOR     .L1X    A16,B6,A18        ; |74| 

           XOR     .S1     A7,A9,A17         ; |74| 
||         CMPEQ   .L2X    A3,B4,B0          ; |74| 
||         CMPEQ   .L1     A19:A18,0,A0      ; |74| 

           MV      .D1     A0,A2             ; |74| branch predicate copy
|| [ A0]   EXTU    .S1     A7,24,24,A4       ; |74| 
||         XOR     .L1     A6,A8,A16         ; |74| 
|| [ B0]   CMPLTU  .L2X    A16,B6,B4         ; |74| 
|| [!A0]   B       .S2     L6                ; |74| 

   [!A2]   RET     .S2     B3                ; |79| 
||         CMPEQ   .L1     A17:A16,0,A1      ; |74| 
|| [!A0]   MVK     .S1     0xffffffff,A3     ; |74| 
|| [!B0]   CMPLTU  .L2X    A3,B4,B4          ; |74| 

           OR      .L2X    B4,A0,B0          ; |74| 
   [!B0]   MVK     .L1     0x1,A3            ; |74| 

   [ A0]   EXTU    .S1     A9,24,24,A3       ; |74| 
|| [!A0]   MV      .L1     A3,A4             ; |74| 

           CMPEQ   .L1     A4,A3,A0          ; |74| 
           ; BRANCHCC OCCURS {L6}            ; |74| 
;** --------------------------------------------------------------------------*

           RET     .S2     B3                ; |79| 
|| [ A0]   CMPLTU  .L1     A6,A8,A3          ; |74| 

   [!A0]   CMPLTU  .L1     A4,A3,A3          ; |74| 
||         ZERO    .S1     A4                ; |74| 

           OR      .L1     A3,A1,A0          ; |74| 
|| [!A1]   MVK     .S1     0xffffffff,A3     ; |74| 

   [!A0]   MVK     .L1     0x1,A3            ; |74| 
   [!A1]   MV      .L1     A3,A4             ; |74| 
;** --------------------------------------------------------------------------*
L6:    
	.dwpsn	"INT64.C",79,1
           NOP             1
           ; BRANCH OCCURS {B3}              ; |79| 
	.dwattr DW$45, DW_AT_end_file("INT64.C")
	.dwattr DW$45, DW_AT_end_line(0x4f)
	.dwattr DW$45, DW_AT_end_column(0x01)
	.dwendtag DW$45

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	"Assertion failed, (start > 0), file INT64.C, line 41",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	__fltuld
	.global	__mpyd
	.global	__addd
	.global	__divul
	.global	__remul
	.global	__divi
	.global	__remi
	.global	__abort_msg
	.global	_memcpy

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

DW$T$23	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$T$23

DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_address_class(0x20)

DW$T$28	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$27)
	.dwendtag DW$T$28


DW$T$31	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
	.dwendtag DW$T$31

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$39	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$39, DW_AT_address_class(0x20)

DW$T$41	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$41

DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x08)
	.dwattr DW$T$13, DW_AT_bit_size(0x28)
	.dwattr DW$T$13, DW_AT_bit_offset(0x18)

DW$T$44	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$17)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$44

DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("uint64"), DW_AT_type(*DW$T$19)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)

DW$T$45	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$39)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$63	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
	.dwendtag DW$T$47


DW$T$48	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)
DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$13)
	.dwendtag DW$T$48


DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$49


DW$T$50	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$50, DW_AT_language(DW_LANG_C)
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$30)
	.dwendtag DW$T$50

DW$T$51	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$29)
	.dwattr DW$T$51, DW_AT_address_class(0x20)
DW$T$27	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$27, DW_AT_address_class(0x20)
DW$T$30	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$30, DW_AT_address_class(0x20)
DW$T$20	.dwtag  DW_TAG_const_type
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$17, DW_AT_byte_size(0x08)

DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$19, DW_AT_byte_size(0x10)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$69, DW_AT_name("hi"), DW_AT_symbol_name("_hi")
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$13)
	.dwattr DW$70, DW_AT_name("lo"), DW_AT_symbol_name("_lo")
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$19

DW$T$25	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$25, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$25, DW_AT_byte_size(0x01)
DW$T$26	.dwtag  DW_TAG_const_type
	.dwattr DW$T$26, DW_AT_type(*DW$T$25)

	.dwattr DW$22, DW_AT_external(0x01)
	.dwattr DW$22, DW_AT_type(*DW$T$29)
	.dwattr DW$25, DW_AT_external(0x01)
	.dwattr DW$25, DW_AT_type(*DW$T$29)
	.dwattr DW$45, DW_AT_external(0x01)
	.dwattr DW$45, DW_AT_type(*DW$T$10)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_type(*DW$T$29)
	.dwattr DW$28, DW_AT_external(0x01)
	.dwattr DW$28, DW_AT_type(*DW$T$29)
	.dwattr DW$19, DW_AT_external(0x01)
	.dwattr DW$19, DW_AT_type(*DW$T$29)
	.dwattr DW$16, DW_AT_external(0x01)
	.dwattr DW$16, DW_AT_type(*DW$T$29)
	.dwattr DW$13, DW_AT_external(0x01)
	.dwattr DW$13, DW_AT_type(*DW$T$29)
	.dwattr DW$10, DW_AT_external(0x01)
	.dwattr DW$10, DW_AT_type(*DW$T$29)
	.dwattr DW$8, DW_AT_external(0x01)
	.dwattr DW$8, DW_AT_type(*DW$T$17)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$71, DW_AT_location[DW_OP_reg0]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$72, DW_AT_location[DW_OP_reg1]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$73, DW_AT_location[DW_OP_reg2]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$74, DW_AT_location[DW_OP_reg3]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$75, DW_AT_location[DW_OP_reg4]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$76, DW_AT_location[DW_OP_reg5]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$77, DW_AT_location[DW_OP_reg6]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$78, DW_AT_location[DW_OP_reg7]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$79, DW_AT_location[DW_OP_reg8]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$80, DW_AT_location[DW_OP_reg9]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$81, DW_AT_location[DW_OP_reg10]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$82, DW_AT_location[DW_OP_reg11]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$83, DW_AT_location[DW_OP_reg12]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$84, DW_AT_location[DW_OP_reg13]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$85, DW_AT_location[DW_OP_reg14]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$86, DW_AT_location[DW_OP_reg15]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$87, DW_AT_location[DW_OP_reg16]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$88, DW_AT_location[DW_OP_reg17]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$89, DW_AT_location[DW_OP_reg18]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$90, DW_AT_location[DW_OP_reg19]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$91, DW_AT_location[DW_OP_reg20]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$92, DW_AT_location[DW_OP_reg21]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$93, DW_AT_location[DW_OP_reg22]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$94, DW_AT_location[DW_OP_reg23]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$95, DW_AT_location[DW_OP_reg24]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$96, DW_AT_location[DW_OP_reg25]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$97, DW_AT_location[DW_OP_reg26]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$98, DW_AT_location[DW_OP_reg27]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$99, DW_AT_location[DW_OP_reg28]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$100, DW_AT_location[DW_OP_reg29]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$101, DW_AT_location[DW_OP_reg30]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$102, DW_AT_location[DW_OP_reg31]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$103, DW_AT_location[DW_OP_regx 0x20]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x21]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x22]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x23]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x24]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x25]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x26]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x27]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x28]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x29]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x2a]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x2b]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x2c]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x2d]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x2e]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x2f]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x30]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x31]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x32]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x33]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x34]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x35]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x36]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x37]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x38]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x39]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x3a]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x3b]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x3c]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x3d]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x3e]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x3f]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x40]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x41]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x42]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x43]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x44]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x45]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x46]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x47]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x48]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x49]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x4a]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x4b]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x4c]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x4d]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x4e]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x4f]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x50]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x51]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x52]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x53]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x54]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x55]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x56]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x57]
DW$159	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$159, DW_AT_location[DW_OP_regx 0x58]
DW$160	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$160, DW_AT_location[DW_OP_regx 0x59]
DW$161	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$161, DW_AT_location[DW_OP_regx 0x5a]
DW$162	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$162, DW_AT_location[DW_OP_regx 0x5b]
DW$163	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$163, DW_AT_location[DW_OP_regx 0x5c]
DW$164	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$164, DW_AT_location[DW_OP_regx 0x5d]
DW$165	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$165, DW_AT_location[DW_OP_regx 0x5e]
DW$166	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$166, DW_AT_location[DW_OP_regx 0x5f]
DW$167	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$167, DW_AT_location[DW_OP_regx 0x60]
DW$168	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$168, DW_AT_location[DW_OP_regx 0x61]
DW$169	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$169, DW_AT_location[DW_OP_regx 0x62]
DW$170	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$170, DW_AT_location[DW_OP_regx 0x63]
DW$171	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$171, DW_AT_location[DW_OP_regx 0x64]
DW$172	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$172, DW_AT_location[DW_OP_regx 0x65]
DW$173	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$173, DW_AT_location[DW_OP_regx 0x66]
DW$174	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$174, DW_AT_location[DW_OP_regx 0x67]
DW$175	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$175, DW_AT_location[DW_OP_regx 0x68]
DW$176	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$176, DW_AT_location[DW_OP_regx 0x69]
DW$177	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$177, DW_AT_location[DW_OP_regx 0x6a]
DW$178	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$178, DW_AT_location[DW_OP_regx 0x6b]
DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$179, DW_AT_location[DW_OP_regx 0x6c]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$180, DW_AT_location[DW_OP_regx 0x6d]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$181, DW_AT_location[DW_OP_regx 0x6e]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$182, DW_AT_location[DW_OP_regx 0x6f]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$183, DW_AT_location[DW_OP_regx 0x70]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$184, DW_AT_location[DW_OP_regx 0x71]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$185, DW_AT_location[DW_OP_regx 0x72]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$186, DW_AT_location[DW_OP_regx 0x73]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$187, DW_AT_location[DW_OP_regx 0x74]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$188, DW_AT_location[DW_OP_regx 0x75]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$189, DW_AT_location[DW_OP_regx 0x76]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$190, DW_AT_location[DW_OP_regx 0x77]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$191, DW_AT_location[DW_OP_regx 0x78]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$192, DW_AT_location[DW_OP_regx 0x79]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$193, DW_AT_location[DW_OP_regx 0x7a]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$194, DW_AT_location[DW_OP_regx 0x7b]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$195, DW_AT_location[DW_OP_regx 0x7c]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$196, DW_AT_location[DW_OP_regx 0x7d]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$197, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

