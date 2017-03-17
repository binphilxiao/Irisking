module pld(clock,clk,nReset,hpirdy,nEXTBUS,BUFDIR,BUFDIR1,nFCE,nOE,nWE,nGCS,nFWE,nFRE,addr,data,wil,eint11,clkout,vp2clk0,vp2clk1,vp2ctl0,vp2ctl1,vp2ctl2,vCLK,Hs,Vs,De,nWAIT);
	input clock,clk,nReset,hpirdy;
	input nFCE,nFWE,nFRE,nOE,nWE;
	input vp2clk0,vp2clk1,vp2ctl0,vp2ctl1,vp2ctl2;
	output vCLK,Hs,Vs,De;
	output clkout,nWAIT;
	input [8:2] addr;
    //inout [7:0] data;  
	output [7:0] data;
	reg [7:0] data;
	input [5:0] nGCS;
	input [1:0] wil;

	output nEXTBUS;
	output BUFDIR;
	output BUFDIR1;
	output eint11;

    reg eint11;
	//reg [7:0] wdata;
	//reg [7:0] configure;
	reg [24:0] wigend_buf;
	reg [25:0] wigend_reg;
	reg [4:0] wigend_bitcnt;
	reg [12:0] wilclk_cnt;
	reg wil0,wil1;//延迟一个时钟周期的韦根数据信号
	reg overtime,overtime_delay1,overtime_delay2,overtime_delay3;
	reg wil_clk,wil_clk_tmp;//延迟两个时钟周期的韦根时钟信号，延迟一个周期的韦根时钟信号

	//assign data[7:0] = (!nGCS[3] && !nOE) ? wdata:8'hzz;
	assign BUFDIR1 = BUFDIR;
	assign wr_temp=nWE|nGCS[3];
	assign clkout=clock;
	assign nEXTBUS = nGCS[0] && nGCS[1] && nGCS[2] && nGCS[3] && nGCS[4] && nFCE && nFRE && nFWE;
	assign BUFDIR = nOE && nFRE;

	assign nWAIT=!hpirdy;
	assign De=vp2ctl0;
	assign vCLK=~vp2clk1;
	assign Hs=1;
    assign Vs=1;

	always @ (posedge wil_clk or negedge nReset)
	begin
	    if (!nReset)
			eint11<=1;
		else if (wigend_bitcnt==26)
			eint11<=0;
		else if (wigend_bitcnt<26)
		    eint11<=1;
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

	always @ (nGCS[3] or nOE or addr or wigend_reg)
	begin
		if (nGCS[3]==0 && nOE==0)
		begin
		    //if (addr[8:2]==0)
			//	wdata<=configure;
			if (addr[8:2]==1)
					data<=wigend_reg[7:0];
			else if (addr[8:2]==2)
					data<=wigend_reg[15:8];
			else if (addr[8:2]==3)
					data<=wigend_reg[23:16];
			else if (addr[8:2]==4)
					data<={6'h00,wigend_reg[25:24]};
			else
				data<=8'hzz;
		end
		else
			begin
			data<=8'hzz;
			end
	end

	/*always @ (negedge nReset or posedge wr_temp)
	begin
		if (!nReset)
		begin
				configure<=1;
		end
		else if (nGCS[3]==0 && addr[8:2]==0)
		begin
				configure<=data;
		end
	end*/
endmodule