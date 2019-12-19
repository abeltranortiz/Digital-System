`timescale 1ns / 1ps

module datapath2(A,B,ld,clr,clk,outA,outB,outC);
input wire[7:0]A,B;
input ld,clr,clk;
output [7:0]outA,outB,outC;

reg2 r1(A,ld,clk,clr,outA);
reg2 r2(B,ld,clk,clr,outB);
regC r3(outA,outB,ld,clk,clr,outC);

endmodule
