module buffer(clk,nReset,nEXTBUS,BUFDIR,BUFDIR1,nFCE,nOE,nWE,nGCS,nFWE,nFRE,addr,data,eint0,eint1,eint2,eint3,eint11,wil_in,wil_out,G5V_IO,FPGA_IO,test);
	input clk,nReset;
	output [3:0] test;
//----------------------------------------------------------------------------------//
//																				    //
//                              韦根输入部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
	input [1:0] wil_in;
	wire [25:0] wigend_reg_in;
	wire Int_wil_input;
	reg wil_in_irq_flag;
	Wigend_In wigend_in(.clk(clk),.rst(nReset),.wigend(wil_in),.data(wigend_reg_in),.int(Int_wil_input));
//----------------------------------------------------------------------------------//
//																				    //
//                              韦根输出部分                                        //
//	                      														    //
//----------------------------------------------------------------------------------//
	output [1:0] wil_out;
	reg [25:0] wigend_reg_out;
	wire Int_wil_output;
	reg wil_out_en;
	reg wil_out_irq_flag;
	Wigend_Out wigend_out(.clk(clk),.rst(nReset),.wigend(wil_out),.data(wigend_reg_out),.int(Int_wil_output),.en(wil_out_en));
//----------------------------------------------------------------------------------//
//																				    //
//                              中断                                                //
//	                      														    //
//----------------------------------------------------------------------------------//
	input eint0,eint3;
	output eint1,eint2,eint11;
	assign eint2=1;
	assign eint11=1;
	assign eint1 = (Int_wil_output) & (Int_wil_input);
//----------------------------------------------------------------------------------//
//																				    //
//                              总线处理部分                                        //
//	addr			!OE							!nWE						     	//
//																					//
//	0				configure					configure							//
//	1-4				wigend_reg_out				wigend_reg_out						//
//  5               GIO                         GIO 								//
//  6-9             wigend_reg_in               wigend_reg_in                       //
//  13              status														    //  
//  14              test                        test								//
//	15				DEVICE ID														//
//																					//
//----------------------------------------------------------------------------------//
//																				    //
//                              configure寄存器分配                               	//
//	3		韦根输出使能															//
//	                      														    //
//----------------------------------------------------------------------------------//
//																				    //
//                              status  寄存器分配                               	//
//	0		韦根输入中断标志位(1:有中断  0:无中断)									//
//	4		韦根输出中断标志位(1:有中断  0:无中断)									//
//	                      														    //
//----------------------------------------------------------------------------------//
	input [8:0] addr;      
	inout [7:0] data;
	input [5:0] nGCS;
	input nFCE,nFWE,nFRE,nOE,nWE;
	output nEXTBUS;
	output BUFDIR;
	output BUFDIR1;

	reg [7:0] wdata;

	assign BUFDIR1 = BUFDIR;
	//assign nEXTBUS = ((nGCS[1] && nGCS[2] && nGCS[3] && nGCS[4])||(nOE && nWE))  && (nFCE||(nFRE && nFWE));
	//assign BUFDIR =  ((nGCS[1] && nGCS[2] && nGCS[3] && nGCS[4])||nOE)  && (nFCE||nFRE);

	assign nEXTBUS = nGCS[1] && nGCS[2] && nGCS[3] && nGCS[4] && nFCE;
	assign BUFDIR = nOE && nFRE;
	assign data[7:0] = (!nGCS[3] && !nOE) ? wdata[7:0] : 8'hzz;




