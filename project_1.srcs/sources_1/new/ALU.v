`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2022 23:14:12
// Design Name: 
// Module Name: ALU
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


module ALU (
                                input [31:0] X, Y,
                                input [3:0] sel,
                                output reg [31:0] out,
                                output carry, overflow, zero, borrow
           );
           
           
           
    assign zero = 
    ~(out[31] | out[30] | out[29] | out[28] | out[27] | out[26] | out[25] | out[24]|
    out[23] | out[22] | out[21] | out[20] | out[19] | out[18] | out[17] | out[16]|
    out[15] | out[14] | out[13] | out[12] | out[11] | out[10] | out[9] | out[8]|
    out[7] | out[6] | out[5] | out[4] | out[3] | out[2] | out[1] | out[0]);
    always @(X or Y or sel) begin
    
        case(sel)
              4'b0000 : out <= X + Y;
              4'b0001: // Subtraction
               out <= X - Y ;
              4'b0010: // Multiplication
               out <= X * Y;
              4'b0011: // Division
               out <= X/Y;
              4'b0100: // Logical shift left
               out <= X<<1;
              4'b0101: // Logical shift right
               out <= X>>1;
              4'b0110: // Rotate left
               out <= {X[30:0],X[31]};
              4'b0111: // Rotate right
               out <= {X[0],X[31:1]};
              4'b1000: //  Logical and 
               out <= X & Y;
              4'b1001: //  Logical or
               out <= X | Y;
              4'b1010: //  Logical xor 
               out <= X ^ Y;
              4'b1011: //  Logical nor
               out <= ~(X | Y);
              4'b1100: // Logical nand 
               out <= ~(X & Y);
              4'b1101: // Logical xnor
               out <= ~(X ^ Y);
              4'b1110: // Greater comparison
               out <= (X>Y)?32'd1:32'd0 ;
              4'b1111: // Equal comparison   
                out <= (X==Y)?32'd1:32'd0 ;
              default: out <= out ; 
        endcase
    
    end
    
endmodule
