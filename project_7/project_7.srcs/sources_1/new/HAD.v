`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:27:51 PM
// Design Name: 
// Module Name: HAD
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


module HAD(A,B,Sum,Carry);
input A,B;
output Sum,Carry;
assign Sum = A ^ B;
assign Carry = A & B;
endmodule
