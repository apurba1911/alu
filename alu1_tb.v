`timescale 1ns / 1ps


module alu1_tb;

	
	reg clk;
	reg rst;
	reg [1:0]a;
	reg [1:0]b;
	reg [2:0]p;

	
	wire [1:0]c;

	
	alu1 uut (
		.clk(clk), 
		.rst(rst), 
		.a(a), 
		.b(b), 
		.p(p), 
		.c(c)
	);

initial 
begin
clk=1'b0;
forever
#10
clk=~clk;
end
	initial 
	begin
		
		rst = 1;
		a = 0;
		b = 0;
		p = 0;

		#100;
		rst = 0;
		a = 2'b10;
		b = 2'b01;
		p = 3'b000;
		#100
		p = 3'b001;
		#100
		p = 3'b010;
		#100
		p = 3'b011;
		#100
		p = 3'b100;
		#100
		p = 3'b101;
		#100
		p = 3'b110;
		#100
		p = 3'b111;
		



	end
      
endmodule

