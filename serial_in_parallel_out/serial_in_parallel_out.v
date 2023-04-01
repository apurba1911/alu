`timescale 1ns / 1ps
module serial_in_parallel_out(
    input clk,rst,din,
    output qa,qb,qc,qd
    );
	 reg [3:0]q;
	 assign qa= q[0];
	 assign qb= q[1];
	 assign qc= q[2];
    assign qd= q[3];


	 
	 always @ (posedge clk)
	 begin
	 if(rst)
	 begin
	 q<=4'b0000;
	 end
	 else
	 begin
    q<=q>>1;
	 q[3]<=din;
	 q[2]<=q[3];
	 q[1]<=q[2];
	 q[0]<=q[1];
	 end
	 
	 end


endmodule
