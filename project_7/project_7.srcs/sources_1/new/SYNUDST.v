`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2019 10:41:06 PM
// Design Name: 
// Module Name: SYNUDST
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


module SYNUDST(clk,clr,preset,x,q,qbar);
parameter N=4;
input clk,preset,clr,x;
output  [N-1:0] q,qbar;
wire [N-1:0] t;
SYNUDASS syn (q,x,t);
genvar i;
generate for (i=0 ; i<N ; i=i+1)
begin
    TFFNEW tff (t[i],clk,clr,preset,q[i],qbar[i]);    

end
endgenerate
endmodule
