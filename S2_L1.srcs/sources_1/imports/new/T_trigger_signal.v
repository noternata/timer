`timescale 1ns / 1ps

module T_trigger_signal(
                 input clk,
                 output reg q);
               
    
    always @(posedge clk) 
        q <= ~q;

    initial
    q <= 0;
endmodule

