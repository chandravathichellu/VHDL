`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 11:52:31 AM
// Design Name: 
// Module Name: Muxtb
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


module Muxtb();
reg [3:0] in;
reg [1:0] sel;
wire out;
mux muxcall (in,sel,out);
initial
begin
$monitor($time, "input=%h,sel=%h,output=%h",in,sel,out);
in=4'h5;
sel=2'h2;
#5 sel=2'h1;
#5 sel=2'h0;
#5 sel=2'h3;
#5 $finish;
end
endmodule
