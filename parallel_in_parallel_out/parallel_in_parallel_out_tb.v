`timescale 1ns / 1ps

module parallel_in_parallel_out_tb;
	reg clk;
	reg rst;
	reg da;
	reg db;
	reg dc;
	reg dd;

	wire qa;
	wire qb;
	wire qc;
	wire qd;

	parallel_in_parallel_out uut (
		.clk(clk), 
		.rst(rst), 
		.da(da), 
		.db(db), 
		.dc(dc), 
		.dd(dd), 
		.qa(qa), 
		.qb(qb), 
		.qc(qc), 
		.qd(qd)
	);

	initial begin
		clk = 1;
		rst = 0;
		da = 0;
		db = 0;
		dc = 0;
		dd = 0;

	end
	always #10 clk=~clk;
	always #50 da=~da;
	always #50 db=~db;
	always #50 dc=~dc;
	always #50 dd=~dd;
      
endmodule

