`timescale 1ns / 1ps

module D_trigger_out(
                 input clk,
                 input CE,
                 input data,
                 output reg q);
                 
    always @(posedge clk) begin
            if (CE) begin
                q <= data;
            end
    end
    
    initial
    q <= 0;
    
endmodule