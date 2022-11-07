`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2022 13:21:56
// Design Name: 
// Module Name: Data_Memory
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


module Data_Memory(
    
                        input clk,
                        input MemRead,
                        input MemWrite,
                        input [7:0] addr,
                        input [31:0] WriteData, //memory is 256 x 32 bits
                        output reg [31:0] ReadData 
    
                    );
                    
               
                    
    reg [31:0]MEMORY [255:0];                 
    always @(posedge clk) begin
        
        if(MemRead)
            ReadData  <= MEMORY[addr];
        else if(WriteData)
            MEMORY[addr] <= WriteData[31:0];
    end       
endmodule
