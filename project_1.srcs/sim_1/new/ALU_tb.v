`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 23:50:14
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb();


reg [7:0] X, Y;
reg [3:0] sel;
wire [7:0] out;
wire carry, overflow, zero, borrow;

ALU uut(
            X, Y, sel, 
            out, carry, 
            overflow, zero, 
            borrow
       );

initial begin
    X = 8'b0000_0000; Y = 8'b0000_0000; sel = 4'b0000; #20;
    X = 8'b0000_0001; Y = 8'b0000_0000; sel = 4'b0000; #20;

end


endmodule
