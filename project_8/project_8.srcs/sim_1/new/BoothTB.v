`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 07:49:34 PM
// Design Name: 
// Module Name: BoothTB
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


module BoothTB();
reg [3:0] A=4'b0,B=4'b0;
wire [7:0] Z;
BoothB call(A,B,Z);
initial
begin
#5 A=4'b1011;B=4'b0111;
#5 A=4'b0011;B=4'b0101;
#5 A=4'b1001;B=4'b1010;
#5 A=4'b1100;B=4'b0010;
#5 $finish;
end
endmodule
