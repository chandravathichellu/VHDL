`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 05:57:59 PM
// Design Name: 
// Module Name: dec
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


module dec(input [8:0] acc,input [3:0] A, output [8:0] Z);
reg [8:0] k;
always @(*)
begin
    k=acc;
    if(k[1:0]==2'b01)
        k[8:5]=k[8:5]+A; 
    else if(k[1:0]==2'b10)
        k[8:5]=k[8:5]-A;
    k[7:0] = k[8:1];  
end
assign Z=k;
endmodule
