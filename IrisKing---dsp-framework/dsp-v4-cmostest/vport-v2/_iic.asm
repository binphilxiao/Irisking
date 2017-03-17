;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Tue Aug 28 17:48:50 2007                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=near --mem_model:data=far --quiet --silicon_version=6400 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64xx                                          *
;*   Optimization      : Disabled                                             *
;*   Optimizing for    : Compile time, Ease of Development                    *
;*                       Based on options: no -o, no -ms                      *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("_iic.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_rrdy"), DW_AT_symbol_name("_I2C_rrdy")
	.dwattr DW$1, DW_AT_type(*DW$T$19)
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_xrdy"), DW_AT_symbol_name("_I2C_xrdy")
	.dwattr DW$3, DW_AT_type(*DW$T$19)
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$3


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_bb"), DW_AT_symbol_name("_I2C_bb")
	.dwattr DW$5, DW_AT_type(*DW$T$19)
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$5


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_writeByte"), DW_AT_symbol_name("_I2C_writeByte")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$7


DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_readByte"), DW_AT_symbol_name("_I2C_readByte")
	.dwattr DW$10, DW_AT_type(*DW$T$26)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$10


DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_sendStop"), DW_AT_symbol_name("_I2C_sendStop")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$12


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_start"), DW_AT_symbol_name("_I2C_start")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$14


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_config"), DW_AT_symbol_name("_I2C_config")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$16


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("I2C_getConfig"), DW_AT_symbol_name("_I2C_getConfig")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$19

	.sect	".const"
	.align	4
_EVM642VIDEOIIC_Config:
	.field  	0,32			; _EVM642VIDEOIIC_Config._i2coar @ 0
	.field  	0,32			; _EVM642VIDEOIIC_Config._i2cier @ 32
	.field  	15,32			; _EVM642VIDEOIIC_Config._i2cclkl @ 64
	.field  	15,32			; _EVM642VIDEOIIC_Config._i2cclkh @ 96
	.field  	1,32			; _EVM642VIDEOIIC_Config._i2ccnt @ 128
	.field  	0,32			; _EVM642VIDEOIIC_Config._i2csar @ 160
	.field  	17952,32			; _EVM642VIDEOIIC_Config._i2cmdr @ 192
	.field  	74,32			; _EVM642VIDEOIIC_Config._i2cpsc @ 224

DW$22	.dwtag  DW_TAG_variable, DW_AT_name("EVM642VIDEOIIC_Config"), DW_AT_symbol_name("_EVM642VIDEOIIC_Config")
	.dwattr DW$22, DW_AT_type(*DW$T$46)
	.dwattr DW$22, DW_AT_location[DW_OP_addr _EVM642VIDEOIIC_Config]
	.sect	".const"
	.align	4
_EVM642VIDEOIIC_Config_Read:
	.field  	0,32			; _EVM642VIDEOIIC_Config_Read._i2coar @ 0
	.field  	0,32			; _EVM642VIDEOIIC_Config_Read._i2cier @ 32
	.field  	15,32			; _EVM642VIDEOIIC_Config_Read._i2cclkl @ 64
	.field  	15,32			; _EVM642VIDEOIIC_Config_Read._i2cclkh @ 96
	.field  	1,32			; _EVM642VIDEOIIC_Config_Read._i2ccnt @ 128
	.field  	0,32			; _EVM642VIDEOIIC_Config_Read._i2csar @ 160
	.field  	19488,32			; _EVM642VIDEOIIC_Config_Read._i2cmdr @ 192
	.field  	74,32			; _EVM642VIDEOIIC_Config_Read._i2cpsc @ 224

DW$23	.dwtag  DW_TAG_variable, DW_AT_name("EVM642VIDEOIIC_Config_Read"), DW_AT_symbol_name("_EVM642VIDEOIIC_Config_Read")
	.dwattr DW$23, DW_AT_type(*DW$T$46)
	.dwattr DW$23, DW_AT_location[DW_OP_addr _EVM642VIDEOIIC_Config_Read]
;	C:\CCStudio_v3.1\C6000\cgtools\bin\acp6x.exe -@C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\TI41612 
	.sect	".text"
	.global	__IIC_write

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("_IIC_write"), DW_AT_symbol_name("__IIC_write")
	.dwattr DW$24, DW_AT_low_pc(__IIC_write)
	.dwattr DW$24, DW_AT_high_pc(0x00)
	.dwattr DW$24, DW_AT_begin_file("_iic.c")
	.dwattr DW$24, DW_AT_begin_line(0x34)
	.dwattr DW$24, DW_AT_begin_column(0x06)
	.dwpsn	"_iic.c",58,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
;  52 | void _IIC_write(I2C_Handle hI2C,                                       
;  53 | Uint8 devAddress,                                                      
;  54 | Uint32  subAddress,                                                    
;  55 | Uint8 *data,                                                           
;  56 | Uint16  numBytes                                                       
;  57 | )                                                                      
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __IIC_write                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 60 Auto + 4 Save = 64 byte                  *
;******************************************************************************
__IIC_write:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(64)      ; |58| 
           NOP             2
	.dwcfa	0x0e, 64
	.dwcfa	0x80, 19, 0
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2C"), DW_AT_symbol_name("_hI2C")
	.dwattr DW$25, DW_AT_type(*DW$T$25)
	.dwattr DW$25, DW_AT_location[DW_OP_reg4]
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devAddress"), DW_AT_symbol_name("_devAddress")
	.dwattr DW$26, DW_AT_type(*DW$T$26)
	.dwattr DW$26, DW_AT_location[DW_OP_reg20]
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subAddress"), DW_AT_symbol_name("_subAddress")
	.dwattr DW$27, DW_AT_type(*DW$T$19)
	.dwattr DW$27, DW_AT_location[DW_OP_reg6]
DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$28, DW_AT_type(*DW$T$35)
	.dwattr DW$28, DW_AT_location[DW_OP_reg22]
DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numBytes"), DW_AT_symbol_name("_numBytes")
	.dwattr DW$29, DW_AT_type(*DW$T$36)
	.dwattr DW$29, DW_AT_location[DW_OP_reg8]
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("hI2C"), DW_AT_symbol_name("_hI2C")
	.dwattr DW$30, DW_AT_type(*DW$T$25)
	.dwattr DW$30, DW_AT_location[DW_OP_breg31 4]
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("devAddress"), DW_AT_symbol_name("_devAddress")
	.dwattr DW$31, DW_AT_type(*DW$T$26)
	.dwattr DW$31, DW_AT_location[DW_OP_breg31 8]
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("subAddress"), DW_AT_symbol_name("_subAddress")
	.dwattr DW$32, DW_AT_type(*DW$T$19)
	.dwattr DW$32, DW_AT_location[DW_OP_breg31 12]
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$33, DW_AT_type(*DW$T$35)
	.dwattr DW$33, DW_AT_location[DW_OP_breg31 16]
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("numBytes"), DW_AT_symbol_name("_numBytes")
	.dwattr DW$34, DW_AT_type(*DW$T$36)
	.dwattr DW$34, DW_AT_location[DW_OP_breg31 20]
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$35, DW_AT_type(*DW$T$41)
	.dwattr DW$35, DW_AT_location[DW_OP_breg31 24]
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("prevIICConfig"), DW_AT_symbol_name("_prevIICConfig")
	.dwattr DW$36, DW_AT_type(*DW$T$31)
	.dwattr DW$36, DW_AT_location[DW_OP_breg31 28]
;----------------------------------------------------------------------
;  59 | Int i;                                                                 
;  60 | I2C_Config prevIICConfig;                                              
;----------------------------------------------------------------------
           STH     .D2T1   A8,*+SP(20)       ; |58| 
           STW     .D2T1   A6,*+SP(12)       ; |58| 
           STB     .D2T2   B4,*+SP(8)        ; |58| 

           STW     .D2T1   A4,*+SP(4)        ; |58| 
||         MV      .L1X    B6,A3             ; |58| 

           STW     .D2T1   A3,*+SP(16)       ; |58| 
           NOP             2
	.dwpsn	"_iic.c",63,5
