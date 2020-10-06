`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 09:33:47 AM
// Design Name: 
// Module Name: ASYNUDTB
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


module ASYNUDTB();
parameter N=4;
reg clk=0,preset=1,clr=0,x=0;
wire [N-1:0] q,qbar;
ASYNUDST sync (clk,clr,preset,x,q,qbar);
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
#25 x=1;
#25 x=0;
#25 x=1;
#25 x=0;
end
endmodule
