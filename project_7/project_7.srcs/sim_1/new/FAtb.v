`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:48:40 PM
// Design Name: 
// Module Name: FAtb
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


module FAtb();
reg A,B,Cin;
wire Sum,Cout;
FAD call (A,B,Cin,Sum,Cout);
initial 
begin
A = 0; B= 0; Cin=0;
#5 A = 0; B= 0; Cin=1;
#5 A = 0; B= 1; Cin=0;
#5 A = 0; B= 1; Cin=1;
#5 A = 1; B= 0; Cin=0;
#5 A = 1; B= 0; Cin=1;
#5 A = 1; B= 1; Cin=0;
#5 A = 1; B= 1; Cin=1;
#5 $finish;
end
endmodule
