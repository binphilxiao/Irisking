module pld(
                CLK,
                nOE,          //OUTPUT ENABLE
                LUPWAIT,  //nWAIT
                nCPLDCE,           //CHIP ENABLE
                nNANDFWE,        //WRITE ENABLE
                nHRESET,
                addr,
                data,

                //三路韦根输入，一路韦根输出
                WIL_IN, WIL_IN_A, WIL_IN_B,
                WIL_OUT,

				//韦根输出使能
				GPIO20,

                //暂时无用
                GPIO21, GPIO22, GPIO23,
                //IRQ、防撬开关、复位开关
                IRQ, FQ, FW,

                //LED地线控制，高有效
                DSP_LED1, DSP_LED2,
                EXP_LED1, EXP_LED2, EXP_LED3, EXP_LED4,

                //辅助判断LCD和CCD的地线
                GPIO26, GPIO27,
                //LCD地线，高有效
                SW_LCD,
                //CCD地线，高有效
                SW_CCD1, SW_CCD2, SW_CCD3,

                //AD测距模块
                AD_DO, AD_IO_CLK, AD_CS,

                 //IO接插件
                FPGA_IO1, FPGA_IO2, FPGA_IO3, FPGA_IO4,

                //键盘
                KEY1, KEY2, KEY3, KEY4, KEY5, KEY6, KEY7, KEY8,

				//测试管脚
				test
                );

input CLK, nOE, nCPLDCE, nNANDFWE, nHRESET;
//低电平终止 总线传输
output LUPWAIT;
assign LUPWAIT=1;

output [1:0] test;


//----------------------------------------------------------------------------------//
//																				    //
//                              时钟PLL部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
//wire CLK;
//altpll0 times(.inclk0(CLKin),.c0(CLK));


//----------------------------------------------------------------------------------//
//																				    //
//                              韦根输入部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
input [1:0] WIL_IN, WIL_IN_A, WIL_IN_B;
wire [25:0] wigend_reg_in1, wigend_reg_in2, wigend_reg_in3;
wire eint_wil_input1, eint_wil_input2, eint_wil_input3;
Wigend_In wigend_in1(.clk(CLK),.rst(nHRESET),.wigend(WIL_IN),.data(wigend_reg_in1),.int(eint_wil_input1));
Wigend_In wigend_in2(.clk(CLK),.rst(nHRESET),.wigend(WIL_IN_A),.data(wigend_reg_in2),.int(eint_wil_input2));
Wigend_In wigend_in3(.clk(CLK),.rst(nHRESET),.wigend(WIL_IN_B),.data(wigend_reg_in3),.int(eint_wil_input3));


//----------------------------------------------------------------------------------//
//																				    //
//                              韦根输出部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
//韦根输出启动位
input GPIO20;
output [1:0] WIL_OUT;
wire [1:0] WIL_OUT;
wire eint_wil_output;
reg [25:0] wigend_reg_out;
Wigend_Out wigend_out0(.clk(CLK),.rst(nHRESET),.wigend(WIL_OUT),.data(wigend_reg_out),.int(eint_wil_output),.en(configure[3]));


//----------------------------------------------------------------------------------//
//																				    //
//                              总线处理部分                                        //
//	addr			!OE							!nNANDFWE							//
//																					//
//	0				configure					configure							//
//	1-4				wigend_reg_in1				wigend_reg_out						//
//	5-8				wigend_reg_in2													//
//	9-12			wigend_reg_in3													//
//	13				AD																//
//	14				键盘															//
//	15																				//
//																					//
//----------------------------------------------------------------------------------//
//																				    //
//                              中断辅助判断部分                               		//
//	0		韦根输入1中断																//
//	1		韦根输入2中断															//
//	2		韦根输入3中断															//
//	3		韦根输出使能															//
//	4		韦根输出中断															//
//	5																				//
//	6		防撬开关中断															//
//	7		一键复位中断															//
//	                      														    //
//----------------------------------------------------------------------------------//
input [7:0] addr;
inout [7:0] data;
reg [7:0] wdata;
reg [7:0] ADdata;      //AD result data register
reg [7:0] configure;

assign data[7:0] = (!nCPLDCE && !nOE) ? wdata[7:0] : 8'hzz;

//总线输入处理ioread
always @ (nCPLDCE or nOE or nNANDFWE or addr or configure or wigend_reg_in1 or wigend_reg_in2 or wigend_reg_in3 or ADdata)
begin
//中断辅助判断
if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==0)
    wdata[7:0]<=configure;
