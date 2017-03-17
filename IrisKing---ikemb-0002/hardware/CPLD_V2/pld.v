module pld(
           clock,//ARM �����CLKOUT
		   clk,//���������ʱ��
		   nReset,
		   clkout,

		   nFCE,//�����ź�
		   nOE,
		   nWE,
		   nGCS,
		   nFWE,
		   nFRE,
		   addr,
		   data,
		   eint11,
		   nEXTBUS,
		   BUFDIR,
		   BUFDIR1,
		   hpirdy,
		   nWAIT,

		   wil,//Τ�������ź�
		   wil_out0,//��·Τ������ź�
		   wil_out1,
		   wil_out2,

		   vp2clk0, //DSP Һ������������ź�
		   vp2clk1,
		   vp2ctl0,
		   vp2ctl1,
		   vp2ctl2,
		   vCLK,
		   Hs,
		   Vs,
		   De,

		   lock,//���˿�������

		   cfg_rst,//һ����λ����

		   led_in,//LED �����������
		   led_out,
		   GPIO,//ͨ��IO
		   key_in,
		   key_out
		   );
	input clock,clk,nReset;
	input [5:0] nGCS;
	input nOE,nWE;

	reg [7:0] configure,configure2;

//----------------------------------------------------------------------------------//
//							       ��ַӳ���   								    //
//                  OE                              WE                              //
//	                      														    //
// 00			   configure                        configure					    //
// 01			   wigend_reg[7:0]					wigend_reg_out0[7:0]			//
// 02			   wigend_reg[15:8]					wigend_reg_out0[15:8]			//
// 03			   wigend_reg[23:16]				wigend_reg_out0[23:16]			//
// 04			   wigend_reg[25:24]				wigend_reg_out0[25:24]			//
// 05			                                    wigend_reg_out1[7:0]			//
// 06												wigend_reg_out1[15:8]			//
// 07												wigend_reg_out1[23:16]			//
// 08												wigend_reg_out1[25:24]			//
// 09												wigend_reg_out2[7:0]			//
// 0A												wigend_reg_out2[15:8]			//
// 0B												wigend_reg_out2[23:16]			//
// 0C												wigend_reg_out2[25:24]			//
// 0D												GPIO[4:0]					    //
// 0E				key_data[3:0]				   								    //
// 0F				configure2						configure2      			    //
//----------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------//
//							  confugure �����ַ���					         	    //
//          OE                                      WE                              //
//	                      														    //
// 0		Τ�����0����λ	                                                        //
// 1		Τ�����1����λ	   		                                           		//
// 2		Τ�����2����λ	  			                                           	//
// 3		Τ�����0�ж�λ				                    						//
// 4		Τ�����0�ж�λ	   			                         					//
// 5		Τ�����0�ж�λ															//
// 6		���˿����ж�λ															//
// 7		һ����λ�ж�λ															//
//----------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------//
//							  confugure2 �����ַ���					         	    //
//          OE                                      WE                              //
//	                      														    //
// 0		���̴����ж�λ  	                                                    //
// 1		 	   		                                           	             	//
// 2		   			                                                         	//
// 3		 				                    					            	//
// 4		 	   			                         				             	//
// 5		 														              	//
// 6		 													             		//
// 7															            		//
//----------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------//
//																				    //
//                              ARM ���߻��岿��                                    //
//	                      														    //
//----------------------------------------------------------------------------------//
	input nFCE,nFWE,nFRE;
	input hpirdy;
	output BUFDIR,BUFDIR1,nEXTBUS;
	output clkout,nWAIT;

	assign nEXTBUS = nGCS[0] && nGCS[1] && nGCS[2] && nGCS[3] && nGCS[4] && nFCE && nFRE && nFWE;
	assign BUFDIR = nOE && nFRE;
	assign BUFDIR1 = BUFDIR;
	assign clkout=clock;
    assign nWAIT=1;

//----------------------------------------------------------------------------------//
//																				    //
//                              DSP Һ���źŴ�����                                //
//	                      														    //
//----------------------------------------------------------------------------------//
	input vp2clk0,vp2clk1,vp2ctl0,vp2ctl1,vp2ctl2;
	output vCLK,Hs,Vs,De;

	assign De=vp2ctl0;
	assign vCLK=~vp2clk1;
	assign Hs=1;
    assign Vs=1;

//----------------------------------------------------------------------------------//
//																				    //
//                              GPIO ����                                           //
//	                      														    //
//----------------------------------------------------------------------------------//
	output [3:0] GPIO;
	reg [3:0] GPIO;

//----------------------------------------------------------------------------------//
//																				    //
//                              LED ��������벿��                                  //
//	                      														    //
//----------------------------------------------------------------------------------//
	input [1:0] led_in;
	output [3:0] led_out;

	reg [3:0] led_out;

	always @ (led_in)
	begin
		if (led_in==0)
			led_out<=0;
		else if (led_in==1)
			led_out<=3;
		else if (led_in==2)
			led_out<=1'hc;
		else
			led_out<=1'hf;
	end	

