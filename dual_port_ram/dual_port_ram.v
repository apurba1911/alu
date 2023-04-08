`timescale 1ns / 1ps

module dual_port_ram(
     clka,clkb,dina,dinb,wra,wrb,ena,enb,address_a,address_b,
     douta,doutb
    );

    input clka,clkb,wra,wrb,ena,enb;
	 input [3:0]dina,dinb;
	 input [1:0]address_a,address_b;
    output reg [3:0]douta,doutb;
	 reg [3:0] memory[0:3];
	 
	 always @(posedge clka)
	 
	 begin
	 
	 if(wra)
	 begin
	 memory[address_a]<= dina;
	 end
	 
	 else
	 begin
	 douta<= memory[address_a];
	 end
	 end
	 
	 always @(posedge clkb)
	 
	 begin
	 
	 if(wrb)
	 begin
	 memory[address_b]<= dinb;
	 end
	 
	 else
	 begin
	 doutb<= memory[address_b];
	 end
	 end
	 
	 
endmodule