//韦根输入1
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==4)
    wdata<=wigend_reg_in1[7:0];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==3)
    wdata<=wigend_reg_in1[15:8];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==2)
    wdata<=wigend_reg_in1[23:16];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==1)
    wdata<={6'h00,wigend_reg_in1[25:24]};
//韦根输入2
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==8)
    wdata<=wigend_reg_in2[7:0];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==7)
    wdata<=wigend_reg_in2[15:8];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==6)
    wdata<=wigend_reg_in2[23:16];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==5)
    wdata<={6'h00,wigend_reg_in2[25:24]};
//韦根输入3
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==12)
    wdata<=wigend_reg_in3[7:0];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==11)
    wdata<=wigend_reg_in3[15:8];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==10)
    wdata<=wigend_reg_in3[23:16];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==9)
    wdata<={6'h00,wigend_reg_in3[25:24]};
//AD出输入处理
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==13)
	wdata<=ADdata;
//键盘输入处理
//else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==14)
else
	wdata<=0;
end

//总线输出出处理iowrite
//韦根输出处理7-0
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	wigend_reg_out[7:0]<=0;
else if (nCPLDCE==0 && nOE==1 &&  nNANDFWE==0 && addr[7:0]==1)
	wigend_reg_out[7:0]<=data;
else
	wigend_reg_out[7:0]<=wigend_reg_out[7:0];
end
//韦根输出处理15-8
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	wigend_reg_out[15:8]<=0;
else if (nCPLDCE==0 && nOE==1 &&  nNANDFWE==0 && addr[7:0]==2)
	wigend_reg_out[15:8]<=data;
else
	wigend_reg_out[15:8]<=wigend_reg_out[15:8];
end
//韦根输出处理23-16
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	wigend_reg_out[23:16]<=0;
else if (nCPLDCE==0 && nOE==1 &&  nNANDFWE==0 && addr[7:0]==3)
	wigend_reg_out[23:16]<=data;
else
	wigend_reg_out[23:16]<=wigend_reg_out[23:16];
end
//韦根输出处理25-24
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	wigend_reg_out[25:24]<=0;
else if (nCPLDCE==0 && nOE==1 &&  nNANDFWE==0 && addr[7:0]==4)
	wigend_reg_out[25:24]<=data;
else
	wigend_reg_out[25:24]<=wigend_reg_out[25:24];
end


