// Instantiation of add1 adder in a 16-bit adder
module top_module(
    input [31:0] a,     // you need to write the code for add1 module and top module, code for add16 has been already given with 16 add1's instantiated
    input [31:0] b,
    output [31:0] sum);
    wire c1,c2;
    wire [15:0] sum1,sum2,
    add16 inst1(.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(c1), .sum(sum1));
    add16 inst2(.a(a[31:16]), .b(b[31:16]), .cin(c1), .cout(c2), .sum(sum2));
    assign sum = {sum2,sum1};
endmodule


// add1 module
module add1(
    input a,    // simply, this is a full adder with a,b & cin as inputs and cout and sum as outputs
    input b,
    input cin,
    output cout,
    output sum);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b)|((a ^ b) & cin);  // carry of a full adder can also be written as (a&b)|(b&c)|(c&a)
endmodule


// add16 module
module add16(
    input [15:0] a,
    input [15:0] b,
    input cin,   
    output cout,
    output [15:0] sum);
    // body (16 instances of add1 are included here)
endmodule
