`timescale 1ns / 1ps

module System_1(D,B,clk,clr,reset,ld,en,out1,out2,result,start);
input [7:0]D,B;
input clk,clr,ld,en,reset,start;
output [15:0]out1,out2,result;

datapath dp(D,B,clk,clr,ld,en,out1,out2,result);
fsm f(ld,en,clk,reset,start,clr);
endmodule
