`timescale 1ns / 1ps

module parallel_in_serial_out(
    input clk,shift_or_loadbar, da,db,dc,dd,
    output out
    );
	 
	 reg [3:0] q;  
	 assign out= q[3];
	 
	 always @ (posedge clk)
	 
	 begin
	 if(shift_or_loadbar == 0)
	 begin
	 
	 q[0]<=da;
	    q[1]<=db;
		 q[2]<=dc;
		 q[3]<=dd;
		 
		 end
		 
	  else
      begin
	  q<= q>>1;
	     q[0]<=da;
		  q[1]<=q[0];
		  q[2]<=q[1];
		  q[3]<=q[2];
		  
		  end
	 end
endmodule
