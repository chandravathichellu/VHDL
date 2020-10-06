`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 02:20:56 PM
// Design Name: 
// Module Name: USST
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


module USST(input clk,clr,preset,SIR,SIL, input [1:0] sel, input [3:0] pi, output [3:0] q,qbar);
wire [3:0] F;
mux41 mux1(q[0],SIL,q[1],pi[0],sel,F[0]);
mux41 mux2(q[1],q[0],q[2],pi[1],sel,F[1]);
mux41 mux3(q[2],q[1],q[3],pi[2],sel,F[2]);
mux41 mux4(q[3],q[2],SIR,pi[3],sel,F[3]);
DFF dff1(F[0],clk,clr,preset,q[0],qbar[0]);
DFF dff2(F[1],clk,clr,preset,q[1],qbar[1]);
DFF dff3(F[2],clk,clr,preset,q[2],qbar[2]);
DFF dff4(F[3],clk,clr,preset,q[3],qbar[3]);
endmodule