;----------------------------------------------------------------------
;  63 | if(hI2C == INV) {                                                      
;----------------------------------------------------------------------
           MVK     .L2     -1,B5             ; |63| 
           CMPEQ   .L2X    A4,B5,B0          ; |63| 
   [ B0]   BNOP    .S1     L18,5             ; |63| 
           ; BRANCHCC OCCURS {L18}           ; |63| 
;** --------------------------------------------------------------------------*
	.dwpsn	"_iic.c",64,9
;----------------------------------------------------------------------
;  64 | return;                                                                
;----------------------------------------------------------------------
	.dwpsn	"_iic.c",68,5
;----------------------------------------------------------------------
;  68 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |68| 
           MVKH    .S2     _I2C_bb,B4        ; |68| 
           CALL    .S2     B4                ; |68| 
           ADDKPC  .S2     RL0,B3,4          ; |68| 
RL0:       ; CALL OCCURS {_I2C_bb}           ; |68| 
           MV      .L1     A4,A0             ; |68| 
   [!A0]   BNOP    .S1     L2,5              ; |68| 
           ; BRANCHCC OCCURS {L2}            ; |68| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L1:    
DW$L$__IIC_write$3$B:
           MVKL    .S2     _I2C_bb,B4        ; |68| 
           MVKH    .S2     _I2C_bb,B4        ; |68| 
           CALL    .S2     B4                ; |68| 
           LDW     .D2T1   *+SP(4),A4        ; |68| 
           ADDKPC  .S2     RL1,B3,3          ; |68| 
RL1:       ; CALL OCCURS {_I2C_bb}           ; |68| 
           MV      .L1     A4,A0             ; |68| 
   [ A0]   BNOP    .S1     L1,5              ; |68| 
           ; BRANCHCC OCCURS {L1}            ; |68| 
DW$L$__IIC_write$3$E:
;** --------------------------------------------------------------------------*
L2:    
	.dwpsn	"_iic.c",71,5
;----------------------------------------------------------------------
;  71 | I2C_getConfig(hI2C, &prevIICConfig);                                   
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_getConfig,A3 ; |71| 
           MVKH    .S1     _I2C_getConfig,A3 ; |71| 
           LDW     .D2T1   *+SP(4),A4        ; |71| 
           CALL    .S2X    A3                ; |71| 
           ADDKPC  .S2     RL2,B3,3          ; |71| 
           ADD     .D2     SP,28,B4          ; |71| 
RL2:       ; CALL OCCURS {_I2C_getConfig}    ; |71| 
	.dwpsn	"_iic.c",74,5
;----------------------------------------------------------------------
;  74 | I2C_RSETH(hI2C, I2CMDR, EVM642VIDEOIIC_Config.i2cmdr);                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A4        ; |74| 
           NOP             1
           MVKL    .S1     _EVM642VIDEOIIC_Config+24,A3 ; |74| 
           MVKH    .S1     _EVM642VIDEOIIC_Config+24,A3 ; |74| 
           LDW     .D1T2   *A3,B4            ; |74| 
           LDW     .D1T1   *+A4(8),A3        ; |74| 
           NOP             4
           STW     .D1T2   B4,*+A3(36)       ; |74| 
           NOP             2
	.dwpsn	"_iic.c",77,5
;----------------------------------------------------------------------
;  77 | I2C_RSETH(hI2C, I2CIMR, EVM642VIDEOIIC_Config.i2cimr);                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A4        ; |77| 
           NOP             1
           MVKL    .S1     _EVM642VIDEOIIC_Config+4,A3 ; |77| 
           MVKH    .S1     _EVM642VIDEOIIC_Config+4,A3 ; |77| 
           LDW     .D1T2   *A3,B4            ; |77| 
           LDW     .D1T1   *+A4(8),A3        ; |77| 
           NOP             4
           STW     .D1T2   B4,*+A3(4)        ; |77| 
           NOP             2
	.dwpsn	"_iic.c",80,5
;----------------------------------------------------------------------
;  80 | I2C_RSETH(hI2C, I2CSAR, devAddress);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |80| 
           NOP             3
           LDBU    .D2T2   *+SP(8),B4        ; |80| 
           LDW     .D1T1   *+A3(8),A3        ; |80| 
           NOP             4
           STW     .D1T2   B4,*+A3(28)       ; |80| 
           NOP             2
	.dwpsn	"_iic.c",83,5
;----------------------------------------------------------------------
;  83 | I2C_RSETH(hI2C, I2CCNT, numBytes + 1);                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |83| 
           LDHU    .D2T2   *+SP(20),B4       ; |83| 
           NOP             3
           LDW     .D1T1   *+A3(8),A3        ; |83| 
           NOP             3
           ADD     .L2     1,B4,B4           ; |83| 
           STW     .D1T2   B4,*+A3(20)       ; |83| 
           NOP             2
	.dwpsn	"_iic.c",86,5
;----------------------------------------------------------------------
;  86 | I2C_RSETH(hI2C, I2CDXR, subAddress);                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B4        ; |86| 
           NOP             3
           LDW     .D2T2   *+SP(12),B5       ; |86| 
           LDW     .D2T2   *+B4(8),B4        ; |86| 
           NOP             4
           STW     .D2T2   B5,*+B4(32)       ; |86| 
           NOP             2
	.dwpsn	"_iic.c",89,5
;----------------------------------------------------------------------
;  89 | I2C_start(hI2C);                                                       
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_start,B4     ; |89| 
           MVKH    .S2     _I2C_start,B4     ; |89| 
           CALL    .S2     B4                ; |89| 
           LDW     .D2T1   *+SP(4),A4        ; |89| 
           ADDKPC  .S2     RL3,B3,3          ; |89| 
RL3:       ; CALL OCCURS {_I2C_start}        ; |89| 

DW$37	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$38, DW_AT_type(*DW$T$42)
	.dwattr DW$38, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",91,5
;----------------------------------------------------------------------
;  91 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |91| 
           STW     .D2T2   B4,*+SP(60)       ; |91| 
           LDW     .D2T2   *+SP(60),B4       ; |91| 
           NOP             3
           MVK     .S2     1000,B5           ; |91| 
           CMPLT   .L2     B4,B5,B0          ; |91| 
   [!B0]   BNOP    .S1     L4,5              ; |91| 
           ; BRANCHCC OCCURS {L4}            ; |91| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L3:    
DW$L$__IIC_write$5$B:
           LDW     .D2T2   *+SP(60),B4       ; |91| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |91| 
           STW     .D2T2   B4,*+SP(60)       ; |91| 
           LDW     .D2T2   *+SP(60),B4       ; |91| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |91| 
   [ B0]   BNOP    .S1     L3,5              ; |91| 
           ; BRANCHCC OCCURS {L3}            ; |91| 
DW$L$__IIC_write$5$E:
;** --------------------------------------------------------------------------*
L4:    
	.dwendtag DW$37

	.dwpsn	"_iic.c",94,9
;----------------------------------------------------------------------
;  94 | for(i = 0; i < numBytes; i ++) {                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |94| 
           STW     .D2T2   B4,*+SP(24)       ; |94| 
           NOP             2
	.dwpsn	"_iic.c",94,16
           LDHU    .D2T2   *+SP(20),B4       ; |94| 
           LDW     .D2T2   *+SP(24),B5       ; |94| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |94| 
   [!B0]   BNOP    .S1     L10,5             ; |94| 
           ; BRANCHCC OCCURS {L10}           ; |94| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L5
;** --------------------------------------------------------------------------*
L5:    
DW$L$__IIC_write$7$B:
	.dwpsn	"_iic.c",95,15
;----------------------------------------------------------------------
;  95 | while(!I2C_xrdy(hI2C));                                                
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_xrdy,B4      ; |95| 
           MVKH    .S2     _I2C_xrdy,B4      ; |95| 
           CALL    .S2     B4                ; |95| 
           LDW     .D2T1   *+SP(4),A4        ; |95| 
           ADDKPC  .S2     RL4,B3,3          ; |95| 
RL4:       ; CALL OCCURS {_I2C_xrdy}         ; |95| 
           MV      .L1     A4,A0             ; |95| 
   [ A0]   BNOP    .S1     L7,5              ; |95| 
           ; BRANCHCC OCCURS {L7}            ; |95| 
DW$L$__IIC_write$7$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L6:    
DW$L$__IIC_write$8$B:
           MVKL    .S2     _I2C_xrdy,B4      ; |95| 
           MVKH    .S2     _I2C_xrdy,B4      ; |95| 
           CALL    .S2     B4                ; |95| 
           LDW     .D2T1   *+SP(4),A4        ; |95| 
           ADDKPC  .S2     RL5,B3,3          ; |95| 
RL5:       ; CALL OCCURS {_I2C_xrdy}         ; |95| 
           MV      .L1     A4,A0             ; |95| 
   [!A0]   BNOP    .S1     L6,5              ; |95| 
           ; BRANCHCC OCCURS {L6}            ; |95| 
DW$L$__IIC_write$8$E:
;** --------------------------------------------------------------------------*
L7:    
DW$L$__IIC_write$9$B:
	.dwpsn	"_iic.c",96,9
;----------------------------------------------------------------------
;  96 | I2C_writeByte(hI2C, *data ++);                                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |96| 
           MVKL    .S1     _I2C_writeByte,A3 ; |96| 
           MVKH    .S1     _I2C_writeByte,A3 ; |96| 
           LDW     .D2T1   *+SP(4),A4        ; |96| 
           CALL    .S2X    A3                ; |96| 
           LDBU    .D2T2   *B5++,B4          ; |96| 
           STW     .D2T2   B5,*+SP(16)       ; |96| 
           ADDKPC  .S2     RL6,B3,2          ; |96| 
RL6:       ; CALL OCCURS {_I2C_writeByte}    ; |96| 

DW$39	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$40, DW_AT_type(*DW$T$42)
	.dwattr DW$40, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",97,9
;----------------------------------------------------------------------
;  97 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |97| 
           STW     .D2T2   B4,*+SP(60)       ; |97| 
           LDW     .D2T2   *+SP(60),B4       ; |97| 
           NOP             3
           MVK     .S2     1000,B5           ; |97| 
           CMPLT   .L2     B4,B5,B0          ; |97| 
   [!B0]   BNOP    .S1     L9,5              ; |97| 
           ; BRANCHCC OCCURS {L9}            ; |97| 
DW$L$__IIC_write$9$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L8:    
DW$L$__IIC_write$10$B:
           LDW     .D2T2   *+SP(60),B4       ; |97| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |97| 
           STW     .D2T2   B4,*+SP(60)       ; |97| 
           LDW     .D2T2   *+SP(60),B4       ; |97| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |97| 
   [ B0]   BNOP    .S1     L8,5              ; |97| 
           ; BRANCHCC OCCURS {L8}            ; |97| 
DW$L$__IIC_write$10$E:
;** --------------------------------------------------------------------------*
L9:    
DW$L$__IIC_write$11$B:
	.dwendtag DW$39

	.dwpsn	"_iic.c",94,30
           LDW     .D2T2   *+SP(24),B4       ; |94| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |94| 
           STW     .D2T2   B4,*+SP(24)       ; |94| 
           NOP             2
	.dwpsn	"_iic.c",94,16
           LDHU    .D2T2   *+SP(20),B4       ; |94| 
           LDW     .D2T2   *+SP(24),B5       ; |94| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |94| 
   [ B0]   BNOP    .S1     L5,5              ; |94| 
           ; BRANCHCC OCCURS {L5}            ; |94| 
DW$L$__IIC_write$11$E:
;** --------------------------------------------------------------------------*
L10:    
	.dwpsn	"_iic.c",101,5
;----------------------------------------------------------------------
; 101 | I2C_sendStop(hI2C);                                                    
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_sendStop,A3  ; |101| 
           MVKH    .S1     _I2C_sendStop,A3  ; |101| 
           LDW     .D2T1   *+SP(4),A4        ; |101| 
           CALL    .S2X    A3                ; |101| 
           ADDKPC  .S2     RL7,B3,4          ; |101| 
RL7:       ; CALL OCCURS {_I2C_sendStop}     ; |101| 

DW$41	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$42	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$42, DW_AT_type(*DW$T$42)
	.dwattr DW$42, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",103,5
;----------------------------------------------------------------------
; 103 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |103| 
           STW     .D2T2   B4,*+SP(60)       ; |103| 
           LDW     .D2T2   *+SP(60),B4       ; |103| 
           NOP             3
           MVK     .S2     1000,B5           ; |103| 
           CMPLT   .L2     B4,B5,B0          ; |103| 
   [!B0]   BNOP    .S1     L12,5             ; |103| 
           ; BRANCHCC OCCURS {L12}           ; |103| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L11:    
DW$L$__IIC_write$13$B:
           LDW     .D2T2   *+SP(60),B4       ; |103| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |103| 
           STW     .D2T2   B4,*+SP(60)       ; |103| 
           LDW     .D2T2   *+SP(60),B4       ; |103| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |103| 
   [ B0]   BNOP    .S1     L11,5             ; |103| 
           ; BRANCHCC OCCURS {L11}           ; |103| 
DW$L$__IIC_write$13$E:
;** --------------------------------------------------------------------------*
L12:    
	.dwendtag DW$41

	.dwpsn	"_iic.c",105,5
;----------------------------------------------------------------------
; 105 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |105| 
           MVKH    .S2     _I2C_bb,B4        ; |105| 
           CALL    .S2     B4                ; |105| 
           LDW     .D2T1   *+SP(4),A4        ; |105| 
           ADDKPC  .S2     RL8,B3,3          ; |105| 
RL8:       ; CALL OCCURS {_I2C_bb}           ; |105| 
           MV      .L1     A4,A0             ; |105| 
   [!A0]   BNOP    .S1     L14,5             ; |105| 
           ; BRANCHCC OCCURS {L14}           ; |105| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L13:    
DW$L$__IIC_write$15$B:
           MVKL    .S2     _I2C_bb,B4        ; |105| 
           MVKH    .S2     _I2C_bb,B4        ; |105| 
           CALL    .S2     B4                ; |105| 
           LDW     .D2T1   *+SP(4),A4        ; |105| 
           ADDKPC  .S2     RL9,B3,3          ; |105| 
RL9:       ; CALL OCCURS {_I2C_bb}           ; |105| 
           MV      .L1     A4,A0             ; |105| 
   [ A0]   BNOP    .S1     L13,5             ; |105| 
           ; BRANCHCC OCCURS {L13}           ; |105| 
DW$L$__IIC_write$15$E:
;** --------------------------------------------------------------------------*
L14:    

DW$43	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$44, DW_AT_type(*DW$T$42)
	.dwattr DW$44, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",107,5
;----------------------------------------------------------------------
; 107 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |107| 
           STW     .D2T2   B4,*+SP(60)       ; |107| 
           LDW     .D2T2   *+SP(60),B4       ; |107| 
           NOP             3
           MVK     .S2     1000,B5           ; |107| 
           CMPLT   .L2     B4,B5,B0          ; |107| 
   [!B0]   BNOP    .S1     L16,5             ; |107| 
           ; BRANCHCC OCCURS {L16}           ; |107| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L15:    
DW$L$__IIC_write$17$B:
           LDW     .D2T2   *+SP(60),B4       ; |107| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |107| 
           STW     .D2T2   B4,*+SP(60)       ; |107| 
           LDW     .D2T2   *+SP(60),B4       ; |107| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |107| 
   [ B0]   BNOP    .S1     L15,5             ; |107| 
           ; BRANCHCC OCCURS {L15}           ; |107| 
DW$L$__IIC_write$17$E:
;** --------------------------------------------------------------------------*
L16:    
	.dwendtag DW$43

	.dwpsn	"_iic.c",111,5
;----------------------------------------------------------------------
; 111 | I2C_RSETH(hI2C, I2CMDR, prevIICConfig.i2cmdr);                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |111| 
           NOP             3
           LDW     .D2T2   *+SP(52),B4       ; |111| 
           LDW     .D1T1   *+A3(8),A3        ; |111| 
           NOP             4
           STW     .D1T2   B4,*+A3(36)       ; |111| 
           NOP             2
	.dwpsn	"_iic.c",114,5
;----------------------------------------------------------------------
; 114 | I2C_RSETH(hI2C, I2CIMR, prevIICConfig.i2cimr);                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |114| 
           NOP             3
           LDW     .D2T2   *+SP(32),B4       ; |114| 
           LDW     .D1T1   *+A3(8),A3        ; |114| 
           NOP             4
           STW     .D1T2   B4,*+A3(4)        ; |114| 
           NOP             2
	.dwpsn	"_iic.c",117,5
;----------------------------------------------------------------------
; 117 | I2C_RSETH(hI2C, I2CSAR, prevIICConfig.i2csar);                         
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |117| 
           NOP             3
           LDW     .D2T2   *+SP(48),B4       ; |117| 
           LDW     .D1T1   *+A3(8),A3        ; |117| 
           NOP             4
           STW     .D1T2   B4,*+A3(28)       ; |117| 
           NOP             2
	.dwpsn	"_iic.c",120,5
;----------------------------------------------------------------------
; 120 | I2C_RSETH(hI2C, I2CCNT, prevIICConfig.i2ccnt);                         
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B5        ; |120| 
           NOP             3
           LDW     .D2T2   *+SP(44),B4       ; |120| 
           LDW     .D2T2   *+B5(8),B5        ; |120| 
           NOP             4
           STW     .D2T2   B4,*+B5(20)       ; |120| 
           NOP             2

DW$45	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$46, DW_AT_type(*DW$T$42)
	.dwattr DW$46, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",122,5
;----------------------------------------------------------------------
; 122 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |122| 
           STW     .D2T2   B4,*+SP(60)       ; |122| 
           LDW     .D2T2   *+SP(60),B5       ; |122| 
           NOP             3
           MVK     .S2     1000,B31          ; |122| 
           CMPLT   .L2     B5,B31,B0         ; |122| 
   [!B0]   BNOP    .S1     L18,5             ; |122| 
           ; BRANCHCC OCCURS {L18}           ; |122| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L17:    
DW$L$__IIC_write$19$B:
           LDW     .D2T2   *+SP(60),B4       ; |122| 
           NOP             3
           MVK     .S2     1000,B5           ; |122| 
           ADD     .L2     1,B4,B4           ; |122| 
           STW     .D2T2   B4,*+SP(60)       ; |122| 
           LDW     .D2T2   *+SP(60),B4       ; |122| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |122| 
   [ B0]   BNOP    .S1     L17,5             ; |122| 
           ; BRANCHCC OCCURS {L17}           ; |122| 
DW$L$__IIC_write$19$E:
;** --------------------------------------------------------------------------*
	.dwendtag DW$45

;** --------------------------------------------------------------------------*
L18:    
	.dwpsn	"_iic.c",123,1
           LDW     .D2T2   *++SP(64),B3      ; |123| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |123| 
           ; BRANCH OCCURS {B3}              ; |123| 

DW$47	.dwtag  DW_TAG_loop
	.dwattr DW$47, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L17:1:1188294530")
	.dwattr DW$47, DW_AT_begin_file("_iic.c")
	.dwattr DW$47, DW_AT_begin_line(0x7a)
	.dwattr DW$47, DW_AT_end_line(0x7a)
DW$48	.dwtag  DW_TAG_loop_range
	.dwattr DW$48, DW_AT_low_pc(DW$L$__IIC_write$19$B)
	.dwattr DW$48, DW_AT_high_pc(DW$L$__IIC_write$19$E)
	.dwendtag DW$47


DW$49	.dwtag  DW_TAG_loop
	.dwattr DW$49, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L15:1:1188294530")
	.dwattr DW$49, DW_AT_begin_file("_iic.c")
	.dwattr DW$49, DW_AT_begin_line(0x6b)
	.dwattr DW$49, DW_AT_end_line(0x6b)
DW$50	.dwtag  DW_TAG_loop_range
	.dwattr DW$50, DW_AT_low_pc(DW$L$__IIC_write$17$B)
	.dwattr DW$50, DW_AT_high_pc(DW$L$__IIC_write$17$E)
	.dwendtag DW$49


DW$51	.dwtag  DW_TAG_loop
	.dwattr DW$51, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L13:1:1188294530")
	.dwattr DW$51, DW_AT_begin_file("_iic.c")
	.dwattr DW$51, DW_AT_begin_line(0x69)
	.dwattr DW$51, DW_AT_end_line(0x69)
DW$52	.dwtag  DW_TAG_loop_range
	.dwattr DW$52, DW_AT_low_pc(DW$L$__IIC_write$15$B)
	.dwattr DW$52, DW_AT_high_pc(DW$L$__IIC_write$15$E)
	.dwendtag DW$51


DW$53	.dwtag  DW_TAG_loop
	.dwattr DW$53, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L11:1:1188294530")
	.dwattr DW$53, DW_AT_begin_file("_iic.c")
	.dwattr DW$53, DW_AT_begin_line(0x67)
	.dwattr DW$53, DW_AT_end_line(0x67)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$__IIC_write$13$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$__IIC_write$13$E)
	.dwendtag DW$53


DW$55	.dwtag  DW_TAG_loop
	.dwattr DW$55, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L5:1:1188294530")
	.dwattr DW$55, DW_AT_begin_file("_iic.c")
	.dwattr DW$55, DW_AT_begin_line(0x5e)
	.dwattr DW$55, DW_AT_end_line(0x62)
DW$56	.dwtag  DW_TAG_loop_range
	.dwattr DW$56, DW_AT_low_pc(DW$L$__IIC_write$7$B)
	.dwattr DW$56, DW_AT_high_pc(DW$L$__IIC_write$7$E)
DW$57	.dwtag  DW_TAG_loop_range
	.dwattr DW$57, DW_AT_low_pc(DW$L$__IIC_write$9$B)
	.dwattr DW$57, DW_AT_high_pc(DW$L$__IIC_write$9$E)
DW$58	.dwtag  DW_TAG_loop_range
	.dwattr DW$58, DW_AT_low_pc(DW$L$__IIC_write$11$B)
	.dwattr DW$58, DW_AT_high_pc(DW$L$__IIC_write$11$E)

DW$59	.dwtag  DW_TAG_loop
	.dwattr DW$59, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L6:2:1188294530")
	.dwattr DW$59, DW_AT_begin_file("_iic.c")
	.dwattr DW$59, DW_AT_begin_line(0x5f)
	.dwattr DW$59, DW_AT_end_line(0x5f)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$__IIC_write$8$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$__IIC_write$8$E)
	.dwendtag DW$59


DW$61	.dwtag  DW_TAG_loop
	.dwattr DW$61, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L8:2:1188294530")
	.dwattr DW$61, DW_AT_begin_file("_iic.c")
	.dwattr DW$61, DW_AT_begin_line(0x61)
	.dwattr DW$61, DW_AT_end_line(0x61)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$__IIC_write$10$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$__IIC_write$10$E)
	.dwendtag DW$61

	.dwendtag DW$55


DW$63	.dwtag  DW_TAG_loop
	.dwattr DW$63, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L3:1:1188294530")
	.dwattr DW$63, DW_AT_begin_file("_iic.c")
	.dwattr DW$63, DW_AT_begin_line(0x5b)
	.dwattr DW$63, DW_AT_end_line(0x5b)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$__IIC_write$5$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$__IIC_write$5$E)
	.dwendtag DW$63


