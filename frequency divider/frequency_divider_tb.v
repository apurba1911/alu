`timescale 1ns / 1ps

module frequency_devider_tb;

	reg clk;
	reg Ta;
	reg Tb;
	wire Qa;
	wire Qb;

	frequency_devider uut (
		.clk(clk), 
		.Ta(Ta), 
		.Tb(Tb), 
		.Qa(Qa), 
		.Qb(Qb)	
	);

	initial begin
		
		clk = 0;
		Ta = 1;
		Tb = 1;
		#500;
		Ta = 0;
		Tb = 1;
        
	end
	always #20 clk=~clk;
      
endmodule

