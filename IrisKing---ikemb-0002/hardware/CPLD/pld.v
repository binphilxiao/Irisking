module pld(clk,nCPLDCE,nNANDFWE,nOE_nFRE,nHRESET,wil,addr,data,IRQ4,AD_CS,AD_CLK,AD_DOO,test);
input clk;
input nCPLDCE;    //equal to nRESET
input nNANDFWE;   //Local Bus Write Enable

input nOE_nFRE;   //Local Bus Read Enable
input nHRESET;

input [1:0] wil;
input AD_DOO;
//input [6:0] addr;      /*addr[22],addr[21],addr[20],addr[3],addr[2],addr[1],addr[0]*/
//inout [7:0] data;
input [6:0] addr;
input [7:0] data;

output IRQ4;
output AD_CS;
output AD_CLK;
output [3:0] test;

reg wil0,wil1;
reg overtime;
reg [12:0] wilclk_cnt;
reg [12:0] wilclk_cnt1;
reg [25:0] wigend_buf;
reg [25:0] wigend_reg;
reg [4:0] wigend_bitcnt;
reg [7:0] wdata;       //weigent data register
reg [7:0] configure;
reg [7:0] ADdata;      //AD result data register
reg [7:0] ADO;         //serial to parallel register
reg [4:0] ADcnt;

wire wil_clk;
assign wil_clk=wil0&wil1;

assign IRQ4=(wigend_bitcnt==25)?0:1;
assign wr_temp=nNANDFWE|addr[0];
assign  AD_CLK=(ADcnt>=0 && ADcnt<=7)?clk:0;
//assign data[7:0]=(!addr[0]&&!nOE_nFRE)?wdata:((addr[0]&&!nOE_nFRE)?ADdata:8'hzz);
//assign data=ADdata;

/*
assign data[0]=wil1;
assign data[1]=wigend_buf[1];
assign data[2]=wigend_buf[2];
assign data[3]=wigend_buf[3];

assign data[4]=wigend_bitcnt[0];
assign data[5]=wigend_buf[5];
assign data[6]=wigend_buf[24];
assign data[7]=wigend_buf[25];

assign addr[0]=wigend_reg[5];
assign addr[1]=wigend_reg[6];
assign addr[2]=wigend_reg[7];
assign addr[3]=wigend_reg[8];
assign addr[4]=wigend_reg[9];
assign addr[5]=wigend_reg[10];
assign addr[6]=wigend_reg[11];
*/

assign test[0]=wigend_reg[0];		//R197
assign test[1]=wigend_reg[1];		//R198
assign test[2]=wigend_reg[2];		//R199
assign test[3]=wigend_reg[3];		//R200

always @ (posedge clk or negedge nCPLDCE)
begin
	if (!nCPLDCE)
	begin
		wil0<=1;
		wil1<=1;
		wilclk_cnt<=0;
		wilclk_cnt1<=0;
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
		wilclk_cnt<=0;
		wilclk_cnt1<=0;
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

always @ (negedge wil_clk or negedge nCPLDCE)
begin
	if (!nCPLDCE)
	begin
		wigend_buf<=0;
		wigend_reg<=0;
		wigend_bitcnt<=0;
	end
	else if (!wil0 && nCPLDCE && !overtime)
	begin
		wigend_buf<=0;
		wigend_bitcnt<=0;
	end
	else if (!wil1 && nCPLDCE && !overtime)
	begin
		wigend_buf<=0;
		wigend_bitcnt<=0;
	end
	else if (wigend_bitcnt!=25 && nCPLDCE && overtime)// && configure)
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
	else if (wigend_bitcnt==25 && nCPLDCE && overtime)// && configure)
	begin
		if (!wil0)
		begin
			wigend_buf<=wigend_buf<<1;
			wigend_bitcnt<=0;
			wigend_reg<=wigend_buf<<1;
		end
		else if (!wil1)
		begin
			wigend_buf<=(wigend_buf<<1)+1;
			wigend_bitcnt<=0;
			wigend_reg<=(wigend_buf<<1)+1;
		end
	end
end

/*
always @ (addr[0] or nOE_nFRE or addr or configure or wigend_reg)
begin
	if (addr[0]==0 && nOE_nFRE==0)
	begin
		if (addr[6:0]==0)
			wdata<=configure;                     
		else if (addr[6:0]==1)
			wdata<=wigend_reg[7:0];
		else if (addr[6:0]==2)
			wdata<=wigend_reg[15:8];
		else if (addr[6:0]==3)
			wdata<=wigend_reg[23:16];
		else if (addr[6:0]==4)
			wdata<={6'h00,wigend_reg[25:24]};
		else
			wdata<=8'hzz;
	end
	else
		wdata<=8'hzz;
end

always @ (negedge nCPLDCE or posedge wr_temp)
begin
	if (!nCPLDCE)
	begin
		configure<=8'hff;
	end
	else if (addr[0]==0)
	begin
		if (addr[6:0]==0)
			configure<=data;
	end
end
*/

always @ (negedge nCPLDCE or negedge clk)
begin
   if (!nCPLDCE)
	  ADcnt<=0;
   else if (ADcnt==30)      // 30us for AD converting
      begin
         ADcnt<=0;
      end
   else
         ADcnt<=ADcnt+1;
end

assign AD_CS=(ADcnt>=0 && ADcnt<=7 || ADcnt==30)?0:1;

always @ (negedge nCPLDCE or posedge clk)
begin
   if (!nCPLDCE)
   begin
	  	ADO<=0;
   end
	else if (ADcnt>=8 && ADcnt<=30)
       	ADO<=0;
   else
		ADO<=ADO<<1|AD_DOO;
end

always @ (negedge nCPLDCE or posedge clk)
begin
	if(!nCPLDCE)
	begin
	  ADdata<=0;
    end
	else if (ADcnt==8)
	begin
		ADdata<=ADO;
	end
end


endmodule

