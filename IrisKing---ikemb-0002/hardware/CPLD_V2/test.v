`timescale 1ns/1ns
module test;

reg clock,clk,nReset,hpirdy;
reg nFCE,nFWE,nFRE,nOE,nWE;
reg vp2clk0,vp2clk1,vp2ctl0,vp2ctl1,vp2ctl2;
wire vCLK,Hs,Vs,De;
wire clkout,nWAIT;
reg [8:2] addr;      
wire [7:0] data;
reg [5:0] nGCS;
reg [1:0] wil;

initial
begin
nReset = 1;
clk = 1;
wil=2'b11;
nGCS[3]=1;
nOE=1;

# 100 nReset = 0;
# 100 nReset = 1;

# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;

# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;

# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;

# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;

//第二个韦根
#100000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;

# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;

# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;

# 2000 wil=2'b01;# 2000 wil=2'b11;
# 2000 wil=2'b10;# 2000 wil=2'b11;


#100 nGCS[3]=0;
#10 nOE=0;
addr=1;
#100 nGCS[3]=1;
nOE=1;

#100 nGCS[3]=0;
#10 nOE=0;
addr=2;
#100 nGCS[3]=1;
nOE=1;

#100 nGCS[3]=0;
#10 nOE=0;
addr=3;
#100 nGCS[3]=1;
nOE=1;

#100 nGCS[3]=0;
#10 nOE=0;
addr=4;
#100 nGCS[3]=1;
nOE=1;

end
always
#1 clk = ~clk;

pld aa(.clock(clock),.clk(clk),.nReset(nReset),.hpirdy(hpirdy),.nEXTBUS(nEXTBUS),.BUFDIR(BUFDIR),.BUFDIR1(BUFDIR1),.nFCE(nFCE),.nOE(nOE),.nWE(nWE),.nGCS(nGCS),.nFWE(nFWE),.nFRE(nFRE),.addr(addr),.data(data),.wil(wil),.eint11(eint11),.clkout(clkout),.vp2clk0(vp2clk0),.vp2clk1(vp2clk1),.vp2ctl0(vp2ctl0),.vp2ctl1(vp2ctl1),.vp2ctl2(vp2ctl2),.vCLK(vCLK),.Hs(Hs),.Vs(Vs),.De(De),.nWAIT(nWAIT));
endmodule
