`timescale 1ns / 1ps

module register(
    input select,
    input [3:0] current_state,
    input [7:0] in_dividend,
    input [3:0] in_divisor,
    input [7:0] remainder,
    output reg [7:0] out_dividend,
    output reg [3:0] ref_divisor,
    output reg [3:0] dividend_len,
    output reg [2:0] divisor_len,
    output reg [2:0] ready
);

    always @(current_state or in_dividend or select or in_divisor or remainder or out_dividend )
    begin
        if(current_state == 3'b0001)
            begin
                if (select == 1'b0)
                    begin

                        out_dividend <= in_dividend;
                        ref_divisor <= in_divisor ;

                        if(in_divisor[3]==1'b1)
                            divisor_len <= 3'b100;
                        else if(in_divisor[2] == 1'b1)
                            divisor_len <= 3'b011;
                        else if(in_divisor[1] == 1'b1)
                            divisor_len <= 3'b010;
                        else if(in_divisor[0] == 1'b1)
                            divisor_len <= 3'b001;
                        else
                            divisor_len <= 3'b000;
                    end
                else if (select == 1'b1)
                    begin
                        out_dividend <= remainder;
                    end


                if(out_dividend[7] == 1'b1)
                    dividend_len <= 4'b1000;
                else if (out_dividend[6] == 1'b1)
                    dividend_len  <= 4'b0111;
                else if (out_dividend[5] == 1'b1)
                    dividend_len  <= 4'b0110;
                else if (out_dividend[4] == 1'b1)
                    dividend_len <= 4'b0101;
                else if (out_dividend[3] == 1'b1)
                    dividend_len <= 4'b0100;
                else if (out_dividend[2] == 1'b1)
                    dividend_len  <= 4'b0011;
                else if (out_dividend[1] == 1'b1)
                    dividend_len  <= 4'b0010;
                else if (out_dividend[0] == 1'b1)
                    dividend_len <= 4'b0001;
                else
                    dividend_len <= 4'b0000;

                ready <= 3'b001;

            end
        else
            ready =3'bzzz;
    end
endmodule
