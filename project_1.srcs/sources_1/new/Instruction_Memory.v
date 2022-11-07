`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2022 15:47:46
// Design Name: 
// Module Name: Instruction_Memory
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


module Instruction_Memory(
                                    input clk,
                                    input [7:0] addr, //memory is 256 x 32 bits
                                    output reg [31:0] instruction 
                          );
                          
    reg [31:0]MEMORY [255:0];                 
    always @(posedge clk) begin
    
        instruction <= MEMORY[addr];
    
    end              
endmodule
