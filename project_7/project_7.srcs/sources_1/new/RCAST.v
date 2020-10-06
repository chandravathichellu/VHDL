`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:55:51 PM
// Design Name: 
// Module Name: RCAST
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


module RCAST(A,B,Cin,Sum,Cout);
parameter N=4;
input [N-1:0] A,B;
input Cin;
output [N-1:0] Sum;
output Cout;
wire [N-1:-1] c;
buffer b1 (Cin,c[-1]);
buffer b2 (c[N-1],Cout);
genvar i;
generate for(i=0;i<N;i=i+1)
begin
    FAST call (A[i],B[i],c[i-1],Sum[i],c[i]);
end
endgenerate
endmodule
