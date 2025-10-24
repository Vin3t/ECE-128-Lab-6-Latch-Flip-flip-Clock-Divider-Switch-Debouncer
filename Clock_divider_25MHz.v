`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 12:26:51 PM
// Design Name: 
// Module Name: Clock_divider_25MHz
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


module Clock_divider_25MHz(
    input  clk_in,   // 100 MHz input clock
    output reg clk_out = 1'b0   // 25 MHz output clock
    );
    
    reg [1:0] counter = 2'd0;  // 2-bit counter (0-3)
    
    always @(posedge clk_in) begin
        counter <= counter + 1;
        if (counter == 2'b01) begin
            clk_out <= ~clk_out; // Toggle the output clock
            counter <= 0;
        end
    end
endmodule
