`timescale 1ns / 1ps
module introsort_helper #(parameter maxDepth = 2)(
        input clk,
        input RST,
        input SET,
        input R,
        input [31:0] array ,
        input [2:0] start,
        input [3:0] the_end,
        output reg [31:0] sorted_array,
        output reg R_O
    );

reg [3:0] state;
wire [31:0] sorted_1_wire;
wire [31:0] sorted_2_wire;
reg [3:0] p;
reg [3:0] start_p;
reg [3:0] the_end_p;
reg [31:0] IntroMemory;
wire [31:0] pm;
reg R_part;
wire partSignal;
wire [2:0] part;
wire R_O_ISORT_1;
wire R_O_ISORT_2;
reg r_h1;
reg r_h2;

initial begin
    state <= 1'b0;
    p <= 1'b0;
    IntroMemory <= 1'b0;
    start_p <= 1'b0;
    the_end_p <= 1'b0;
    R_part <= 1'b0;
    R_O <= 1'b0;
    sorted_array <= 1'b0;
    r_h1 = 1'b0;
    r_h2 = 1'b0;
end

partition p1(.clk(clk),
             .RST(RST),
             .SET(SET),
             .R(R_part),
             .array(IntroMemory),
             .start(start),
             .the_end(the_end),
             .p(part),
             .partMemory(pm),
             .partSignal(partSignal)
             );

    generate
         if(maxDepth != 0) begin
           introsort_helper #(.maxDepth(maxDepth-1)) h2
                             (.clk(clk),
                              .RST(RST),
                              .SET(SET),
                              .R(r_h1), ////here
                              .array(IntroMemory),
                              .start(start),
                              .the_end(p+1),
                              .sorted_array(sorted_1_wire),
                              .R_O(R_O_ISORT_1)
                             );
                             
           introsort_helper #(.maxDepth(maxDepth-1)) h3
                             (.clk(clk),
                              .RST(RST),
                              .SET(SET),
                              .R(r_h2),
                              .array(IntroMemory),
                              .start(p+1),
                              .the_end(the_end),
                              .sorted_array(sorted_2_wire),
                              .R_O(R_O_ISORT_2)
                             );
         end
    endgenerate


always@(posedge clk) begin

    sorted_array <= IntroMemory;
    
    if (RST) begin
        state <= 1'b0;
        p <= 1'b0;
        IntroMemory <= 1'b0;
        start_p <= 1'b0;
        the_end_p <= 1'b0;
        R_part <= 1'b0;
        R_O <= 1'b0;
        sorted_array <= 1'b0;
        r_h1 <= 1'b0;
        r_h2 <= 1'b0;
    end
    
    
    case(state)
        
        1'b0: begin
            IntroMemory <= array;
            start_p <= start;
            the_end_p <= the_end;
            R_part <= 1'b0;
            r_h1 <= 1'b0;
            r_h2 <= 1'b0;
            p <= 1'b0;
            R_O <= 1'b0;
            if(R) state <= 1'b1;
        end
        
        1'b1: begin
            
            if (the_end <= (start + 1'b1)) begin
                sorted_array <= IntroMemory;
                state <= 3'b111;
            end
            else if(maxDepth == 0) begin
                   sorted_array <= IntroMemory;
                   state <= 3'b111; 
            end
            else begin
                state <= 2'b10;
                R_part <= 1'b1;
            end
        end
        
        2'b10: begin
            if (partSignal) begin
                state <= 2'b11;
                p <= part;
                IntroMemory <= pm;
                sorted_array <= pm;
                R_part <= 1'b0;
                r_h1 <= 1'b1;
                
            end
        end
        
        2'b11: begin
               if (~R_O_ISORT_1) begin
                   r_h1 <= 1'b1;
                end
               else begin
                state <= 3'b100;
                r_h1 <= 1'b0;
                IntroMemory <= sorted_1_wire;
                sorted_array <= sorted_1_wire;
                end
        end
        
        3'b100: begin
                if (~R_O_ISORT_2) begin
                    r_h2 <= 1'b1;
                end
                else begin
                    state <= 3'b111;
                    r_h2 <= 1'b0;
                    IntroMemory <= sorted_2_wire;
                    sorted_array <= sorted_2_wire;
                end
        end
        
        3'b111: begin
            R_O <= 1'b1;
            r_h2 <= 1'b0;
            r_h1 <= 1'b0;
            IntroMemory <= IntroMemory;
            sorted_array <= IntroMemory;
            if (SET) state <= 1'b0;
        end
    endcase
end
endmodule
