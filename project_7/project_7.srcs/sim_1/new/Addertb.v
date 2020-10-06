`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 10:18:25 PM
// Design Name: 
// Module Name: Addertb
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


module Addertb();
reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;
CLAD call (A,B,Cin,Sum,Cout);
initial
begin
A = 4'h5;B=4'h9;Cin=0;
#5 A = 4'h7;B=4'hb;Cin=1;
#5 A = 4'h9;B=4'h2;Cin=0;
#5 A = 4'h8;B=4'h3;Cin=1;
#5 A = 4'h5;B=4'h3;Cin=1;
#5 A = 4'he;B=4'h1;Cin=1;
#5 $finish;
end
endmodule
