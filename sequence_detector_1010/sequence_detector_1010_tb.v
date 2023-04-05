`timescale 1ns / 1ps

module sequence_detector_1010_tb;
	reg clk;
	reg rst;
	reg in;
	wire q;
	sequence_detector_1010 uut (
		.clk(clk), 
		.rst(rst), 
		.in(in), 
		.q(q)
	);

	initial begin
		clk = 1;
		in = 1'b1;
		rst = 1;
		#100
		rst = 0;
		in = 1'b1;
		#100;
		in = 1'b0;
		#100;
		in = 1'b1;
		#100;
		in = 1'b0;
		#100
		in = 1'b1;
		#100;
		in = 1'b0;
		#100;
		in = 1'b1;
		#100;
		in = 1'b0;

	end
	always #20 clk=~clk;
      
endmodule

