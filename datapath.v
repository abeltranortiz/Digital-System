`timescale 1ns / 1ps

module datapath(D,B,clk,clr,ld,en,out1,out2,result);
input [7:0]D,B;
input clk,clr,ld,en;
output [15:0]out1,out2,result;

reg1 r1(D,clk,clr,ld,out1);
reg1 r2(B,clk,clr,ld,out2);
comp c(out1,out2,ld,clk,clr,en,result);

endmodule
 