`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 12:01:36 PM
// Design Name: 
// Module Name: JOHNTB
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


module JOHNTB();
reg clk=1,clr=0,preset=1;
wire [3:0] q,qbar;
JOHNST call (clk,clr,preset,q,qbar);
always #10 clk=~clk;
initial
begin
#10 clr=1;preset=1;
end
endmodule
