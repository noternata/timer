`timescale 1ns / 1ps

module sort_machine(
    input clk,
    input RST,
    input SET,
    input sort_flag,
    input [31:0] memory,
    input [2:0] length,
    output reg [31:0] memory_sorted,
    output reg R_O
    );
    
parameter maxDepth = 7; // change value to whatever you want DEFAULT --- 7
reg [2:0] start;
reg [3:0] the_end;
reg [1:0] state;
wire [31:0] memory_introsort;
wire R_O_ISORT_1;
reg R_intro;

introsort_helper #(.maxDepth(maxDepth)) h1
                     (.clk(clk),
                      .RST(RST),
                      .SET(SET),
                      .R(R_intro),
                      .array(memory),
                      .start(start),
                      .the_end(the_end),
                      .sorted_array(memory_introsort),
                      .R_O(R_O_ISORT_1)
                     );

initial begin
    memory_sorted =  memory;
    state = 1'b0;
    R_O = 1'b0;
    start = 1'b0;
    the_end = 1'b0;
    R_intro = 1'b0;
end

always@(posedge clk) begin
    if (RST) begin
        memory_sorted =  memory;
        state = 1'b0;
        R_O = 1'b0;
        R_intro = 1'b0;
        start = 1'b0;
        the_end = 1'b0;
    end
    
     case(state)
        1'b0: begin
            R_O = 1'b0;
            memory_sorted <= memory;
            start <= 1'b0;
            state = 1'b0;
            the_end <= length+1;
            if (sort_flag) begin
                state = 1'b1;
                R_intro <= 1'b1;
            end
        end
        1'b1: begin
            if (~R_O) begin
                memory_sorted <= memory_introsort;
                R_O <= R_O_ISORT_1;
                state <= 2'b10;
            end
            else state <= 2'b1;
        end
        2'b10: begin
            R_intro <= 1'b0;
            R_O <= R_O_ISORT_1;
            memory_sorted <= memory_introsort;
            if (SET) state<= 1'b0;
        end
        endcase
end

endmodule
