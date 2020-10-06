`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 11:49:06 AM
// Design Name: 
// Module Name: DFF
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


module DFF(D,clk,clr,preset,q,qbar);
input D,clk,clr,preset;
output reg q;
output qbar;
assign qbar = ~q;
always @(negedge clk, negedge clr,negedge preset)
begin
if(preset==0 & clr==1)
    q <= 1;
else if(preset==1 & clr==0)
    q <= 0;
else if(D==0 & preset==1 & clr==1)
    q <= 0;
else if(D==1 & preset==1 & clr==1)
    q <= 1;
end
endmodule
