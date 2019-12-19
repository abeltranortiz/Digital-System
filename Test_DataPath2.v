`timescale 1ns / 1ps

module Test_DataPath2();
reg [7:0]A,B;
reg clk,ld,clr;
wire [7:0]outA,outB,outC;

datapath2 dut(A,B,ld,clr,clk,outA,outB,outC);

initial begin
    A=0;B=0;ld=0;clr=0;clk=0;
    #100;
    A=0;B=0;ld=1;clr=0;clk=1;
    #10;
    A=9;B=2;ld=1;clr=0;clk=1;
    #10;
    A=20;B=4;ld=1;clr=0;clk=1;
    #10;
    A=-3;B=30;ld=1;clr=0;clk=1;
    #10;
    A=230;B=255;ld=1;clr=0;clk=1;
end

always #10 clk = ~clk;
endmodule
