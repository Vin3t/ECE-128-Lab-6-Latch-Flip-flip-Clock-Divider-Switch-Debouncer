`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 11:47:26 AM
// Design Name: 
// Module Name: dff_sync_reset
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


module dff_sync_reset(
    input D,
    input clk,
    input reset,
    
    output reg Q
    );
    
    always @(posedge clk)
        begin
            if (reset)
                Q <= 0;  //Resets to 0
            else
                Q <= D;
        end
endmodule
