`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 03:10:38 PM
// Design Name: 
// Module Name: USB
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


module USB(input clk,clr,preset,SIR,SIL, input [1:0] sel, input [3:0] pi, output reg [3:0] q,output [3:0] qbar);
assign qbar=~q;
always @(negedge clk,negedge clr, negedge preset)
begin
if(~preset & clr)
    q = 4'b1111;
else if(preset & ~clr)
     q =4'b0000;
else if(preset&clr)
begin
    case(sel)
        0 : q = q;
        1 : q={q[2],q[1],q[0],SIL};
        2 : q={SIR,q[3],q[2],q[1]};
        3 : q= pi;
    endcase
end 
end
endmodule
