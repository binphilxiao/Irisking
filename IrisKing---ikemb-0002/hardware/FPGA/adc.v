module adc(
		   clk,
		   rst,
		   AD_DO,
		   AD_CLK,
		   AD_CS,
		   ADdata
           );
input clk,rst;
input AD_DO;
output AD_CS, AD_CLK;
output [7:0] ADdata;

reg [4:0] ADcnt;
reg [7:0] ADdata;      //AD result data register
reg [7:0] ADO_reg;         //serial to parallel register

assign AD_CS=(ADcnt>=0 && ADcnt<=7 || ADcnt==30)?0:1;
assign  AD_CLK=(ADcnt>=0 && ADcnt<=7)?clk:0;

always @ (negedge rst or negedge clk)
begin
   if (!rst)
	  ADcnt<=0;
   else if (ADcnt==30)      // 30us for AD converting
      ADcnt<=0;
   else
      ADcnt<=ADcnt+1;
end

always @ (negedge rst or posedge clk)
begin
   if (!rst)
	  	ADO_reg<=0;
	else if (ADcnt>=8 && ADcnt<=30)
       	ADO_reg<=0;
    else
		ADO_reg<=ADO_reg<<1|AD_DO;
end

always @ (negedge rst or posedge clk)
begin
	if(!rst)
        ADdata<=0;
	else if (ADcnt==8)
		ADdata<=ADO_reg;
end
endmodule
