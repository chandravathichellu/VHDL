`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 11:57:06 AM
// Design Name: 
// Module Name: JOHNST
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


module JOHNST(clk,clr,preset,q,qbar);
input clk,clr,preset;
output [3:0] q,qbar;
DFF dff1 (q[1],clk,clr,preset,q[0],qbar[0]);
DFF dff2 (q[2],clk,clr,preset,q[1],qbar[1]);
DFF dff3 (q[3],clk,clr,preset,q[2],qbar[2]);
DFF dff4 (qbar[0],clk,clr,preset,q[3],qbar[3]);
endmodule
