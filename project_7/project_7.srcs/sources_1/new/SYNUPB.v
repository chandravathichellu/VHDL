`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2019 11:11:40 PM
// Design Name: 
// Module Name: SYNUPB
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


module SYNUPB(clk,clr,preset,q,qbar);
parameter N=4;
input clk,preset,clr;
output reg [N-1:0] q;
output [N-1:0] qbar;
assign qbar = ~q;
always @(negedge clk, negedge clr,negedge preset)
begin
 if(preset==0 & clr==1)
    q <= 4'b1111;
 else if(preset==1 & clr==0)
    q <= 4'b0000;
 else
    q <= q+1;
end
endmodule
