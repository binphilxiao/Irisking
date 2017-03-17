module FPGA(clk,nReset,vpdin,vpdout,vpctlin,vpctlout,vpclkin,vpclkout,fsinout);
	input  clk,nReset;
	input  [9:0] vpdin;
	output [9:0] vpdout;
	input  [2:0] vpctlin;
	output [2:0] vpctlout;
	input  [1:0] vpclkin;
	output [1:0] vpclkout;
	output fsinout;

	wire hs,vs,href;
	reg [7:0] frame_counter;
    reg [9:0] pix_counter;
	reg [19:0] sse_counter;

	assign href=vpctlin[0];
	assign vpctlout[0]=vpctlin[0];
	//assign vpctlout[1]=vs;
	assign vpctlout[1]=vpctlin[1];
	assign vpctlout[2]=hs;
	assign vpclkout=vpclkin;
	assign vpdout=(pix_counter>=0 && pix_counter<20)?{frame_counter,2'h0}:vpdin;
	assign fsinout=0;

//产生hs信号
	assign hs=(sse_counter>=8 && sse_counter<136)?0:1;
//产生VS信号
	assign vs=(sse_counter>=9408 && sse_counter<15680)?1:0;
//帧计数
	always @ (posedge vs or negedge nReset)
	begin
		if (!nReset)
		begin
			frame_counter<=0;
		end
		else
			frame_counter<=frame_counter+1;
	end
//有效像素计数
	always @ (posedge vpclkin[0] or negedge nReset)
	begin
		if (!nReset || !href)
			pix_counter<=0;
		else
			pix_counter<=pix_counter+1;
	end

//无效像素计数
	always @ (posedge vpclkin[0] or negedge nReset)
	begin
		if (!nReset || href)
			sse_counter<=0;
		else
			sse_counter<=sse_counter+1;
	end

endmodule