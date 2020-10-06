`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 07:23:04 PM
// Design Name: 
// Module Name: BoothST
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


module BoothST(input [3:0] A,B, output [7:0] Z);
wire [8:0] acc1,acc2,acc3,acc4,acc5;
assign acc1={4'b0,B,1'b0};
dec call1(acc1,A,acc2);
dec call2(acc2,A,acc3);
dec call3(acc3,A,acc4);
dec call4(acc4,A,acc5);
assign Z=acc5[8:1];
endmodule
