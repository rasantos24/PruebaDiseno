module LED_Escaler(
		 input clk,
		 output reg [7:0] led
	 );

	reg[3:0] next_st;
	
	always @(posedge clk)
	begin
		case (next_st)
			5'b00000: {next_st, led} = 12'b000110000000; //q0
			5'b00001: {next_st, led} = 12'b100010000000; //q1
			5'b00010: {next_st, led} = 12'b001001000000; //q2
			5'b00011: {next_st, led} = 12'b100101000000; //q3
			
			5'b00100: {next_st, led} = 12'b001100100000; //q4
			5'b00101: {next_st, led} = 12'b101000100000; //q5
			5'b00110: {next_st, led} = 12'b010000010000; //q6
			5'b00111: {next_st, led} = 12'b101100010000; //q7
			
			5'b01000: {next_st, led} = 12'b010100001000; //q8
			5'b01001: {next_st, led} = 12'b110000001000; //q9
			5'b01010: {next_st, led} = 12'b011000000100; //q10
			5'b01011: {next_st, led} = 12'b110100000100; //q11
			
			5'b01100: {next_st, led} = 12'b011100000010; //q12
			5'b01101: {next_st, led} = 12'b111000000010; //q13
			5'b01110: {next_st, led} = 12'b000000000001; //q14
			5'b01111: {next_st, led} = 12'b111100000001; //q15
			
			5'b10000: {next_st, led} = 12'b111110000000; //q16
			5'b10001: {next_st, led} = 12'b000010000000; //q17
			5'b10010: {next_st, led} = 12'b111000000001; //q18
			5'b10011: {next_st, led} = 12'b011100000001; //q19
			
			5'b11100: {next_st, led} = 12'b110100000010; //q20
			5'b11101: {next_st, led} = 12'b011000000010; //q21
			5'b11010: {next_st, led} = 12'b110000000100; //q22
			5'b11011: {next_st, led} = 12'b010100000100; //q23
			
			5'b11000: {next_st, led} = 12'b101100001000; //q24
			5'b11001: {next_st, led} = 12'b010000001000; //q25
			5'b10110: {next_st, led} = 12'b101000010000; //q26
			5'b10111: {next_st, led} = 12'b001100010000; //q27
			
			5'b10100: {next_st, led} = 12'b100100100000; //q28
			5'b10101: {next_st, led} = 12'b001000100000; //q29
			5'b10010: {next_st, led} = 12'b100001000000; //q30
			5'b10011: {next_st, led} = 12'b000101000000; //q31
			
			default: {next_st, led} = 12'bxxxxxxxxxxxx;
		endcase
	end
	
//	always @(posedge clk)
//	begin
//		if(reset)
//			next_st = 4'b0000;
//		else
//			next_st = next_st;
//		end
//	end
	
endmodule
