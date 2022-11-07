`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2022 14:33:29
// Design Name: 
// Module Name: Branch_Target_Calculator_tb
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


module Branch_Target_Calculator_tb();

reg [7:0] PC;
reg [11:0] offset;
wire [7:0] target;


Branch_Target_Calculator uut(PC,offset,target);

initial begin
    
    PC = 8'b0000_0001; offset = 12'b0000_0000_0001; #20;
    PC = 8'b0000_0001; offset = 12'b0000_0000_0010; #20;
        
end


endmodule
