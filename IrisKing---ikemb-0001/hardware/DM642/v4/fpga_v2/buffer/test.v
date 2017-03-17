`timescale 1ms/1ms
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

wire nEXTBUS;
wire BUFDIR;
wire BUFDIR1;
wire eint11;
wire [5:0] test;
initial
begin
hpirdy = 0;
nFCE = 1;
nFWE = 1;
nFRE = 1;
nOE = 1;
nWE = 1;
vp2clk0 = 1;
vp2clk1 = 1;
vp2ctl0 = 1;
vp2ctl1 = 1;
vp2ctl2 = 1;
addr = 0;      
nGCS = 6'h3f;
wil = 2'h3;
nReset = 1;
clk = 1;
# 10000 nReset = 0;
# 10000 nReset = 1;
# 1;

end
always
#1 clk = ~clk;
buffer aa(.clock(clock),.clk(clk),.nReset(nReset),.hpirdy(hpirdy),.nEXTBUS(nEXTBUS),.BUFDIR(BUFDIR),.BUFDIR1(BUFDIR1),.nFCE(nFCE),.nOE(nOE),.nWE(nWE),.nGCS(nGCS),.nFWE(nFWE),.nFRE(nFRE),.addr(addr),.data(data),.wil(wil),.eint11(eint11),.clkout(clkout),.vp2clk0(vp2clk0),.vp2clk1(vp2clk1),.vp2ctl0(vp2ctl0),.vp2ctl1(vp2ctl1),.vp2ctl2(vp2ctl2),.vCLK(vCLK),.Hs(Hs),.Vs(Vs),.De(De),.nWAIT(nWAIT),.test(test));
endmodule