//----------------------------------------------------------------------------------//
//																				    //
//                              ���˿��ش�����                                    //
//	                      														    //
//----------------------------------------------------------------------------------//
	input lock;

//----------------------------------------------------------------------------------//
//																				    //
//                              һ����λ������                                    //
//	                      														    //
//----------------------------------------------------------------------------------//
	input cfg_rst;

//----------------------------------------------------------------------------------//
//																				    //
//                              һ����λ������                                    //
//	                      														    //
//----------------------------------------------------------------------------------//

	input [3:0] key_in;
	output [3:0] key_out;

	wire key_int;
	wire [3:0] key_data;

	Keyboard keyboard(.clk(clk),.rst(nReset),.in(key_in),.out(key_out),.data(key_data),.int(key_int));
//----------------------------------------------------------------------------------//
//																				    //
//                              Τ������źŴ�����                                //
//	                      														    //
//----------------------------------------------------------------------------------//
	output [1:0] wil_out0,wil_out1,wil_out2;

	wire eint_wil_output0,eint_wil_output1,eint_wil_output2;
	reg [25:0] wigend_reg_out0,wigend_reg_out1,wigend_reg_out2;

	Wigend_Out wigend_out0(.clk(clk),.rst(nReset),.wigend(wil_out0),.data(wigend_reg_out0),.int(eint_wil_output0),.en(configure[0]));

	Wigend_Out wigend_out1(.clk(clk),.rst(nReset),.wigend(wil_out1),.data(wigend_reg_out1),.int(eint_wil_output1),.en(configure[1]));

	Wigend_Out wigend_out2(.clk(clk),.rst(nReset),.wigend(wil_out2),.data(wigend_reg_out2),.int(eint_wil_output2),.en(configure[2]));


//----------------------------------------------------------------------------------//
//																				    //
//                              Τ�������źŴ�����                                //
//	                      														    //
//----------------------------------------------------------------------------------//
    input [1:0] wil;

	wire [25:0] wigend_reg;
	wire eint_wil_input;//Τ��������ж��ź�

	Wigend_In wigend_in(.clk(clk),.rst(nReset),.wigend(wil),.data(wigend_reg),.int(eint_wil_input));

