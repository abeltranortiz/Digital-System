`timescale 1ns / 1ps

module fsm2(start,ld,reset,clr,clk);
input start,clk;
output reg reset,ld,clr;
reg [1:0]state, nextstate;

parameter INIT=0;
parameter s1=1;

always@(posedge clk)begin
    if(reset==1)
        state = INIT;
    else
        state = nextstate;
end

always@(*)begin
     case(state)
        INIT: begin
            if(start==1)begin
                clr = 0;
                ld = 1;
                reset = 1;
//                nextstate = s1;
            end
            else
                nextstate = INIT;
        end
        s1: begin
            reset = 0;
            clr = 0;
            nextstate = INIT;
        end
    endcase
end
endmodule
