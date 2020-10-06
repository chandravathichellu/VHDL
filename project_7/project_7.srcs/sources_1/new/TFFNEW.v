`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 04:22:54 PM
// Design Name: 
// Module Name: TFFNEW
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


module TFFNEW(T,clk,clr,preset,q,qbar);
input T,clk,clr,preset;
output reg q;
output qbar;
assign qbar = ~q;
always @(negedge clk, negedge clr,negedge preset)
begin
if(preset==0 & clr==1)
    q <= 1;
else if(preset==1 & clr==0)
    q <= 0;
else if(T==0 & preset==1 & clr==1)
    q <= q;
else if(T==1 & preset==1 & clr==1)
    q <= ~q;
end
endmodule
