`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 09:30:52 PM
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


module mux21(input [3:0]a,b,input sel,output [3:0] f);
assign f= {(a[3]& ~sel)|(b[3]&sel),(a[2]&~sel)|(b[2]&sel),(a[1]&~sel)|(b[1]&sel),(a[0]&~sel)|(b[0]&sel)};
endmodule