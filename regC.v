`timescale 1ns / 1ps

module regC(a,b,ld,clk,clr,outC);
input wire[7:0]a,b;
input ld,clr,clk;
output reg[15:0]outC;
reg [15:0]doutC;

always@(posedge clk)begin
    if(clr==1)
        outC= 0;
    if(ld==1)
        outC <= doutC;
    if(a < 0)begin
       doutC = a / 2;
       outC <= doutC;
    end
    if(a > 0)begin
        doutC = b * 2;
        outC <= doutC;
    end
    if(a == 0)begin
        doutC = 0;
        outC <= doutC;
    end
end
endmodule
