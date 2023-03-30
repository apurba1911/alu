`timescale 1ns / 1ps

module shift_register_tb;
	reg clk;
	reg rst;
	reg direction;

	wire [3:0] q;
	shift_register uut (
		.clk(clk), 
		.rst(rst), 
		.direction(direction), 
		.q(q)
	);
	
	initial 
	begin
	clk = 0;
	end
	always 
	#50 clk=~clk;
	
	initial 
	begin
		
   rst = 0;

		direction = 0;
		#250;
		direction = 1;
		#250
		rst = 1;
		direction = 0;
		#250;
		direction = 1;
        
		

	end
      
endmodule

