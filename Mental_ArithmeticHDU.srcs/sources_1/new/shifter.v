`timescale 1ns / 1ps

module shifter(
    input clk,
    input [3:0] current_state,
    input [7:0] in_divisor,
    input [3:0] dividend_len,
    input [2:0] divisor_len,
    output reg [2:0] shift,
    output reg [7:0] shifted_divisor,
    output reg [2:0] ready
);

    reg [7:0] temp_quotient;
    always @ (posedge clk)
    begin
        if (current_state == 4'b0010)
            begin
                if (dividend_len > divisor_len)
                    begin
                        shift <= dividend_len - divisor_len - 1;

                    end
                else
                    begin
                        shift <= 0;
                    end

                if (shift>0)
                    begin
                        shifted_divisor <= in_divisor << shift;
                    end
                else
                    shifted_divisor <= in_divisor ;           

                if (shift >= 0 && shifted_divisor >= 0 )
                    ready <= 3'b010;
            end
        else
            ready <= 3'bzzz;
    end
endmodule
