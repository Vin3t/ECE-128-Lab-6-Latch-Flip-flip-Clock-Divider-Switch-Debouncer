`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 11:52:46 AM
// Design Name: 
// Module Name: dff_async_reset
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


module dff_async_reset(
    input D,
    input clk,
    input reset,
    
    output reg Q
    );
    
    always @(posedge clk)
        begin
            if (reset)
                Q <= 0;  //This should reset immediately
            else
                Q <= D; //This should update on the clock edge
        end
endmodule
