`timescale 1ns / 1ps
module Main(
		 output[7:0] led
    );
	 
	 wire clk_led;
	 clk_pul clk12(clk, clk_led);
	 LED_Escaler ledE(clk_led, led);
	 	 
endmodule
