`timescale 1ns / 1ps

module Test_DataPath();
reg [7:0]D,B;
reg clk,clr,ld,en;
wire [15:0]out1,out2,result;

datapath dut(D,B,clk,clr,ld,en,out1,out2,result);
initial begin
    D=0;B=0;clk=0;clr=0;ld=0;en=0;
    #100;
    D=1;B=0;clk=1;clr=0;ld=1;en=1;
    #10;
    D=2;B=2;clk=1;clr=0;ld=1;en=1;
    #10;
    D=3;B=6;clk=1;clr=0;ld=1;en=1;
    #10;
    D=9;B=3;clk=1;clr=0;ld=1;en=1;
    #10;
    D=0;B=0;clk=1;clr=0;ld=1;en=1;
    #10;
    D=0;B=0;clk=1;clr=1;ld=0;en=1;
    #10;
    D=8;B=4;clk=1;clr=1;ld=1;en=1;
    
    
end

always #10 clk =~clk;
endmodule
