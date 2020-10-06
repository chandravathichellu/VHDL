`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 10:52:08 PM
// Design Name: 
// Module Name: Carrygen
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


module Carrygen(p,g,c);
parameter N=4;
input [N-1:0] p,g;
output [N-1:-1] c;
assign c[0] = (p[0] & c[-1] ) | g[0];
assign c[1] = (p[1] & p[0] & c[-1] ) | (p[1] & g[0]) | g[1];
assign c[2] = (p[2] & p[1] & p[0] & c[-1] ) | (p[2] & p[1] & g[0]) | (p[2] & g[1]) | g[2];
assign c[3] = (p[3] & p[2] & p[1] & p[0] & c[-1] ) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & g[1]) | (p[3] & g[2]) | g[3];
 endmodule
