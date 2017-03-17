module Keyboard(
				clk,
				rst,
				Keyboard_in,//����ɨ������
				Keyboard_out,//����ɨ�����
				Keyboard_data,//���̰��º�ļ�ֵ
				irq//�����ж�
				);
	input clk,rst;
	input [3:0] Keyboard_in;
	output [3:0] Keyboard_out;
	output [3:0] Keyboard_data;
	output irq;

	reg [3:0] Keyboard_out;
	reg [3:0] Keyboard_data;
	reg [18:0] counter;

	assign irq=(counter>=16000 && counter<=16001)?0:1;
	//assign irq=(counter==16000)?0:1;

	always @ (negedge rst or posedge clk)
	begin
		if (!rst)
			counter<=0;
		else if (Keyboard_in==0)
			counter<=0;
		else if (Keyboard_in!=0)
			counter<=counter+1;
	end

	always @ (negedge rst or posedge clk)
	begin
		if (!rst)
			Keyboard_out<=1;
		else if (Keyboard_in==0)
		begin
			if (Keyboard_out==1)
				Keyboard_out<=2;
			else if (Keyboard_out==2)
				Keyboard_out<=4;
			else if (Keyboard_out==4)
				Keyboard_out<=8;
			else if (Keyboard_out==8)
				Keyboard_out<=1;
		end
	end

	//------------------------------------------------------------------//
	//                            in0      in1      in2      in3        //
	// out0(out=1)                non      1        2        3          //
	// out1(out=2)                4        5        6        7          //
	// out2(out=4)                8        9        a        b          //
	// out3(out=8)                c        d        e        f          //
	//                                                                  //
	// Note: ��Ϊdata�ĳ�ʼ��ֵΪ0������Ӳ������Ӧλ�ò�Ҫװ����������  //
	//       �������֧��15��                                           //
	//------------------------------------------------------------------//

	always @ (negedge rst or posedge clk)
	begin
		if (!rst)
			Keyboard_data<=0;
		else if (counter==16000)
		begin	
			if (Keyboard_out==1)
			begin
				if (Keyboard_in[3]==1)
					Keyboard_data<=3;
				else if (Keyboard_in[3]==0 && Keyboard_in[2]==1)
				    Keyboard_data<=2;
				else if (Keyboard_in[3:2]==0 && Keyboard_in[1]==1)
					Keyboard_data<=1;
				else if (Keyboard_in[3:1]==0 && Keyboard_in[0]==1)
					Keyboard_data<=0;
			end
			if (Keyboard_out==2)
			begin
				if (Keyboard_in[3]==1)
					Keyboard_data<=7;
				else if (Keyboard_in[3]==0 && Keyboard_in[2]==1)
				    Keyboard_data<=6;
				else if (Keyboard_in[3:2]==0 && Keyboard_in[1]==1)
					Keyboard_data<=5;
				else if (Keyboard_in[3:1]==0 && Keyboard_in[0]==1)
					Keyboard_data<=4;
			end
			if (Keyboard_out==4)
			begin
				if (Keyboard_in[3]==1)
					Keyboard_data<=11;
				else if (Keyboard_in[3]==0 && Keyboard_in[2]==1)
				    Keyboard_data<=10;
				else if (Keyboard_in[3:2]==0 && Keyboard_in[1]==1)
					Keyboard_data<=9;
				else if (Keyboard_in[3:1]==0 && Keyboard_in[0]==1)
					Keyboard_data<=8;
			end
			if (Keyboard_out==8)
			begin
				if (Keyboard_in[3]==1)
					Keyboard_data<=15;
				else if (Keyboard_in[3]==0 && Keyboard_in[2]==1)
				    Keyboard_data<=14;
				else if (Keyboard_in[3:2]==0 && Keyboard_in[1]==1)
					Keyboard_data<=13;
				else if (Keyboard_in[3:1]==0 && Keyboard_in[0]==1)
					Keyboard_data<=12;
			end
		end
	end
endmodule
