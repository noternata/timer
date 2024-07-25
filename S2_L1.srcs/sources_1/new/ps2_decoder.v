`timescale 1ns / 1ps

module ps2_decoder(
    input R_I,
    input [7:0] ps2_code,
    output reg [3:0] mem,
    output reg b_set,
    output reg b_rst,
    output reg b_srt,
    output reg R_O
    );
    
    parameter S1 = 8'h16;
    parameter S2 = 8'h1E;
    parameter S3 = 8'h26;
    parameter S4 = 8'h25;
    parameter S5 = 8'h2E;
    parameter S6 = 8'h36;
    parameter S7 = 8'h3D;
    parameter S8 = 8'h3E;
    parameter S9 = 8'h46;
    parameter S0 = 8'h45;
    parameter SA = 8'h1C;
    parameter SR = 8'h2D;
    parameter SS = 8'h1B;
    parameter SD = 8'h23;
    //parameter SQ = 8'h15;
    //parameter SW = 8'h1D;
    //parameter SE = 8'h24;
    parameter SEND = 8'hF0;

    reg flag;
    
    initial begin
    mem = 1'b0;
    b_set = 1'b0;
    b_rst = 1'b0;
    b_srt = 1'b0;
    flag = 1'b1;
    R_O = 1'b0;
    end
    
    always@ (posedge R_I) begin
        if(flag) begin
            case(ps2_code)
                S1: mem <= 4'b0001;
                S2: mem <= 4'b0010;
                S3: mem <= 4'b0011;
                S4: mem <= 4'b0100;
                S5: mem <= 4'b0101;
                S6: mem <= 4'b0110;
                S7: mem <= 4'b0111;
                S8: mem <= 4'b1000;
                S9: mem <= 4'b1001;
                S0: mem <= 4'b0000;
                SA: mem <= 4'b1010;
                SS: b_set <= 1'b1;                
                SR: b_rst <= 1'b1;
                SD: b_srt <= 1'b1;
                //SQ: b_set <= 1'b1;
                //SW: b_rst <= 1'b1;
                //SE: b_srt <= 1'b1;
                SEND: flag = 1'b0;
            endcase
            R_O <= 1'b1;
        end
        else begin
            case(ps2_code)
                    SS: b_set <= 1'b0;
                    SR: b_rst <= 1'b0;
                    SD: b_srt <= 1'b0;
                    //SQ: b_set <= 1'b0;
                    //SW: b_rst <= 1'b0;
                    //SE: b_srt <= 1'b0;
            endcase
            R_O <= 1'b0;
            flag <= 1'b1;
        end
    end
endmodule
