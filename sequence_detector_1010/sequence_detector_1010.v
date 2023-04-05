`timescale 1ns / 1ps
module sequence_detector_1010(
    input clk,rst,in,
    output reg q
    );
	 parameter s0= 2'b00,s1= 2'b01,s2= 2'b10,s3= 2'b11;
	 reg [1:0]state,next_state;
	 
	 always @ ( posedge clk)
	 begin
	 if(rst)
	 begin
	 state<= s0;
	 q<=1'b0;
	 end
	 else
	 begin
	 state<=next_state;
	 end
	 end
	 always @ ( posedge clk)
	 begin
	 
	   case(state)
		
		s0: if(in)
		     begin
			  next_state<=s1;
			  q<= 1'b0;
			  end
			  
			  else
			  begin
			  next_state<=s0;
			  q<= 1'b0;
			  
			  end
			  
			  
	    s1: if(in)
		     begin
			  next_state<=s1;
			  q<= 1'b0;
			  end
			  
			  else
			  begin
			  next_state<=s2;
			  q<= 1'b0;
			  
			  end
			  
			  
		  s2: if(in)
		     begin
			  next_state<=s3;
			  q<= 1'b0;
			  end
			  
			  else
			  begin
			  next_state<=s0;
			  q<= 1'b0;
			  
			  end
			  
			  
		  s3: if(in)
		     begin
			  next_state<=s1;
			  q<= 1'b0;
			  end
			  
			  else
			  begin
			  next_state<=s2;
			  q<= 1'b1;
			  
			  end
			  
			 default: next_state<=s0;
			 
			 endcase
		
	 end
endmodule
