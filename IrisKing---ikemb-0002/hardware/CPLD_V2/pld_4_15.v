module pld(
           clock,//ARM 输出的CLKOUT
		   clk,//晶振输出的时钟
		   nReset,
		   clkout,

		   nFCE,//总线信号
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

		   wil,//韦根输入信号
		   wil_out0,//三路韦根输出信号
		   wil_out1,
		   wil_out2,

		   vp2clk0, //DSP 液晶屏输入输出信号
		   vp2clk1,
		   vp2ctl0,
		   vp2ctl1,
		   vp2ctl2,
		   vCLK,
		   Hs,
		   Vs,
		   De,

		   lock,//防撬开关输入

		   cfg_rst,//一键复位输入

		   led_in,//LED 译码输入输出
		   led_out
		   );
	input clock,clk,nReset;
	input [5:0] nGCS;
	input nOE,nWE;

	reg [7:0] configure;

//----------------------------------------------------------------------------------//
//							       地址映射表   								    //
//                  OE                              WE                              //
//	                      														    //
// 00			   configure                        configure					    //
// 01			   wigend_reg[7:0]												    //
// 02			   wigend_reg[15:8]												    //
// 03			   wigend_reg[23:16]												//
// 04			   wigend_reg[25:24]												//
// 05																			    //
// 06																				//
// 07																			    //
// 08																			    //
// 09																			    //
// 0A																			    //
// 0B																			    //
// 0C																			    //
// 0D																			    //
// 0E																			    //
// 0F																			    //
//----------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------//
//							  confugure 配置字分配					         	    //
//                                    OE            WE                              //
//	                      														    //
// 0			                                                				    //
// 1			   							                  					    //
// 2			  							                  					    //
// 3			   						                    						//
// 4		防撬开关中断位	   			                         					//
// 5		一键复位中断位															//
// 6																				//
// 7																			    //
//----------------------------------------------------------------------------------//

//----------------------------------------------------------------------------------//
//																				    //
//                              ARM 总线缓冲部分                                    //
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
    assign nWAIT=!hpirdy;

//----------------------------------------------------------------------------------//
//																				    //
//                              DSP 液晶信号处理部分                                //
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
//                              LED 红外灯译码部分                                  //
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
//                              防撬开关处理部分                                    //
//	                      														    //
//----------------------------------------------------------------------------------//
	input lock;

	reg eint_lock;

	always @ (posedge clk or negedge nReset)//防撬输入信号与本时钟域同步
	begin
	    if (!nReset)
			eint_lock<=1;
		else
			eint_lock<=lock;
	end

//----------------------------------------------------------------------------------//
//																				    //
//                              一键复位处理部分                                    //
//	                      														    //
//----------------------------------------------------------------------------------//
	input cfg_rst;

	reg eint_cfgrst;

	always @ (posedge clk or negedge nReset)//一键复位输入信号与本时钟域同步
	begin
	    if (!nReset)
			eint_cfgrst<=1;
		else
			eint_cfgrst<=cfg_rst;
	end

//----------------------------------------------------------------------------------//
//																				    //
//                              韦根输出信号处理部分                                //
//	                      														    //
//----------------------------------------------------------------------------------//
	output [1:0] wil_out0,wil_out1,wil_out2;
	reg eint_wil_output;
	reg [25:0] wigend_reg_output;

