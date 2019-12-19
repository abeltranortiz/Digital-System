`timescale 1ns / 1ps

module Test_fsm();
reg B,clk,reset,start;
wire cntclr,cnten;
wire [3:0]count;

fsm dut(B,clk,reset,start,cntclr,cnten,count);

initial begin
    B=0;clk=0;reset=0;start=0;
    #100;
    B=2;clk=1;reset=0;start=1;
    #10;
    B=0;clk=0;reset=0;start=1;
    #10;
    B=0;clk=0;reset=0;start=0;
    #10;
    B=2;clk=1;reset=0;start=1;
end
always #10 clk = ~clk;
endmodule
