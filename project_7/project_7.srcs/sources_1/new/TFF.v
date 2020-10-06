`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 11:20:04 PM
// Design Name: 
// Module Name: TFF
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


module TFF(T,clk,clr,preset,q,qbar);
input T,clk,clr,preset;
output q,qbar;
wire t1,t2,t3,t4,t5,t6;
nand nand1 (t1,T,clk,qbar);
nand nand2 (t2,T,clk,q);
nand nand3 (t3,t1,t4);
nand nand4 (t4,t3,t2);
nand nand5 (t5,t3,~clk);
nand nand6 (t6,t4,~clk);
nand nand7 (q,t5,qbar,preset);
nand nand8 (qbar,t6,q,clr);
endmodule