//----------------------------------------------------------------------------------//
//																				    //
//                              韦根输入信号处理部分                                //
//	                      														    //
//----------------------------------------------------------------------------------//
    input [1:0] wil;

	reg [24:0] wigend_buf;
	reg [25:0] wigend_reg;
	reg [4:0] wigend_bitcnt;
	reg [12:0] wilclk_cnt;
	reg wil0,wil1;//延迟一个时钟周期的韦根数据信号
	reg wil_clk,wil_clk_tmp;//延迟两个时钟周期的韦根时钟信号，延迟一个周期的韦根时钟信号
	reg overtime,overtime_delay1,overtime_delay2,overtime_delay3;
	reg eint_wil_input;//韦根输入的中断信号

	always @ (posedge wil_clk or negedge nReset)
	begin
	    if (!nReset)
			eint_wil_input<=1;
		else if (wigend_bitcnt==26)
			eint_wil_input<=0;
		else if (wigend_bitcnt<26)
		    eint_wil_input<=1;
	end

	always @ (posedge clk or negedge nReset)//产生延迟一个时钟周期的韦根数据信号，产生延迟两个周期的韦根时钟信号
	begin
		if (!nReset)
		begin
			wil0<=1;
			wil1<=1;
			wil_clk_tmp<=1;
			wil_clk<=1;
		end
		else if ((!wil[0] && wil[1]) || (wil[0] && !wil[1]))
		begin			
			wil0<=wil[0];
			wil1<=wil[1];
			wil_clk_tmp<=0;
			wil_clk<=wil_clk_tmp;
		end
		else
		begin
			wil0<=1;
			wil1<=1;
			wil_clk_tmp<=1;
			wil_clk<=wil_clk_tmp;
		end
	end


    always @ (posedge clk or negedge nReset)//产生超时信号，延迟一个时钟周期
	begin
		if (!nReset)
		begin
			wilclk_cnt<=0;
			overtime<=1;
		end
		else if ((!wil[0] && wil[1]) || (wil[0] && !wil[1]))
		begin			
			wilclk_cnt<=0;
			overtime<=1;
		end
		else if (wilclk_cnt>=5000)   //clk=1MHz, Wiegand 2.2ms, so set overtime 5ms
		begin
			wilclk_cnt<=5000;
			overtime<=0;
		end
		else 
		begin
		    overtime<=1;
			wilclk_cnt<=wilclk_cnt+1;
		end
	end

	always @ (posedge clk or negedge nReset)
	begin
		if (!nReset)
		begin
			overtime_delay1<=1;
			overtime_delay2<=1;
			overtime_delay3<=1;
		end
		else
		begin
			overtime_delay1<=overtime;
			overtime_delay2<=overtime_delay1;
			overtime_delay3<=overtime_delay2;	
		end
	end

	always @ (negedge wil_clk or negedge nReset)
	begin
		if (!nReset)
		begin
			wigend_bitcnt<=0;
		end
		else if (!overtime_delay3)//如果超时，计数器全部清0，韦根数据缓冲区清0
		begin
			wigend_bitcnt<=1;
		end
		else if (wigend_bitcnt!=26)
		begin
			wigend_bitcnt<=wigend_bitcnt+1;
		end
		else if (wigend_bitcnt==26)
		begin
			wigend_bitcnt<=0;
		end		
	end

	always @ (negedge wil_clk or negedge nReset)
	begin
		if (!nReset)
		begin
			wigend_buf<=0;
			wigend_reg<=0;
		end
		else if (!overtime_delay3)//如果超时，计数器全部清0，韦根数据缓冲区清0
		begin
			if (!wil1 && wil0)
			begin
				wigend_buf<=1;
				wigend_reg<=0;
			end
			else if (!wil0 && wil1)
			begin
				wigend_buf<=0;
				wigend_reg<=0;
			end
		end
		else if (wigend_bitcnt!=25)
		begin
			if (!wil0 && wil1)
			begin
				wigend_buf<=wigend_buf<<1;
			end
			else if (!wil1 && wil0)
			begin
				wigend_buf<=(wigend_buf<<1)+1;
			end
		end
		else if (wigend_bitcnt==25)
		begin
			if (!wil0 && wil1)
			begin
				wigend_buf<=0;		
				wigend_reg<=wigend_buf<<1;
			end
			else if (!wil1 && wil0)
			begin
				wigend_buf<=0;
				wigend_reg<=(wigend_buf<<1)+1;
			end
		end
	end
//----------------------------------------------------------------------------------//
//																				    //
//                              总线处理部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
	reg [7:0] wdata;
	input [8:2] addr;
    inout [7:0] data;  
	output eint11;

	assign data[7:0] = (!nGCS[3] && !nOE) ? wdata:8'hzz;
	assign wr_temp=nWE|nGCS[3];
	assign eint11=eint_wil_output & eint_wil_input & eint_lock & eint_cfgrst;

	always @ (nGCS[3] or nOE or addr or wigend_reg or configure)
	begin
		if (nGCS[3]==0 && nOE==0)
		begin
		    if (addr[8:2]==0)
				wdata<=configure;
			if (addr[8:2]==1)
				wdata<=wigend_reg[7:0];
			else if (addr[8:2]==2)
				wdata<=wigend_reg[15:8];
			else if (addr[8:2]==3)
				wdata<=wigend_reg[23:16];
			else if (addr[8:2]==4)
				wdata<={6'h00,wigend_reg[25:24]};
			else
				wdata<=8'hzz;
		end
		else
			wdata<=8'hzz;
	end

	always @ (negedge nReset or posedge wr_temp)
	begin
		if (!nReset)
		begin
				configure[0]<=0;
		end
		else if (nGCS[3]==0 && addr[8:2]==0)
		begin
				configure[0]<=data;
		end
	end

	always @ (negedge nReset or posedge wr_temp)
	begin
		if (!nReset)
		begin
				configure[1]<=0;
		end
		else if (nGCS[3]==0 && addr[8:2]==14)
		begin
				configure[1]<=data;
		end
	end

	always @ (negedge nReset or posedge wr_temp)
	begin
		if (!nReset)
		begin
				configure[2]<=0;
		end
		else if (nGCS[3]==0 && addr[8:2]==2)
		begin
				configure[2]<=data;
		end
	end

	always @ (negedge nReset or posedge wr_temp)
	begin
		if (!nReset)
		begin
				configure[3]<=0;
		end
		else if (nGCS[3]==0 && addr[8:2]==3)
		begin
				configure[3]<=data;
		end
	end

	always @ (negedge eint_lock or posedge wr_temp)
	begin
		if (!eint_lock)
		begin
				configure[4]<=1;
		end
		else if (nGCS[3]==0 && addr[8:2]==4)
		begin
				configure[4]<=0;
		end
	end

	always @ (negedge eint_cfgrst or posedge wr_temp)
	begin
		if (!eint_cfgrst)
		begin
				configure[5]<=1;
		end
		else if (nGCS[3]==0 && addr[8:2]==5)
		begin
				configure[5]<=0;
		end
	end

	always @ (negedge nReset or posedge wr_temp)
	begin
		if (!nReset)
		begin
				configure[6]<=0;
		end
		else if (nGCS[3]==0 && addr[8:2]==6)
		begin
				configure[6]<=data;
		end
	end

	always @ (negedge nReset or posedge wr_temp)
	begin
		if (!nReset)
		begin
				configure[7]<=0;
		end
		else if (nGCS[3]==0 && addr[8:2]==7)
		begin
				configure[7]<=data;
		end
	end
endmodule