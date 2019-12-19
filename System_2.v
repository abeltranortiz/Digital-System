`timescale 1ns / 1ps

module System_2(A,B,ld,start,reset,clr,clk,outA,outB,outC);
input wire[7:0]A,B;
input ld,clr,clk,start,reset;
output [7:0]outA,outB,outC;

datapath2 dt(A,B,ld,clr,clk,outA,outB,outC);
fsm2 f2(start,ld,reset,clr,clk);
endmodule
