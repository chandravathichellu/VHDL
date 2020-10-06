`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2019 11:18:26 PM
// Design Name: 
// Module Name: FAB
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


module  FAB(A,B,Cin,Sum,Cout);
input A,B,Cin;
output reg Sum,Cout;
always @(*)
begin 
    if (A==0 & B==0)
    begin 
        Sum = Cin;
        Cout = 0;
    end
    else if ((A==0 & B==1) | (A==1 & B==0))
    begin 
        Sum = ~Cin;
        Cout = Cin;
    end
    else 
    begin 
        Sum = Cin;
        Cout = 1;
    end
end
endmodule
