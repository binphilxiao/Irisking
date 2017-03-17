module Wigend_In(
                 clk,
				 rst,
				 wigend,//Τ���ź�
				 data,//Τ������
				 int//Τ��������ж��ź�
				 );
	input clk,rst;
    input [1:0] wigend;
	output [25:0] data;
	output int;

	reg [25:0] data;
	reg int;
	reg [24:0] wigend_buf;
	reg [4:0] wigend_bitcnt;
	reg [12:0] wilclk_cnt;
	reg wil0,wil1;//�ӳ�һ��ʱ�����ڵ�Τ�������ź�
	reg wil_clk,wil_clk_tmp;//�ӳ�����ʱ�����ڵ�Τ��ʱ���źţ��ӳ�һ�����ڵ�Τ��ʱ���ź�
	reg overtime,overtime_delay1,overtime_delay2,overtime_delay3;

	always @ (posedge wil_clk or negedge rst)
	begin
	    if (!rst)
			int<=1;
		else if (wigend_bitcnt==26)
			int<=0;
		else if (wigend_bitcnt<26)
		    int<=1;
	end

	always @ (posedge clk or negedge rst)//�����ӳ�һ��ʱ�����ڵ�Τ�������źţ������ӳ��������ڵ�Τ��ʱ���ź�
	begin
		if (!rst)
		begin
			wil0<=1;
			wil1<=1;
			wil_clk_tmp<=1;
			wil_clk<=1;
		end
		else if ((!wigend[0] && wigend[1]) || (wigend[0] && !wigend[1]))
		begin			
			wil0<=wigend[0];
			wil1<=wigend[1];
			wil_clk_tmp<=0;
			wil_clk<=wil_clk_tmp;
		end
		else
		begin
			wil0<=1;
			wil1<=1;
			wil_clk_tmp<=1;
			wil_clk<=wil_clk_tmp;
		end
	end


    always @ (posedge clk or negedge rst)//������ʱ�źţ��ӳ�һ��ʱ������
	begin
		if (!rst)
		begin
			wilclk_cnt<=0;
			overtime<=1;
		end
		else if ((!wigend[0] && wigend[1]) || (wigend[0] && !wigend[1]))
		begin			
			wilclk_cnt<=0;
			overtime<=1;
		end
		else if (wilclk_cnt>=5000)   //clk=1MHz, Wiegand 2.2ms, so set overtime 5ms
		begin
			wilclk_cnt<=5000;
			overtime<=0;
		end
		else 
		begin
		    overtime<=1;
			wilclk_cnt<=wilclk_cnt+1;
		end
	end

	always @ (posedge clk or negedge rst)
	begin
		if (!rst)
		begin
			overtime_delay1<=1;
			overtime_delay2<=1;
			overtime_delay3<=1;
		end
		else
		begin
			overtime_delay1<=overtime;
			overtime_delay2<=overtime_delay1;
			overtime_delay3<=overtime_delay2;	
		end
	end

	always @ (negedge wil_clk or negedge rst)
	begin
		if (!rst)
		begin
			wigend_bitcnt<=0;
		end
		else if (!overtime_delay3)//�����ʱ��������ȫ����0��Τ�����ݻ�������0
		begin
			wigend_bitcnt<=1;
		end
		else if (wigend_bitcnt!=26)
		begin
			wigend_bitcnt<=wigend_bitcnt+1;
		end
		else if (wigend_bitcnt==26)
		begin
			wigend_bitcnt<=0;
		end		
	end

	always @ (negedge wil_clk or negedge rst)
	begin
		if (!rst)
		begin
			wigend_buf<=0;
			data<=0;
		end
		else if (!overtime_delay3)//�����ʱ��������ȫ����0��Τ�����ݻ�������0
		begin
			if (!wil1 && wil0)
			begin
				wigend_buf<=1;
				data<=0;
			end
			else if (!wil0 && wil1)
			begin
				wigend_buf<=0;
				data<=0;
			end
		end
		else if (wigend_bitcnt!=25)
		begin
			if (!wil0 && wil1)
			begin
				wigend_buf<=wigend_buf<<1;
			end
			else if (!wil1 && wil0)
			begin
				wigend_buf<=(wigend_buf<<1)+1;
			end
		end
		else if (wigend_bitcnt==25)
		begin
			if (!wil0 && wil1)
			begin
				wigend_buf<=0;		
				data<=wigend_buf<<1;
			end
			else if (!wil1 && wil0)
			begin
				wigend_buf<=0;
				data<=(wigend_buf<<1)+1;
			end
		end
	end
endmodule
