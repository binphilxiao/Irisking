module buffer(clock,clk,nReset,hpirdy,nEXTBUS,BUFDIR,BUFDIR1,nFCE,nOE,nWE,nGCS,nFWE,nFRE,addr,data,wil,eint11,clkout,vp2clk0,vp2clk1,vp2ctl0,vp2ctl1,vp2ctl2,vCLK,Hs,Vs,De,nWAIT,test);
	input clock,clk,nReset,hpirdy;
	input nFCE,nFWE,nFRE,nOE,nWE;
	input vp2clk0,vp2clk1,vp2ctl0,vp2ctl1,vp2ctl2;
	output vCLK,Hs,Vs,De;
	output clkout,nWAIT;
	input [8:2] addr;      
	inout [7:0] data;
	input [5:0] nGCS;
	input [1:0] wil;

	output nEXTBUS;
	output BUFDIR;
	output BUFDIR1;
	output eint11;
	output [3:0] test;


	reg [7:0] wdata;
	reg [7:0] configure;
	reg [25:0] wigend_buf;
	reg [25:0] wigend_reg;
	reg [4:0] wigend_bitcnt;
	reg [12:0] wilclk_cnt;
	reg [12:0] wilclk_cnt1;
	reg wil0,wil1;
	reg overtime;

	wire wil_clk;

	assign data[7:0] = (!nGCS[3] && !nOE ) ? wdata:8'hzz;
	assign BUFDIR1 = BUFDIR;
	assign wr_temp=nWE|nGCS[3];
	assign clkout=clock;
	assign nEXTBUS = nGCS[0] && nGCS[1] && nGCS[2] && nGCS[3] && nGCS[4] && nFCE && nFRE && nFWE;
	assign BUFDIR = nOE && nFRE;

	assign nWAIT=!hpirdy;

	assign test[0]=eint11;
	assign test[1]=configure[0];
	assign test[2]=1;
	assign test[3]=1;
	assign eint11=(wigend_bitcnt==25)?0:1;
	assign De=vp2ctl0;
	assign vCLK=~vp2clk1;
	assign wil_clk=wil0&wil1;

	always @ (posedge clk or negedge nReset)
	begin
		if (!nReset)
		begin
			wilclk_cnt1<=0;
			wil0<=1;
			wil1<=1;
			wilclk_cnt<=0;
			overtime<=1;
		end
		else if (!wil[0] || !wil[1])
		begin
			wilclk_cnt1<=0;
			wil0<=wil[0];
			wil1<=wil[1];
			wilclk_cnt<=wilclk_cnt1;
			overtime<=1;
		end
		else if (wilclk_cnt1==5000)   //clk=1MHz, Wiegand 2.2ms, so set overtime 5ms
		begin
			wilclk_cnt1<=0;
			wilclk_cnt<=0;
			overtime<=0;
		end
		else 
		begin
			wilclk_cnt1<=wilclk_cnt1+1;
			wil0<=wil[0];
			wil1<=wil[1];
			wilclk_cnt<=wilclk_cnt1;
		end
	end

	always @ (negedge wil_clk or negedge nReset)
	begin
		if (!nReset)
		begin
			wigend_buf<=0;
			wigend_bitcnt<=0;
			wigend_reg<=0;
		end
		else if (!wil0 && nReset && !overtime)
		begin
			wigend_buf<=0;
			wigend_bitcnt<=0;
		end
		else if (!wil1 && nReset && !overtime)
		begin
			wigend_buf<=0;
			wigend_bitcnt<=0;
		end
		
		else if (wigend_bitcnt!=25 && nReset && overtime && configure)
		begin
			if (!wil0)
			begin
				wigend_buf<=wigend_buf<<1;
				wigend_bitcnt<=wigend_bitcnt+1;
			end
			else if (!wil1)
			begin
				wigend_buf<=(wigend_buf<<1)+1;
				wigend_bitcnt<=wigend_bitcnt+1;
			end
		end
		else if (wigend_bitcnt==25 && nReset && overtime && configure)
		begin
			if (!wil0)
			begin
				wigend_buf<=0;
				wigend_bitcnt<=0;
				wigend_reg<=wigend_buf<<1;
			end
			else if (!wil1)
			begin
				wigend_buf<=0;
				wigend_bitcnt<=0;
				wigend_reg<=(wigend_buf<<1)+1;
			end
		end		
/*		
		else if (!wil0 && wigend_bitcnt!=25 && nReset && overtime)
		begin
			wigend_buf<=wigend_buf<<1;
			wigend_bitcnt<=wigend_bitcnt+1;
		end
		else if (!wil1 && wigend_bitcnt!=25 && nReset && overtime)
		begin
			wigend_buf<=(wigend_buf<<1)+1;
			wigend_bitcnt<=wigend_bitcnt+1;
		end
		else if (!wil0 && wigend_bitcnt==25 && nReset && overtime)
		begin
			wigend_buf<=0;
			wigend_bitcnt<=0;
			wigend_reg<=wigend_buf<<1;
		end
		else if (!wil1 && wigend_bitcnt==25 && nReset && overtime)
		begin
			wigend_buf<=0;
			wigend_bitcnt<=0;
			wigend_reg<=(wigend_buf<<1)+1;
		end
*/
	end

	always @ (nGCS[3] or nOE or addr or configure or wigend_reg)
	begin
		if (nGCS[3]==0 && nOE==0)
		begin
			if (addr[8:2]==0)
				wdata<=configure;                     
			else if (addr[8:2]==1)
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
			configure<=8'hff;
		end
		else if (nGCS[3]==0)
		begin
			if (addr[8:2]==0)
				configure<=data;
		end
	end
	
endmodule