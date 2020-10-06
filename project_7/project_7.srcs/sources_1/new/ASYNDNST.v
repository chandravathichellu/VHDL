`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 09:11:28 AM
// Design Name: 
// Module Name: ASYNDNST
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


module ASYNDNST(clk,clr,preset,q,qbar);
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
buffer bf2 (qbar[i],k[i+1]);
end
endgenerate
endmodule