DW$65	.dwtag  DW_TAG_loop
	.dwattr DW$65, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L1:1:1188294530")
	.dwattr DW$65, DW_AT_begin_file("_iic.c")
	.dwattr DW$65, DW_AT_begin_line(0x44)
	.dwattr DW$65, DW_AT_end_line(0x44)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$__IIC_write$3$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$__IIC_write$3$E)
	.dwendtag DW$65

	.dwattr DW$24, DW_AT_end_file("_iic.c")
	.dwattr DW$24, DW_AT_end_line(0x7b)
	.dwattr DW$24, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$24

	.sect	".text"
	.global	__IIC_read

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("_IIC_read"), DW_AT_symbol_name("__IIC_read")
	.dwattr DW$67, DW_AT_low_pc(__IIC_read)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("_iic.c")
	.dwattr DW$67, DW_AT_begin_line(0x83)
	.dwattr DW$67, DW_AT_begin_column(0x06)
	.dwpsn	"_iic.c",137,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 131 | void _IIC_read(I2C_Handle hI2C,                                        
; 132 | Uint8 devAddress,                                                      
; 133 | Uint32  subAddress,                                                    
; 134 | Uint8 *data,                                                           
; 135 | Uint16  numBytes                                                       
; 136 | )                                                                      
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __IIC_read                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 60 Auto + 4 Save = 64 byte                  *
;******************************************************************************
__IIC_read:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(64)      ; |137| 
           NOP             2
	.dwcfa	0x0e, 64
	.dwcfa	0x80, 19, 0
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2C"), DW_AT_symbol_name("_hI2C")
	.dwattr DW$68, DW_AT_type(*DW$T$25)
	.dwattr DW$68, DW_AT_location[DW_OP_reg4]
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devAddress"), DW_AT_symbol_name("_devAddress")
	.dwattr DW$69, DW_AT_type(*DW$T$26)
	.dwattr DW$69, DW_AT_location[DW_OP_reg20]
DW$70	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subAddress"), DW_AT_symbol_name("_subAddress")
	.dwattr DW$70, DW_AT_type(*DW$T$19)
	.dwattr DW$70, DW_AT_location[DW_OP_reg6]
DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$71, DW_AT_type(*DW$T$35)
	.dwattr DW$71, DW_AT_location[DW_OP_reg22]
DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numBytes"), DW_AT_symbol_name("_numBytes")
	.dwattr DW$72, DW_AT_type(*DW$T$36)
	.dwattr DW$72, DW_AT_location[DW_OP_reg8]
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("hI2C"), DW_AT_symbol_name("_hI2C")
	.dwattr DW$73, DW_AT_type(*DW$T$25)
	.dwattr DW$73, DW_AT_location[DW_OP_breg31 4]
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("devAddress"), DW_AT_symbol_name("_devAddress")
	.dwattr DW$74, DW_AT_type(*DW$T$26)
	.dwattr DW$74, DW_AT_location[DW_OP_breg31 8]
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("subAddress"), DW_AT_symbol_name("_subAddress")
	.dwattr DW$75, DW_AT_type(*DW$T$19)
	.dwattr DW$75, DW_AT_location[DW_OP_breg31 12]
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$76, DW_AT_type(*DW$T$35)
	.dwattr DW$76, DW_AT_location[DW_OP_breg31 16]
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("numBytes"), DW_AT_symbol_name("_numBytes")
	.dwattr DW$77, DW_AT_type(*DW$T$36)
	.dwattr DW$77, DW_AT_location[DW_OP_breg31 20]
DW$78	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$78, DW_AT_type(*DW$T$41)
	.dwattr DW$78, DW_AT_location[DW_OP_breg31 24]
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("prevIICConfig"), DW_AT_symbol_name("_prevIICConfig")
	.dwattr DW$79, DW_AT_type(*DW$T$31)
	.dwattr DW$79, DW_AT_location[DW_OP_breg31 28]
;----------------------------------------------------------------------
; 138 | Int i;                                                                 
; 139 | I2C_Config prevIICConfig;                                              
;----------------------------------------------------------------------
           STH     .D2T1   A8,*+SP(20)       ; |137| 
           STW     .D2T1   A6,*+SP(12)       ; |137| 
           STB     .D2T2   B4,*+SP(8)        ; |137| 

           STW     .D2T1   A4,*+SP(4)        ; |137| 
||         MV      .L1X    B6,A3             ; |137| 

           STW     .D2T1   A3,*+SP(16)       ; |137| 
           NOP             2
	.dwpsn	"_iic.c",142,5
;----------------------------------------------------------------------
; 142 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |142| 
           MVKH    .S2     _I2C_bb,B4        ; |142| 
           CALL    .S2     B4                ; |142| 
           ADDKPC  .S2     RL10,B3,4         ; |142| 
RL10:      ; CALL OCCURS {_I2C_bb}           ; |142| 
           MV      .L1     A4,A0             ; |142| 
   [!A0]   BNOP    .S1     L20,5             ; |142| 
           ; BRANCHCC OCCURS {L20}           ; |142| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L19:    
DW$L$__IIC_read$2$B:
           MVKL    .S2     _I2C_bb,B4        ; |142| 
           MVKH    .S2     _I2C_bb,B4        ; |142| 
           CALL    .S2     B4                ; |142| 
           LDW     .D2T1   *+SP(4),A4        ; |142| 
           ADDKPC  .S2     RL11,B3,3         ; |142| 
RL11:      ; CALL OCCURS {_I2C_bb}           ; |142| 
           MV      .L1     A4,A0             ; |142| 
   [ A0]   BNOP    .S1     L19,5             ; |142| 
           ; BRANCHCC OCCURS {L19}           ; |142| 
DW$L$__IIC_read$2$E:
;** --------------------------------------------------------------------------*
L20:    
	.dwpsn	"_iic.c",145,5
;----------------------------------------------------------------------
; 145 | I2C_getConfig(hI2C, &prevIICConfig);                                   
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_getConfig,B5 ; |145| 
           MVKH    .S2     _I2C_getConfig,B5 ; |145| 
           CALL    .S2     B5                ; |145| 
           LDW     .D2T1   *+SP(4),A4        ; |145| 
           ADDKPC  .S2     RL12,B3,2         ; |145| 
           ADD     .D2     SP,28,B4          ; |145| 
RL12:      ; CALL OCCURS {_I2C_getConfig}    ; |145| 
	.dwpsn	"_iic.c",148,5
;----------------------------------------------------------------------
; 148 | I2C_config(hI2C, (I2C_Config *)&EVM642VIDEOIIC_Config_Read);           
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_config,A3    ; |148| 
           MVKH    .S1     _I2C_config,A3    ; |148| 
           LDW     .D2T1   *+SP(4),A4        ; |148| 
           CALL    .S2X    A3                ; |148| 
           MVKL    .S1     _EVM642VIDEOIIC_Config_Read,A5 ; |148| 
           MVKH    .S1     _EVM642VIDEOIIC_Config_Read,A5 ; |148| 
           ADDKPC  .S2     RL13,B3,1         ; |148| 
           MV      .L2X    A5,B4             ; |148| 
RL13:      ; CALL OCCURS {_I2C_config}       ; |148| 
	.dwpsn	"_iic.c",151,5
;----------------------------------------------------------------------
; 151 | _IIC_write(hI2C, devAddress, subAddress, NULL, 0);                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A6       ; |151| 

           CALL    .S1     __IIC_write       ; |151| 
||         LDBU    .D2T2   *+SP(8),B4        ; |151| 

           LDW     .D2T1   *+SP(4),A4        ; |151| 
           ADDKPC  .S2     RL14,B3,1         ; |151| 
           ZERO    .L1     A8                ; |151| 
           ZERO    .L2     B6                ; |151| 
RL14:      ; CALL OCCURS {__IIC_write}       ; |151| 
	.dwpsn	"_iic.c",154,5
;----------------------------------------------------------------------
; 154 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |154| 
           MVKH    .S2     _I2C_bb,B4        ; |154| 
           CALL    .S2     B4                ; |154| 
           LDW     .D2T1   *+SP(4),A4        ; |154| 
           ADDKPC  .S2     RL15,B3,3         ; |154| 
RL15:      ; CALL OCCURS {_I2C_bb}           ; |154| 
           MV      .L1     A4,A0             ; |154| 
   [!A0]   BNOP    .S1     L22,5             ; |154| 
           ; BRANCHCC OCCURS {L22}           ; |154| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L21:    
DW$L$__IIC_read$4$B:
           MVKL    .S2     _I2C_bb,B4        ; |154| 
           MVKH    .S2     _I2C_bb,B4        ; |154| 
           CALL    .S2     B4                ; |154| 
           LDW     .D2T1   *+SP(4),A4        ; |154| 
           ADDKPC  .S2     RL16,B3,3         ; |154| 
RL16:      ; CALL OCCURS {_I2C_bb}           ; |154| 
           MV      .L1     A4,A0             ; |154| 
   [ A0]   BNOP    .S1     L21,5             ; |154| 
           ; BRANCHCC OCCURS {L21}           ; |154| 
DW$L$__IIC_read$4$E:
;** --------------------------------------------------------------------------*
L22:    
	.dwpsn	"_iic.c",157,5
;----------------------------------------------------------------------
; 157 | I2C_RSETH(hI2C, I2CSAR, devAddress);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |157| 
           NOP             3
           LDBU    .D2T2   *+SP(8),B4        ; |157| 
           LDW     .D1T1   *+A3(8),A3        ; |157| 
           NOP             4
           STW     .D1T2   B4,*+A3(28)       ; |157| 
           NOP             2
	.dwpsn	"_iic.c",160,5
;----------------------------------------------------------------------
; 160 | I2C_RSETH(hI2C, I2CCNT, numBytes);                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B5        ; |160| 
           NOP             3
           LDHU    .D2T2   *+SP(20),B4       ; |160| 
           LDW     .D2T2   *+B5(8),B5        ; |160| 
           NOP             4
           STW     .D2T2   B4,*+B5(20)       ; |160| 
           NOP             2
	.dwpsn	"_iic.c",163,5
;----------------------------------------------------------------------
; 163 | I2C_start(hI2C);                                                       
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_start,A3     ; |163| 
           MVKH    .S1     _I2C_start,A3     ; |163| 
           LDW     .D2T1   *+SP(4),A4        ; |163| 
           CALL    .S2X    A3                ; |163| 
           ADDKPC  .S2     RL17,B3,4         ; |163| 
RL17:      ; CALL OCCURS {_I2C_start}        ; |163| 

DW$80	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$81, DW_AT_type(*DW$T$42)
	.dwattr DW$81, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",165,4
;----------------------------------------------------------------------
; 165 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |165| 
           STW     .D2T2   B4,*+SP(60)       ; |165| 
           LDW     .D2T2   *+SP(60),B4       ; |165| 
           NOP             3
           MVK     .S2     1000,B5           ; |165| 
           CMPLT   .L2     B4,B5,B0          ; |165| 
   [!B0]   BNOP    .S1     L24,5             ; |165| 
           ; BRANCHCC OCCURS {L24}           ; |165| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L23:    
DW$L$__IIC_read$6$B:
           LDW     .D2T2   *+SP(60),B4       ; |165| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |165| 
           STW     .D2T2   B4,*+SP(60)       ; |165| 
           LDW     .D2T2   *+SP(60),B4       ; |165| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |165| 
   [ B0]   BNOP    .S1     L23,5             ; |165| 
           ; BRANCHCC OCCURS {L23}           ; |165| 
DW$L$__IIC_read$6$E:
;** --------------------------------------------------------------------------*
L24:    
	.dwendtag DW$80

	.dwpsn	"_iic.c",169,9
