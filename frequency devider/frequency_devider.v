`timescale 1ns / 1ps
	 
	module tff (input clk,T,output reg q=0);

always @ (posedge clk)

begin
if (T)
begin
q<=~q;
end
else
q<=q;

end
endmodule

module frequency_divider(
    input clk,Ta,Tb,
    output Qa,Qb
    );
	  
	 tff ta (.clk(clk),.T(Ta),.q(Qa));
	 tff tb (.clk(Qa),.T(Tb),.q(Qb));

endmodule

