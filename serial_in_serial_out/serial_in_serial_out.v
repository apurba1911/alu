`timescale 1ns / 1ps
module serial_in_serial_out(
    input clk,rst,d,
    output out
    );
	 
	 reg [3:0] q;
	 
	 assign out= q[0];
	 
	 always @ ( posedge clk)
	 begin
	 if(rst)
	 begin
	 q<=4'b0000;
	 
	 end
	 
	 else
	 begin
	 q<= q>>1;
	 q[3]<=d;
	 
	 end
	 
	 end
	 


endmodule
