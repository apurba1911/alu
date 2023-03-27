`timescale 1ns / 1ps


module ring_counter_nbit_tb;

	
	reg clk;
	reg rst;

	
	wire [3:0] q;

	
	ring_counter_nbit uut (
		.clk(clk), 
		.rst(rst), 
		.q(q)
	);
	
	initial 
	begin
    clk = 2'b00;
	 end
	 always
	 #50 clk=~clk;
	initial begin
		
		rst = 1;

		#10;
rst = 0;
        
		

	end
      
endmodule

