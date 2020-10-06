`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 12:22:56 PM
// Design Name: 
// Module Name: DFFTB
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


module DFFTB();
reg D=0,clk=1,clr=0,preset=1;
wire q,qbar;
DFF call (D,clk,clr,preset,q,qbar);
always #10 clk=~clk;
initial  #100 $stop;
always #15 D=~D;
initial begin #10 preset=1;clr=1; end
endmodule