;----------------------------------------------------------------------
; 169 | for(i = 0; i < numBytes; i ++) {                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |169| 
           STW     .D2T2   B4,*+SP(24)       ; |169| 
           NOP             2
	.dwpsn	"_iic.c",169,16
           LDHU    .D2T2   *+SP(20),B4       ; |169| 
           LDW     .D2T2   *+SP(24),B5       ; |169| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |169| 
   [!B0]   BNOP    .S1     L30,5             ; |169| 
           ; BRANCHCC OCCURS {L30}           ; |169| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L25
;** --------------------------------------------------------------------------*
L25:    
DW$L$__IIC_read$8$B:
	.dwpsn	"_iic.c",170,15
;----------------------------------------------------------------------
; 170 | while(!I2C_rrdy(hI2C));                                                
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_rrdy,B4      ; |170| 
           MVKH    .S2     _I2C_rrdy,B4      ; |170| 
           CALL    .S2     B4                ; |170| 
           LDW     .D2T1   *+SP(4),A4        ; |170| 
           ADDKPC  .S2     RL18,B3,3         ; |170| 
RL18:      ; CALL OCCURS {_I2C_rrdy}         ; |170| 
           MV      .L1     A4,A0             ; |170| 
   [ A0]   BNOP    .S1     L27,5             ; |170| 
           ; BRANCHCC OCCURS {L27}           ; |170| 
DW$L$__IIC_read$8$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L26:    
DW$L$__IIC_read$9$B:
           MVKL    .S2     _I2C_rrdy,B4      ; |170| 
           MVKH    .S2     _I2C_rrdy,B4      ; |170| 
           CALL    .S2     B4                ; |170| 
           LDW     .D2T1   *+SP(4),A4        ; |170| 
           ADDKPC  .S2     RL19,B3,3         ; |170| 
RL19:      ; CALL OCCURS {_I2C_rrdy}         ; |170| 
           MV      .L1     A4,A0             ; |170| 
   [!A0]   BNOP    .S1     L26,5             ; |170| 
           ; BRANCHCC OCCURS {L26}           ; |170| 
DW$L$__IIC_read$9$E:
;** --------------------------------------------------------------------------*
L27:    
DW$L$__IIC_read$10$B:
	.dwpsn	"_iic.c",171,9
;----------------------------------------------------------------------
; 171 | *data++ = I2C_readByte(hI2C);                                          
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_readByte,A3  ; |171| 
           MVKH    .S1     _I2C_readByte,A3  ; |171| 
           LDW     .D2T1   *+SP(4),A4        ; |171| 
           CALL    .S2X    A3                ; |171| 
           ADDKPC  .S2     RL20,B3,4         ; |171| 
RL20:      ; CALL OCCURS {_I2C_readByte}     ; |171| 
           LDW     .D2T2   *+SP(16),B5       ; |171| 
           NOP             4
           ADD     .L2     1,B5,B4           ; |171| 
           STW     .D2T2   B4,*+SP(16)       ; |171| 
           STB     .D2T1   A4,*B5            ; |171| 
           NOP             2

DW$82	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$83, DW_AT_type(*DW$T$42)
	.dwattr DW$83, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",172,7
;----------------------------------------------------------------------
; 172 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |172| 
           STW     .D2T2   B4,*+SP(60)       ; |172| 
           LDW     .D2T2   *+SP(60),B4       ; |172| 
           NOP             3
           MVK     .S2     1000,B5           ; |172| 
           CMPLT   .L2     B4,B5,B0          ; |172| 
   [!B0]   BNOP    .S1     L29,5             ; |172| 
           ; BRANCHCC OCCURS {L29}           ; |172| 
DW$L$__IIC_read$10$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L28:    
DW$L$__IIC_read$11$B:
           LDW     .D2T2   *+SP(60),B4       ; |172| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |172| 
           STW     .D2T2   B4,*+SP(60)       ; |172| 
           LDW     .D2T2   *+SP(60),B4       ; |172| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |172| 
   [ B0]   BNOP    .S1     L28,5             ; |172| 
           ; BRANCHCC OCCURS {L28}           ; |172| 
DW$L$__IIC_read$11$E:
;** --------------------------------------------------------------------------*
L29:    
DW$L$__IIC_read$12$B:
	.dwendtag DW$82

	.dwpsn	"_iic.c",169,30
           LDW     .D2T2   *+SP(24),B4       ; |169| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |169| 
           STW     .D2T2   B4,*+SP(24)       ; |169| 
           NOP             2
	.dwpsn	"_iic.c",169,16
           LDHU    .D2T2   *+SP(20),B4       ; |169| 
           LDW     .D2T2   *+SP(24),B5       ; |169| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |169| 
   [ B0]   BNOP    .S1     L25,5             ; |169| 
           ; BRANCHCC OCCURS {L25}           ; |169| 
DW$L$__IIC_read$12$E:
;** --------------------------------------------------------------------------*
L30:    
	.dwpsn	"_iic.c",176,5
;----------------------------------------------------------------------
; 176 | I2C_sendStop(hI2C);                                                    
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_sendStop,A3  ; |176| 
           MVKH    .S1     _I2C_sendStop,A3  ; |176| 
           LDW     .D2T1   *+SP(4),A4        ; |176| 
           CALL    .S2X    A3                ; |176| 
           ADDKPC  .S2     RL21,B3,4         ; |176| 
RL21:      ; CALL OCCURS {_I2C_sendStop}     ; |176| 

DW$84	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$85, DW_AT_type(*DW$T$42)
	.dwattr DW$85, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",178,5
;----------------------------------------------------------------------
; 178 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |178| 
           STW     .D2T2   B4,*+SP(60)       ; |178| 
           LDW     .D2T2   *+SP(60),B4       ; |178| 
           NOP             3
           MVK     .S2     1000,B5           ; |178| 
           CMPLT   .L2     B4,B5,B0          ; |178| 
   [!B0]   BNOP    .S1     L32,5             ; |178| 
           ; BRANCHCC OCCURS {L32}           ; |178| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L31:    
DW$L$__IIC_read$14$B:
           LDW     .D2T2   *+SP(60),B4       ; |178| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |178| 
           STW     .D2T2   B4,*+SP(60)       ; |178| 
           LDW     .D2T2   *+SP(60),B4       ; |178| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |178| 
   [ B0]   BNOP    .S1     L31,5             ; |178| 
           ; BRANCHCC OCCURS {L31}           ; |178| 
DW$L$__IIC_read$14$E:
;** --------------------------------------------------------------------------*
L32:    
	.dwendtag DW$84

	.dwpsn	"_iic.c",180,5
;----------------------------------------------------------------------
; 180 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |180| 
           MVKH    .S2     _I2C_bb,B4        ; |180| 
           CALL    .S2     B4                ; |180| 
           LDW     .D2T1   *+SP(4),A4        ; |180| 
           ADDKPC  .S2     RL22,B3,3         ; |180| 
RL22:      ; CALL OCCURS {_I2C_bb}           ; |180| 
           MV      .L1     A4,A0             ; |180| 
   [!A0]   BNOP    .S1     L34,5             ; |180| 
           ; BRANCHCC OCCURS {L34}           ; |180| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L33:    
DW$L$__IIC_read$16$B:
           MVKL    .S2     _I2C_bb,B4        ; |180| 
           MVKH    .S2     _I2C_bb,B4        ; |180| 
           CALL    .S2     B4                ; |180| 
           LDW     .D2T1   *+SP(4),A4        ; |180| 
           ADDKPC  .S2     RL23,B3,3         ; |180| 
RL23:      ; CALL OCCURS {_I2C_bb}           ; |180| 
           MV      .L1     A4,A0             ; |180| 
   [ A0]   BNOP    .S1     L33,5             ; |180| 
           ; BRANCHCC OCCURS {L33}           ; |180| 
DW$L$__IIC_read$16$E:
;** --------------------------------------------------------------------------*
L34:    

DW$86	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$87, DW_AT_type(*DW$T$42)
	.dwattr DW$87, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",182,5
;----------------------------------------------------------------------
; 182 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |182| 
           STW     .D2T2   B4,*+SP(60)       ; |182| 
           LDW     .D2T2   *+SP(60),B4       ; |182| 
           NOP             3
           MVK     .S2     1000,B5           ; |182| 
           CMPLT   .L2     B4,B5,B0          ; |182| 
   [!B0]   BNOP    .S1     L36,5             ; |182| 
           ; BRANCHCC OCCURS {L36}           ; |182| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L35:    
DW$L$__IIC_read$18$B:
           LDW     .D2T2   *+SP(60),B4       ; |182| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |182| 
           STW     .D2T2   B4,*+SP(60)       ; |182| 
           LDW     .D2T2   *+SP(60),B4       ; |182| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |182| 
   [ B0]   BNOP    .S1     L35,5             ; |182| 
           ; BRANCHCC OCCURS {L35}           ; |182| 
DW$L$__IIC_read$18$E:
;** --------------------------------------------------------------------------*
L36:    
	.dwendtag DW$86

	.dwpsn	"_iic.c",186,5
;----------------------------------------------------------------------
; 186 | I2C_config(hI2C, &prevIICConfig);                                      
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_config,A3    ; |186| 
           MVKH    .S1     _I2C_config,A3    ; |186| 
           LDW     .D2T1   *+SP(4),A4        ; |186| 
           CALL    .S2X    A3                ; |186| 
           ADDKPC  .S2     RL24,B3,3         ; |186| 
           ADD     .D2     SP,28,B4          ; |186| 
RL24:      ; CALL OCCURS {_I2C_config}       ; |186| 

DW$88	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$89, DW_AT_type(*DW$T$42)
	.dwattr DW$89, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",188,5
;----------------------------------------------------------------------
; 188 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |188| 
           STW     .D2T2   B4,*+SP(60)       ; |188| 
           LDW     .D2T2   *+SP(60),B5       ; |188| 
           NOP             3
           MVK     .S2     1000,B31          ; |188| 
           CMPLT   .L2     B5,B31,B0         ; |188| 
   [!B0]   BNOP    .S1     L38,5             ; |188| 
           ; BRANCHCC OCCURS {L38}           ; |188| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L37:    
DW$L$__IIC_read$20$B:
           LDW     .D2T2   *+SP(60),B4       ; |188| 
           NOP             3
           MVK     .S2     1000,B5           ; |188| 
           ADD     .L2     1,B4,B4           ; |188| 
           STW     .D2T2   B4,*+SP(60)       ; |188| 
           LDW     .D2T2   *+SP(60),B4       ; |188| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |188| 
   [ B0]   BNOP    .S1     L37,5             ; |188| 
           ; BRANCHCC OCCURS {L37}           ; |188| 
DW$L$__IIC_read$20$E:
;** --------------------------------------------------------------------------*
	.dwendtag DW$88

;** --------------------------------------------------------------------------*
L38:    
	.dwpsn	"_iic.c",189,1
           LDW     .D2T2   *++SP(64),B3      ; |189| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |189| 
           ; BRANCH OCCURS {B3}              ; |189| 

DW$90	.dwtag  DW_TAG_loop
	.dwattr DW$90, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L37:1:1188294530")
	.dwattr DW$90, DW_AT_begin_file("_iic.c")
	.dwattr DW$90, DW_AT_begin_line(0xbc)
	.dwattr DW$90, DW_AT_end_line(0xbc)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$__IIC_read$20$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$__IIC_read$20$E)
	.dwendtag DW$90


DW$92	.dwtag  DW_TAG_loop
	.dwattr DW$92, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L35:1:1188294530")
	.dwattr DW$92, DW_AT_begin_file("_iic.c")
	.dwattr DW$92, DW_AT_begin_line(0xb6)
	.dwattr DW$92, DW_AT_end_line(0xb6)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$__IIC_read$18$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$__IIC_read$18$E)
	.dwendtag DW$92


DW$94	.dwtag  DW_TAG_loop
	.dwattr DW$94, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L33:1:1188294530")
	.dwattr DW$94, DW_AT_begin_file("_iic.c")
	.dwattr DW$94, DW_AT_begin_line(0xb4)
	.dwattr DW$94, DW_AT_end_line(0xb4)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$__IIC_read$16$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$__IIC_read$16$E)
	.dwendtag DW$94


DW$96	.dwtag  DW_TAG_loop
	.dwattr DW$96, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L31:1:1188294530")
	.dwattr DW$96, DW_AT_begin_file("_iic.c")
	.dwattr DW$96, DW_AT_begin_line(0xb2)
	.dwattr DW$96, DW_AT_end_line(0xb2)
DW$97	.dwtag  DW_TAG_loop_range
	.dwattr DW$97, DW_AT_low_pc(DW$L$__IIC_read$14$B)
	.dwattr DW$97, DW_AT_high_pc(DW$L$__IIC_read$14$E)
	.dwendtag DW$96


DW$98	.dwtag  DW_TAG_loop
	.dwattr DW$98, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L25:1:1188294530")
	.dwattr DW$98, DW_AT_begin_file("_iic.c")
	.dwattr DW$98, DW_AT_begin_line(0xa9)
	.dwattr DW$98, DW_AT_end_line(0xad)
DW$99	.dwtag  DW_TAG_loop_range
	.dwattr DW$99, DW_AT_low_pc(DW$L$__IIC_read$8$B)
	.dwattr DW$99, DW_AT_high_pc(DW$L$__IIC_read$8$E)
DW$100	.dwtag  DW_TAG_loop_range
	.dwattr DW$100, DW_AT_low_pc(DW$L$__IIC_read$10$B)
	.dwattr DW$100, DW_AT_high_pc(DW$L$__IIC_read$10$E)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$__IIC_read$12$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$__IIC_read$12$E)

DW$102	.dwtag  DW_TAG_loop
	.dwattr DW$102, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L26:2:1188294530")
	.dwattr DW$102, DW_AT_begin_file("_iic.c")
	.dwattr DW$102, DW_AT_begin_line(0xaa)
	.dwattr DW$102, DW_AT_end_line(0xaa)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$__IIC_read$9$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$__IIC_read$9$E)
	.dwendtag DW$102


DW$104	.dwtag  DW_TAG_loop
	.dwattr DW$104, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L28:2:1188294530")
	.dwattr DW$104, DW_AT_begin_file("_iic.c")
	.dwattr DW$104, DW_AT_begin_line(0xac)
	.dwattr DW$104, DW_AT_end_line(0xac)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$__IIC_read$11$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$__IIC_read$11$E)
	.dwendtag DW$104

	.dwendtag DW$98


DW$106	.dwtag  DW_TAG_loop
	.dwattr DW$106, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L23:1:1188294530")
	.dwattr DW$106, DW_AT_begin_file("_iic.c")
	.dwattr DW$106, DW_AT_begin_line(0xa5)
	.dwattr DW$106, DW_AT_end_line(0xa5)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$__IIC_read$6$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$__IIC_read$6$E)
	.dwendtag DW$106


DW$108	.dwtag  DW_TAG_loop
	.dwattr DW$108, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L21:1:1188294530")
	.dwattr DW$108, DW_AT_begin_file("_iic.c")
	.dwattr DW$108, DW_AT_begin_line(0x9a)
	.dwattr DW$108, DW_AT_end_line(0x9a)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$__IIC_read$4$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$__IIC_read$4$E)
	.dwendtag DW$108


DW$110	.dwtag  DW_TAG_loop
	.dwattr DW$110, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L19:1:1188294530")
	.dwattr DW$110, DW_AT_begin_file("_iic.c")
	.dwattr DW$110, DW_AT_begin_line(0x8e)
	.dwattr DW$110, DW_AT_end_line(0x8e)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$__IIC_read$2$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$__IIC_read$2$E)
	.dwendtag DW$110

	.dwattr DW$67, DW_AT_end_file("_iic.c")
	.dwattr DW$67, DW_AT_end_line(0xbd)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$67

	.sect	".text"
	.global	__IIC_write_rev

DW$112	.dwtag  DW_TAG_subprogram, DW_AT_name("_IIC_write_rev"), DW_AT_symbol_name("__IIC_write_rev")
	.dwattr DW$112, DW_AT_low_pc(__IIC_write_rev)
	.dwattr DW$112, DW_AT_high_pc(0x00)
	.dwattr DW$112, DW_AT_begin_file("_iic.c")
	.dwattr DW$112, DW_AT_begin_line(0xc8)
	.dwattr DW$112, DW_AT_begin_column(0x06)
	.dwpsn	"_iic.c",206,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 200 | void _IIC_write_rev(I2C_Handle hI2C,                                   
; 201 | Uint8 devAddress,                                                      
; 202 | Uint32  subAddress,                                                    
; 203 | Uint8 *data,                                                           
; 204 | Uint16  numBytes                                                       
; 205 | )                                                                      
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __IIC_write_rev                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 60 Auto + 4 Save = 64 byte                  *
;******************************************************************************
__IIC_write_rev:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(64)      ; |206| 
           NOP             2
	.dwcfa	0x0e, 64
	.dwcfa	0x80, 19, 0
DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2C"), DW_AT_symbol_name("_hI2C")
	.dwattr DW$113, DW_AT_type(*DW$T$25)
	.dwattr DW$113, DW_AT_location[DW_OP_reg4]
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devAddress"), DW_AT_symbol_name("_devAddress")
	.dwattr DW$114, DW_AT_type(*DW$T$26)
	.dwattr DW$114, DW_AT_location[DW_OP_reg20]
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subAddress"), DW_AT_symbol_name("_subAddress")
	.dwattr DW$115, DW_AT_type(*DW$T$19)
	.dwattr DW$115, DW_AT_location[DW_OP_reg6]
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$116, DW_AT_type(*DW$T$35)
	.dwattr DW$116, DW_AT_location[DW_OP_reg22]
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numBytes"), DW_AT_symbol_name("_numBytes")
	.dwattr DW$117, DW_AT_type(*DW$T$36)
	.dwattr DW$117, DW_AT_location[DW_OP_reg8]
DW$118	.dwtag  DW_TAG_variable, DW_AT_name("hI2C"), DW_AT_symbol_name("_hI2C")
	.dwattr DW$118, DW_AT_type(*DW$T$25)
	.dwattr DW$118, DW_AT_location[DW_OP_breg31 4]
DW$119	.dwtag  DW_TAG_variable, DW_AT_name("devAddress"), DW_AT_symbol_name("_devAddress")
	.dwattr DW$119, DW_AT_type(*DW$T$26)
	.dwattr DW$119, DW_AT_location[DW_OP_breg31 8]
DW$120	.dwtag  DW_TAG_variable, DW_AT_name("subAddress"), DW_AT_symbol_name("_subAddress")
	.dwattr DW$120, DW_AT_type(*DW$T$19)
	.dwattr DW$120, DW_AT_location[DW_OP_breg31 12]
DW$121	.dwtag  DW_TAG_variable, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$121, DW_AT_type(*DW$T$35)
	.dwattr DW$121, DW_AT_location[DW_OP_breg31 16]
DW$122	.dwtag  DW_TAG_variable, DW_AT_name("numBytes"), DW_AT_symbol_name("_numBytes")
	.dwattr DW$122, DW_AT_type(*DW$T$36)
	.dwattr DW$122, DW_AT_location[DW_OP_breg31 20]
DW$123	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$123, DW_AT_type(*DW$T$41)
	.dwattr DW$123, DW_AT_location[DW_OP_breg31 24]
DW$124	.dwtag  DW_TAG_variable, DW_AT_name("prevIICConfig"), DW_AT_symbol_name("_prevIICConfig")
	.dwattr DW$124, DW_AT_type(*DW$T$31)
	.dwattr DW$124, DW_AT_location[DW_OP_breg31 28]
;----------------------------------------------------------------------
; 207 | Int i;                                                                 
; 208 | I2C_Config prevIICConfig;                                              
;----------------------------------------------------------------------
           STH     .D2T1   A8,*+SP(20)       ; |206| 
           STW     .D2T1   A6,*+SP(12)       ; |206| 
           STB     .D2T2   B4,*+SP(8)        ; |206| 

           STW     .D2T1   A4,*+SP(4)        ; |206| 
||         MV      .L1X    B6,A3             ; |206| 

           STW     .D2T1   A3,*+SP(16)       ; |206| 
           NOP             2
	.dwpsn	"_iic.c",211,5
;----------------------------------------------------------------------
; 211 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |211| 
           MVKH    .S2     _I2C_bb,B4        ; |211| 
           CALL    .S2     B4                ; |211| 
           ADDKPC  .S2     RL25,B3,4         ; |211| 
RL25:      ; CALL OCCURS {_I2C_bb}           ; |211| 
           MV      .L1     A4,A0             ; |211| 
   [!A0]   BNOP    .S1     L40,5             ; |211| 
           ; BRANCHCC OCCURS {L40}           ; |211| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L39:    
DW$L$__IIC_write_rev$2$B:
           MVKL    .S2     _I2C_bb,B4        ; |211| 
           MVKH    .S2     _I2C_bb,B4        ; |211| 
           CALL    .S2     B4                ; |211| 
           LDW     .D2T1   *+SP(4),A4        ; |211| 
           ADDKPC  .S2     RL26,B3,3         ; |211| 
RL26:      ; CALL OCCURS {_I2C_bb}           ; |211| 
           MV      .L1     A4,A0             ; |211| 
   [ A0]   BNOP    .S1     L39,5             ; |211| 
           ; BRANCHCC OCCURS {L39}           ; |211| 
DW$L$__IIC_write_rev$2$E:
;** --------------------------------------------------------------------------*
L40:    
	.dwpsn	"_iic.c",214,5
