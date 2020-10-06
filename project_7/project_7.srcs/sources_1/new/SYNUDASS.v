`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2019 10:50:42 PM
// Design Name: 
// Module Name: SYNUDASS
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


module SYNUDASS(q,x,t);
input [3:0] q;
input x;
output [3:0] t;
assign t[0]=1;
assign t[1]=q[0]^x;
assign t[2]=(q[1]&q[0]&(~x))|((~q[1])&(~q[0])&x);
assign t[3]=(q[2]&q[1]&q[0]&(~x))|((~q[2])&(~q[1])&(~q[0])&x);
endmodule
