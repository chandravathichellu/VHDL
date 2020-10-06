`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 12:27:39 AM
// Design Name: 
// Module Name: ASYNUPDNTB
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


module ASYNUPDNTB();
parameter N=4;
reg clk=0,preset=1,clr=0;
wire [N-1:0] q,qbar;
ASYNUPB sync (clk,clr,preset,q,qbar);
initial
begin
#5 preset=1;clr=1;clk=1;
repeat(40)
begin
#5 clk=~clk;
end
#5 $finish;
end
initial
begin
#15 clr=0;
#15 clr=1;
#15 preset=0;
#15 preset=1;
end
endmodule