//------------------------------------------------------总线输入处理ioread------------------------------------------------------//
	always @ (nGCS[3] or nOE or nWE or addr or  wigend_reg_out or wil_out_en or wil_out_irq_flag or wil_in_irq_flag or FPGA_IO or G5V_IO)
	begin
		//中断辅助判断
		if (nGCS[3]==0 && nOE==0 && nWE==1 && addr[8:0]==0)
		    wdata[7:0]<={4'h0,wil_out_en,3'h0};
		//韦根输入
		else if (nGCS[3]==0 && nOE==0 && nWE==1 && addr[8:0]==1)
		    wdata<=wigend_reg_out[7:0];
		else if (nGCS[3]==0 && nOE==0 && nWE==1 && addr[8:0]==2)
		    wdata<=wigend_reg_out[15:8];
		else if (nGCS[3]==0 && nOE==0 && nWE==1 && addr[8:0]==3)
		    wdata<=wigend_reg_out[23:16];
		else if (nGCS[3]==0 && nOE==0 && nWE==1 && addr[8:0]==4)
  			wdata<={6'h00,wigend_reg_out[25:24]};
		else if (nGCS[3]==0 && nOE==0 && nWE==1 && addr[8:0]==5)
  			wdata<={2'h0,FPGA_IO,G5V_IO,4'h0};
		else if (nGCS[3]==0 && nOE==0 && nWE==1 && addr[8:0]==13)
			wdata<={3'h0,wil_out_irq_flag,3'h0,wil_in_irq_flag};//DEVICE ID
		else if (nGCS[3]==0 && nOE==0 && nWE==1 && addr[8:0]==15)
			wdata<=8'h74;//DEVICE ID
	end
	//------------------------------------------------------总线输出出处理iowrite------------------------------------------------------//
	//韦根输出处理7-0
	always @ (negedge nReset or negedge nWE)
	begin
		if (!nReset)
			wigend_reg_out[7:0]<=0;
		else if (nGCS[3]==0 && nOE==1 &&  nWE==0 && addr[8:0]==1)
			wigend_reg_out[7:0]<=data;
	end
	//韦根输出处理15-8
	always @ (negedge nReset or negedge nWE)
	begin
		if (!nReset)
			wigend_reg_out[15:8]<=0;
		else if (nGCS[3]==0 && nOE==1 &&  nWE==0 && addr[8:0]==2)
			wigend_reg_out[15:8]<=data;
	end
	//韦根输出处理23-16
	always @ (negedge nReset or negedge nWE)
	begin
		if (!nReset)
			wigend_reg_out[23:16]<=0;
		else if (nGCS[3]==0 && nOE==1 &&  nWE==0 && addr[8:0]==3)
			wigend_reg_out[23:16]<=data;
	end
	//韦根输出处理25-24
	always @ (negedge nReset or negedge nWE)
	begin
		if (!nReset)
			wigend_reg_out[25:24]<=0;
		else if (nGCS[3]==0 && nOE==1 &&  nWE==0 && addr[8:0]==4)
			wigend_reg_out[25:24]<=data;
	end
	
	
	//韦根输入中断
	always @ (posedge clk or negedge nReset)
	begin
		if (!nReset)
			wil_in_irq_flag<=0;
		else if (nGCS[3]==0 && nOE==1 && nWE==0 && addr[8:0]==13)
			wil_in_irq_flag<=data[0];
		else if (!Int_wil_input)
			wil_in_irq_flag<=1;
	end				    
	//韦根输出使能
	always @ (negedge Int_wil_output or negedge nWE)
	begin
		if (!Int_wil_output)
			wil_out_en<=0;
		else if (nGCS[3]==0 && nOE==1 && nWE==0 && addr[8:0]==0)
			wil_out_en<=data[3];
	end
	//韦根输出中断
	always @ (posedge clk or negedge nReset)
	begin
		if (!nReset)
			wil_out_irq_flag<=0;
		else if (nGCS[3]==0 && nOE==1 && nWE==0 && addr[8:0]==13)
			wil_out_irq_flag<=data[4];
		else if (!Int_wil_output)
			wil_out_irq_flag<=1;
	end		   
	//----------------------------------------------------------------------------------//
	//																				    //
	//                              字节位分配                                          //
	//                                                                                  //
	//                  4                   G5V_IO(output only now)                     //
	//                  5                   FPGA_IO(output only now)                    //
	//----------------------------------------------------------------------------------//
	output G5V_IO,FPGA_IO;
	reg  G5V_IO,FPGA_IO;
	
	always @ (negedge nReset or negedge nWE)
	begin
		if (!nReset)
			G5V_IO<=0;
		else if (nGCS[3]==0 && nOE==1 && nWE==0 && addr[8:0]==5)
			G5V_IO<=data[4];
	end
	
	always @ (negedge nReset or negedge nWE)
	begin
		if (!nReset)
			FPGA_IO<=0;
		else if (nGCS[3]==0 && nOE==1 && nWE==0 && addr[8:0]==5)
			FPGA_IO<=data[5];
	end
	//----------------------------------------------------------------------------------//
	//																				    //
	//                             unused处理                                           //
	//	                      														    //
	//----------------------------------------------------------------------------------//
	assign test[0]=1;
	assign test[1]=eint0 | eint3 | nGCS[5];
	assign test[2]=nReset;
	assign test[3]=wil_out_en;
endmodule