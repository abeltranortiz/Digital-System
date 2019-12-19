`timescale 1ns / 1ps

module Test_RA();
reg [3:0]A,B;
reg clk,clear,start;
wire done;
wire cntclr,cnten;

RA UUT(A,B,clk,clear,start,done,cntclr,cnten);
initial begin
    A=0;B=0;start=0;clk=0;clear=0;
    #100;
    A=8;B=3;start=1;clk=1;clear=0;
    #10;
    A=7;B=4;start=1;clk=0;clear=0;
    #10;
    A=0;B=0;start=0;clk=1;clear=0;
    #10;
    A=0;B=0;start=0;clk=0;clear=0;
end
always #5 clk = ~ clk;
endmodule
