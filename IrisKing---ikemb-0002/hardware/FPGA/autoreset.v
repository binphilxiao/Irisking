module autoreset(clk,reset); //20M

input clk;
output reset;

reg [15:0] counter;
reg        reset;

always@(posedge clk)
 begin 
   if(counter>=16'h5555&&counter<=16'haaaa)
      begin
	   counter<=counter+1;
	   reset<=1;
	  end
   else if(counter<=16'haaab)
       reset<=0;
   else counter<=counter+1;
 end

endmodule
