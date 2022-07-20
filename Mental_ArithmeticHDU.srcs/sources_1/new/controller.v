`timescale 1ns / 1ps

module controller(
    input clk,
    input clear,
    input write,
    input [2:0] ready,
    output reg select,
    output reg [3:0] current_state
);

    parameter
    IDLE = 4'b0000,
    REG =4'b0001,
    SHIFT = 4'b0010,
    QUO = 4'b0011,
    SUB = 4'b0100,
    TOTAL = 4'b1000;

    reg [3:0] next_state;

    always @ (posedge clk or negedge clear)
    begin
        if(!clear)
            begin
                current_state <= IDLE;
            end
        else
            current_state <= next_state;
    end

    always @ (current_state, ready, write, select)
    begin
        case (current_state)
            IDLE:
            begin

                if(write == 1'b1)
                    begin
                        select <= 1'b0;
                        next_state <= REG;
                    end
                else
                    next_state <= IDLE;
            end

            REG:
            begin
                if(ready == 3'b001)
                    next_state <= SHIFT;
                else
                    next_state <= REG;
            end

            SHIFT:
            begin
                if(select ==1'b0)
                    select <= 1'b1;
                if(ready == 3'b010)
                    next_state <= QUO;
                else
                    next_state <= SHIFT;
            end

            QUO:
            begin
                if(ready == 3'b011)
                    next_state <= SUB;
                else
                    next_state <= QUO;
            end

            SUB:
            begin
                if(ready == 3'b100)
                    next_state <= REG;
                else if(ready == 3'b101)
                    next_state <= TOTAL;
                else
                    next_state <= SUB;
            end

            TOTAL:  next_state <= TOTAL;

            default:
            next_state  <= current_state;
        endcase

    end
endmodule


