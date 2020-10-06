`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 09:38:43 PM
// Design Name: 
// Module Name: HAB
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


module HAB(A,B,Sum,Carry);
input A,B;
output reg Sum,Carry;
always @(*)
begin
if(A==1)
begin
    Sum = ~B;
    Carry = B;
end
else 
begin
    Sum = B;
    Carry = 0;
end
end
endmodule
