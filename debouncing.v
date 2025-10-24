`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 12:37:17 PM
// Design Name: 
// Module Name: debouncing
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


module debouncing(
    input RAW,
    input CLK,
    output reg CLEAN,
    output LED_RAW,
    output LED_BOUNCE
    );
    
    //internal counter & TC signal 
    reg [26:0] counter;
    wire TC;
    
    assign LED_RAW = RAW;
    assign LED_BOUNCE = RAW & ~CLEAN; 
    
    //reset & increment counter
    always @(posedge CLK) begin
        if(~RAW)
            counter <= 27'b0;
        else if (!TC)
            counter <= counter + 1'b1;
        end
        
    assign TC = (counter == 27'b111111111111111111111111111);
    
    always@(posedge CLK) begin
        if(~RAW)
            CLEAN <= 1'b0;
        else if (TC)
            CLEAN <= 1'b1;
        end
endmodule
