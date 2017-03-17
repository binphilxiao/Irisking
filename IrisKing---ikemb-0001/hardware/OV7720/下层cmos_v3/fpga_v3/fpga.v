module FPGA(clk,nReset,vpdin,vpdout,vpctlin,vpctlout,vpclkin,vpclkout);
	input  clk,nReset;
	input  [9:0] vpdin;
	output [9:0] vpdout;
	input  [2:0] vpctlin;
	output [2:0] vpctlout;
	input  [1:0] vpclkin;
	output [1:0] vpclkout;

	assign vpctlout[0]=vpctlin[0];
	assign vpctlout[1]=vpctlin[1];
	assign vpctlout[2]=0;
	assign vpclkout=vpclkin;
	assign vpdout=vpdin;
endmodule