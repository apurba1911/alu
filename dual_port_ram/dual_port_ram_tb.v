`timescale 1ns / 1ps

module dual_port_ram_tb;

	
	reg clka;
	reg clkb;
	reg [3:0] dina;
	reg [3:0] dinb;
	reg wra;
	reg wrb;
	reg ena;
	reg enb;
	reg [1:0] address_a;
	reg [1:0] address_b;

	
	wire [3:0] douta;
	wire [3:0] doutb;

	
	dual_port_ram uut (
		.clka(clka), 
		.clkb(clkb), 
		.dina(dina), 
		.dinb(dinb), 
		.wra(wra), 
		.wrb(wrb), 
		.ena(ena), 
		.enb(enb), 
		.address_a(address_a), 
		.address_b(address_b), 
		.douta(douta), 
		.doutb(doutb)
	);

	initial begin
		
		clka = 0;
		clkb = 0;
		ena = 1;
		enb = 1;
		wra=1;
		wrb=1;
	
		address_a = 4'b0000;
		dina=4'b0000;
		
		address_b = 4'b0000;
		dinb=4'b0000;
		
		#40
		address_a = 4'b0001;
		dina=4'b0001;
		
		address_b = 4'b0001;
		dinb=4'b0001;
		#40
		address_a = 4'b0010;
		dina=4'b0010;
		
		address_b = 4'b0010;
		dinb=4'b0010;
		#40
		address_a = 4'b0011;
		dina=4'b0011;
		
		address_b = 4'b0011;
		dinb=4'b0011;
		
		#50
		
		wra=0;
		wrb=0;
	
		address_a = 4'b0000;
		
		
		address_b = 4'b0000;
		
		
		#40
		address_a = 4'b0001;
		
		
		address_b = 4'b0001;
		
		#40
		address_a = 4'b0010;
		
		
		address_b = 4'b0010;
		
		#40
		address_a = 4'b0011;
		
		
		address_b = 4'b0011;
			

	end
	always #20 clka=~clka;
    always #20 clkb=~clkb;  
endmodule

