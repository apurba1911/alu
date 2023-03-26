`timescale 1ns / 1ps

module alu1(
    input clk,rst,[1:0]a,[1:0]b,[2:0]p,
    output reg [1:0]c
    );
	 
	 
	 always  @ ( posedge clk )
	 begin
	 case (p)
	 3'b000:c=a|b;
	 3'b001:c=a & b;
	 3'b010:c=a^b;
	 3'b011:c=~a;
	 3'b100:c=~(a^b);
	 3'b101:c=~(a & b);
	 3'b110:c=~(a | b);
	 3'b111:c=(a >> 1);
	 endcase
	 
	 
	 
	 end

endmodule
