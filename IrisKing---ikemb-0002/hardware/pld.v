module pld(
                clk,
                nOE,          //OUTPUT ENABLE
                nWAIT,        //nWAIT
                nCE,          //CHIP ENABLE
                nWE,          //WRITE ENABLE
                rst,
                addr,
                data,

                //��·Τ�����룬һ·Τ�����
                WIL_IN, WIL_IN_A, WIL_IN_B,
                WIL_OUT,

				GPIO20,GPIO21, GPIO22, GPIO23,GPIO26, GPIO27,

                //IRQ�����˿��ء���λ����
                IRQ, FQ, FW,

                //LED���߿��ƣ�����Ч
                DSP_LED1, DSP_LED2,
                EXP_LED1, EXP_LED2, EXP_LED3, EXP_LED4,

                //LCD���ߣ�����Ч
                SW_LCD,
                //CCD���ߣ�����Ч
                SW_CCD1, SW_CCD2, SW_CCD3,

                //AD���ģ��
                AD_DO, AD_CLK, AD_CS,

                //IO�Ӳ��
                GIO1, GIO2, GIO3, GIO4,

                //����
                KEYin, KEYout,

				//���Թܽ�
				test
                );

input clk,rst;
output [1:0] test;
input GPIO20,GPIO21, GPIO22, GPIO23,GPIO26,GPIO27;
assign test[0]=GPIO20|GPIO21|GPIO22;
assign test[1]=GPIO23|GPIO26|GPIO27;


//----------------------------------------------------------------------------------//
//																				    //
//                              ʱ��PLL����                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
//wire clk;
//altpll0 times(.inclk0(CLKin),.c0(clk));


//----------------------------------------------------------------------------------//
//																				    //
//                              Τ�����벿��                                        //
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
//                              Τ���������                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
output [1:0] WIL_OUT;
wire [1:0] WIL_OUT;
wire Int_wil_output;
reg [25:0] wigend_reg_out;
Wigend_Out wigend_out0(.clk(clk),.rst(rst),.wigend(WIL_OUT),.data(wigend_reg_out),.int(Int_wil_output),.en(configure[3]));

//----------------------------------------------------------------------------------//
//																				    //
//                              LED����                                        //
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
//                              AD���ģ��                                        	//
//	                      														    //
//----------------------------------------------------------------------------------//
input AD_DO;
output AD_CS, AD_CLK;

wire [7:0] ADdata;      //AD result data register

adc adc_m(.clk(clk),.rst(rst),.AD_DO(AD_DO),.AD_CLK(AD_CLK),.AD_CS(AD_CS),.ADdata(ADdata));

//----------------------------------------------------------------------------------//
//																				    //
//                              ����                                                //
//	                      														    //
//----------------------------------------------------------------------------------//
input [3:0] KEYin;
output [3:0] KEYout;

wire [3:0] KEYdata;
wire Int_key;

Keyboard Keyboard0(.clk(clk),.rst(rst),.Keyboard_in(KEYin),.Keyboard_out(KEYout),.Keyboard_data(KEYdata),.irq(Int_key));

//----------------------------------------------------------------------------------//
//																				    //
//                              ���ˡ���λ���ش�����                              //
//	                      														    //
//----------------------------------------------------------------------------------//
input FQ, FW;
wire Int_FQ,Int_FW;

Button Button_FQ(.clk(clk),.rst(rst),.key_in(FQ),.irq(Int_FQ));
Button Button_FW(.clk(clk),.rst(rst),.key_in(FW),.irq(Int_FW));

//----------------------------------------------------------------------------------//
//																				    //
//                              �ж�                                                //
//	                      														    //
//----------------------------------------------------------------------------------//
output IRQ;

assign IRQ = (Int_FQ) & (Int_FW) & (Int_key);

