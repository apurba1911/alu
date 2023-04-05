`timescale 1ns / 1ps

module single_port_ram(clk,en,wr,address,in,out);
	 
	 input clk,en,wr;
	 input [3:0]address;
	 input [7:0]in;
    output reg [7:0]out;
	 reg [7:0]memory[0:3];
	 
	 always @ (posedge clk)
	 
	 begin
	 case(en)
	 
	 0: out<= 8'd0;
	 
	 1: case(wr)
	 
	     1:  memory[address]<= in;
		  
		  0:  out<= memory[address];
		  
		  endcase
		  
		  endcase
	 
	 end
endmodule
