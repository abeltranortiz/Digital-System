`timescale 1ns / 1ps

module Test_System_1();
reg [7:0]D,B;
reg clk,clr,reset,ld,en,start;
wire [15:0]out1,out2,result;

System_1 UUT(D,B,clk,clr,reset,ld,en,out1,out2,result,start);

initial begin
    D=0;B=0;clk=0;clr=1;reset=0;ld=0;en=0;start=1;
    #100;
    D=0;B=0;clk=1;clr=0;reset=0;ld=1;en=1;start=1;
    #10;
    D=3;B=4;clk=1;clr=0;reset=0;ld=1;en=1;start=1;
    #10;
    D=0;B=0;clk=1;clr=0;reset=0;ld=1;en=1;start=1;
    #10;
    D=9;B=3;clk=1;clr=0;reset=1;ld=1;en=1;start=1;
    #10;
    D=5;B=0;clk=1;clr=0;reset=1;ld=1;en=1;start=1;
    
end
always #5 clk = ~clk;
endmodule
