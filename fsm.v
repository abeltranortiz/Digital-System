`timescale 1ns / 1ps
module fsm(ld,en,clk,reset,start,clr);
input clk,start,clr;
output reg ld,en,reset;
parameter INIT = 0;
parameter s1 = 1;
parameter s2 = 2;
reg [1:0]state,nextstate;

always@(posedge clk)begin
    if(reset==1)
        state <= INIT;
    else 
        state <= nextstate;
end
always@(posedge clk)begin
    if(clr==1)
        state = INIT;
    else 
        state = nextstate;
end
always@(*)begin
    case(state)
        INIT: begin
            if(start==1)begin
                nextstate = s1;
                reset = 1;
                en = 1;
                ld = 1;
            end
            else
                nextstate = INIT;
        end
        s1: begin
            nextstate = s2;
        end
        s2: begin
          ld = 1;
          reset = 0;
          en = 1;
//          nextstate = INIT;
        end
    endcase
end
endmodule
