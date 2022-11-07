`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2022 12:50:16
// Design Name: 
// Module Name: Imm_Gen
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


module Imm_Gen(

                    input [11:0] imm_12bit,
                    output [31:0] sign_extended


                );
                
                assign sign_extended = imm_12bit[11] ? {19'b1111_1111_1111_1111_111,imm_12bit[11:0]} : {19'b0000_0000_0000_0000_000,imm_12bit[11:0]};
endmodule
