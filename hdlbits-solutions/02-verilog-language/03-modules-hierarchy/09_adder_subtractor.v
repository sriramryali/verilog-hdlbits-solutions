// Implementation of a 32-bit adder - subtractor ckt using two 16-bit adder ckts
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,                     // The same ckt can be used for both addition and subtraction
    output [31:0] sum);            // when sub = 0, cin for first adder is 0 and b_new = b, addition takes place as usually here
    wire [15:0] b_not;             // when sub = 1, 2's complement of b(~b) is added with a and 1(sub here is 1), and hence the result is 2's CR(2's complement representation) of subtracted result
    wire [15:0] sum1;               
    wire [15:0] sum2;               
    wire c1,c2;                     
    assign b_new = sub ? ~b : b;    // other way -> b_not = b ^ sub
    add16 inst1(.a(a[15:0]), .b(b_new[15:0]), .cin(sub), .cout(c1), .sum(sum1));    // this is for the lower 16 bits
    add16 inst2(.a(a[31:16]), .b(b_new[31:16]), .cin(c1), .cout(c2), .sum(sum2));   // this is for the upper 16 bits
    assign sum = {sum2, sum1};
endmodule


// add16 module
module add16(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout);
    // body
endmodule 