//----------------------------------------------------------------------------------//
//																				    //
//                              ���ߴ�����                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
	input [8:2] addr;
    inout [7:0] data; 
	output eint11;

	reg [7:0] wdata;
	reg eint11;

	assign data[7:0] = (!nGCS[3] && !nOE) ? wdata:8'hzz;

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			eint11<=1;
		else if (eint_wil_output0==0 || eint_wil_output1==0 || eint_wil_output2==0 || eint_wil_input==0 || lock==0 || cfg_rst==0 || key_int==0)
			eint11<=0;
		else 
			eint11<=1;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wdata<=0;
		else if (nGCS[3]==0 && nOE==0 && addr[8:2]==0)
			wdata<=configure;
		else if (nGCS[3]==0 && nOE==0 && addr[8:2]==1)
			wdata<=wigend_reg[7:0];
		else if (nGCS[3]==0 && nOE==0 && addr[8:2]==2)
			wdata<=wigend_reg[15:8];
		else if (nGCS[3]==0 && nOE==0 && addr[8:2]==3)
			wdata<=wigend_reg[23:16];
		else if (nGCS[3]==0 && nOE==0 && addr[8:2]==4)
			wdata<={6'h00,wigend_reg[25:24]};
		else if (nGCS[3]==0 && nOE==0 && addr[8:2]==14)  
			wdata<={4'h00,key_data[3:0]};
		else if (nGCS[3]==0 && nOE==0 && addr[8:2]==15)
 	    	wdata<=configure2;
	end
    //------------------------------------------------------------------//
	//                          д��configure	                        //
	//------------------------------------------------------------------//
	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure[0]<=0;
		else if (configure[3]==1 &&  eint_wil_output0==1)
			configure[0]<=0;
		else if (nGCS[3]==0 && addr[8:2]==0 && nWE==0)
			configure[0]<=data[0];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure[1]<=0;
		else if (configure[4]==1 &&  eint_wil_output1==1)
			configure[1]<=0;
		else if (nGCS[3]==0 && addr[8:2]==0 && nWE==0)
			configure[1]<=data[1];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure[2]<=0;
		else if (configure[5]==1 &&  eint_wil_output2==1)
			configure[2]<=0;
		else if (nGCS[3]==0 && addr[8:2]==0 && nWE==0)
			configure[2]<=data[2];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure[3]<=0;
		else if (eint_wil_output0==0)
			configure[3]<=1;
		else if (nGCS[3]==0 && addr[8:2]==0 && nWE==0)
			configure[3]<=data[3];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure[4]<=0;
		else if (eint_wil_output1==0)
			configure[4]<=1;
		else if (nGCS[3]==0 && addr[8:2]==0 && nWE==0)
			configure[4]<=data[4];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure[5]<=0;
		else if (eint_wil_output2==0)
			configure[5]<=1;
		else if (nGCS[3]==0 && addr[8:2]==0 && nWE==0)
			configure[5]<=data[5];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure[6]<=0;
		else if (lock==0)
			configure[6]<=1;
		else if (nGCS[3]==0 && addr[8:2]==0 && nWE==0)
			configure[6]<=data[6];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure[7]<=0;
		else if (cfg_rst==0)
			configure[7]<=1;
		else if (nGCS[3]==0 && addr[8:2]==0 && nWE==0)
			configure[7]<=data[7];
	end
    //------------------------------------------------------------------//
	//                          д��wigend_reg_out0                     //
	//------------------------------------------------------------------//
	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out0[7:0]<=0;
		else if (nGCS[3]==0 && addr[8:2]==1 && nWE==0)
			wigend_reg_out0[7:0]<=data;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out0[15:8]<=0;
		else if (nGCS[3]==0 && addr[8:2]==2 && nWE==0)
			wigend_reg_out0[15:8]<=data;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out0[23:16]<=0;
		else if (nGCS[3]==0 && addr[8:2]==3 && nWE==0)
			wigend_reg_out0[23:16]<=data;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out0[25:24]<=0;
		else if (nGCS[3]==0 && addr[8:2]==4 && nWE==0)
			wigend_reg_out0[25:24]<=data[1:0];
	end
	//------------------------------------------------------------------//
	//                          д��wigend_reg_out1                     //
	//------------------------------------------------------------------//
	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out1[7:0]<=0;
		else if (nGCS[3]==0 && addr[8:2]==5 && nWE==0)
			wigend_reg_out1[7:0]<=data;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out1[15:8]<=0;
		else if (nGCS[3]==0 && addr[8:2]==6 && nWE==0)
			wigend_reg_out1[15:8]<=data;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out1[23:16]<=0;
		else if (nGCS[3]==0 && addr[8:2]==7 && nWE==0)
			wigend_reg_out1[23:16]<=data;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out1[25:24]<=0;
		else if (nGCS[3]==0 && addr[8:2]==8 && nWE==0)
			wigend_reg_out1[25:24]<=data[1:0];
	end
	//------------------------------------------------------------------//
	//                          д��wigend_reg_out2                     //
	//------------------------------------------------------------------//
	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out2[7:0]<=0;
		else if (nGCS[3]==0 && addr[8:2]==9 && nWE==0)
			wigend_reg_out2[7:0]<=data;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out2[15:8]<=0;
		else if (nGCS[3]==0 && addr[8:2]==10 && nWE==0)
			wigend_reg_out2[15:8]<=data;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out2[23:16]<=0;
		else if (nGCS[3]==0 && addr[8:2]==11 && nWE==0)
			wigend_reg_out2[23:16]<=data;
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			wigend_reg_out2[25:24]<=0;
		else if (nGCS[3]==0 && addr[8:2]==12 && nWE==0)
			wigend_reg_out2[25:24]<=data[1:0];
	end

	//------------------------------------------------------------------//
	//                          д��GPIO                                //
	//------------------------------------------------------------------//
	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			GPIO<=0;
		else if (nGCS[3]==0 && addr[8:2]==13 && nWE==0)
			GPIO<=data[3:0];
	end
	//------------------------------------------------------------------//
	//                          д��configure2	                        //
	//------------------------------------------------------------------//
	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure2[0]<=0;
		else if (configure2[3]==1 &&  key_int==1)
			configure2[0]<=0;
		else if (nGCS[3]==0 && addr[8:2]==15 && nWE==0)
			configure2[0]<=data[0];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure2[1]<=0;
		else if (nGCS[3]==0 && addr[8:2]==15 && nWE==0)
			configure2[1]<=data[1];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure2[2]<=0;
		else if (nGCS[3]==0 && addr[8:2]==15 && nWE==0)
			configure2[2]<=data[2];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure2[3]<=0;
		else if (nGCS[3]==0 && addr[8:2]==15 && nWE==0)
			configure2[3]<=data[3];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure2[4]<=0;
		else if (nGCS[3]==0 && addr[8:2]==15 && nWE==0)
			configure2[4]<=data[4];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure2[5]<=0;
		else if (nGCS[3]==0 && addr[8:2]==15 && nWE==0)
			configure2[5]<=data[5];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure2[6]<=0;
		else if (nGCS[3]==0 && addr[8:2]==15 && nWE==0)
			configure2[6]<=data[6];
	end

	always @ (negedge nReset or posedge clk)
	begin
		if (!nReset)
			configure2[7]<=0;
		else if (nGCS[3]==0 && addr[8:2]==15 && nWE==0)
			configure2[7]<=data[7];
	end
endmodule