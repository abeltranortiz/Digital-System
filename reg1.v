`timescale 1ns / 1ps
module reg1(i,clk,clr,ld,out);
input [7:0]i;
input clk,clr,ld;
output reg[15:0]out;

always@(posedge clk)begin
    if(clr==1)
        out <= 0;
    //Si load esta encendido almacenara el resultado de la variable result el cual es la suma de N veces A
    if(ld==1)
        out <= i;
end
endmodule