//韦根输入1中断
always @ (negedge nHRESET or posedge eint_wil_input1 or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[0]<=1;
else if (configure[0] && eint_wil_input1)
	configure[0]<=0;					//赋值0，表示中断来了
else if (!configure[0] && !eint_wil_input1 && nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)
	configure[0]<=data[0];				//清1，表示中断处理完毕
else
	configure[0]<=configure[0];
end
//韦根输入2中断
always @ (negedge nHRESET or posedge eint_wil_input2 or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[1]<=1;
else if (configure[1] && eint_wil_input2)
	configure[1]<=0;					//赋值0，表示中断来了
else if (!configure[1] && !eint_wil_input2 && nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)
	configure[1]<=data[1];				//清1，表示中断处理完毕
else
	configure[1]<=configure[1];
end
//韦根输入3中断
always @ (negedge nHRESET or posedge eint_wil_input3 or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[2]<=1;
else if (configure[2] && eint_wil_input3)
	configure[2]<=0;					//赋值0，表示中断来了
else if (!configure[2] && !eint_wil_input3 && nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)
	configure[2]<=data[2];				//清1，表示中断处理完毕
else
	configure[2]<=configure[2];
end
//韦根输出使能
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[3]<=1;
else if (nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)
	configure[3]<=data[3];
end
//韦根输出中断
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[4]<=1;
else if (nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)
	configure[4]<=data[4];
else
	configure[4]<=configure[4];
end
/*
always @ (negedge nHRESET or posedge eint_wil_output or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[4]<=1;
else if (configure[4] && eint_wil_output && nNANDFWE)		//eint_wil_output上升沿
	configure[4]<=0;					//赋值1，表示中断来了
else if (!configure[4] && !eint_wil_output && nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)			//nNANDFWE下降沿
	configure[4]<=data[4];				//清0，表示中断处理完毕
else
	configure[4]<=configure[4];
end
*/
//键盘
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[5]<=1;
else
	configure[5]<=configure[5];
end
//防撬开关
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[6]<=1;
else
	configure[6]<=configure[6];
end
//一键复位
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[7]<=1;
else
	configure[7]<=configure[7];
end
//FPGA_IO输出处理


//----------------------------------------------------------------------------------//
//																				    //
//                              LED控制                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
input DSP_LED1, DSP_LED2;
output EXP_LED1, EXP_LED2, EXP_LED3, EXP_LED4;
reg EXP_LED1, EXP_LED2, EXP_LED3, EXP_LED4;

always @ (negedge nHRESET or posedge CLK)
begin
if(!nHRESET)
    begin
    EXP_LED1<=0;
    EXP_LED2<=0;
    EXP_LED3<=0;
    EXP_LED4<=0;
    end
else if(!DSP_LED1 && DSP_LED2)
    begin
    EXP_LED1<=1;
    EXP_LED2<=1;
    EXP_LED3<=0;
    EXP_LED4<=0;
    end
else if(DSP_LED1 && !DSP_LED2)
    begin
    EXP_LED1<=0;
    EXP_LED2<=0;
    EXP_LED3<=1;
    EXP_LED4<=1;
    end
else if(!DSP_LED1 && !DSP_LED2)
    begin
    EXP_LED1<=1;
    EXP_LED2<=1;
    EXP_LED3<=1;
    EXP_LED4<=1;
    end
else
    begin
    EXP_LED1<=0;
    EXP_LED2<=0;
    EXP_LED3<=0;
    EXP_LED4<=0;
    end
end


//----------------------------------------------------------------------------------//
//																				    //
//                              LCD, CCD控制                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
input GPIO26,GPIO27;
output SW_LCD, SW_CCD1, SW_CCD2, SW_CCD3;
reg SW_LCD, SW_CCD1, SW_CCD2, SW_CCD3;

always @ (negedge nHRESET or posedge CLK)
begin
if(!nHRESET)
    SW_LCD<=0;
else if(!GPIO26)
    SW_LCD<=1;
else
    SW_LCD<=1;
end

always @ (negedge nHRESET or posedge CLK)
begin
if(!nHRESET)
    begin
    SW_CCD1<=1;
    SW_CCD2<=1;
    SW_CCD3<=1;
    end
else if(!GPIO27)
    begin
    SW_CCD1<=1;
    SW_CCD2<=1;
    SW_CCD3<=1;
    end
else
    begin
    SW_CCD1<=1;
    SW_CCD2<=1;
    SW_CCD3<=1;
    end
end


//----------------------------------------------------------------------------------//
//																				    //
//                              AD测距模块                                        	//
//	                      														    //
//----------------------------------------------------------------------------------//
input AD_DO;
output AD_CS, AD_IO_CLK;
reg [4:0] ADcnt;
//reg [7:0] ADdata;      //AD result data register
reg [7:0] ADO;         //serial to parallel register
assign AD_CS=(ADcnt>=0 && ADcnt<=7 || ADcnt==30)?0:1;
assign  AD_IO_CLK=(ADcnt>=0 && ADcnt<=7)?CLK:0;

always @ (negedge nHRESET or negedge CLK)
begin
   if (!nHRESET)
	  ADcnt<=0;
   else if (ADcnt==30)      // 30us for AD converting
      begin
         ADcnt<=0;
      end
   else
         ADcnt<=ADcnt+1;
end

always @ (negedge nHRESET or posedge CLK)
begin
   if (!nHRESET)
	  	ADO<=0;
	else if (ADcnt>=8 && ADcnt<=30)
       	ADO<=0;
   else
		ADO<=ADO<<1|AD_DO;
end

always @ (negedge nHRESET or posedge CLK)
begin
	if(!nHRESET)
        ADdata<=0;
	else if (ADcnt==8)
		ADdata<=ADO;
	else
        ADdata<=ADdata;
end


//----------------------------------------------------------------------------------//
//																				    //
//                              IO接插件                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
output FPGA_IO1, FPGA_IO2, FPGA_IO3, FPGA_IO4;
reg FPGA_IO1, FPGA_IO2, FPGA_IO3, FPGA_IO4;


//----------------------------------------------------------------------------------//
//																				    //
//                              键盘                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
input KEY1, KEY2, KEY3, KEY4, KEY5, KEY6, KEY7, KEY8;
wire key_int;


//----------------------------------------------------------------------------------//
//																				    //
//                              防撬、复位开关处理部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
input FQ, FW;
output IRQ;
input GPIO21, GPIO22, GPIO23;

//assign IRQ = (eint_wil_input1) & (eint_wil_input2) & (eint_wil_input3) & (FQ) & (FW) & (key_int);
assign IRQ = eint_wil_output | eint_wil_input1;
assign test[0] = IRQ;
assign test[1] = IRQ;

endmodule