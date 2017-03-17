module Button(
				clk,//1M 时钟输入
				rst,
				key_in,//按键扫描输入
				irq//按键中断
				);
input clk,rst;

//----------------------------------------------------------------------------------//
//																				    //
//             首先分频产生	1kHz的始终                                              //
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
//             记录键按下的时间，累计够一秒算一次有效触发                           //
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
//             产生中断                                                             //
//	                      														    //
//----------------------------------------------------------------------------------//
output irq;
wire pressed;
reg [10:0] counter_pressed;

assign pressed=(counter==1000)?0:1;//在clk_1k计数在1000-1024之间产生1ms的按键被按下的信息
assign irq=(counter_pressed>=10 && counter_pressed<=11)?0:1;//在clk计数在10-15之间产生负有效中断

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
