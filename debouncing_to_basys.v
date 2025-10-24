`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 01:23:38 PM
// Design Name: 
// Module Name: debouncing_to_basys
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_debouncer_basys3(
    input  CLK,        // 100 MHz Basys3 clock
    input  btn0,
    output [2:0] LED  
);

    wire CLEAN, LED_RAW, LED_BOUNCE;

    debouncing uut (.RAW(btn0),.CLK(CLK),.CLEAN(CLEAN),.LED_RAW(LED_RAW),.LED_BOUNCE(LED_BOUNCE));

    // Map LEDs
    assign LED[0] = CLEAN;       // Debounced output
    assign LED[1] = LED_RAW;     // Raw push button
    assign LED[2] = LED_BOUNCE;  // Bounce indicator

endmodule