//----------------------------------------------------------------------------------//
//																				    //
//                              ���ߴ�����                                        //
//	addr			!OE							!nWE						     	//
//																					//
//	0				configure					configure							//
//	1-4				wigend_reg_in1				wigend_reg_out						//
//  5               wigend_reg_in2[7:0]         LCD,CCD,GIO                         //
//	6-8				wigend_reg_in2[25:8]				                            //
//	9-12			wigend_reg_in3													//
//	13				AD																//
//	14				����															//
//	15				DEVICE ID																//
//																					//
//----------------------------------------------------------------------------------//
//																				    //
//                              configure�Ĵ�������                               	//
//	0		Τ������1�жϱ�־λ(1:���ж�  0:���ж�)									//
//	1		Τ������2�жϱ�־λ(1:���ж�  0:���ж�)									//
//	2		Τ������3�жϱ�־λ(1:���ж�  0:���ж�)								    //
//	3		Τ�����ʹ��															//
//	4		Τ������жϱ�־λ(1:���ж�  0:���ж�)									//
//	5		�����ж�λ��־λ(1:���ж�  0:���ж�)									//
//	6		���˿����жϱ�־λ(1:���ж�  0:���ж�)									//
//	7		һ����λ�жϱ�־λ(1:���ж�  0:���ж�)									//
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

//------------------------------------------------------�������봦��ioread------------------------------------------------------//
always @ (nCE or nOE or nWE or addr or configure or wigend_reg_in1 or wigend_reg_in2 or wigend_reg_in3 or ADdata or KEYdata)
begin
	//�жϸ����ж�
	if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==0)
	    wdata[7:0]<=configure;
	//Τ������1
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==4)
	    wdata<=wigend_reg_in1[7:0];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==3)
	    wdata<=wigend_reg_in1[15:8];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==2)
	    wdata<=wigend_reg_in1[23:16];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==1)
	    wdata<={6'h00,wigend_reg_in1[25:24]};
	//Τ������2
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==8)
	    wdata<=wigend_reg_in2[7:0];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==7)
	    wdata<=wigend_reg_in2[15:8];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==6)
	    wdata<=wigend_reg_in2[23:16];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==5)
	    wdata<={6'h00,wigend_reg_in2[25:24]};
	//Τ������3
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==12)
	    wdata<=wigend_reg_in3[7:0];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==11)
	    wdata<=wigend_reg_in3[15:8];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==10)
	    wdata<=wigend_reg_in3[23:16];
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==9)
	    wdata<={6'h00,wigend_reg_in3[25:24]};
	//AD�����봦��
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==13)
		wdata<=ADdata;
	//�������봦��
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==14)
		wdata<={4'h00,KEYdata};
	else if (nCE==0 && nOE==0 && nWE==1 && addr[7:0]==15)
		wdata<=8'h5a;
	else 
		wdata<=0;
end

//------------------------------------------------------�������������iowrite------------------------------------------------------//
//Τ���������7-0
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		wigend_reg_out[7:0]<=0;
	else if (nCE==0 && nOE==1 &&  nWE==0 && addr[7:0]==1)
		wigend_reg_out[7:0]<=data;
end
//Τ���������15-8
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		wigend_reg_out[15:8]<=0;
	else if (nCE==0 && nOE==1 &&  nWE==0 && addr[7:0]==2)
		wigend_reg_out[15:8]<=data;
end
//Τ���������23-16
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		wigend_reg_out[23:16]<=0;
	else if (nCE==0 && nOE==1 &&  nWE==0 && addr[7:0]==3)
		wigend_reg_out[23:16]<=data;
end
//Τ���������25-24
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		wigend_reg_out[25:24]<=0;
	else if (nCE==0 && nOE==1 &&  nWE==0 && addr[7:0]==4)
		wigend_reg_out[25:24]<=data;
end


wire rst_irq_reg;
assign rst_irq_reg=(nCE==0 && nOE==1 && nWE==0 && addr[7:0]==0)?0:1;
//Τ������1�ж�
always @ (posedge clk or negedge rst)
begin
	if (!rst)
		configure[0]<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==0)
		configure[0]<=0;
	else if (!Int_wil_input1)
		configure[0]<=1;					//��ֵ1����ʾ�ж�����
end
//Τ������2�ж�
always @ (posedge clk or negedge rst)
begin
	if (!nWE || !rst)
		configure[1]<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==0)
		configure[1]<=0;
	else if (!Int_wil_input2)
		configure[1]<=1;					//��ֵ1����ʾ�ж�����
