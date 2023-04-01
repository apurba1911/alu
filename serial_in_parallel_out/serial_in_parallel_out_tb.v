`timescale 1ns / 1ps

module serial_in_parallel_out_tb;
	reg clk;
	reg rst;
	reg din;
	wire qa;
	wire qb;
	wire qc;
	wire qd;
	serial_in_parallel_out uut (
		.clk(clk), 
		.rst(rst), 
		.din(din), 
		.qa(qa), 
		.qb(qb), 
		.qc(qc), 
		.qd(qd)
	);

	initial begin

		clk = 1;
		rst = 1;
		din = 0;
		#15
      rst = 0;

	end
	always #10 clk=~clk;
	always #50 din=~din;
      
endmodule

