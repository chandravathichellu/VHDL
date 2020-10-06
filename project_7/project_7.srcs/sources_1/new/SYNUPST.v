`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 11:19:07 PM
// Design Name: 
// Module Name: SYNUPST
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


module SYNUPST(clk,clr,preset,q,qbar);
parameter N=4;
input clk,preset,clr;
output  [N-1:0] q,qbar;
wire [N:0] t;
assign t[0]=1;
genvar i;
generate for (i=0 ; i<N ; i=i+1)
begin
    TFFNEW tff (t[i],clk,clr,preset,q[i],qbar[i]);    
    and ad (t[i+1],t[i],q[i]);
end
endgenerate
endmodule
