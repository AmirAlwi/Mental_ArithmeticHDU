`timescale 1ns / 1ps

module quotient(
    input clk,
    input clear,
    input [3:0] current_state,
    input [7:0] in_total_quotient,
    input [2:0] shift,
    output reg [7:0] out_total_quotient,
    output reg [2:0] ready
);

    reg [7:0] temp_quotient;

    always @ (posedge clk)
    begin
        if(!clear)
            out_total_quotient <= 8'bzzzzzzzz;
            
        if (current_state == 4'b0011)
            begin
                if (shift>=0)
                begin
                    temp_quotient <= 1'b1 << shift;
                end

                if(in_total_quotient > 0)
                    out_total_quotient <= in_total_quotient + temp_quotient;
                else
                    out_total_quotient <= temp_quotient ;
                    
                ready <=3'b011;
            end
        else
            ready <= 3'bzzz;

    end
endmodule
