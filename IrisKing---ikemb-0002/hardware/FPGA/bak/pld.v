module pld(
                CLK,
                nOE,          //OUTPUT ENABLE
                LUPWAIT,  //nWAIT
                nCPLDCE,           //CHIP ENABLE
                nNANDFWE,        //WRITE ENABLE
                nHRESET,
                addr,
                data,

                //��·Τ�����룬һ·Τ�����
                WIL_IN, WIL_IN_A, WIL_IN_B,
                WIL_OUT,

				//Τ�����ʹ��
				GPIO20,

                //��ʱ����
                GPIO21, GPIO22, GPIO23,
                //IRQ�����˿��ء���λ����
                IRQ, FQ, FW,

                //LED���߿��ƣ�����Ч
                DSP_LED1, DSP_LED2,
                EXP_LED1, EXP_LED2, EXP_LED3, EXP_LED4,

                //�����ж�LCD��CCD�ĵ���
                GPIO26, GPIO27,
                //LCD���ߣ�����Ч
                SW_LCD,
                //CCD���ߣ�����Ч
                SW_CCD1, SW_CCD2, SW_CCD3,

                //AD���ģ��
                AD_DO, AD_IO_CLK, AD_CS,

                 //IO�Ӳ��
                FPGA_IO1, FPGA_IO2, FPGA_IO3, FPGA_IO4,

                //����
                KEY1, KEY2, KEY3, KEY4, KEY5, KEY6, KEY7, KEY8,

				//���Թܽ�
				test
                );

input CLK, nOE, nCPLDCE, nNANDFWE, nHRESET;
//�͵�ƽ��ֹ ���ߴ���
output LUPWAIT;
assign LUPWAIT=1;

output [1:0] test;


//----------------------------------------------------------------------------------//
//																				    //
//                              ʱ��PLL����                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
//wire CLK;
//altpll0 times(.inclk0(CLKin),.c0(CLK));


//----------------------------------------------------------------------------------//
//																				    //
//                              Τ�����벿��                                        //
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
//                              Τ���������                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
//Τ���������λ
input GPIO20;
output [1:0] WIL_OUT;
wire [1:0] WIL_OUT;
wire eint_wil_output;
reg [25:0] wigend_reg_out;
Wigend_Out wigend_out0(.clk(CLK),.rst(nHRESET),.wigend(WIL_OUT),.data(wigend_reg_out),.int(eint_wil_output),.en(configure[3]));


//----------------------------------------------------------------------------------//
//																				    //
//                              ���ߴ�����                                        //
//	addr			!OE							!nNANDFWE							//
//																					//
//	0				configure					configure							//
//	1-4				wigend_reg_in1				wigend_reg_out						//
//	5-8				wigend_reg_in2													//
//	9-12			wigend_reg_in3													//
//	13				AD																//
//	14				����															//
//	15																				//
//																					//
//----------------------------------------------------------------------------------//
//																				    //
//                              �жϸ����жϲ���                               		//
//	0		Τ������1�ж�																//
//	1		Τ������2�ж�															//
//	2		Τ������3�ж�															//
//	3		Τ�����ʹ��															//
//	4		Τ������ж�															//
//	5																				//
//	6		���˿����ж�															//
//	7		һ����λ�ж�															//
//	                      														    //
//----------------------------------------------------------------------------------//
input [7:0] addr;
inout [7:0] data;
reg [7:0] wdata;
reg [7:0] ADdata;      //AD result data register
reg [7:0] configure;

assign data[7:0] = (!nCPLDCE && !nOE) ? wdata[7:0] : 8'hzz;

//�������봦��ioread
always @ (nCPLDCE or nOE or nNANDFWE or addr or configure or wigend_reg_in1 or wigend_reg_in2 or wigend_reg_in3 or ADdata)
begin
//�жϸ����ж�
if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==0)
    wdata[7:0]<=configure;
//Τ������1
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==4)
    wdata<=wigend_reg_in1[7:0];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==3)
    wdata<=wigend_reg_in1[15:8];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==2)
    wdata<=wigend_reg_in1[23:16];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==1)
    wdata<={6'h00,wigend_reg_in1[25:24]};
//Τ������2
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==8)
    wdata<=wigend_reg_in2[7:0];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==7)
    wdata<=wigend_reg_in2[15:8];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==6)
    wdata<=wigend_reg_in2[23:16];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==5)
    wdata<={6'h00,wigend_reg_in2[25:24]};
//Τ������3
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==12)
    wdata<=wigend_reg_in3[7:0];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==11)
    wdata<=wigend_reg_in3[15:8];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==10)
    wdata<=wigend_reg_in3[23:16];
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==9)
    wdata<={6'h00,wigend_reg_in3[25:24]};
//AD�����봦��
else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==13)
	wdata<=ADdata;
