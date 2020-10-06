`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2020 12:12:04 AM
// Design Name: 
// Module Name: test
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


module test(input [2:0] a, input clk, output reg [2:0] b);
reg [2:0] k=0;
always @(posedge clk)
begin
   if(k==0) b = a-1;
   else b = b-1;   
   k = k+1;
end
endmodule