end
//Τ������3�ж�
always @ (posedge clk or negedge rst)
begin
	if (!nWE || !rst)
		configure[2]<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==0)
		configure[2]<=0;
	else if (!Int_wil_input3)
		configure[2]<=1;					//��ֵ1����ʾ�ж�����
end
//Τ�����ʹ��
always @ (negedge rst or negedge nWE)
begin
	if (!rst)
		configure[3]<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==0)
		configure[3]<=data[3];
end
//Τ������ж�
always @ (posedge clk or negedge rst)
begin
	if (!rst)
		configure[4]<=0;
	else if (nCE==0 && nOE==1 && nWE==0 && addr[7:0]==0)
		configure[4]<=0;
	else if (!Int_wil_output)
		configure[4]<=1;
end

//����
always @ (negedge rst_irq_reg or negedge Int_key)
begin
	if (!rst_irq_reg)
		configure[5]<=0;
	else if (!Int_key && !configure[5])
		configure[5]<=1;
end
//���˿���
always @ (negedge rst_irq_reg or negedge Int_FW)
begin
	if (!rst_irq_reg)
		configure[6]<=0;
	else if (!Int_FW && !configure[6])
		configure[6]<=1;
end
//һ����λ
always @ (negedge rst_irq_reg or negedge Int_FQ)
begin
	if (!rst_irq_reg)
		configure[7]<=0;
	else if (!Int_FQ && !configure[7])
		configure[7]<=1;
end

//----------------------------------------------------------------------------------//
//																				    //
//                              LCD,CCD,GIO����                                     //
//	                      														    //
//----------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------//
//																				    //
//                              �ֽ�λ����                                          //
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
output GIO1, GIO2, GIO3, GIO4;//ע��˴�Ϊ��д��i/o,����Izero
reg [8:0] counter1ms,counter1s;
reg [4:0] counter1min,counter1hour;
reg [3:0] counter1day;
reg clk1ms,clk1s,clk1min,clk1hour,clk1day;

assign GIO1=clk1s;
assign GIO2=clk1min;
assign GIO3=clk1hour;
assign GIO4=clk1day;

assign SW_CCD1=clk1s;
assign SW_CCD2=clk1s;
assign SW_CCD3=clk1min;



//-------------------------------test ccd switch------------------------------------//
//gen ms clk
always @ (posedge clk or negedge rst)
begin
	if (!rst)
		counter1ms<=0;
	else
		counter1ms<=counter1ms+1;
end

always @ (posedge clk or negedge rst)
begin
	if (!rst)
		clk1ms<=0;
	else if (counter1ms==0)
		clk1ms<=~clk1ms;
end

//gen s clk
always @ (posedge clk1ms or negedge rst)
begin
	if (!rst)
		counter1s<=0;
	else
		counter1s<=counter1s+1;
end

always @ (posedge clk1ms or negedge rst)
begin
	if (!rst)
		clk1s<=0;
	else if (counter1s==0)
		clk1s<=~clk1s;
end

//gen min clk
always @ (posedge clk1s or negedge rst)
begin
	if (!rst)
		counter1min<=0;
	else
		counter1min<=counter1min+1;
end

always @ (posedge clk1s or negedge rst)
begin
	if (!rst)
		clk1min<=0;
	else if (counter1min==0)
		clk1min<=~clk1min;
end

//gen hour clk
always @ (posedge clk1min or negedge rst)
begin
	if (!rst)
		counter1hour<=0;
	else
		counter1hour<=counter1hour+1;
end

always @ (posedge clk1min or negedge rst)
begin
	if (!rst)
		clk1hour<=0;
	else if (counter1hour==0)
		clk1hour<=~clk1hour;
end

//gen day clk
always @ (posedge clk1hour or negedge rst)
begin
	if (!rst)
		counter1day<=0;
	else
		counter1day<=counter1day+1;
end

always @ (posedge clk1hour or negedge rst)
begin
	if (!rst)
		clk1day<=0;
	else if (counter1day==0)
		clk1day<=~clk1day;
end

endmodule