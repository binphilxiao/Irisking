module Wigend_Out(
				  clk,      //本模块使用1Mhz时钟
				  rst,
				  wigend,	//韦根输出信号线
				  data,		//韦根数据
				  int,		//韦根传输结束中断信号
				  en		//韦根信号传输使能
				  );
	input clk,rst;
	output [1:0] wigend;
	input [25:0] data;
	output int;
	input en;

	reg [16:0] counter;
	reg [1:0] wigend;

	parameter bit_width=2200;			//一个韦根数据的周期2.2ms
	parameter data_width=500;			//一个韦根负脉冲宽度0.5ms

	assign int = (counter >= bit_width * 10 && counter <= bit_width * 25 + data_width) ? 0 : 1;

	always @ (negedge rst or posedge clk)
	begin
		if (!rst)
			counter<=0;
		else if (en==1)
		begin
			if (counter == bit_width * 26 + 20000)
	 	    	counter<=0;
			else 
				counter<=counter+1;
		end
		else
			counter<=0;
	end

	always @ (negedge rst or posedge clk)
	begin
		if (!rst)
		begin
			wigend[0]<=0;
			wigend[1]<=0;
		end
		else if (counter >= 1 && counter < data_width)
		begin
			wigend[0]<=!data[25];
			wigend[1]<=data[25];
		end
		else if (counter >= bit_width * 1 && counter < data_width + bit_width * 1)
		begin
			wigend[0]<=!data[24];
			wigend[1]<=data[24];
		end
		else if (counter >= bit_width * 2 && counter < data_width + bit_width * 2)
		begin
			wigend[0]<=!data[23];
			wigend[1]<=data[23];
		end
		else if (counter >= bit_width * 3 && counter < data_width + bit_width * 3)
		begin
			wigend[0]<=!data[22];
			wigend[1]<=data[22];
		end
		else if (counter >= bit_width * 4 && counter < data_width + bit_width * 4)
		begin
			wigend[0]<=!data[21];
			wigend[1]<=data[21];
		end
		else if (counter >= bit_width * 5 && counter < data_width + bit_width * 5)
		begin
			wigend[0]<=!data[20];
			wigend[1]<=data[20];
		end
		else if (counter >= bit_width * 6 && counter < data_width + bit_width * 6)
		begin
			wigend[0]<=!data[19];
			wigend[1]<=data[19];
		end
		else if (counter >= bit_width * 7 && counter < data_width + bit_width * 7)
		begin
			wigend[0]<=!data[18];
			wigend[1]<=data[18];
		end
		else if (counter >= bit_width * 8 && counter < data_width + bit_width * 8)
		begin
			wigend[0]<=!data[17];
			wigend[1]<=data[17];
		end
		else if (counter >= bit_width * 9 && counter < data_width + bit_width * 9)
		begin
			wigend[0]<=!data[16];
			wigend[1]<=data[16];
		end
		else if (counter >= bit_width * 10 && counter < data_width + bit_width * 10)
		begin
			wigend[0]<=!data[15];
			wigend[1]<=data[15];
		end
		else if (counter >= bit_width * 11 && counter < data_width + bit_width * 11)
		begin
			wigend[0]<=!data[14];
			wigend[1]<=data[14];
		end
		else if (counter >= bit_width * 12 && counter < data_width + bit_width * 12)
		begin
			wigend[0]<=!data[13];
			wigend[1]<=data[13];
		end
		else if (counter >= bit_width * 13 && counter < data_width + bit_width * 13)
		begin
			wigend[0]<=!data[12];
			wigend[1]<=data[12];
		end
		else if (counter >= bit_width * 14 && counter < data_width + bit_width * 14)
		begin
			wigend[0]<=!data[11];
			wigend[1]<=data[11];
		end
		else if (counter >= bit_width * 15 && counter < data_width + bit_width * 15)
		begin
			wigend[0]<=!data[10];
			wigend[1]<=data[10];
		end
		else if (counter >= bit_width * 16 && counter < data_width + bit_width * 16)
		begin
			wigend[0]<=!data[9];
			wigend[1]<=data[9];
		end
		else if (counter >= bit_width * 17 && counter < data_width + bit_width * 17)
		begin
			wigend[0]<=!data[8];
			wigend[1]<=data[8];
		end
		else if (counter >= bit_width * 18 && counter < data_width + bit_width * 18)
		begin
			wigend[0]<=!data[7];
			wigend[1]<=data[7];
		end
		else if (counter >= bit_width * 19 && counter < data_width + bit_width * 19)
		begin
			wigend[0]<=!data[6];
			wigend[1]<=data[6];
		end
		else if (counter >= bit_width * 20 && counter < data_width + bit_width * 20)
		begin
			wigend[0]<=!data[5];
			wigend[1]<=data[5];
		end
		else if (counter >= bit_width * 21 && counter < data_width + bit_width * 21)
		begin
			wigend[0]<=!data[4];
			wigend[1]<=data[4];
		end
		else if (counter >= bit_width * 22 && counter < data_width + bit_width * 22)
		begin
			wigend[0]<=!data[3];
			wigend[1]<=data[3];
		end
		else if (counter >= bit_width * 23 && counter < data_width + bit_width * 23)
		begin
			wigend[0]<=!data[2];
			wigend[1]<=data[2];
		end
		else if (counter >= bit_width * 24 && counter < data_width + bit_width * 24)
		begin
			wigend[0]<=!data[1];
			wigend[1]<=data[1];
		end
		else if (counter >= bit_width * 25 && counter < data_width + bit_width * 25)
		begin
			wigend[0]<=!data[0];
			wigend[1]<=data[0];
		end
		else
		begin
			wigend[0]<=0;
			wigend[1]<=0;
		end
	end
endmodule