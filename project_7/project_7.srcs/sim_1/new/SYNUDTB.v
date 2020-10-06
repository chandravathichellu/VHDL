`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2019 10:57:39 PM
// Design Name: 
// Module Name: SYNUDTB
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


module SYNUDTB();
parameter N=4;
reg clk=0,preset=1,clr=0,x=0;
wire [N-1:0] q,qbar;
SYNUDST sync (clk,clr,preset,x,q,qbar);
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
#20 x=1;
#30 x=0;
#40 x=1;
#40 x=0;
end
endmodule
