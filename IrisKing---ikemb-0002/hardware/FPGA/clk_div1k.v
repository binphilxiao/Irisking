module clk_div1k(
               clk,
			   rst,
			   clkout
			   );
input clk,rst;
output clkout;
reg clkout;

reg [8:0] counter;

always @ (posedge clk or negedge rst)
begin
	if (!rst)
		clkout<=0;
	else if (counter==499)
		clkout<=~clkout;
end
endmodule
