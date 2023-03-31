`timescale 1ns / 1ps
module serial_in_serial_out_tb;
	reg clk;
	reg rst;
	reg d;
	wire out;
	serial_in_serial_out uut (
		.clk(clk), 
		.rst(rst), 
		.d(d), 
		.out(out)
	);

	initial begin
		
		clk = 1;
		rst = 1;
		d = 1;
		#10
		rst = 0;
	end
	
	always
	#10 clk=~clk;
	always
	#50  d=~d;
      
endmodule