//�������봦��
//else if (nCPLDCE==0 && nOE==0 && nNANDFWE==1 && addr[7:0]==14)
else
	wdata<=0;
end

//�������������iowrite
//Τ���������7-0
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	wigend_reg_out[7:0]<=0;
else if (nCPLDCE==0 && nOE==1 &&  nNANDFWE==0 && addr[7:0]==1)
	wigend_reg_out[7:0]<=data;
else
	wigend_reg_out[7:0]<=wigend_reg_out[7:0];
end
//Τ���������15-8
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	wigend_reg_out[15:8]<=0;
else if (nCPLDCE==0 && nOE==1 &&  nNANDFWE==0 && addr[7:0]==2)
	wigend_reg_out[15:8]<=data;
else
	wigend_reg_out[15:8]<=wigend_reg_out[15:8];
end
//Τ���������23-16
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	wigend_reg_out[23:16]<=0;
else if (nCPLDCE==0 && nOE==1 &&  nNANDFWE==0 && addr[7:0]==3)
	wigend_reg_out[23:16]<=data;
else
	wigend_reg_out[23:16]<=wigend_reg_out[23:16];
end
//Τ���������25-24
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	wigend_reg_out[25:24]<=0;
else if (nCPLDCE==0 && nOE==1 &&  nNANDFWE==0 && addr[7:0]==4)
	wigend_reg_out[25:24]<=data;
else
	wigend_reg_out[25:24]<=wigend_reg_out[25:24];
end


//Τ������1�ж�
always @ (negedge nHRESET or posedge eint_wil_input1 or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[0]<=1;
else if (configure[0] && eint_wil_input1)
	configure[0]<=0;					//��ֵ0����ʾ�ж�����
else if (!configure[0] && !eint_wil_input1 && nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)
	configure[0]<=data[0];				//��1����ʾ�жϴ������
else
	configure[0]<=configure[0];
end
//Τ������2�ж�
always @ (negedge nHRESET or posedge eint_wil_input2 or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[1]<=1;
else if (configure[1] && eint_wil_input2)
	configure[1]<=0;					//��ֵ0����ʾ�ж�����
else if (!configure[1] && !eint_wil_input2 && nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)
	configure[1]<=data[1];				//��1����ʾ�жϴ������
else
	configure[1]<=configure[1];
end
//Τ������3�ж�
always @ (negedge nHRESET or posedge eint_wil_input3 or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[2]<=1;
else if (configure[2] && eint_wil_input3)
	configure[2]<=0;					//��ֵ0����ʾ�ж�����
else if (!configure[2] && !eint_wil_input3 && nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)
	configure[2]<=data[2];				//��1����ʾ�жϴ������
else
	configure[2]<=configure[2];
end
//Τ�����ʹ��
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[3]<=1;
else if (nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)
	configure[3]<=data[3];
end
//Τ������ж�
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
else if (configure[4] && eint_wil_output && nNANDFWE)		//eint_wil_output������
	configure[4]<=0;					//��ֵ1����ʾ�ж�����
else if (!configure[4] && !eint_wil_output && nCPLDCE==0 && nOE==1 && nNANDFWE==0 && addr[7:0]==0)			//nNANDFWE�½���
	configure[4]<=data[4];				//��0����ʾ�жϴ������
else
	configure[4]<=configure[4];
end
*/
//����
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[5]<=1;
else
	configure[5]<=configure[5];
end
//���˿���
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[6]<=1;
else
	configure[6]<=configure[6];
end
//һ����λ
always @ (negedge nHRESET or negedge nNANDFWE)
begin
if (!nHRESET)
	configure[7]<=1;
else
	configure[7]<=configure[7];
end
//FPGA_IO�������


//----------------------------------------------------------------------------------//
//																				    //
//                              LED����                                        //
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
//                              LCD, CCD����                                        //
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
//                              AD���ģ��                                        	//
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
//                              IO�Ӳ��                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
output FPGA_IO1, FPGA_IO2, FPGA_IO3, FPGA_IO4;
reg FPGA_IO1, FPGA_IO2, FPGA_IO3, FPGA_IO4;


//----------------------------------------------------------------------------------//
//																				    //
//                              ����                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
input KEY1, KEY2, KEY3, KEY4, KEY5, KEY6, KEY7, KEY8;
wire key_int;


//----------------------------------------------------------------------------------//
//																				    //
//                              ���ˡ���λ���ش�����                                        //
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