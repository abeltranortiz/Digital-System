`timescale 1ns / 1ps
module comp(D,B,ld,clk,clr,en,out);
input [7:0]D,B;
input en,ld,clk,clr;
output reg[15:0]out;
reg [15:0]count,result;
always@(posedge clk)begin
    if(clr==1)
        out <= 0;
    if(ld==1)
        out <= result;
    if(en==1)begin
        count = 0;//Variable para comparar B
        result = 0;//Variable para almacena y sumar A
    //Comparara si count sigue siendo menor que B
        while(count<B)begin
        
            //Aumenta el count + 1 para que vaya a la siguiente suma y comparacion
            count = count + 1;
            //Suma A las veces que se repita B
            result = result + D;
            
        end
    end
end
endmodule
