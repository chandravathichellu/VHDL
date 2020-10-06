`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 09:11:42 AM
// Design Name: 
// Module Name: ASYNUDST
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


module ASYNUDST(clk,clr,preset,x,q,qbar);
input clk,preset,clr,x;
output [3:0] q;
output [3:0] qbar;
wire [3:0] t= 4'b1111;
wire [4:0] k;
buffer bf2 (clk,k[0]);
genvar i;
generate for(i=0;i<4;i=i+1)
begin
TFFNEW tff (t[i],k[i],clr,preset,q[i],qbar[i]);
ASYNUDGEN call (q[i],qbar[i],x,k[i+1]);
end
endgenerate
endmodule
