`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 08:04:16 PM
// Design Name: 
// Module Name: ALUST
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


module ALUST(input [3:0] A,B,sel, output [3:0] Z);
wire [3:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15;
sum call1(A,B,I0);
dif call2(A,B,I1);
inc call3(A,I2);
inc call4(B,I3);
mul call5(A,B,I4);
div call6(A,B,I5);
exp call7(A,B,I6);
mod call8(A,B,I7);
land call9(A,B,I8);
lor call10(A,B,I9);
lxor call11(A,B,I10);
left call12(A,I11);
right call13(B,I12);
lnand call14(A,B,I13);
lnor call15(A,B,I14);
lxnor call16(A,B,I15);
mux16to1 call (I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,sel,Z);
endmodule
