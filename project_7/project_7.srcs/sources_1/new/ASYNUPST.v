`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 12:01:20 AM
// Design Name: 
// Module Name: ASYNUPST
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


module ASYNUPST(clk,clr,preset,q,qbar);
input clk,preset,clr;
output [3:0] q;
output [3:0] qbar;
wire [3:0] t= 4'b1111;
wire [4:0] k;
buffer bf1 (clk,k[0]);
genvar i;
generate for(i=0;i<4;i=i+1)
begin
TFFNEW tff1 (t[i],k[i],clr,preset,q[i],qbar[i]);  
buffer bf2 (q[i],k[i+1]);
end
endgenerate
endmodule
