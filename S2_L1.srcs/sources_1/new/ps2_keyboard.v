`timescale 1ns / 1ps

module ps2_keyboard(
                    input ps2_clk,
                    input ps2_dat,
                    output reg [7:0] ps2_code,
                    output reg R_O
    );
    
    reg [3:0] state;
    reg parity;
    reg stop;
    reg error;
    wire sum;
    
    initial begin
       ps2_code = 1'b0;
       parity = 1'b0; 
       stop = 1'b0;
       error = 1'b0;
       state = 1'b0;
       R_O = 1'b0;
    end
    
always@(negedge ps2_clk) begin
    case(state)
    4'd0: begin //first bit
        //stop <= 1'b0;
        R_O <= 1'b0;
        if(ps2_dat == 1'b1)
            error <= 1'b1; // RAISE ERROR
        else error <= 1'b0;
        state <= 4'd1;
    end 
    
    4'd1: begin 
        ps2_code[0]<=ps2_dat;
        state <= 4'd2;    
    end
    
    4'd2: begin 
        ps2_code[1]<=ps2_dat;
        state <= 4'd3;    
    end
    
    4'd3: begin 
        ps2_code[2]<=ps2_dat;
        state <= 4'd4;    
    end
    
    4'd4: begin 
        ps2_code[3]<=ps2_dat;
        state <= 4'd5;    
    end
    
    4'd5: begin 
        ps2_code[4]<=ps2_dat;
        state <= 4'd6;    
    end
    
    4'd6: begin 
        ps2_code[5]<=ps2_dat;
        state <= 4'd7;    
    end
    
    4'd7: begin 
        ps2_code[6]<=ps2_dat;
        state <= 4'd8;    
    end
    
    4'd8: begin 
        ps2_code[7]<=ps2_dat;
        state <= 4'd9;    
    end
    
    
    4'd9: begin
        //parity <= 1'b1; 
        if(ps2_dat != sum) error <= 1'b1;
        state <= 4'd10;    
    end
    
    4'd10: begin
        //stop <= 1'b1; 
        if (ps2_dat != 1'b1) error <= 1'b1;
        state <= 4'd0;
        if(!error) R_O <= 1'b1;
        //parity <= 1'b0;
    end
    endcase
 

end
   

assign sum = ~(ps2_code[0] +  ps2_code[1] +  ps2_code[2] +  ps2_code[3] +  ps2_code[4] +  ps2_code[5] +  ps2_code[6] +  ps2_code[7]);
endmodule
