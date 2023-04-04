`timescale 1ns / 1ps

module mod_N_up_down_counter_tb;
	reg clk;
	reg rst;
	reg updown;
	wire [3:0] count;
	mod_N_up_down_counter uut (
		.clk(clk), 
		.rst(rst), 
		.updown(updown), 
		.count(count)
	);

	initial begin
		clk = 0;
		rst = 1;
		updown = 0;

		
		#100;
		rst = 0;
		updown = 1;
		#600
		updown = 0;

	end
	always #20 clk=~clk;
      
endmodule

