`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 12:19:01 PM
// Design Name: 
// Module Name: Counter_3bit
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


module Counter_3bit(
    input clk,
    input reset,
    
    output [2:0] Q
    );
    
    wire T0, T1, T2;

    assign T0 = 1'b1;          // LSB toggles every clock
    assign T1 = Q[0];          // Next toggles when Q0=1
    assign T2 = Q[0] & Q[1];   // MSB toggles when Q0&Q1=1

    // Instantiate T flip-flops
    T_FF tff0 (.T(T0), .clk(clk), .reset(reset), .Q(Q[0]));
    T_FF tff1 (.T(T1), .clk(clk), .reset(reset), .Q(Q[1]));
    T_FF tff2 (.T(T2), .clk(clk), .reset(reset), .Q(Q[2]));
endmodule
