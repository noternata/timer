`timescale 1ns / 1ps

module Button(   input clock_enable,
                 input clk,
                 input in_signal,
                 output output_signal,
                 output output_signal_enable);
         
    wire [4:0] counter_out;
    wire counter_max;
    
    wire first_sync;
    wire in_sync;
    wire counter_clock;
    wire out_clk;
    wire d_out_signal_enable;
    wire RE;
    wire output_signal_temp;
    
    assign counter_clock = clock_enable && (counter_out == 3'b101);
    assign out_clk = clk && counter_clock;
    assign d_out_signal_enable = counter_clock && in_sync;
    assign RE = ~(in_sync ^ output_signal_temp);
    
    sync IN_SIGNAL_SYNC_reg(.clk(clk), .in(in_signal), .final_out1(first_sync), .final_out2(in_sync));
    counter #(.MAX(31), .WIDTH(5)) counter_reg (.clk(clk), .clock_enable(clock_enable), .rst(RE), .out(counter_out), .q(counter_max));
    D_trigger_out OUT_SIGNAL_D_reg (.clk(clk), .CE(counter_out == 3'b101 && clk), .data(in_signal), .q(output_signal_temp));
    T_trigger_signal OUT_SIGNAL_reg (.clk(output_signal_temp), .q(output_signal));
    D_trigger OUT_SIGNAL_ENABLE_reg (.clk(clk), .data(d_out_signal_enable), .q(output_signal_enable));
    
endmodule
