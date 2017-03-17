module pld(
                clk,
                nOE,          //OUTPUT ENABLE
                nWAIT,        //nWAIT
                nCE,          //CHIP ENABLE
                nWE,          //WRITE ENABLE
                rst,
                addr,
                data,

                //三路韦根输入，一路韦根输出
                WIL_IN, WIL_IN_A, WIL_IN_B,
                WIL_OUT,

				GPIO20,GPIO21, GPIO22, GPIO23,GPIO26, GPIO27,

                //IRQ、防撬开关、复位开关
                IRQ, FQ, FW,

                //LED地线控制，高有效
                DSP_LED1, DSP_LED2,
                EXP_LED1, EXP_LED2, EXP_LED3, EXP_LED4,

                //LCD地线，高有效
                SW_LCD,
                //CCD地线，高有效
                SW_CCD1, SW_CCD2, SW_CCD3,

                //AD测距模块
                AD_DO, AD_CLK, AD_CS,

                //IO接插件
                GIO1, GIO2, GIO3, GIO4,

                //键盘
                KEYin, KEYout,

				//测试管脚
				test
                );

input clk,rst;
output [1:0] test;
input GPIO20,GPIO21, GPIO22, GPIO23,GPIO26,GPIO27;
assign test[0]=GPIO20|GPIO21|GPIO22;
assign test[1]=GPIO23|GPIO26|GPIO27;


//----------------------------------------------------------------------------------//
//																				    //
//                              时钟PLL部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
//wire clk;
//altpll0 times(.inclk0(CLKin),.c0(clk));


//----------------------------------------------------------------------------------//
//																				    //
//                              韦根输入部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
input [1:0] WIL_IN, WIL_IN_A, WIL_IN_B;
wire [25:0] wigend_reg_in1, wigend_reg_in2, wigend_reg_in3;
wire Int_wil_input1, Int_wil_input2, Int_wil_input3;
Wigend_In wigend_in1(.clk(clk),.rst(rst),.wigend(WIL_IN),.data(wigend_reg_in1),.int(Int_wil_input1));
Wigend_In wigend_in2(.clk(clk),.rst(rst),.wigend(WIL_IN_A),.data(wigend_reg_in2),.int(Int_wil_input2));
Wigend_In wigend_in3(.clk(clk),.rst(rst),.wigend(WIL_IN_B),.data(wigend_reg_in3),.int(Int_wil_input3));


//----------------------------------------------------------------------------------//
//																				    //
//                              韦根输出部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
output [1:0] WIL_OUT;
wire [1:0] WIL_OUT;
wire Int_wil_output;
reg [25:0] wigend_reg_out;
Wigend_Out wigend_out0(.clk(clk),.rst(rst),.wigend(WIL_OUT),.data(wigend_reg_out),.int(Int_wil_output),.en(configure[3]));

//----------------------------------------------------------------------------------//
//																				    //
//                              LED控制                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
input DSP_LED1, DSP_LED2;
output EXP_LED1, EXP_LED2, EXP_LED3, EXP_LED4;

reg EXP_LED1, EXP_LED2, EXP_LED3, EXP_LED4;

always @ (DSP_LED1 or DSP_LED2)
begin
	if(!DSP_LED1 && DSP_LED2)
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
//                              AD测距模块                                        	//
//	                      														    //
//----------------------------------------------------------------------------------//
input AD_DO;
output AD_CS, AD_CLK;

wire [7:0] ADdata;      //AD result data register

adc adc_m(.clk(clk),.rst(rst),.AD_DO(AD_DO),.AD_CLK(AD_CLK),.AD_CS(AD_CS),.ADdata(ADdata));

//----------------------------------------------------------------------------------//
//																				    //
//                              键盘                                                //
//	                      														    //
//----------------------------------------------------------------------------------//
input [3:0] KEYin;
output [3:0] KEYout;

wire [3:0] KEYdata;
wire Int_key;

Keyboard Keyboard0(.clk(clk),.rst(rst),.Keyboard_in(KEYin),.Keyboard_out(KEYout),.Keyboard_data(KEYdata),.irq(Int_key));

//----------------------------------------------------------------------------------//
//																				    //
//                              防撬、复位开关处理部分                              //
//	                      														    //
//----------------------------------------------------------------------------------//
input FQ, FW;
wire Int_FQ,Int_FW;

