`timescale 1ns / 1ps
module clk_pul(
		input clk,
		output clk_2
    );
	 
	reg [24:0] cont;
	reg clk_buff;
	 
	assign clk_2 = clk_buff;
	
	always @(posedge clk)
	begin
		cont = cont + 1;
		
		if(cont == 25000000)
		begin
			clk_buff = !clk_buff;
			cont = 25'h0;
		end
	end
	
	initial
	begin
		clk_buff = 0;
		cont = 25'h0;
	end

endmodule
