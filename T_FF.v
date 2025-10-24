`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 12:12:26 PM
// Design Name: 
// Module Name: T_FF
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


module T_FF(
    input T,
    input clk,
    input reset,
    
    output reg Q
    );
    
    always @(posedge clk) begin
        if (reset)
            Q <= 0;  // Reset to 0
        else if (T)
            Q <= ~Q; // Toggle
        else
            Q <= Q;  // Hold
    end
endmodule