;----------------------------------------------------------------------
; 214 | I2C_getConfig(hI2C, &prevIICConfig);                                   
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_getConfig,A3 ; |214| 
           MVKH    .S1     _I2C_getConfig,A3 ; |214| 
           LDW     .D2T1   *+SP(4),A4        ; |214| 
           CALL    .S2X    A3                ; |214| 
           ADDKPC  .S2     RL27,B3,3         ; |214| 
           ADD     .D2     SP,28,B4          ; |214| 
RL27:      ; CALL OCCURS {_I2C_getConfig}    ; |214| 
	.dwpsn	"_iic.c",217,5
;----------------------------------------------------------------------
; 217 | I2C_config(hI2C, (I2C_Config *)&EVM642VIDEOIIC_Config);                
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_config,A3    ; |217| 
           MVKH    .S1     _I2C_config,A3    ; |217| 
           LDW     .D2T1   *+SP(4),A4        ; |217| 
           CALL    .S2X    A3                ; |217| 
           MVKL    .S1     _EVM642VIDEOIIC_Config,A5 ; |217| 
           MVKH    .S1     _EVM642VIDEOIIC_Config,A5 ; |217| 
           ADDKPC  .S2     RL28,B3,1         ; |217| 
           MV      .L2X    A5,B4             ; |217| 
RL28:      ; CALL OCCURS {_I2C_config}       ; |217| 
	.dwpsn	"_iic.c",220,5
;----------------------------------------------------------------------
; 220 | I2C_RSETH(hI2C, I2CSAR, devAddress);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |220| 
           NOP             3
           LDBU    .D2T2   *+SP(8),B4        ; |220| 
           LDW     .D1T1   *+A3(8),A3        ; |220| 
           NOP             4
           STW     .D1T2   B4,*+A3(28)       ; |220| 
           NOP             2
	.dwpsn	"_iic.c",223,5
;----------------------------------------------------------------------
; 223 | I2C_RSETH(hI2C, I2CCNT, numBytes + 1);                                 
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |223| 
           LDHU    .D2T2   *+SP(20),B4       ; |223| 
           NOP             3
           LDW     .D1T1   *+A3(8),A3        ; |223| 
           NOP             3
           ADD     .L2     1,B4,B4           ; |223| 
           STW     .D1T2   B4,*+A3(20)       ; |223| 
           NOP             2
	.dwpsn	"_iic.c",226,5
;----------------------------------------------------------------------
; 226 | I2C_RSETH(hI2C, I2CDXR, subAddress);                                   
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B5        ; |226| 
           NOP             3
           LDW     .D2T2   *+SP(12),B4       ; |226| 
           LDW     .D2T2   *+B5(8),B5        ; |226| 
           NOP             4
           STW     .D2T2   B4,*+B5(32)       ; |226| 
           NOP             2
	.dwpsn	"_iic.c",229,5
;----------------------------------------------------------------------
; 229 | I2C_start(hI2C);                                                       
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_start,B4     ; |229| 
           MVKH    .S2     _I2C_start,B4     ; |229| 
           CALL    .S2     B4                ; |229| 
           LDW     .D2T1   *+SP(4),A4        ; |229| 
           ADDKPC  .S2     RL29,B3,3         ; |229| 
RL29:      ; CALL OCCURS {_I2C_start}        ; |229| 

DW$125	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$126	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$126, DW_AT_type(*DW$T$42)
	.dwattr DW$126, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",231,4
;----------------------------------------------------------------------
; 231 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |231| 
           STW     .D2T2   B4,*+SP(60)       ; |231| 
           LDW     .D2T2   *+SP(60),B4       ; |231| 
           NOP             3
           MVK     .S2     1000,B5           ; |231| 
           CMPLT   .L2     B4,B5,B0          ; |231| 
   [!B0]   BNOP    .S1     L42,5             ; |231| 
           ; BRANCHCC OCCURS {L42}           ; |231| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L41:    
DW$L$__IIC_write_rev$4$B:
           LDW     .D2T2   *+SP(60),B4       ; |231| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |231| 
           STW     .D2T2   B4,*+SP(60)       ; |231| 
           LDW     .D2T2   *+SP(60),B4       ; |231| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |231| 
   [ B0]   BNOP    .S1     L41,5             ; |231| 
           ; BRANCHCC OCCURS {L41}           ; |231| 
DW$L$__IIC_write_rev$4$E:
;** --------------------------------------------------------------------------*
L42:    
	.dwendtag DW$125

	.dwpsn	"_iic.c",234,9
;----------------------------------------------------------------------
; 234 | for(i = 0; i < numBytes; i ++) {                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |234| 
           STW     .D2T2   B4,*+SP(24)       ; |234| 
           NOP             2
	.dwpsn	"_iic.c",234,16
           LDHU    .D2T2   *+SP(20),B4       ; |234| 
           LDW     .D2T2   *+SP(24),B5       ; |234| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |234| 
   [!B0]   BNOP    .S1     L48,5             ; |234| 
           ; BRANCHCC OCCURS {L48}           ; |234| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L43
;** --------------------------------------------------------------------------*
L43:    
DW$L$__IIC_write_rev$6$B:
	.dwpsn	"_iic.c",235,15
;----------------------------------------------------------------------
; 235 | while(!I2C_xrdy(hI2C));                                                
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_xrdy,B4      ; |235| 
           MVKH    .S2     _I2C_xrdy,B4      ; |235| 
           CALL    .S2     B4                ; |235| 
           LDW     .D2T1   *+SP(4),A4        ; |235| 
           ADDKPC  .S2     RL30,B3,3         ; |235| 
RL30:      ; CALL OCCURS {_I2C_xrdy}         ; |235| 
           MV      .L1     A4,A0             ; |235| 
   [ A0]   BNOP    .S1     L45,5             ; |235| 
           ; BRANCHCC OCCURS {L45}           ; |235| 
DW$L$__IIC_write_rev$6$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L44:    
DW$L$__IIC_write_rev$7$B:
           MVKL    .S2     _I2C_xrdy,B4      ; |235| 
           MVKH    .S2     _I2C_xrdy,B4      ; |235| 
           CALL    .S2     B4                ; |235| 
           LDW     .D2T1   *+SP(4),A4        ; |235| 
           ADDKPC  .S2     RL31,B3,3         ; |235| 
RL31:      ; CALL OCCURS {_I2C_xrdy}         ; |235| 
           MV      .L1     A4,A0             ; |235| 
   [!A0]   BNOP    .S1     L44,5             ; |235| 
           ; BRANCHCC OCCURS {L44}           ; |235| 
DW$L$__IIC_write_rev$7$E:
;** --------------------------------------------------------------------------*
L45:    
DW$L$__IIC_write_rev$8$B:
	.dwpsn	"_iic.c",236,9
;----------------------------------------------------------------------
; 236 | I2C_writeByte(hI2C, *data--);                                          
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(16),B5       ; |236| 
           MVKL    .S1     _I2C_writeByte,A3 ; |236| 
           MVKH    .S1     _I2C_writeByte,A3 ; |236| 
           LDW     .D2T1   *+SP(4),A4        ; |236| 
           CALL    .S2X    A3                ; |236| 
           LDBU    .D2T2   *B5--,B4          ; |236| 
           STW     .D2T2   B5,*+SP(16)       ; |236| 
           ADDKPC  .S2     RL32,B3,2         ; |236| 
RL32:      ; CALL OCCURS {_I2C_writeByte}    ; |236| 

DW$127	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$128	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$128, DW_AT_type(*DW$T$42)
	.dwattr DW$128, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",237,7
;----------------------------------------------------------------------
; 237 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |237| 
           STW     .D2T2   B4,*+SP(60)       ; |237| 
           LDW     .D2T2   *+SP(60),B4       ; |237| 
           NOP             3
           MVK     .S2     1000,B5           ; |237| 
           CMPLT   .L2     B4,B5,B0          ; |237| 
   [!B0]   BNOP    .S1     L47,5             ; |237| 
           ; BRANCHCC OCCURS {L47}           ; |237| 
DW$L$__IIC_write_rev$8$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L46:    
DW$L$__IIC_write_rev$9$B:
           LDW     .D2T2   *+SP(60),B4       ; |237| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |237| 
           STW     .D2T2   B4,*+SP(60)       ; |237| 
           LDW     .D2T2   *+SP(60),B4       ; |237| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |237| 
   [ B0]   BNOP    .S1     L46,5             ; |237| 
           ; BRANCHCC OCCURS {L46}           ; |237| 
DW$L$__IIC_write_rev$9$E:
;** --------------------------------------------------------------------------*
L47:    
DW$L$__IIC_write_rev$10$B:
	.dwendtag DW$127

	.dwpsn	"_iic.c",234,30
           LDW     .D2T2   *+SP(24),B4       ; |234| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |234| 
           STW     .D2T2   B4,*+SP(24)       ; |234| 
           NOP             2
	.dwpsn	"_iic.c",234,16
           LDHU    .D2T2   *+SP(20),B4       ; |234| 
           LDW     .D2T2   *+SP(24),B5       ; |234| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |234| 
   [ B0]   BNOP    .S1     L43,5             ; |234| 
           ; BRANCHCC OCCURS {L43}           ; |234| 
DW$L$__IIC_write_rev$10$E:
;** --------------------------------------------------------------------------*
L48:    
	.dwpsn	"_iic.c",241,5
;----------------------------------------------------------------------
; 241 | I2C_sendStop(hI2C);                                                    
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_sendStop,A3  ; |241| 
           MVKH    .S1     _I2C_sendStop,A3  ; |241| 
           LDW     .D2T1   *+SP(4),A4        ; |241| 
           CALL    .S2X    A3                ; |241| 
           ADDKPC  .S2     RL33,B3,4         ; |241| 
RL33:      ; CALL OCCURS {_I2C_sendStop}     ; |241| 

DW$129	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$130	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$130, DW_AT_type(*DW$T$42)
	.dwattr DW$130, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",243,5
;----------------------------------------------------------------------
; 243 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |243| 
           STW     .D2T2   B4,*+SP(60)       ; |243| 
           LDW     .D2T2   *+SP(60),B4       ; |243| 
           NOP             3
           MVK     .S2     1000,B5           ; |243| 
           CMPLT   .L2     B4,B5,B0          ; |243| 
   [!B0]   BNOP    .S1     L50,5             ; |243| 
           ; BRANCHCC OCCURS {L50}           ; |243| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L49:    
DW$L$__IIC_write_rev$12$B:
           LDW     .D2T2   *+SP(60),B4       ; |243| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |243| 
           STW     .D2T2   B4,*+SP(60)       ; |243| 
           LDW     .D2T2   *+SP(60),B4       ; |243| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |243| 
   [ B0]   BNOP    .S1     L49,5             ; |243| 
           ; BRANCHCC OCCURS {L49}           ; |243| 
DW$L$__IIC_write_rev$12$E:
;** --------------------------------------------------------------------------*
L50:    
	.dwendtag DW$129

	.dwpsn	"_iic.c",245,5
;----------------------------------------------------------------------
; 245 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |245| 
           MVKH    .S2     _I2C_bb,B4        ; |245| 
           CALL    .S2     B4                ; |245| 
           LDW     .D2T1   *+SP(4),A4        ; |245| 
           ADDKPC  .S2     RL34,B3,3         ; |245| 
RL34:      ; CALL OCCURS {_I2C_bb}           ; |245| 
           MV      .L1     A4,A0             ; |245| 
   [!A0]   BNOP    .S1     L52,5             ; |245| 
           ; BRANCHCC OCCURS {L52}           ; |245| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L51:    
DW$L$__IIC_write_rev$14$B:
           MVKL    .S2     _I2C_bb,B4        ; |245| 
           MVKH    .S2     _I2C_bb,B4        ; |245| 
           CALL    .S2     B4                ; |245| 
           LDW     .D2T1   *+SP(4),A4        ; |245| 
           ADDKPC  .S2     RL35,B3,3         ; |245| 
RL35:      ; CALL OCCURS {_I2C_bb}           ; |245| 
           MV      .L1     A4,A0             ; |245| 
   [ A0]   BNOP    .S1     L51,5             ; |245| 
           ; BRANCHCC OCCURS {L51}           ; |245| 
DW$L$__IIC_write_rev$14$E:
;** --------------------------------------------------------------------------*
L52:    

DW$131	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$132	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$132, DW_AT_type(*DW$T$42)
	.dwattr DW$132, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",247,5
;----------------------------------------------------------------------
; 247 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |247| 
           STW     .D2T2   B4,*+SP(60)       ; |247| 
           LDW     .D2T2   *+SP(60),B4       ; |247| 
           NOP             3
           MVK     .S2     1000,B5           ; |247| 
           CMPLT   .L2     B4,B5,B0          ; |247| 
   [!B0]   BNOP    .S1     L54,5             ; |247| 
           ; BRANCHCC OCCURS {L54}           ; |247| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L53:    
DW$L$__IIC_write_rev$16$B:
           LDW     .D2T2   *+SP(60),B4       ; |247| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |247| 
           STW     .D2T2   B4,*+SP(60)       ; |247| 
           LDW     .D2T2   *+SP(60),B4       ; |247| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |247| 
   [ B0]   BNOP    .S1     L53,5             ; |247| 
           ; BRANCHCC OCCURS {L53}           ; |247| 
DW$L$__IIC_write_rev$16$E:
;** --------------------------------------------------------------------------*
L54:    
	.dwendtag DW$131

	.dwpsn	"_iic.c",251,5
;----------------------------------------------------------------------
; 251 | I2C_config(hI2C, &prevIICConfig);                                      
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_config,A3    ; |251| 
           MVKH    .S1     _I2C_config,A3    ; |251| 
           LDW     .D2T1   *+SP(4),A4        ; |251| 
           CALL    .S2X    A3                ; |251| 
           ADDKPC  .S2     RL36,B3,3         ; |251| 
           ADD     .D2     SP,28,B4          ; |251| 
RL36:      ; CALL OCCURS {_I2C_config}       ; |251| 

DW$133	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$134	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$134, DW_AT_type(*DW$T$42)
	.dwattr DW$134, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",253,5
;----------------------------------------------------------------------
; 253 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |253| 
           STW     .D2T2   B4,*+SP(60)       ; |253| 
           LDW     .D2T2   *+SP(60),B5       ; |253| 
           NOP             3
           MVK     .S2     1000,B31          ; |253| 
           CMPLT   .L2     B5,B31,B0         ; |253| 
   [!B0]   BNOP    .S1     L56,5             ; |253| 
           ; BRANCHCC OCCURS {L56}           ; |253| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L55:    
DW$L$__IIC_write_rev$18$B:
           LDW     .D2T2   *+SP(60),B4       ; |253| 
           NOP             3
           MVK     .S2     1000,B5           ; |253| 
           ADD     .L2     1,B4,B4           ; |253| 
           STW     .D2T2   B4,*+SP(60)       ; |253| 
           LDW     .D2T2   *+SP(60),B4       ; |253| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |253| 
   [ B0]   BNOP    .S1     L55,5             ; |253| 
           ; BRANCHCC OCCURS {L55}           ; |253| 
DW$L$__IIC_write_rev$18$E:
;** --------------------------------------------------------------------------*
	.dwendtag DW$133

;** --------------------------------------------------------------------------*
L56:    
	.dwpsn	"_iic.c",254,1
           LDW     .D2T2   *++SP(64),B3      ; |254| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |254| 
           ; BRANCH OCCURS {B3}              ; |254| 

DW$135	.dwtag  DW_TAG_loop
	.dwattr DW$135, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L55:1:1188294530")
	.dwattr DW$135, DW_AT_begin_file("_iic.c")
	.dwattr DW$135, DW_AT_begin_line(0xfd)
	.dwattr DW$135, DW_AT_end_line(0xfd)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$__IIC_write_rev$18$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$__IIC_write_rev$18$E)
	.dwendtag DW$135


DW$137	.dwtag  DW_TAG_loop
	.dwattr DW$137, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L53:1:1188294530")
	.dwattr DW$137, DW_AT_begin_file("_iic.c")
	.dwattr DW$137, DW_AT_begin_line(0xf7)
	.dwattr DW$137, DW_AT_end_line(0xf7)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$__IIC_write_rev$16$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$__IIC_write_rev$16$E)
	.dwendtag DW$137


