module Keyboard(
				clk,
				rst,
				in,//键盘扫描输入
				out,//键盘扫描输出
				data,//键盘按下后的键值
				int//键盘中断
				);
	input clk,rst;
	input [3:0] in;
	output [3:0] out;
	output [3:0] data;
	output int;

	reg [3:0] out;
	reg [3:0] data;
	reg [16:0] counter;

	assign int=(counter>=17000)?0:1;

	always @ (negedge rst or posedge clk)
	begin
		if (!rst)
			counter<=0;
		else if (in==0)
			counter<=0;
		else
			counter<=counter+1;
	end

	always @ (negedge rst or posedge clk)
	begin
		if (!rst)
			out<=1;
		else if (in==0)
		begin
			if (out==1)
				out<=2;
			else if (out==2)
				out<=4;
			else if (out==4)
				out<=8;
			else if (out==8)
				out<=1;
		end
	end

	//------------------------------------------------------------------//
	//                            in0      in1      in2      in3        //
	// out0(out=1)                0        1        2        3          //
	// out1(out=2)                4        5        6        7          //
	// out2(out=4)                8        9        a        b          //
	// out3(out=8)                c        d        e        f          //
	//                                                                  //
	// Note: 因为data的初始化值为0，所以硬件上相应位置不要装按键，这样  //
	//       按键最多支持15个                                           //
	//------------------------------------------------------------------//

	always @ (negedge rst or posedge clk)
	begin
		if (!rst)
			data<=0;
		else if (counter==17000)
		begin	
			if (out==1)
			begin
				if (in[3]==1)
					data<=3;
				else if (in[3]==0 && in[2]==1)
				    data<=2;
				else if (in[3:2]==0 && in[1]==1)
					data<=1;
				else if (in[3:1]==0 && in[0]==1)
					data<=0;
			end
			if (out==2)
			begin
				if (in[3]==1)
					data<=7;
				else if (in[3]==0 && in[2]==1)
				    data<=6;
				else if (in[3:2]==0 && in[1]==1)
					data<=5;
				else if (in[3:1]==0 && in[0]==1)
					data<=4;
			end
			if (out==4)
			begin
				if (in[3]==1)
					data<=11;
				else if (in[3]==0 && in[2]==1)
				    data<=10;
				else if (in[3:2]==0 && in[1]==1)
					data<=9;
				else if (in[3:1]==0 && in[0]==1)
					data<=8;
			end
			if (out==8)
			begin
				if (in[3]==1)
					data<=15;
				else if (in[3]==0 && in[2]==1)
				    data<=14;
				else if (in[3:2]==0 && in[1]==1)
					data<=13;
				else if (in[3:1]==0 && in[0]==1)
					data<=12;
			end
		end
	end
endmodule
