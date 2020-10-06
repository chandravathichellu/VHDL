`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2019 11:52:25 PM
// Design Name: 
// Module Name: SYNUDB
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


module SYNUDB(clk,clr,preset,x,q,qbar);
parameter N=4;
input clk,preset,clr,x;
output reg [N-1:0] q;
output [N-1:0] qbar;
assign qbar = ~q;
always @(negedge clk, negedge clr,negedge preset)
begin
 if(preset==0 & clr==1)
    q <= 4'b1111;
 else if(preset==1 & clr==0)
    q <= 4'b0000;
 else if(x==0)
    q <= q+1;
 else 
    q <= q-1;
end
endmodule
