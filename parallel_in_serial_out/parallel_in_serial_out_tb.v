`timescale 1ns / 1ps

module parallel_in_serial_out_tb;

	reg clk;
	reg shift_or_loadbar;
	reg da;
	reg db;
	reg dc;
	reg dd;
	wire out;
	parallel_in_serial_out uut (
		.clk(clk), 
		.shift_or_loadbar(shift_or_loadbar), 
		.da(da), 
		.db(db), 
		.dc(dc), 
		.dd(dd), 
		.out(out)
	);

	initial begin
		clk = 0;
		shift_or_loadbar = 0;
		da = 1;
		db = 0;
		dc = 0;
		dd = 1;
		#200;
        shift_or_loadbar = 1;

	end
	always # 10 clk=~clk;
      
endmodule

