`timescale 1ns / 1ps

module mod_N_up_down_counter #(parameter N=16,b=4)(
    input clk,rst,updown,
    output reg [(b-1):0] count
    );
	 
	 always @ (posedge clk)
	 
	 begin
	 case(rst)
	 1: count= 4'b0000;
	 
	 0: case(updown)
	        1: if(count==(N-1))
			      begin 
					count=4'b0000;
					end
					else
					begin
					count=count+1;
					end
					
				0:  if (count==0)	
				    begin 
					count=(N-1);
					end
					else
					begin
					count=count-1;
					end
					endcase
					
		endcase
	 end
endmodule
