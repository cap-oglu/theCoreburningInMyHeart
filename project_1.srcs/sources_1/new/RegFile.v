`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2022 16:38:18
// Design Name: 
// Module Name: RegFile
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


module RegFile(
                    input clk,
                    input write,
                    //input read,
                    input [4:0] selReg1,
                    input [4:0] selReg2,
                    input [4:0] selReg3, //for write
                    input [31:0] dataWritten,
                    output [31:0] dataRead1,
                    output [31:0] dataRead2
               );

    reg [31:0] REGFILE [31:0];
    
    assign dataRead1 = REGFILE[selReg1];
    assign dataRead2 = REGFILE[selReg2];
    
    
    always @(posedge clk) begin
        
       
       
       if(write) begin
            
            REGFILE[selReg3] <= dataWritten;
                 
       end
        
    end                

               
               
               
endmodule
