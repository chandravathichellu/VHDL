`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 10:24:28 PM
// Design Name: 
// Module Name: ALUTB
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


module ALUTB();
reg [3:0] A=1,B=12,sel=0;
wire [3:0] Z;
ALUST call(A,B,sel,Z);
initial
begin
#5 A=13;B=6;sel=1;
#5 A=14;B=9;sel=2;
#5 A=7;B=0;sel=3;
#5 A=8;B=1;sel=4;
#5 A=12;B=4;sel=5;
#5 A=2;B=3;sel=6;
#5 A=5;B=10;sel=7;
#5 A=6;B=11;sel=8;
#5 A=4;B=15;sel=9;
#5 A=3;B=7;sel=10;
#5 A=10;B=7;sel=11;
#5 A=12;B=9;sel=12;
#5 A=2;B=13;sel=13;
#5 A=14;B=8;sel=14;
#5 A=9;B=6;sel=15;
#5 $finish;
end
endmodule
