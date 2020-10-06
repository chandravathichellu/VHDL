`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 09:30:24 PM
// Design Name: 
// Module Name: mux41
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

module mux41(input [3:0] a,b,c,d, input [1:0] sel, output [3:0] f);
wire [3:0] k1,k2;
mux21 mux1 (a,b,sel[0],k1);
mux21 mux2 (c,d,sel[0],k2);
mux21 mux3 (k1,k2,sel[1],f);
endmodule
