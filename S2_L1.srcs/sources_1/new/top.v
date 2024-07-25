`timescale 1ns / 1ps


module top(
        input clk,
        input btn_c,
        input btn_u,
        input btn_d,
        input [3:0] SW,
        
        input ps2_clk,
        input ps2_dat,
        
        output reg [7:0] AN,
        output reg [7:0] SEG
    );
    
    reg[7:0] MASK = 8'b1;
    wire [7:0] mask_temp;
    reg[31:0] memory;
    wire [31:0] memory_TEMP;
    wire[7:0] CATODE;
    
    initial begin
    memory = 32'bx;
    AN = ~1'b1;
    SEG = ~8'b0;
    end
    
    wire new_clk;
    clk_div div(.clk(clk), 
                .new_clk(new_clk));
    wire[2:0] state;
    wire q;
    reg CLOCK_ENABLE = 0;
    
    
    wire set;
    wire rst;
    wire srt;
    
    wire set_signal;
    wire set_signal_enable;
    Button but_set(.clock_enable(CLOCK_ENABLE), 
                   .clk(new_clk), 
                   .in_signal(set), 
                   .output_signal(set_signal), 
                   .output_signal_enable(set_signal_enable));
    
    wire reset_signal;
    wire reset_signal_enable;
    Button but_reset(.clock_enable(CLOCK_ENABLE), 
                     .clk(new_clk), .in_signal(rst), 
                     .output_signal(reset_signal), 
                     .output_signal_enable(reset_signal_enable));

    wire sort_signal;
    wire sort_signal_enable;
    Button but_sort(.clock_enable(CLOCK_ENABLE), 
                    .clk(new_clk), 
                    .in_signal(srt), 
                    .output_signal(sort_signal), 
                    .output_signal_enable(sort_signal_enable));
                    
    counter #(.MAX(7), .WIDTH(3)) ctr(.clk(new_clk), 
                                      .clock_enable(1), 
                                      .rst(0), 
                                      .out(state), 
                                      .q(q));
    
    LED led(.clk(new_clk), 
            .SWITCHER(memory[((state+1)*4-1)-:4]), 
            .SEG(CATODE));
    
    wire [3:0] data;
    wire R_O;
    ps2_top ps2(.clk(new_clk),
                .ps2_clk(ps2_clk),
                .ps2_dat(ps2_dat),
                .data(data),
                .b_set(set),
                .b_rst(rst),
                .b_srt(srt),
                .R_O(R_O));
            
    fsm machine(.clk(new_clk), 
                .RST(reset_signal_enable),
                .SW(data), .memory(memory_TEMP), 
                .set(set_signal_enable), 
                .sort(sort_signal_enable),
                .mask(mask_temp));
   
   
   
    always@ (posedge new_clk) begin
        CLOCK_ENABLE <= ~CLOCK_ENABLE;
        AN <= ~(1'd1 << state & mask_temp);
        SEG <= CATODE;
        memory <= {memory_TEMP};
        MASK <= mask_temp;
       end
       
endmodule
