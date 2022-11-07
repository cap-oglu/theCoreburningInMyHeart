`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2022 16:27:04
// Design Name: 
// Module Name: PC_Inc
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


module PC_Inc(
                input [7:0] dataIn,
                output [7:0] dataOut
             );
             
    assign dataOut = dataIn + 1;
endmodule
