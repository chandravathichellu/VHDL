`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 07:28:50 PM
// Design Name: 
// Module Name: BoothB
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


module BoothB(input [3:0] A,B, output reg [7:0] Z);
reg [8:0] acc;
integer i;
always @(A,B)
begin
    acc=9'b0;
    acc[4:1]=B;
    for(i=0;i<4;i=i+1)
     begin
            if(acc[1:0]==2'b01)
                 acc[8:5]=acc[8:5]+A; 
            else if(acc[1:0]==2'b10)
                 acc[8:5]=acc[8:5]-A;
        acc[7:0] = acc[8:1]; 
     end
Z=acc[8:1];
end
endmodule
