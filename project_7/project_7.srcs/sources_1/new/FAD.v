`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:41:19 PM
// Design Name: 
// Module Name: FAD
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


module FAD(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;
assign Sum = A ^ B ^ Cin;
assign Cout = ((A ^ B) & Cin) | (A & B);
endmodule
