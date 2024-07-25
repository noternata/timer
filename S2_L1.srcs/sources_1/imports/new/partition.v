`timescale 1ns / 1ps

module partition(input clk,
                 input RST,
                 input SET,
                 input R,
                 input[31:0] array,
                 input [2:0] start,
                 input [3:0] the_end,
                 output reg [2:0] p,
                 output reg partSignal,
                 output reg [31:0] partMemory
                 );

reg [3:0] state;
reg [3:0] arr [7:0];   
reg [3:0] temp;               
reg [3:0] pivot;
reg [3:0] i;
reg [3:0] j;
reg bool;

initial begin
    state = 1'b0;
    p = 1'b0;
    pivot = 4'b0;
    bool = 1'b0;
    partMemory = 32'b0;
    i = 1'b0;
    j = 1'b0;
    temp = 1'b0;
    arr[0] = 1'b0;
    arr[1] = 1'b0;
    arr[2] = 1'b0;
    arr[3] = 1'b0;
    arr[4] = 1'b0;
    arr[5] = 1'b0;
    arr[6] = 1'b0;
    arr[7] = 1'b0;
    partSignal = 1'b0;
end              

always@(posedge clk) begin

    if(RST) begin
        state = 1'b0;
        p = 1'b0;
        pivot = 4'b0;
        bool = 1'b0;
        partMemory <= 32'b0;
        i = 1'b0;
        j = 1'b0;
        temp = 1'b0;
        arr[0] = 1'b0;
        arr[1] = 1'b0;
        arr[2] = 1'b0;
        arr[3] = 1'b0;
        arr[4] = 1'b0;
        arr[5] = 1'b0;
        arr[6] = 1'b0;
        arr[7] = 1'b0;
        partSignal <= 1'b0;
    end
    case(state)
        1'b0: begin
            state = 1'b0;
            pivot = 4'b0;
            bool = 1'b0;
            i = 1'b0;
            j = 1'b0;
            temp = 1'b0;
            arr[0] = 1'b0;
            arr[1] = 1'b0;
            arr[2] = 1'b0;
            arr[3] = 1'b0;
            arr[4] = 1'b0;
            arr[5] = 1'b0;
            arr[6] = 1'b0;
            arr[7] = 1'b0;
            partSignal <= 1'b0;
            
            if (R) state <= 1'b1;
        end
        
        1'b1: begin
            arr[0] = array[3:0];
            arr[1] = array[7:4];
            arr[2] = array[11:8];
            arr[3] = array[15:12];
            arr[4] = array[19:16];
            arr[5] = array[23:20];
            arr[6] = array[27:24];
            arr[7] = array[31:28];
            pivot = arr[start];
            i = start - 1'b1;
            j = the_end;
            state <= 2'b10;
        end
        
        2'b10: begin
            i <= i + 1'b1;
            state <= 2'b11;
        end
        
        2'b11: begin
            if (arr[i] < pivot) 
                i <= i+1'b1;
            else
                state <= 3'b100;
        end
        
        3'b100: begin
            j <= j - 1'b1;
            state <= 3'b101;
        end
        
        3'b101: begin
            if (arr[j] > pivot) 
                j <= j-1'b1;
            else
                state <= 3'b110;
        end
        
        3'b110: begin
            p <= j;
            if (i >= j) begin
                state <= 4'b1111;
                partMemory <= {arr[7],
                               arr[6],
                               arr[5], 
                               arr[4], 
                               arr[3], 
                               arr[2], 
                               arr[1], 
                               arr[0]};
                
            end
            else begin
                temp = arr[i]; // SWAP
                arr[i] = arr[j];
                arr[j] = temp;
                state <= 2'b10;
            end
        end
        
        
        4'b1111: begin
            if (SET) state <= 1'b0;
            partMemory <= partMemory;
            p <= j;
            partSignal <= 1'b1;
        end
    endcase
end
endmodule
