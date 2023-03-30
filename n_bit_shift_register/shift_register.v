`timescale 1ns / 1ps
module shift_register(
    clk,rst,direction
	 ,q );
	 parameter n=4;
	 input clk,rst,direction;
	 output reg [(n-1):0]q=4'b1001;
	 
	 always @ (posedge clk)
	 begin
	 
	 if(rst)
	 begin
	 q<= 4'b0000;
	 
	 end
	 
	 else
	 begin
	 
	 case(direction)
	 
	 0: q<= q<<1;
	 1: q<= q>>1;
	 
	 endcase
	 end
	 
	 end


endmodule
