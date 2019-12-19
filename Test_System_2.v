`timescale 1ns / 1ps

module Test_System_2();
reg [7:0]A,B;
reg ld,clr,clk,start,reset;
wire [7:0]outA,outB,outC;
//Call file 
datapath2 dut(A,B,ld,clr,clk,outA,outB,outC);
//System 2
initial begin
//    A=0;B=0;ld=0;clr=1;clk=0;start=1;reset=1;
//    #100;
//    A=0;B=0;ld=1;clr=1;clk=1;start=1;reset=0;
//    #10;
//    A=9;B=2;ld=1;clr=0;clk=1;start=1;reset=0;
//    #10;
//    A=0;B=0;ld=1;clr=1;clk=1;start=1;reset=0;
        A=0;B=0;ld=0;clr=0;clk=0;start=1;reset=1;
        #100;
        A=0;B=0;ld=1;clr=0;clk=1;start=1;reset=1;
        #10;
        A=9;B=2;ld=1;clr=0;clk=1;start=1;reset=0;
        #10;
        
        A=~10;B=4;ld=1;clr=0;clk=1;start=1;reset=0;
        #10;
        A=~20;B=~4;ld=1;clr=0;clk=1;start=1;reset=0;
        
end

always #10 clk = ~clk;
//module Test_DataPath2();
//reg [7:0]A,B;
//reg clk,ld,clr;
//wire [7:0]outA,outB,outC;

//datapath2 dut(A,B,ld,clr,clk,outA,outB,outC);

//initial begin
//    A=0;B=0;ld=0;clr=0;clk=0;
//    #100;
//    A=0;B=0;ld=1;clr=0;clk=1;
//    #10;
//    A=9;B=2;ld=1;clr=0;clk=1;
//    #10;
//    A=20;B=4;ld=1;clr=0;clk=1;
//    #10;
//    A=-3;B=30;ld=1;clr=0;clk=1;
//    #10;
//    A=230;B=255;ld=1;clr=0;clk=1;
//end

//always #10 clk = ~clk;
endmodule
