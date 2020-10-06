`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:36:53 PM
// Design Name: 
// Module Name: FAST
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


module FAST(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;
wire s1,c1,c2;
HAST HA1 (A,B,s1,c1);
HAST HA2 (s1,Cin,Sum,c2);
or or1 (Cout,c1,c2);
endmodule
