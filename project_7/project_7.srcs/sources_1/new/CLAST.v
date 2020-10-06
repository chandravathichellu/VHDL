`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 10:35:06 PM
// Design Name: 
// Module Name: CLAST
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


module CLAST(A,B,Cin,Sum,Cout);
parameter N=4;
input [N-1:0] A,B;
input Cin;
output [N-1:0] Sum;
output Cout;
wire [N-1:-1] c;
wire [N-1:0] p,g;
buffer b1 (Cin,c[-1]);
buffer b2 (c[N-1],Cout);
genvar i;
generate for(i=0;i<N;i=i+1)
begin
    xor xr1 (p[i],A[i],B[i]);
    and ad (g[i],A[i],B[i]);
    xor xr2 (Sum[i],p[i],c[i-1]);   
end
endgenerate
Carrygen call (p,g,c);
endmodule