DW$139	.dwtag  DW_TAG_loop
	.dwattr DW$139, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L51:1:1188294530")
	.dwattr DW$139, DW_AT_begin_file("_iic.c")
	.dwattr DW$139, DW_AT_begin_line(0xf5)
	.dwattr DW$139, DW_AT_end_line(0xf5)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$__IIC_write_rev$14$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$__IIC_write_rev$14$E)
	.dwendtag DW$139


DW$141	.dwtag  DW_TAG_loop
	.dwattr DW$141, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L49:1:1188294530")
	.dwattr DW$141, DW_AT_begin_file("_iic.c")
	.dwattr DW$141, DW_AT_begin_line(0xf3)
	.dwattr DW$141, DW_AT_end_line(0xf3)
DW$142	.dwtag  DW_TAG_loop_range
	.dwattr DW$142, DW_AT_low_pc(DW$L$__IIC_write_rev$12$B)
	.dwattr DW$142, DW_AT_high_pc(DW$L$__IIC_write_rev$12$E)
	.dwendtag DW$141


DW$143	.dwtag  DW_TAG_loop
	.dwattr DW$143, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L43:1:1188294530")
	.dwattr DW$143, DW_AT_begin_file("_iic.c")
	.dwattr DW$143, DW_AT_begin_line(0xea)
	.dwattr DW$143, DW_AT_end_line(0xee)
DW$144	.dwtag  DW_TAG_loop_range
	.dwattr DW$144, DW_AT_low_pc(DW$L$__IIC_write_rev$6$B)
	.dwattr DW$144, DW_AT_high_pc(DW$L$__IIC_write_rev$6$E)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$__IIC_write_rev$8$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$__IIC_write_rev$8$E)
DW$146	.dwtag  DW_TAG_loop_range
	.dwattr DW$146, DW_AT_low_pc(DW$L$__IIC_write_rev$10$B)
	.dwattr DW$146, DW_AT_high_pc(DW$L$__IIC_write_rev$10$E)

DW$147	.dwtag  DW_TAG_loop
	.dwattr DW$147, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L44:2:1188294530")
	.dwattr DW$147, DW_AT_begin_file("_iic.c")
	.dwattr DW$147, DW_AT_begin_line(0xeb)
	.dwattr DW$147, DW_AT_end_line(0xeb)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$__IIC_write_rev$7$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$__IIC_write_rev$7$E)
	.dwendtag DW$147


DW$149	.dwtag  DW_TAG_loop
	.dwattr DW$149, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L46:2:1188294530")
	.dwattr DW$149, DW_AT_begin_file("_iic.c")
	.dwattr DW$149, DW_AT_begin_line(0xed)
	.dwattr DW$149, DW_AT_end_line(0xed)
DW$150	.dwtag  DW_TAG_loop_range
	.dwattr DW$150, DW_AT_low_pc(DW$L$__IIC_write_rev$9$B)
	.dwattr DW$150, DW_AT_high_pc(DW$L$__IIC_write_rev$9$E)
	.dwendtag DW$149

	.dwendtag DW$143


DW$151	.dwtag  DW_TAG_loop
	.dwattr DW$151, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L41:1:1188294530")
	.dwattr DW$151, DW_AT_begin_file("_iic.c")
	.dwattr DW$151, DW_AT_begin_line(0xe7)
	.dwattr DW$151, DW_AT_end_line(0xe7)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$__IIC_write_rev$4$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$__IIC_write_rev$4$E)
	.dwendtag DW$151


DW$153	.dwtag  DW_TAG_loop
	.dwattr DW$153, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L39:1:1188294530")
	.dwattr DW$153, DW_AT_begin_file("_iic.c")
	.dwattr DW$153, DW_AT_begin_line(0xd3)
	.dwattr DW$153, DW_AT_end_line(0xd3)
DW$154	.dwtag  DW_TAG_loop_range
	.dwattr DW$154, DW_AT_low_pc(DW$L$__IIC_write_rev$2$B)
	.dwattr DW$154, DW_AT_high_pc(DW$L$__IIC_write_rev$2$E)
	.dwendtag DW$153

	.dwattr DW$112, DW_AT_end_file("_iic.c")
	.dwattr DW$112, DW_AT_end_line(0xfe)
	.dwattr DW$112, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$112

	.sect	".text"
	.global	__IIC_read_rev

DW$155	.dwtag  DW_TAG_subprogram, DW_AT_name("_IIC_read_rev"), DW_AT_symbol_name("__IIC_read_rev")
	.dwattr DW$155, DW_AT_low_pc(__IIC_read_rev)
	.dwattr DW$155, DW_AT_high_pc(0x00)
	.dwattr DW$155, DW_AT_begin_file("_iic.c")
	.dwattr DW$155, DW_AT_begin_line(0x109)
	.dwattr DW$155, DW_AT_begin_column(0x06)
	.dwpsn	"_iic.c",271,1

	.dwfde DW$CIE
;----------------------------------------------------------------------
; 265 | void _IIC_read_rev(I2C_Handle hI2C,                                    
; 266 | Uint8 devAddress,                                                      
; 267 | Uint32  subAddress,                                                    
; 268 | Uint8 *data,                                                           
; 269 | Uint16  numBytes                                                       
; 270 | )                                                                      
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: __IIC_read_rev                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 60 Auto + 4 Save = 64 byte                  *
;******************************************************************************
__IIC_read_rev:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(64)      ; |271| 
           NOP             2
	.dwcfa	0x0e, 64
	.dwcfa	0x80, 19, 0
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("hI2C"), DW_AT_symbol_name("_hI2C")
	.dwattr DW$156, DW_AT_type(*DW$T$25)
	.dwattr DW$156, DW_AT_location[DW_OP_reg4]
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("devAddress"), DW_AT_symbol_name("_devAddress")
	.dwattr DW$157, DW_AT_type(*DW$T$26)
	.dwattr DW$157, DW_AT_location[DW_OP_reg20]
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("subAddress"), DW_AT_symbol_name("_subAddress")
	.dwattr DW$158, DW_AT_type(*DW$T$19)
	.dwattr DW$158, DW_AT_location[DW_OP_reg6]
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$159, DW_AT_type(*DW$T$35)
	.dwattr DW$159, DW_AT_location[DW_OP_reg22]
DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_name("numBytes"), DW_AT_symbol_name("_numBytes")
	.dwattr DW$160, DW_AT_type(*DW$T$36)
	.dwattr DW$160, DW_AT_location[DW_OP_reg8]
DW$161	.dwtag  DW_TAG_variable, DW_AT_name("hI2C"), DW_AT_symbol_name("_hI2C")
	.dwattr DW$161, DW_AT_type(*DW$T$25)
	.dwattr DW$161, DW_AT_location[DW_OP_breg31 4]
DW$162	.dwtag  DW_TAG_variable, DW_AT_name("devAddress"), DW_AT_symbol_name("_devAddress")
	.dwattr DW$162, DW_AT_type(*DW$T$26)
	.dwattr DW$162, DW_AT_location[DW_OP_breg31 8]
DW$163	.dwtag  DW_TAG_variable, DW_AT_name("subAddress"), DW_AT_symbol_name("_subAddress")
	.dwattr DW$163, DW_AT_type(*DW$T$19)
	.dwattr DW$163, DW_AT_location[DW_OP_breg31 12]
DW$164	.dwtag  DW_TAG_variable, DW_AT_name("data"), DW_AT_symbol_name("_data")
	.dwattr DW$164, DW_AT_type(*DW$T$35)
	.dwattr DW$164, DW_AT_location[DW_OP_breg31 16]
DW$165	.dwtag  DW_TAG_variable, DW_AT_name("numBytes"), DW_AT_symbol_name("_numBytes")
	.dwattr DW$165, DW_AT_type(*DW$T$36)
	.dwattr DW$165, DW_AT_location[DW_OP_breg31 20]
DW$166	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$166, DW_AT_type(*DW$T$41)
	.dwattr DW$166, DW_AT_location[DW_OP_breg31 24]
DW$167	.dwtag  DW_TAG_variable, DW_AT_name("prevIICConfig"), DW_AT_symbol_name("_prevIICConfig")
	.dwattr DW$167, DW_AT_type(*DW$T$31)
	.dwattr DW$167, DW_AT_location[DW_OP_breg31 28]
;----------------------------------------------------------------------
; 272 | Int i;                                                                 
; 273 | I2C_Config prevIICConfig;                                              
;----------------------------------------------------------------------
           STH     .D2T1   A8,*+SP(20)       ; |271| 
           STW     .D2T1   A6,*+SP(12)       ; |271| 
           STB     .D2T2   B4,*+SP(8)        ; |271| 

           STW     .D2T1   A4,*+SP(4)        ; |271| 
||         MV      .L1X    B6,A3             ; |271| 

           STW     .D2T1   A3,*+SP(16)       ; |271| 
           NOP             2
	.dwpsn	"_iic.c",276,5
;----------------------------------------------------------------------
; 276 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |276| 
           MVKH    .S2     _I2C_bb,B4        ; |276| 
           CALL    .S2     B4                ; |276| 
           ADDKPC  .S2     RL37,B3,4         ; |276| 
RL37:      ; CALL OCCURS {_I2C_bb}           ; |276| 
           MV      .L1     A4,A0             ; |276| 
   [!A0]   BNOP    .S1     L58,5             ; |276| 
           ; BRANCHCC OCCURS {L58}           ; |276| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L57:    
DW$L$__IIC_read_rev$2$B:
           MVKL    .S2     _I2C_bb,B4        ; |276| 
           MVKH    .S2     _I2C_bb,B4        ; |276| 
           CALL    .S2     B4                ; |276| 
           LDW     .D2T1   *+SP(4),A4        ; |276| 
           ADDKPC  .S2     RL38,B3,3         ; |276| 
RL38:      ; CALL OCCURS {_I2C_bb}           ; |276| 
           MV      .L1     A4,A0             ; |276| 
   [ A0]   BNOP    .S1     L57,5             ; |276| 
           ; BRANCHCC OCCURS {L57}           ; |276| 
DW$L$__IIC_read_rev$2$E:
;** --------------------------------------------------------------------------*
L58:    
	.dwpsn	"_iic.c",279,5
;----------------------------------------------------------------------
; 279 | I2C_getConfig(hI2C, &prevIICConfig);                                   
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_getConfig,B5 ; |279| 
           MVKH    .S2     _I2C_getConfig,B5 ; |279| 
           CALL    .S2     B5                ; |279| 
           LDW     .D2T1   *+SP(4),A4        ; |279| 
           ADDKPC  .S2     RL39,B3,2         ; |279| 
           ADD     .D2     SP,28,B4          ; |279| 
RL39:      ; CALL OCCURS {_I2C_getConfig}    ; |279| 
	.dwpsn	"_iic.c",282,5
;----------------------------------------------------------------------
; 282 | I2C_config(hI2C, (I2C_Config *)&EVM642VIDEOIIC_Config_Read);           
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_config,A3    ; |282| 
           MVKH    .S1     _I2C_config,A3    ; |282| 
           LDW     .D2T1   *+SP(4),A4        ; |282| 
           CALL    .S2X    A3                ; |282| 
           MVKL    .S1     _EVM642VIDEOIIC_Config_Read,A5 ; |282| 
           MVKH    .S1     _EVM642VIDEOIIC_Config_Read,A5 ; |282| 
           ADDKPC  .S2     RL40,B3,1         ; |282| 
           MV      .L2X    A5,B4             ; |282| 
RL40:      ; CALL OCCURS {_I2C_config}       ; |282| 
	.dwpsn	"_iic.c",285,5
;----------------------------------------------------------------------
; 285 | _IIC_write(hI2C, devAddress, subAddress, NULL, 0);                     
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(12),A6       ; |285| 

           CALL    .S1     __IIC_write       ; |285| 
||         LDBU    .D2T2   *+SP(8),B4        ; |285| 

           LDW     .D2T1   *+SP(4),A4        ; |285| 
           ADDKPC  .S2     RL41,B3,1         ; |285| 
           ZERO    .L1     A8                ; |285| 
           ZERO    .L2     B6                ; |285| 
RL41:      ; CALL OCCURS {__IIC_write}       ; |285| 
	.dwpsn	"_iic.c",288,5
;----------------------------------------------------------------------
; 288 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |288| 
           MVKH    .S2     _I2C_bb,B4        ; |288| 
           CALL    .S2     B4                ; |288| 
           LDW     .D2T1   *+SP(4),A4        ; |288| 
           ADDKPC  .S2     RL42,B3,3         ; |288| 
RL42:      ; CALL OCCURS {_I2C_bb}           ; |288| 
           MV      .L1     A4,A0             ; |288| 
   [!A0]   BNOP    .S1     L60,5             ; |288| 
           ; BRANCHCC OCCURS {L60}           ; |288| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L59:    
DW$L$__IIC_read_rev$4$B:
           MVKL    .S2     _I2C_bb,B4        ; |288| 
           MVKH    .S2     _I2C_bb,B4        ; |288| 
           CALL    .S2     B4                ; |288| 
           LDW     .D2T1   *+SP(4),A4        ; |288| 
           ADDKPC  .S2     RL43,B3,3         ; |288| 
RL43:      ; CALL OCCURS {_I2C_bb}           ; |288| 
           MV      .L1     A4,A0             ; |288| 
   [ A0]   BNOP    .S1     L59,5             ; |288| 
           ; BRANCHCC OCCURS {L59}           ; |288| 
DW$L$__IIC_read_rev$4$E:
;** --------------------------------------------------------------------------*
L60:    
	.dwpsn	"_iic.c",291,5
;----------------------------------------------------------------------
; 291 | I2C_RSETH(hI2C, I2CSAR, devAddress);                                   
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |291| 
           NOP             3
           LDBU    .D2T2   *+SP(8),B4        ; |291| 
           LDW     .D1T1   *+A3(8),A3        ; |291| 
           NOP             4
           STW     .D1T2   B4,*+A3(28)       ; |291| 
           NOP             2
	.dwpsn	"_iic.c",294,5
;----------------------------------------------------------------------
; 294 | I2C_RSETH(hI2C, I2CCNT, numBytes);                                     
;----------------------------------------------------------------------
           LDW     .D2T2   *+SP(4),B5        ; |294| 
           NOP             3
           LDHU    .D2T2   *+SP(20),B4       ; |294| 
           LDW     .D2T2   *+B5(8),B5        ; |294| 
           NOP             4
           STW     .D2T2   B4,*+B5(20)       ; |294| 
           NOP             2
	.dwpsn	"_iic.c",297,5
;----------------------------------------------------------------------
; 297 | I2C_start(hI2C);                                                       
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_start,A3     ; |297| 
           MVKH    .S1     _I2C_start,A3     ; |297| 
           LDW     .D2T1   *+SP(4),A4        ; |297| 
           CALL    .S2X    A3                ; |297| 
           ADDKPC  .S2     RL44,B3,4         ; |297| 
RL44:      ; CALL OCCURS {_I2C_start}        ; |297| 

DW$168	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$169	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$169, DW_AT_type(*DW$T$42)
	.dwattr DW$169, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",299,4
;----------------------------------------------------------------------
; 299 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |299| 
           STW     .D2T2   B4,*+SP(60)       ; |299| 
           LDW     .D2T2   *+SP(60),B4       ; |299| 
           NOP             3
           MVK     .S2     1000,B5           ; |299| 
           CMPLT   .L2     B4,B5,B0          ; |299| 
   [!B0]   BNOP    .S1     L62,5             ; |299| 
           ; BRANCHCC OCCURS {L62}           ; |299| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L61:    
DW$L$__IIC_read_rev$6$B:
           LDW     .D2T2   *+SP(60),B4       ; |299| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |299| 
           STW     .D2T2   B4,*+SP(60)       ; |299| 
           LDW     .D2T2   *+SP(60),B4       ; |299| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |299| 
   [ B0]   BNOP    .S1     L61,5             ; |299| 
           ; BRANCHCC OCCURS {L61}           ; |299| 
