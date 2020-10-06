`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2019 12:12:34 AM
// Design Name: 
// Module Name: vendingmachinetb
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


module vendingmachinetb();
reg n,d,q,clk,reset;
wire y;
wire [1:0] change;
Vendingmachine m1(n,d,q,reset, clk, y,change);
initial
begin
reset=0          ;clk=0;n=0;q=0;d=0;
$monitor($time, , ,"c=%b",clk,,"y=%b",y,,"r=%b",reset,,"d=%b",d,,"n=%b",n,,"q=%b",q);
#10 d=0;n=1;q=0;
#10 d=1;n=0;q=0;
#10 d=1;n=0;q=0;
#10 d=0;n=1;q=0;
#10 d=0;n=1;q=0;
#10 d=0;n=1;q=0;
#10 d=0;n=1;q=0;
#10 d=0;n=1;q=0;
#10 d=0;n=0;q=0;
end
always
#5 clk=~clk;
initial
#100 $finish ;
endmodule
