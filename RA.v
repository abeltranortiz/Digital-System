`timescale 1ns / 1ps

module RA(clk,clear,ld,out,dout);
input [3:0]dout;
input clk,clear,ld;
output reg [7:0]out;
reg [7:0] v,z,A_out,B_out;
wire A_in,B_in;
always@ (posedge clk) begin
    if(clear)
        out <= 0 ;
    if(ld)
        out <= dout;
end
endmodule
