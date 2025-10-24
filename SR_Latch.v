`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University 
// Engineer: Vincent Langford
// 
// Create Date: 10/16/2025 11:19:59 AM
// Design Name: SR_Latch w/ NAND gate
// Module Name: SR_Latch
// Project Name: Latch_FF_Counter_Debounce
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


module SR_Latch(
    input S,
    input R,
    
    output Q,
    output Qbar
    );
    
    nand (Q,S,Qbar);
    nand (Qbar, R, Q);
endmodule
