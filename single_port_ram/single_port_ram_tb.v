`timescale 1ns / 1ps

module single_port_ram_tb;

	reg clk;
	reg en;
	reg wr;
	reg [3:0] address;
	reg [7:0] in;
	wire [7:0]out;
	single_port_ram uut (
		.clk(clk), 
		.en(en), 
		.wr(wr), 
		.address(address), 
		.in(in), 
		.out(out)
	);

	initial begin
		
		clk = 1;
		en=0;
		wr = 1;
		address = 4'd1;
		in = 8'b1;
		#300
		en = 1;
		wr = 1;
		address = 4'd0;
		in = 8'b1;

		
		#100;
		address = 4'd1;
		in = 8'd0;
		#100;
		address = 4'd2;
		in = 8'd1;
		#100;
		address = 4'd3;
		in = 8'd0;
		
		#80
		wr = 0;
		address = 4'd2;
		#80
		
		address = 4'd1;
		#80
		
		address = 4'd3;
      #80
		
		address = 4'd0;  
		

	end
	
	always #20 clk=~clk;
      
endmodule

