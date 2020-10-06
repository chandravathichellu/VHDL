`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 11:43:22 PM
// Design Name: 
// Module Name: Ttb
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


module Ttb();
reg T=0,clk=0,clr=0,preset=1;
wire q,qbar;
TFFNEW tff1  (T,clk,clr,preset,q,qbar);
initial
begin
repeat(10)
begin
#5 clk=~clk;
end
end
initial
begin
#5 T=1;preset=1;clr=1;
#5 T=0;preset=0;clr=1;
#5 T=1;preset=1;clr=0;
#5 T=1;preset=1;clr=1;
#5 T=0;preset=1;clr=1;
#5 T=0;preset=0;clr=1;
#5 T=1;preset=1;clr=1;
#30 $finish;
end
endmodule
