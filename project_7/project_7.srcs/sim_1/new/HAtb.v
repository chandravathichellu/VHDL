`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:20:28 PM
// Design Name: 
// Module Name: HAtb
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


module HAtb();
reg A,B;
wire Sum,Carry;
HAB call (A,B,Sum,Carry);
initial
begin
A = 1'b0;B = 1'b0;
#5 A = 1'b0;B = 1'b1;
#5 A = 1'b1;B = 1'b0;
#5 A = 1'b1;B = 1'b1;
#5 $finish;
end
endmodule
