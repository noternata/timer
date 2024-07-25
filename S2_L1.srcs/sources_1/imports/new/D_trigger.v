`timescale 1ns / 1ps

module D_trigger(input clk,
                 input data,
                 output reg q);
                 
    always @(posedge clk) begin
        q <= data;
    end
    
    initial
    q <= 0;
    
endmodule

