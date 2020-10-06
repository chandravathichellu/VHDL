`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 02:44:26 PM
// Design Name: 
// Module Name: USTB
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


module USTB();
reg clk=1,clr=0,preset=1,SIR=1,SIL=1;
reg [1:0] sel=2'b11;
reg [3:0] pi=4'b1011;
wire [3:0] q,qbar;
USB call (clk,clr,preset,SIR,SIL,sel,pi,q,qbar);
initial
begin
#5 preset=1;clr=1;clk=0;
repeat(40)
begin
#5 clk=~clk;
end
#5 $finish;
end
initial
begin
#17 sel=2'b01; SIL=0;
#17 sel=2'b10; SIR=0;
#17 sel=2'b00; 
#17 sel=2'b01; SIL=1;
end
endmodule
