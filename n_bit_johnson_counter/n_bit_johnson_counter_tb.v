`timescale 1ns / 1ps

module n_bit_johnson_counter_tb;

	reg clk;
	reg rst;

	wire [3:0]q;

	n_bit_johnson_counter uut (
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);
	
	initial
	begin
	clk= 4'b0001;
	end
	always
	#50 clk=~clk;

	initial begin
		
		
		rst = 1;

		
		#20;
		rst = 0;

	end
      
endmodule

