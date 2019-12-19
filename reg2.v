`timescale 1ns / 1ps

module reg2(i,ld,clk,clr,out);
input [7:0]i;
input ld,clk,clr;
output reg[15:0]out;

always@(posedge clk)begin
    if(clr==1)
        out <= 0;
    if(ld)
        out <= ~i + 1;
    else
        out <= 0;
end
endmodule
