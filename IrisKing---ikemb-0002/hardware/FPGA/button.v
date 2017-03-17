module Button(
				clk,//1M ʱ������
				rst,
				key_in,//����ɨ������
				irq//�����ж�
				);
input clk,rst;

//----------------------------------------------------------------------------------//
//																				    //
//             ���ȷ�Ƶ����	1kHz��ʼ��                                              //
//	                      														    //
//----------------------------------------------------------------------------------//
reg clk_1k;
reg [8:0] counter_1k;
always @ (posedge clk or negedge rst)
begin
	if (!rst)
		counter_1k<=0;
	else 
		counter_1k<=counter_1k+1;
end

always @ (posedge clk or negedge rst)
begin
	if (!rst)
		clk_1k<=0;
	else if (counter_1k==0)
		clk_1k<=~clk_1k;
end

//----------------------------------------------------------------------------------//
//																				    //
//             ��¼�����µ�ʱ�䣬�ۼƹ�һ����һ����Ч����                           //
//	                      														    //
//----------------------------------------------------------------------------------//
input key_in;
reg [9:0] counter;
always @ (posedge clk_1k or negedge rst)
begin
	if (!rst)
		counter<=0;
	else if (key_in==0)
		counter<=counter+1;
	else if (key_in==1)
		counter<=0;
end

//----------------------------------------------------------------------------------//
//																				    //
//             �����ж�                                                             //
//	                      														    //
//----------------------------------------------------------------------------------//
output irq;
wire pressed;
reg [10:0] counter_pressed;

assign pressed=(counter==1000)?0:1;//��clk_1k������1000-1024֮�����1ms�İ��������µ���Ϣ
assign irq=(counter_pressed>=10 && counter_pressed<=11)?0:1;//��clk������10-15֮���������Ч�ж�

always @ (posedge clk or negedge rst)
begin
	if (!rst)
		counter_pressed<=0;
	else if (pressed==0)
		counter_pressed<=counter_pressed+1;
	else if (pressed ==1)
		counter_pressed<=0;
end

endmodule
