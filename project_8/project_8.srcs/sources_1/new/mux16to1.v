`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 08:22:29 PM
// Design Name: 
// Module Name: mux16to1
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


module mux16to1(input [3:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15, input [3:0] sel, output [3:0] f);
wire [3:0] k1,k2,k3,k4;
mux41 mux1 (I0,I1,I2,I3,sel[1:0],k1);
mux41 mux2 (I4,I5,I6,I7,sel[1:0],k2);
mux41 mux3 (I8,I9,I10,I11,sel[1:0],k3);
mux41 mux4 (I12,I13,I14,I15,sel[1:0],k4);
mux41 mux5 (k1,k2,k3,k4,sel[3:2],f);
endmodule
