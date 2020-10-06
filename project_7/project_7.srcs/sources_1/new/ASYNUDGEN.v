`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 09:15:09 AM
// Design Name: 
// Module Name: ASYNUDGEN
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


module ASYNUDGEN(q,qbar,x,k);
input  q,qbar,x;
output  k;
wire g1,g2;
nand nand1(g1,q,~x);
nand nand2(g2,qbar,x);
nand nand3(k,g1,g2);
endmodule
