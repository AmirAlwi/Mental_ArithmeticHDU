`timescale 1ns / 1ps

module top(
    input clk,
    input write,
    input clear,
    input [7:0] in_dividend,
    input [3:0] in_divisor,
    output [7:0] total_quotient,
    output [7:0] remainder
);

    wire select;
    wire [2:0] ready;
    wire [3:0] current_state;
    wire [7:0] out_dividend;
    wire [2:0] divisor_len;
    wire [3:0] dividend_len;
    wire [3:0] ref_divisor;
    wire [7:0] shifted_divisor;
    wire [7:0] current_total_quotient;
    wire [2:0] shift;

    controller controller_wrapper
    (
        .clk(clk),
        .clear(clear),
        .ready(ready),
        .write(write),
        .select(select),
        .current_state(current_state)
    );

    register reg_wrapper
    (
        .select(select),
        .current_state(current_state),
        .in_dividend(in_dividend),
        .in_divisor(in_divisor),
        .remainder(remainder),
        .ref_divisor(ref_divisor),
        .out_dividend(out_dividend),
        .dividend_len(dividend_len),
        .divisor_len(divisor_len),
        .ready(ready)
    );

    shifter shifter_wrapper
    (
        .clk(clk),
        .current_state(current_state),
        .in_divisor (ref_divisor),
        .divisor_len(divisor_len),
        .dividend_len(dividend_len),
        .shifted_divisor(shifted_divisor),
        .shift(shift),
        .ready(ready)

    );

    quotient quotient_wrapper
    (
        .clk(clk),
        .clear(clear),
        .current_state(current_state),
        .in_total_quotient(total_quotient),
        .out_total_quotient(current_total_quotient),
        .shift(shift),
        .ready(ready)
    );

    subtractor sub_wrapper
    (
        .current_state(current_state),
        .shifted_divisor(shifted_divisor),
        .in_dividend(out_dividend),
        .current_total_quotient(current_total_quotient),
        .total_quotient(total_quotient),
        .remainder(remainder),
        .clear(clear),
        .ready(ready)
    );
endmodule
