`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 02:40:09 PM
// Design Name: 
// Module Name: mux21
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


module mux21(input a,b,sel,output f);
wire k1,k2;
and a1(k1,a,~sel);
and a2(k2,b,sel);
or  a3(f,k1,k2);
endmodule
