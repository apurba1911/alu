`timescale 1ns / 1ps

module n_bit_johnson_counter(clk,rst,q);

	 parameter n=4;
	 input clk,rst;
    output reg [(n-1):0] q= 4'b1100;
	 integer i;
	 
	 
	 always @ (posedge clk)
	 
	 begin
	 
	 if(rst)
	 
	 begin
	 
	 q<= 4'b0000;
	 end
	 
	 else
	 
	 begin
	 
	 q[n-1]<=~q[0];
	 for( i=0; i<(n-1);i=i+1)
	 
	 begin
	 
	 q[i]<=q[i+1];
	 end
	 
	 end
	 
	 
	 
	 
	 end
	 


endmodule
