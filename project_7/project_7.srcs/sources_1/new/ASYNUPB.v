`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 09:12:02 AM
// Design Name: 
// Module Name: ASYNUPB
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


module ASYNUPB(clk,clr,preset,q,qbar);
input clk,preset,clr;
output reg [3:0]  q;
output [3:0] qbar;
assign qbar = ~q;
always @(negedge clk, negedge clr,negedge preset)
begin
if(preset==0 & clr==1)
    q[0] <= 1;
else if(preset==1 & clr==0)
    q[0] <= 0;
else 
    q[0]<=~q[0];
end
always @(negedge q[0], negedge clr,negedge preset)
begin
if(preset==0 & clr==1)
    q[1] <= 1;
else if(preset==1 & clr==0)
    q[1] <= 0;
else 
    q[1]<=~q[1];
end
always @(negedge q[1], negedge clr,negedge preset)
begin
if(preset==0 & clr==1)
    q[2] <= 1;
else if(preset==1 & clr==0)
    q[2] <= 0;
else 
    q[2]<=~q[2];
end
always @(negedge q[2], negedge clr,negedge preset)
begin
if(preset==0 & clr==1)
    q[3] <= 1;
else if(preset==1 & clr==0)
    q[3] <= 0;
else 
    q[3]<=~q[3];
end
endmodule
