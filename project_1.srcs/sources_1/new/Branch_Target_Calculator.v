`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2022 14:13:56
// Design Name: 
// Module Name: Branch_Target_Calculator
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


module Branch_Target_Calculator(
                                    input [7:0] PC,
                                    input [31:0] offset_extended, 
                                    output [7:0] target
                                );
    
    
                                
    assign target = PC + offset_extended;            
              
endmodule
