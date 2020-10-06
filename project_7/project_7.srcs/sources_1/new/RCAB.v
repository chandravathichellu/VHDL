`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 10:07:20 PM
// Design Name: 
// Module Name: RCAB
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


module RCAB(A,B,Cin,Sum,Cout);
parameter N=4;
input [N-1:0] A,B;
input Cin;
output [N-1:0] Sum;
output Cout;
wire [N-1:-1] c;
wire [N-1:0] p,g;
assign c[-1]=Cin;
assign Cout = c[N-1];
assign p = A ^ B;
assign g = A & B;
genvar i;
generate for(i=0;i<N;i=i+1)
begin
    assign Sum[i]=p[i] ^ c[i-1];
    assign c[i]= (p[i] & c[i-1]) | g[i];
    end
endgenerate
endmodule