Button Button_FQ(.clk(clk),.rst(rst),.key_in(FQ),.irq(Int_FQ));
Button Button_FW(.clk(clk),.rst(rst),.key_in(FW),.irq(Int_FW));

//----------------------------------------------------------------------------------//
//																				    //
//                              中断                                                //
//	                      														    //
//----------------------------------------------------------------------------------//
output IRQ;

assign IRQ = (Int_FQ) & (Int_FW) & (Int_key) & (Int_wil_input1) & (Int_wil_input2) & (Int_wil_input3);

//----------------------------------------------------------------------------------//
//																				    //
//                              总线处理部分                                        //
//	addr			!OE							!nWE						     	//
//																					//
//	0				configure					configure							//
//	1-4				wigend_reg_in1				wigend_reg_out						//
//  5               wigend_reg_in2[7:0]         LCD,CCD,GIO                         //
//	6-8				wigend_reg_in2[25:8]				                            //
//	9-12			wigend_reg_in3													//
//	13				AD																//
//	14				键盘															//
//	15				DEVICE ID																//
//																					//
//----------------------------------------------------------------------------------//
//																				    //
//                              configure寄存器分配                               	//
//	0		韦根输入1中断标志位(1:有中断  0:无中断)									//
//	1		韦根输入2中断标志位(1:有中断  0:无中断)									//
//	2		韦根输入3中断标志位(1:有中断  0:无中断)								    //
//	3		韦根输出使能															//
//	4		韦根输出中断标志位(1:有中断  0:无中断)									//
//	5		键盘中断位标志位(1:有中断  0:无中断)									//
//	6		防撬开关中断标志位(1:有中断  0:无中断)									//
//	7		一键复位中断标志位(1:有中断  0:无中断)									//
//	                      														    //
//----------------------------------------------------------------------------------//
input [7:0] addr;
inout [7:0] data;
input nOE,nCE, nWE;
output nWAIT;

reg [7:0] wdata;
reg [7:0] configure;

assign nWAIT=1'hz;
assign data[7:0] = (!nCE && !nOE) ? wdata[7:0] : 8'hzz;

//------------------------------------------------------总线输入处理ioread------------------------------------------------------//
always @ (nCE or nOE or nWE or addr or configure or wigend_reg_in1 or wigend_reg_in2 or wigend_reg_in3 or ADdata or KEYdata)
begin
	//中断辅助判断
	if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==0)
	    wdata[7:0]<=configure;
	//韦根输入1
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==4)
	    wdata<=wigend_reg_in1[7:0];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==3)
	    wdata<=wigend_reg_in1[15:8];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==2)
	    wdata<=wigend_reg_in1[23:16];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==1)
	    wdata<={6'h00,wigend_reg_in1[25:24]};
	//韦根输入2
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==8)
	    wdata<=wigend_reg_in2[7:0];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==7)
	    wdata<=wigend_reg_in2[15:8];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==6)
	    wdata<=wigend_reg_in2[23:16];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==5)
	    wdata<={6'h00,wigend_reg_in2[25:24]};
	//韦根输入3
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==12)
	    wdata<=wigend_reg_in3[7:0];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==11)
	    wdata<=wigend_reg_in3[15:8];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==10)
	    wdata<=wigend_reg_in3[23:16];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==9)
	    wdata<={6'h00,wigend_reg_in3[25:24]};
	//AD出输入处理
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==13)
		wdata<=ADdata;
	//键盘输入处理
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==14)
		wdata<={4'h00,KEYdata};
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==15)
		wdata<=8'h5a;
	else 
		wdata<=0;
end

/*always @ (nCE or nOE or nWE && addr)
begin
	if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==15)
		wdata<=8'h5a;
	else 
		wdata<=0;
end*/

//------------------------------------------------------总线输出出处理iowrite------------------------------------------------------//
//韦根输出处理7-0
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		wigend_reg_out[7:0]<=0;
	else if (nCE==0 && nOE==1 &&  nWE==0 && addr[7:0]==1)
		wigend_reg_out[7:0]<=data;
end
//韦根输出处理15-8
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		wigend_reg_out[15:8]<=0;
	else if (nCE==0 && nOE==1 &&  nWE==0 && addr[7:0]==2)
		wigend_reg_out[15:8]<=data;
