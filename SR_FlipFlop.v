`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 11:31:49 AM
// Design Name: 
// Module Name: SR_FlipFlop
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


module SR_FlipFlop(
    input S,
    input R,
    input clk,
    
    output reg Q
    );
    
    always @(posedge clk)
    begin
        if (S && !R)
            Q <= 1'b1; //Set
        else if (!S && R)
            Q <= 1'b0; //Reset
        else if (!S && !R)
            Q <= Q; //Hold
        else
            Q <= 1'bx; //Undefined
    end
endmodule
