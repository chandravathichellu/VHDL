`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:26:29 PM
// Design Name: 
// Module Name: HAST
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


module HAST(A,B,Sum,Carry);
input A,B;
output Sum,Carry;
xor xor1 (Sum,A,B);
and and1 (Carry,A,B);
endmodule
