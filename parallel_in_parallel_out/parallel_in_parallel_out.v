`timescale 1ns / 1ps
module parallel_in_parallel_out(
    input clk,rst,da,db,dc,dd,
    output qa,qb,qc,qd
    );
	 
	 reg [3:0] q;
	 assign qa= q[0];
	 assign qb= q[1];
	 assign qc= q[2];
	 assign qd= q[3];
	 
	 always @ (posedge clk)
	 begin
	 if(rst)
	 begin
	 q<= 4'b0000;
	 end
	 else
	 begin
	 q[0]<=da;
	 q[1]<=db;
	 q[2]<=dc;
	 q[3]<=dd;
	 end
	 end
endmodule
