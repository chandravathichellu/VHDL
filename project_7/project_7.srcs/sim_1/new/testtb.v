`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2020 12:16:07 AM
// Design Name: 
// Module Name: testtb
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


module testtb();
reg [2:0] a;
wire [2:0] b;
reg clk;
test call (a,clk,b);
initial 
begin
clk = 0;
a = 6;
end
always #10 clk=~clk;
endmodule
