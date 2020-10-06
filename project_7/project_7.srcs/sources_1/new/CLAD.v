`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 11:01:34 PM
// Design Name: 
// Module Name: CLAD
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


module CLAD(A,B,Cin,Sum,Cout);
parameter N=4;
input [N-1:0] A,B;
input Cin;
output [N-1:0] Sum;
output Cout;
wire [N-1:-1] c;
wire [N-1:0] p,g;
assign c[-1]=Cin;
assign p = A ^ B;
assign g = A & B;
assign c[0] = (p[0] & c[-1] ) | g[0];
assign c[1] = (p[1] & p[0] & c[-1] ) | (p[1] & g[0]) | g[1];
assign c[2] = (p[2] & p[1] & p[0] & c[-1] ) | (p[2] & p[1] & g[0]) | (p[2] & g[1]) | g[2];
assign c[3] = (p[3] & p[2] & p[1] & p[0] & c[-1] ) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & g[1]) | (p[3] & g[2]) | g[3];
assign Cout = c[N-1];
genvar i;
generate for(i=0;i<N;i=i+1)
begin
    assign Sum[i]=p[i] ^ c[i-1];
end
endgenerate
endmodule