DW$L$__IIC_read_rev$6$E:
;** --------------------------------------------------------------------------*
L62:    
	.dwendtag DW$168

	.dwpsn	"_iic.c",303,9
;----------------------------------------------------------------------
; 303 | for(i = 0; i < numBytes; i ++) {                                       
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |303| 
           STW     .D2T2   B4,*+SP(24)       ; |303| 
           NOP             2
	.dwpsn	"_iic.c",303,16
           LDHU    .D2T2   *+SP(20),B4       ; |303| 
           LDW     .D2T2   *+SP(24),B5       ; |303| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |303| 
   [!B0]   BNOP    .S1     L68,5             ; |303| 
           ; BRANCHCC OCCURS {L68}           ; |303| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L63
;** --------------------------------------------------------------------------*
L63:    
DW$L$__IIC_read_rev$8$B:
	.dwpsn	"_iic.c",304,15
;----------------------------------------------------------------------
; 304 | while(!I2C_rrdy(hI2C));                                                
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_rrdy,B4      ; |304| 
           MVKH    .S2     _I2C_rrdy,B4      ; |304| 
           CALL    .S2     B4                ; |304| 
           LDW     .D2T1   *+SP(4),A4        ; |304| 
           ADDKPC  .S2     RL45,B3,3         ; |304| 
RL45:      ; CALL OCCURS {_I2C_rrdy}         ; |304| 
           MV      .L1     A4,A0             ; |304| 
   [ A0]   BNOP    .S1     L65,5             ; |304| 
           ; BRANCHCC OCCURS {L65}           ; |304| 
DW$L$__IIC_read_rev$8$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L64:    
DW$L$__IIC_read_rev$9$B:
           MVKL    .S2     _I2C_rrdy,B4      ; |304| 
           MVKH    .S2     _I2C_rrdy,B4      ; |304| 
           CALL    .S2     B4                ; |304| 
           LDW     .D2T1   *+SP(4),A4        ; |304| 
           ADDKPC  .S2     RL46,B3,3         ; |304| 
RL46:      ; CALL OCCURS {_I2C_rrdy}         ; |304| 
           MV      .L1     A4,A0             ; |304| 
   [!A0]   BNOP    .S1     L64,5             ; |304| 
           ; BRANCHCC OCCURS {L64}           ; |304| 
DW$L$__IIC_read_rev$9$E:
;** --------------------------------------------------------------------------*
L65:    
DW$L$__IIC_read_rev$10$B:
	.dwpsn	"_iic.c",305,9
;----------------------------------------------------------------------
; 305 | *data-- = I2C_readByte(hI2C);                                          
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_readByte,A3  ; |305| 
           MVKH    .S1     _I2C_readByte,A3  ; |305| 
           LDW     .D2T1   *+SP(4),A4        ; |305| 
           CALL    .S2X    A3                ; |305| 
           ADDKPC  .S2     RL47,B3,4         ; |305| 
RL47:      ; CALL OCCURS {_I2C_readByte}     ; |305| 
           LDW     .D2T2   *+SP(16),B5       ; |305| 
           NOP             4
           SUB     .L2     B5,1,B4           ; |305| 
           STW     .D2T2   B4,*+SP(16)       ; |305| 
           STB     .D2T1   A4,*B5            ; |305| 
           NOP             2

DW$170	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$171	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$171, DW_AT_type(*DW$T$42)
	.dwattr DW$171, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",306,7
;----------------------------------------------------------------------
; 306 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |306| 
           STW     .D2T2   B4,*+SP(60)       ; |306| 
           LDW     .D2T2   *+SP(60),B4       ; |306| 
           NOP             3
           MVK     .S2     1000,B5           ; |306| 
           CMPLT   .L2     B4,B5,B0          ; |306| 
   [!B0]   BNOP    .S1     L67,5             ; |306| 
           ; BRANCHCC OCCURS {L67}           ; |306| 
DW$L$__IIC_read_rev$10$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L66:    
DW$L$__IIC_read_rev$11$B:
           LDW     .D2T2   *+SP(60),B4       ; |306| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |306| 
           STW     .D2T2   B4,*+SP(60)       ; |306| 
           LDW     .D2T2   *+SP(60),B4       ; |306| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |306| 
   [ B0]   BNOP    .S1     L66,5             ; |306| 
           ; BRANCHCC OCCURS {L66}           ; |306| 
DW$L$__IIC_read_rev$11$E:
;** --------------------------------------------------------------------------*
L67:    
DW$L$__IIC_read_rev$12$B:
	.dwendtag DW$170

	.dwpsn	"_iic.c",303,30
           LDW     .D2T2   *+SP(24),B4       ; |303| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |303| 
           STW     .D2T2   B4,*+SP(24)       ; |303| 
           NOP             2
	.dwpsn	"_iic.c",303,16
           LDHU    .D2T2   *+SP(20),B4       ; |303| 
           LDW     .D2T2   *+SP(24),B5       ; |303| 
           NOP             4
           CMPLT   .L2     B5,B4,B0          ; |303| 
   [ B0]   BNOP    .S1     L63,5             ; |303| 
           ; BRANCHCC OCCURS {L63}           ; |303| 
DW$L$__IIC_read_rev$12$E:
;** --------------------------------------------------------------------------*
L68:    
	.dwpsn	"_iic.c",310,5
;----------------------------------------------------------------------
; 310 | I2C_sendStop(hI2C);                                                    
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_sendStop,A3  ; |310| 
           MVKH    .S1     _I2C_sendStop,A3  ; |310| 
           LDW     .D2T1   *+SP(4),A4        ; |310| 
           CALL    .S2X    A3                ; |310| 
           ADDKPC  .S2     RL48,B3,4         ; |310| 
RL48:      ; CALL OCCURS {_I2C_sendStop}     ; |310| 

DW$172	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$173	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$173, DW_AT_type(*DW$T$42)
	.dwattr DW$173, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",312,5
;----------------------------------------------------------------------
; 312 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |312| 
           STW     .D2T2   B4,*+SP(60)       ; |312| 
           LDW     .D2T2   *+SP(60),B4       ; |312| 
           NOP             3
           MVK     .S2     1000,B5           ; |312| 
           CMPLT   .L2     B4,B5,B0          ; |312| 
   [!B0]   BNOP    .S1     L70,5             ; |312| 
           ; BRANCHCC OCCURS {L70}           ; |312| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L69:    
DW$L$__IIC_read_rev$14$B:
           LDW     .D2T2   *+SP(60),B4       ; |312| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |312| 
           STW     .D2T2   B4,*+SP(60)       ; |312| 
           LDW     .D2T2   *+SP(60),B4       ; |312| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |312| 
   [ B0]   BNOP    .S1     L69,5             ; |312| 
           ; BRANCHCC OCCURS {L69}           ; |312| 
DW$L$__IIC_read_rev$14$E:
;** --------------------------------------------------------------------------*
L70:    
	.dwendtag DW$172

	.dwpsn	"_iic.c",314,5
;----------------------------------------------------------------------
; 314 | while (I2C_bb(hI2C));                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _I2C_bb,B4        ; |314| 
           MVKH    .S2     _I2C_bb,B4        ; |314| 
           CALL    .S2     B4                ; |314| 
           LDW     .D2T1   *+SP(4),A4        ; |314| 
           ADDKPC  .S2     RL49,B3,3         ; |314| 
RL49:      ; CALL OCCURS {_I2C_bb}           ; |314| 
           MV      .L1     A4,A0             ; |314| 
   [!A0]   BNOP    .S1     L72,5             ; |314| 
           ; BRANCHCC OCCURS {L72}           ; |314| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L71:    
DW$L$__IIC_read_rev$16$B:
           MVKL    .S2     _I2C_bb,B4        ; |314| 
           MVKH    .S2     _I2C_bb,B4        ; |314| 
           CALL    .S2     B4                ; |314| 
           LDW     .D2T1   *+SP(4),A4        ; |314| 
           ADDKPC  .S2     RL50,B3,3         ; |314| 
RL50:      ; CALL OCCURS {_I2C_bb}           ; |314| 
           MV      .L1     A4,A0             ; |314| 
   [ A0]   BNOP    .S1     L71,5             ; |314| 
           ; BRANCHCC OCCURS {L71}           ; |314| 
DW$L$__IIC_read_rev$16$E:
;** --------------------------------------------------------------------------*
L72:    

DW$174	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$175	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$175, DW_AT_type(*DW$T$42)
	.dwattr DW$175, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",316,5
;----------------------------------------------------------------------
; 316 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |316| 
           STW     .D2T2   B4,*+SP(60)       ; |316| 
           LDW     .D2T2   *+SP(60),B4       ; |316| 
           NOP             3
           MVK     .S2     1000,B5           ; |316| 
           CMPLT   .L2     B4,B5,B0          ; |316| 
   [!B0]   BNOP    .S1     L74,5             ; |316| 
           ; BRANCHCC OCCURS {L74}           ; |316| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L73:    
DW$L$__IIC_read_rev$18$B:
           LDW     .D2T2   *+SP(60),B4       ; |316| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |316| 
           STW     .D2T2   B4,*+SP(60)       ; |316| 
           LDW     .D2T2   *+SP(60),B4       ; |316| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |316| 
   [ B0]   BNOP    .S1     L73,5             ; |316| 
           ; BRANCHCC OCCURS {L73}           ; |316| 
DW$L$__IIC_read_rev$18$E:
;** --------------------------------------------------------------------------*
L74:    
	.dwendtag DW$174

	.dwpsn	"_iic.c",320,5
;----------------------------------------------------------------------
; 320 | I2C_config(hI2C, &prevIICConfig);                                      
;----------------------------------------------------------------------
           MVKL    .S1     _I2C_config,A3    ; |320| 
           MVKH    .S1     _I2C_config,A3    ; |320| 
           LDW     .D2T1   *+SP(4),A4        ; |320| 
           CALL    .S2X    A3                ; |320| 
           ADDKPC  .S2     RL51,B3,3         ; |320| 
           ADD     .D2     SP,28,B4          ; |320| 
RL51:      ; CALL OCCURS {_I2C_config}       ; |320| 

DW$176	.dwtag  DW_TAG_lexical_block, DW_AT_low_pc(0x00), DW_AT_high_pc(0x00)
DW$177	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$177, DW_AT_type(*DW$T$42)
	.dwattr DW$177, DW_AT_location[DW_OP_breg31 60]
	.dwpsn	"_iic.c",322,5
;----------------------------------------------------------------------
; 322 | I2CDELAY(DELAY_TIME);                                                  
;----------------------------------------------------------------------
           ZERO    .L2     B4                ; |322| 
           STW     .D2T2   B4,*+SP(60)       ; |322| 
           LDW     .D2T2   *+SP(60),B5       ; |322| 
           NOP             3
           MVK     .S2     1000,B31          ; |322| 
           CMPLT   .L2     B5,B31,B0         ; |322| 
   [!B0]   BNOP    .S1     L76,5             ; |322| 
           ; BRANCHCC OCCURS {L76}           ; |322| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L75:    
DW$L$__IIC_read_rev$20$B:
           LDW     .D2T2   *+SP(60),B4       ; |322| 
           NOP             3
           MVK     .S2     1000,B5           ; |322| 
           ADD     .L2     1,B4,B4           ; |322| 
           STW     .D2T2   B4,*+SP(60)       ; |322| 
           LDW     .D2T2   *+SP(60),B4       ; |322| 
           NOP             4
           CMPLT   .L2     B4,B5,B0          ; |322| 
   [ B0]   BNOP    .S1     L75,5             ; |322| 
           ; BRANCHCC OCCURS {L75}           ; |322| 
DW$L$__IIC_read_rev$20$E:
;** --------------------------------------------------------------------------*
	.dwendtag DW$176

;** --------------------------------------------------------------------------*
L76:    
	.dwpsn	"_iic.c",323,1
           LDW     .D2T2   *++SP(64),B3      ; |323| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |323| 
           ; BRANCH OCCURS {B3}              ; |323| 

DW$178	.dwtag  DW_TAG_loop
	.dwattr DW$178, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L75:1:1188294530")
	.dwattr DW$178, DW_AT_begin_file("_iic.c")
	.dwattr DW$178, DW_AT_begin_line(0x142)
	.dwattr DW$178, DW_AT_end_line(0x142)
DW$179	.dwtag  DW_TAG_loop_range
	.dwattr DW$179, DW_AT_low_pc(DW$L$__IIC_read_rev$20$B)
	.dwattr DW$179, DW_AT_high_pc(DW$L$__IIC_read_rev$20$E)
	.dwendtag DW$178


DW$180	.dwtag  DW_TAG_loop
	.dwattr DW$180, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L73:1:1188294530")
	.dwattr DW$180, DW_AT_begin_file("_iic.c")
	.dwattr DW$180, DW_AT_begin_line(0x13c)
	.dwattr DW$180, DW_AT_end_line(0x13c)
DW$181	.dwtag  DW_TAG_loop_range
	.dwattr DW$181, DW_AT_low_pc(DW$L$__IIC_read_rev$18$B)
	.dwattr DW$181, DW_AT_high_pc(DW$L$__IIC_read_rev$18$E)
	.dwendtag DW$180


DW$182	.dwtag  DW_TAG_loop
	.dwattr DW$182, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L71:1:1188294530")
	.dwattr DW$182, DW_AT_begin_file("_iic.c")
	.dwattr DW$182, DW_AT_begin_line(0x13a)
	.dwattr DW$182, DW_AT_end_line(0x13a)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$__IIC_read_rev$16$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$__IIC_read_rev$16$E)
	.dwendtag DW$182


DW$184	.dwtag  DW_TAG_loop
	.dwattr DW$184, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L69:1:1188294530")
	.dwattr DW$184, DW_AT_begin_file("_iic.c")
	.dwattr DW$184, DW_AT_begin_line(0x138)
	.dwattr DW$184, DW_AT_end_line(0x138)
DW$185	.dwtag  DW_TAG_loop_range
	.dwattr DW$185, DW_AT_low_pc(DW$L$__IIC_read_rev$14$B)
	.dwattr DW$185, DW_AT_high_pc(DW$L$__IIC_read_rev$14$E)
	.dwendtag DW$184


DW$186	.dwtag  DW_TAG_loop
	.dwattr DW$186, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L63:1:1188294530")
	.dwattr DW$186, DW_AT_begin_file("_iic.c")
	.dwattr DW$186, DW_AT_begin_line(0x12f)
	.dwattr DW$186, DW_AT_end_line(0x133)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$__IIC_read_rev$8$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$__IIC_read_rev$8$E)
DW$188	.dwtag  DW_TAG_loop_range
	.dwattr DW$188, DW_AT_low_pc(DW$L$__IIC_read_rev$10$B)
	.dwattr DW$188, DW_AT_high_pc(DW$L$__IIC_read_rev$10$E)
DW$189	.dwtag  DW_TAG_loop_range
	.dwattr DW$189, DW_AT_low_pc(DW$L$__IIC_read_rev$12$B)
	.dwattr DW$189, DW_AT_high_pc(DW$L$__IIC_read_rev$12$E)

DW$190	.dwtag  DW_TAG_loop
	.dwattr DW$190, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L64:2:1188294530")
	.dwattr DW$190, DW_AT_begin_file("_iic.c")
	.dwattr DW$190, DW_AT_begin_line(0x130)
	.dwattr DW$190, DW_AT_end_line(0x130)
DW$191	.dwtag  DW_TAG_loop_range
	.dwattr DW$191, DW_AT_low_pc(DW$L$__IIC_read_rev$9$B)
	.dwattr DW$191, DW_AT_high_pc(DW$L$__IIC_read_rev$9$E)
	.dwendtag DW$190


DW$192	.dwtag  DW_TAG_loop
	.dwattr DW$192, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L66:2:1188294530")
	.dwattr DW$192, DW_AT_begin_file("_iic.c")
	.dwattr DW$192, DW_AT_begin_line(0x132)
	.dwattr DW$192, DW_AT_end_line(0x132)
DW$193	.dwtag  DW_TAG_loop_range
	.dwattr DW$193, DW_AT_low_pc(DW$L$__IIC_read_rev$11$B)
	.dwattr DW$193, DW_AT_high_pc(DW$L$__IIC_read_rev$11$E)
	.dwendtag DW$192

	.dwendtag DW$186


