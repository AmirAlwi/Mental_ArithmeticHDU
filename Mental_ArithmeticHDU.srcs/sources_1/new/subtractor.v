`timescale 1ns / 1ps

module subtractor(
    input clear,
    input [3:0] current_state,
    input [7:0] shifted_divisor,
    input [7:0] in_dividend,
    input [7:0] current_total_quotient,
    output reg [7:0] total_quotient,
    output reg [7:0] remainder,
    output reg [2:0] ready
);

    always @(current_state or in_dividend or shifted_divisor or current_total_quotient or clear)
    begin

        if (!clear)
            total_quotient <= 8'bzzzzzzzz;

        if(current_state == 4'b0100)
            begin


                if (in_dividend >= shifted_divisor)
                    begin
                        total_quotient  <= current_total_quotient;
                        remainder <= in_dividend - shifted_divisor;
                        ready <= 3'b100;
                    end
                else
                    begin
                        remainder <= in_dividend ;
                        ready <= 3'b101;
                    end

            end
        else
            ready <= 3'bzzz;
    end
endmodule
