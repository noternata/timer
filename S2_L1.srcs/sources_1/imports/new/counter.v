`timescale 1ns / 1ps

module counter 
    #(
      parameter MAX = 255,    // MAX - size of counter
      parameter WIDTH = 8)    // WIDTH - size of output of counter
    
    (
     input clk,
     input clock_enable,
     input rst,
     output reg[WIDTH-1:0] out,
     output reg q);
                
    always @ (posedge clk) begin
        if (rst) begin
            out <= 0;
            q <= 1'b0;
            end
        else if (clock_enable) begin
                if (out < MAX) begin
                    out <= out + 1;
                end
                else begin
                    out <= 0;
                end
        end
    end
    
    initial begin
    out <= 0;
    q <= 0;
    end
endmodule 