DW$194	.dwtag  DW_TAG_loop
	.dwattr DW$194, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L61:1:1188294530")
	.dwattr DW$194, DW_AT_begin_file("_iic.c")
	.dwattr DW$194, DW_AT_begin_line(0x12b)
	.dwattr DW$194, DW_AT_end_line(0x12b)
DW$195	.dwtag  DW_TAG_loop_range
	.dwattr DW$195, DW_AT_low_pc(DW$L$__IIC_read_rev$6$B)
	.dwattr DW$195, DW_AT_high_pc(DW$L$__IIC_read_rev$6$E)
	.dwendtag DW$194


DW$196	.dwtag  DW_TAG_loop
	.dwattr DW$196, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L59:1:1188294530")
	.dwattr DW$196, DW_AT_begin_file("_iic.c")
	.dwattr DW$196, DW_AT_begin_line(0x120)
	.dwattr DW$196, DW_AT_end_line(0x120)
DW$197	.dwtag  DW_TAG_loop_range
	.dwattr DW$197, DW_AT_low_pc(DW$L$__IIC_read_rev$4$B)
	.dwattr DW$197, DW_AT_high_pc(DW$L$__IIC_read_rev$4$E)
	.dwendtag DW$196


DW$198	.dwtag  DW_TAG_loop
	.dwattr DW$198, DW_AT_name("D:\pred\dsp\vport\_iic.asm:L57:1:1188294530")
	.dwattr DW$198, DW_AT_begin_file("_iic.c")
	.dwattr DW$198, DW_AT_begin_line(0x114)
	.dwattr DW$198, DW_AT_end_line(0x114)
DW$199	.dwtag  DW_TAG_loop_range
	.dwattr DW$199, DW_AT_low_pc(DW$L$__IIC_read_rev$2$B)
	.dwattr DW$199, DW_AT_high_pc(DW$L$__IIC_read_rev$2$E)
	.dwendtag DW$198

	.dwattr DW$155, DW_AT_end_file("_iic.c")
	.dwattr DW$155, DW_AT_end_line(0x143)
	.dwattr DW$155, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$155

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_I2C_rrdy
	.global	_I2C_xrdy
	.global	_I2C_bb
	.global	_I2C_writeByte
	.global	_I2C_readByte
	.global	_I2C_sendStop
	.global	_I2C_start
	.global	_I2C_config
	.global	_I2C_getConfig

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$27


DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$202	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$29


DW$T$33	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$203	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$204	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$33


DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$205	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
DW$206	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
DW$207	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$208	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$35)
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$36)
	.dwendtag DW$T$37

DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8"), DW_AT_type(*DW$T$6)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$T$35	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$35, DW_AT_address_class(0x20)

DW$T$39	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$26)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$39

DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("Int"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$T$42	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$42, DW_AT_type(*DW$T$41)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$43	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$43

DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("I2C_Handle"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("I2C_Config"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_address_class(0x20)
DW$T$46	.dwtag  DW_TAG_const_type
	.dwattr DW$T$46, DW_AT_type(*DW$T$31)
DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr DW$T$6, DW_AT_byte_size(0x01)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x02)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$24	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$24, DW_AT_address_class(0x20)

DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x20)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$212, DW_AT_name("i2coar"), DW_AT_symbol_name("_i2coar")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$213, DW_AT_name("i2cier"), DW_AT_symbol_name("_i2cier")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$214, DW_AT_name("i2cclkl"), DW_AT_symbol_name("_i2cclkl")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$215, DW_AT_name("i2cclkh"), DW_AT_symbol_name("_i2cclkh")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$216, DW_AT_name("i2ccnt"), DW_AT_symbol_name("_i2ccnt")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$217, DW_AT_name("i2csar"), DW_AT_symbol_name("_i2csar")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$218, DW_AT_name("i2cmdr"), DW_AT_symbol_name("_i2cmdr")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$219, DW_AT_name("i2cpsc"), DW_AT_symbol_name("_i2cpsc")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23


DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x14)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$220, DW_AT_name("allocated"), DW_AT_symbol_name("_allocated")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$221, DW_AT_name("eventId"), DW_AT_symbol_name("_eventId")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$222, DW_AT_name("baseAddr"), DW_AT_symbol_name("_baseAddr")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$223, DW_AT_name("i2cdrrAddr"), DW_AT_symbol_name("_i2cdrrAddr")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$224, DW_AT_name("i2cdxrAddr"), DW_AT_symbol_name("_i2cdxrAddr")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22

DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_address_class(0x20)
DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$20, DW_AT_type(*DW$T$19)

	.dwattr DW$67, DW_AT_external(0x01)
	.dwattr DW$155, DW_AT_external(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
	.dwattr DW$112, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 126
	.dwcfa	0x0c, 31, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x07, 6
	.dwcfa	0x07, 7
	.dwcfa	0x07, 8
	.dwcfa	0x07, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x08, 12
	.dwcfa	0x08, 13
	.dwcfa	0x08, 14
	.dwcfa	0x08, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x08, 26
	.dwcfa	0x08, 27
	.dwcfa	0x08, 28
	.dwcfa	0x08, 29
	.dwcfa	0x08, 30
	.dwcfa	0x08, 31
	.dwcfa	0x08, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40
	.dwcfa	0x07, 41
	.dwcfa	0x07, 42
	.dwcfa	0x07, 43
	.dwcfa	0x07, 44
	.dwcfa	0x07, 45
	.dwcfa	0x07, 46
	.dwcfa	0x07, 47
	.dwcfa	0x07, 48
	.dwcfa	0x07, 49
	.dwcfa	0x07, 50
	.dwcfa	0x07, 51
	.dwcfa	0x07, 52
	.dwcfa	0x07, 53
	.dwcfa	0x07, 54
	.dwcfa	0x07, 55
	.dwcfa	0x07, 56
	.dwcfa	0x07, 57
	.dwcfa	0x07, 58
	.dwcfa	0x07, 59
	.dwcfa	0x07, 60
	.dwcfa	0x07, 61
	.dwcfa	0x07, 62
	.dwcfa	0x07, 63
	.dwcfa	0x07, 64
	.dwcfa	0x07, 65
	.dwcfa	0x07, 66
	.dwcfa	0x07, 67
	.dwcfa	0x07, 68
	.dwcfa	0x07, 69
	.dwcfa	0x07, 70
	.dwcfa	0x07, 71
	.dwcfa	0x07, 72
	.dwcfa	0x07, 73
	.dwcfa	0x07, 74
	.dwcfa	0x07, 75
	.dwcfa	0x07, 76
	.dwcfa	0x07, 77
	.dwcfa	0x07, 78
	.dwcfa	0x07, 79
	.dwcfa	0x07, 80
	.dwcfa	0x07, 81
	.dwcfa	0x07, 82
	.dwcfa	0x07, 83
	.dwcfa	0x07, 84
	.dwcfa	0x07, 85
	.dwcfa	0x07, 86
	.dwcfa	0x07, 87
	.dwcfa	0x07, 88
	.dwcfa	0x07, 89
	.dwcfa	0x07, 90
	.dwcfa	0x07, 91
	.dwcfa	0x07, 92
	.dwcfa	0x07, 93
	.dwcfa	0x07, 94
	.dwcfa	0x07, 95
	.dwcfa	0x07, 96
	.dwcfa	0x07, 97
	.dwcfa	0x07, 98
	.dwcfa	0x07, 99
	.dwcfa	0x07, 100
	.dwcfa	0x07, 101
	.dwcfa	0x07, 102
	.dwcfa	0x07, 103
	.dwcfa	0x07, 104
	.dwcfa	0x07, 105
	.dwcfa	0x07, 106
	.dwcfa	0x07, 107
	.dwcfa	0x07, 108
	.dwcfa	0x07, 109
	.dwcfa	0x07, 110
	.dwcfa	0x07, 111
	.dwcfa	0x07, 112
	.dwcfa	0x07, 113
	.dwcfa	0x07, 114
	.dwcfa	0x07, 115
	.dwcfa	0x07, 116
	.dwcfa	0x07, 117
	.dwcfa	0x07, 118
	.dwcfa	0x07, 119
	.dwcfa	0x07, 120
	.dwcfa	0x07, 121
	.dwcfa	0x07, 122
	.dwcfa	0x07, 123
	.dwcfa	0x07, 124
	.dwcfa	0x07, 125
	.dwcfa	0x07, 126

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$225, DW_AT_location[DW_OP_reg0]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$226, DW_AT_location[DW_OP_reg1]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$227, DW_AT_location[DW_OP_reg2]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$228, DW_AT_location[DW_OP_reg3]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$229, DW_AT_location[DW_OP_reg4]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$230, DW_AT_location[DW_OP_reg5]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$231, DW_AT_location[DW_OP_reg6]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$232, DW_AT_location[DW_OP_reg7]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$233, DW_AT_location[DW_OP_reg8]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$234, DW_AT_location[DW_OP_reg9]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$235, DW_AT_location[DW_OP_reg10]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$236, DW_AT_location[DW_OP_reg11]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$237, DW_AT_location[DW_OP_reg12]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$238, DW_AT_location[DW_OP_reg13]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$239, DW_AT_location[DW_OP_reg14]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$240, DW_AT_location[DW_OP_reg15]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$241, DW_AT_location[DW_OP_reg16]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$242, DW_AT_location[DW_OP_reg17]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$243, DW_AT_location[DW_OP_reg18]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$244, DW_AT_location[DW_OP_reg19]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$245, DW_AT_location[DW_OP_reg20]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$246, DW_AT_location[DW_OP_reg21]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$247, DW_AT_location[DW_OP_reg22]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$248, DW_AT_location[DW_OP_reg23]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$249, DW_AT_location[DW_OP_reg24]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$250, DW_AT_location[DW_OP_reg25]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$251, DW_AT_location[DW_OP_reg26]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$252, DW_AT_location[DW_OP_reg27]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$253, DW_AT_location[DW_OP_reg28]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$254, DW_AT_location[DW_OP_reg29]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$255, DW_AT_location[DW_OP_reg30]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$256, DW_AT_location[DW_OP_reg31]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$257, DW_AT_location[DW_OP_regx 0x20]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$258, DW_AT_location[DW_OP_regx 0x21]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$259, DW_AT_location[DW_OP_regx 0x22]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$260, DW_AT_location[DW_OP_regx 0x23]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$261, DW_AT_location[DW_OP_regx 0x24]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$262, DW_AT_location[DW_OP_regx 0x25]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$263, DW_AT_location[DW_OP_regx 0x26]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$264, DW_AT_location[DW_OP_regx 0x27]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$265, DW_AT_location[DW_OP_regx 0x28]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$266, DW_AT_location[DW_OP_regx 0x29]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$267, DW_AT_location[DW_OP_regx 0x2a]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$268, DW_AT_location[DW_OP_regx 0x2b]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$269, DW_AT_location[DW_OP_regx 0x2c]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$270, DW_AT_location[DW_OP_regx 0x2d]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$271, DW_AT_location[DW_OP_regx 0x2e]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$272, DW_AT_location[DW_OP_regx 0x2f]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$273, DW_AT_location[DW_OP_regx 0x30]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$274, DW_AT_location[DW_OP_regx 0x31]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$275, DW_AT_location[DW_OP_regx 0x32]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$276, DW_AT_location[DW_OP_regx 0x33]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$277, DW_AT_location[DW_OP_regx 0x34]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$278, DW_AT_location[DW_OP_regx 0x35]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$279, DW_AT_location[DW_OP_regx 0x36]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$280, DW_AT_location[DW_OP_regx 0x37]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$281, DW_AT_location[DW_OP_regx 0x38]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$282, DW_AT_location[DW_OP_regx 0x39]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$283, DW_AT_location[DW_OP_regx 0x3a]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$284, DW_AT_location[DW_OP_regx 0x3b]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$285, DW_AT_location[DW_OP_regx 0x3c]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$286, DW_AT_location[DW_OP_regx 0x3d]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$287, DW_AT_location[DW_OP_regx 0x3e]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$288, DW_AT_location[DW_OP_regx 0x3f]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$289, DW_AT_location[DW_OP_regx 0x40]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$290, DW_AT_location[DW_OP_regx 0x41]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$291, DW_AT_location[DW_OP_regx 0x42]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$292, DW_AT_location[DW_OP_regx 0x43]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$293, DW_AT_location[DW_OP_regx 0x44]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$294, DW_AT_location[DW_OP_regx 0x45]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$295, DW_AT_location[DW_OP_regx 0x46]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$296, DW_AT_location[DW_OP_regx 0x47]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$297, DW_AT_location[DW_OP_regx 0x48]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$298, DW_AT_location[DW_OP_regx 0x49]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$299, DW_AT_location[DW_OP_regx 0x4a]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$300, DW_AT_location[DW_OP_regx 0x4b]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$301, DW_AT_location[DW_OP_regx 0x4c]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$302, DW_AT_location[DW_OP_regx 0x4d]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$303, DW_AT_location[DW_OP_regx 0x4e]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$304, DW_AT_location[DW_OP_regx 0x4f]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$305, DW_AT_location[DW_OP_regx 0x50]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$306, DW_AT_location[DW_OP_regx 0x51]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$307, DW_AT_location[DW_OP_regx 0x52]
DW$308	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$308, DW_AT_location[DW_OP_regx 0x53]
DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$309, DW_AT_location[DW_OP_regx 0x54]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$310, DW_AT_location[DW_OP_regx 0x55]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$311, DW_AT_location[DW_OP_regx 0x56]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$312, DW_AT_location[DW_OP_regx 0x57]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$313, DW_AT_location[DW_OP_regx 0x58]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$314, DW_AT_location[DW_OP_regx 0x59]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$315, DW_AT_location[DW_OP_regx 0x5a]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$316, DW_AT_location[DW_OP_regx 0x5b]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$317, DW_AT_location[DW_OP_regx 0x5c]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$318, DW_AT_location[DW_OP_regx 0x5d]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$319, DW_AT_location[DW_OP_regx 0x5e]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$320, DW_AT_location[DW_OP_regx 0x5f]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$321, DW_AT_location[DW_OP_regx 0x60]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$322, DW_AT_location[DW_OP_regx 0x61]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$323, DW_AT_location[DW_OP_regx 0x62]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$324, DW_AT_location[DW_OP_regx 0x63]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$325, DW_AT_location[DW_OP_regx 0x64]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$326, DW_AT_location[DW_OP_regx 0x65]
DW$327	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$327, DW_AT_location[DW_OP_regx 0x66]
DW$328	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$328, DW_AT_location[DW_OP_regx 0x67]
DW$329	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$329, DW_AT_location[DW_OP_regx 0x68]
DW$330	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$330, DW_AT_location[DW_OP_regx 0x69]
DW$331	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$331, DW_AT_location[DW_OP_regx 0x6a]
DW$332	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$332, DW_AT_location[DW_OP_regx 0x6b]
DW$333	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$333, DW_AT_location[DW_OP_regx 0x6c]
DW$334	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$334, DW_AT_location[DW_OP_regx 0x6d]
DW$335	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$335, DW_AT_location[DW_OP_regx 0x6e]
DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$336, DW_AT_location[DW_OP_regx 0x6f]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$337, DW_AT_location[DW_OP_regx 0x70]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$338, DW_AT_location[DW_OP_regx 0x71]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$339, DW_AT_location[DW_OP_regx 0x72]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$340, DW_AT_location[DW_OP_regx 0x73]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$341, DW_AT_location[DW_OP_regx 0x74]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$342, DW_AT_location[DW_OP_regx 0x75]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$343, DW_AT_location[DW_OP_regx 0x76]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$344, DW_AT_location[DW_OP_regx 0x77]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$345, DW_AT_location[DW_OP_regx 0x78]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$346, DW_AT_location[DW_OP_regx 0x79]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$347, DW_AT_location[DW_OP_regx 0x7a]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$348, DW_AT_location[DW_OP_regx 0x7b]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$349, DW_AT_location[DW_OP_regx 0x7c]
DW$350	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$350, DW_AT_location[DW_OP_regx 0x7d]
DW$351	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$351, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

