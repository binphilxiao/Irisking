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
	reg [7:0] wigend_buf;
	reg [7:0] wigend_reg;
	reg [2:0] wigend_bitcnt;

	wire wil_clk;

    assign data[7:0] = (!nGCS[3] && !nOE ) ? wdata:8'hzz;
    assign BUFDIR1 = BUFDIR;
	assign wr_temp=nWE|nGCS[3];
	assign clkout=clock;
    assign nEXTBUS = nGCS[0] && nGCS[1] && nGCS[2] && nGCS[3] && nGCS[4] && nGCS[5] && nFCE && nFRE && nFWE;
    assign BUFDIR = nOE && nFRE;

	assign nWAIT=!hpirdy;
	assign test[0]=hpirdy;
	assign test[1]=1;
	assign test[2]=1;
	assign test[3]=1;
    assign eint11=(wigend_bitcnt==7)?0:1;
	assign De=vp2ctl0;
	assign vCLK=~vp2clk1;

	assign wil_clk=wil[0] & wil[1];


	always @ (negedge wil_clk or negedge nReset)
	begin
	    if (!nReset)
		begin
			wigend_buf<=0;
			wigend_bitcnt<=0;
			wigend_reg<=0;
		end
		if (!wil[0] && wigend_bitcnt!=7 && nReset)
		begin
			wigend_buf<=wigend_buf<<1;
			wigend_bitcnt<=wigend_bitcnt+1;
			wigend_reg<=wigend_reg;
        end
		else if (!wil[1] && wigend_bitcnt!=7 && nReset)
        begin
			wigend_buf<=(wigend_buf+1)<<1;
			wigend_bitcnt<=wigend_bitcnt+1;
            wigend_reg<=wigend_reg;
		end
		else if (!wil[0] && wigend_bitcnt==7 && nReset)
		begin
			wigend_buf<=wigend_buf<<1;
			wigend_bitcnt<=0;
			wigend_reg<=wigend_buf;
		end
		else if (!wil[1] && wigend_bitcnt==7 && nReset)
		begin 
			wigend_buf<=(wigend_buf+1)<<1;
			wigend_bitcnt<=0;
			wigend_reg<=wigend_buf+1;
		end
	end

	always @ (nGCS[3] or nOE or addr or configure or wigend_reg)
	begin
		if (nGCS[3]==0 && nOE==0)
		begin
			if (addr[8:2]==0)
				wdata<=configure;                     
			else if (addr[8:2]==1)
			    wdata<=wigend_reg;
			else
			    wdata<=8'hzz;
		end
		else
 				wdata<=8'hzz;
		begin
		end
	end

always @ (negedge nReset or posedge wr_temp)
	begin
		if (!nReset)
		begin
			configure<=0;
		end
		else if (nGCS[3]==0)
		begin
			if (addr[8:2]==0)
                configure<=data;
		end
	end
endmodule