end
//韦根输出处理23-16
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		wigend_reg_out[23:16]<=0;
	else if (nCE==0 && nOE==1 &&  nWE==0 && addr[7:0]==3)
		wigend_reg_out[23:16]<=data;
end
//韦根输出处理25-24
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		wigend_reg_out[25:24]<=0;
	else if (nCE==0 && nOE==1 &&  nWE==0 && addr[7:0]==4)
		wigend_reg_out[25:24]<=data;
end


wire rst_irq_reg;
assign rst_irq_reg=(nCE==0 && nOE==1 && nWE==0 && addr[7:0]==0)?0:1;
//韦根输入1中断
always @ (negedge rst_irq_reg or negedge Int_wil_input1)
begin
	if (!rst_irq_reg)
		configure[0]<=0;
	else if (!Int_wil_input1 && !configure[0])
		configure[0]<=1;
end
//韦根输入2中断
always @ (negedge rst_irq_reg or negedge Int_wil_input2)
begin
	if (!rst_irq_reg)
		configure[1]<=0;
	else if (!Int_wil_input2 && !configure[1])
		configure[1]<=1;				//赋值1，表示中断来了
end
//韦根输入3中断
always @ (negedge rst_irq_reg or negedge Int_wil_input3)
begin
	if (!rst_irq_reg)
		configure[2]<=0;
	else if (!Int_wil_input3 && !configure[2])
		configure[2]<=1;					//赋值1，表示中断来了
end
//韦根输出使能
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		configure[3]<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==0)
		configure[3]<=data[3];
end
//韦根输出中断
always @ (posedge clk or negedge rst)
begin
	if (!rst)
		configure[4]<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==0)
		configure[4]<=0;
	else if (!Int_wil_output)
		configure[4]<=1;
end

//键盘
always @ (negedge rst_irq_reg or negedge Int_key)
begin
	if (!rst_irq_reg)
		configure[5]<=0;
	else if (!Int_key && !configure[5])
		configure[5]<=1;
end
//防撬开关
always @ (negedge rst_irq_reg or negedge Int_FW)
begin
	if (!rst_irq_reg)
		configure[6]<=0;
	else if (!Int_FW && !configure[6])
		configure[6]<=1;
end
//一键复位
always @ (negedge rst_irq_reg or negedge Int_FQ)
begin
	if (!rst_irq_reg)
		configure[7]<=0;
	else if (!Int_FQ && !configure[7])
		configure[7]<=1;
end

//----------------------------------------------------------------------------------//
//																				    //
//                              LCD,CCD,GIO控制                                     //
//	                      														    //
//----------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------//
//																				    //
//                              字节位分配                                          //
//                                                                                  //
//                  0              		SW_LCD                                      //
//                  1                   SW_CCD1                                     //
//                  2                   SW_CCD2                                     //
//                  3                   SW_CCD3                                     //
//                  4                   GIO1(output only now)                       //
//                  5                   GIO2(output only now)                       //
//                  6                   GIO3(output only now)                       //
//	                7     				GIO4(output only now) 						//
//----------------------------------------------------------------------------------//
output SW_LCD, SW_CCD1, SW_CCD2, SW_CCD3;
reg SW_LCD, SW_CCD1, SW_CCD2, SW_CCD3;

always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		SW_LCD<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==5)
		SW_LCD<=data[0];
end

always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		SW_CCD1<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==5)
		SW_CCD1<=data[1];
end

always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		SW_CCD2<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==5)
		SW_CCD2<=data[2];
end

always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		SW_CCD3<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==5)
		SW_CCD3<=data[3];
end

//----------------------------------------------------------------------------------//
//																				    //
//                              IO接插件                                            //
//	                      														    //
//----------------------------------------------------------------------------------//
output GIO1, GIO2, GIO3, GIO4;//注意此处为大写的i/o,而非Izero
reg GIO1, GIO2, GIO3, GIO4;//注意此处为大写的i/o,而非Izero

always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		GIO1<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==5)
		GIO1<=data[4];
end

always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		GIO2<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==5)
		GIO2<=data[5];
end

always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		GIO3<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==5)
		GIO3<=data[6];
end

always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		GIO4<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==5)
		GIO4<=data[7];
end

endmodule