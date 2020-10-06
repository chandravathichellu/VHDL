`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 05:02:58 PM
// Design Name: 
// Module Name: SYNUPDNTB
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


module SYNUPDNTB();
parameter N=4;
reg clk=0,preset=1,clr=0;
wire [N-1:0] q,qbar;
SYNUPB sync (clk,clr,preset,q,qbar);
initial
begin
#5 preset=1;
clr=1;
clk=1;
repeat(40)
begin
#5 clk=~clk;
end
#5 $finish;
end
initial
begin
#20 clr=0;
#20 clr=1;
#20 preset=0;
#20 preset=1;
end
endmodule
