// Implementing a 32-bit adder
module top_module(
    input [31:0] a,
    input [31:0] b,
    input clk,
    output [31:0] out);      // once you draw the ckt diagram, it becomes easier to write the code
    wire c1,c2;              // 1-bit c1 and c2
    wire [15:0] sum1, sum2;  // 16-bit sum1 and sum2
    add16 inst1(.clk(clk), .a(a[15:0]), .b(b[15:0]), .cin(0), .cout(c1), .sum(sum1));      // first 16-bit adder
    add16 inst2(.clk(clk), .a(a[31:16]), .b(b[31:16]), .cin(c1), .cout(c2), .sum(sum2));   // second 16-bit adder
    assign sum = {sum1,sum2};
endmodule


// Instantiated module add16
module add16(
    input clk,
    input [15:0] a,
    input [15:0] b,
    input cin,
    output cout,
    output [15:0] sum);
    // body
endmodule