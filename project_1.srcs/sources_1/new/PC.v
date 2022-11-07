`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2022 16:18:29
// Design Name: 
// Module Name: PC
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


module PC(
            input clk,
            input [7:0] inAddr,
            output reg [7:0] outAddr
         );
         
    always @(posedge clk) begin
        
        outAddr <= inAddr;
        
    end
    
endmodule
