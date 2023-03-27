`timescale 1ns / 1ps
 
 module ring_counter_nbit (clk,rst,q);
 input clk,rst;
 
 parameter n=4;
 
 output reg [n-1:0] q = 4'b1000;
 integer i;
 
 always @ ( posedge clk)
 
 begin
 
   if(rst)
	q<= 4'b0000;
	
	else 
	begin
	
	q[n-1]<=q[0];
	
	for (  i=0; i<(n-1);i=i+1)
	
	begin
	
	q[i]<=q[i+1];
	end
	
	end
 
 end

endmodule
