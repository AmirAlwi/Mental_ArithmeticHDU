`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module testbench(

);

    reg clk = 0;
    reg write;
    reg clear;
    reg [7:0] in_dividend;
    reg [7:0] in_divisor;
    wire [7:0] total_quotient;
    wire [7:0] remainder;

    top UUT(clk,write,clear,in_dividend, in_divisor, total_quotient, remainder );

    always #5 clk = ~clk;

    initial
    begin
        #0 clear = 1;
        #0 write = 0;
        #20 clear = 0;
        #20 clear = 1;
        #10 in_dividend = 255;
        #0 in_divisor = 8;
        #10 write = 1;
        #10 write = 0;
    end
endmodule
