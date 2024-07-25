`timescale 1ns / 1ps


module ps2_top(
        input clk,
        input ps2_clk,
        input ps2_dat,
        output reg [3:0] data,
        output b_set,
        output b_rst,
        output b_srt,
        output reg R_O
    );
    
    reg RESET;
    reg [3:0] memory [31:0];
    reg [7:0] pointer;
    wire [7:0] CODE;
    wire R_O_K;
    wire [3:0] MEM;
    wire R_O_D;
    integer i;
    
    initial begin
        data = 1'b0;
        R_O = 1'b0;
        RESET = 1'b0;
        pointer = 1'b0;
        i = 1'b0;
        for (i = 1'b0;i<6'd32;i = i+1'b1) memory[i] = 1'b0;
    end
                                      
    ps2_keyboard key_1 (.ps2_clk(ps2_clk),            
                       .ps2_dat(ps2_dat),            
                       .ps2_code(CODE),
                       .R_O(R_O_K));
                       
    ps2_decoder dec_1 (.R_I(R_O_K),
                       .ps2_code(CODE),
                       .mem(MEM),
                       .b_set(b_set),
                       .b_rst(b_rst),
                       .b_srt(b_srt),
                       .R_O(R_O_D));
                       
    always@(/* posedge R_O_D or */ posedge clk) begin
        data <= MEM;
//        if(R_O_D) begin
//            if(!b_set || !b_rst || !b_srt) begin
//                    memory[pointer] <= MEM;
//                    pointer <= pointer + 1'b1;
//                end
//            end
//        if(clk) begin
//            if (pointer != 1'b0) begin
//                data <= memory[pointer];
//                //memory[pointer]
//                pointer <= pointer -1'b1;
//                R_O <= 1'b1;
//            end
//            else  R_O <= 1'b0;
//        end
    end    

endmodule
