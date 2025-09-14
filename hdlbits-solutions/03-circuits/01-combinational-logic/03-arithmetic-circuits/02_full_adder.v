// Implementation of a full adder
module top_module(
    input a,
    input b,
    input cin,
    output cout,
    output sum);
    assign sum = (a ^ b ^ c);
    assign cout = (a & b)|((a ^ b) & cin);   // this can also be written as assign cout = (a & b)|(b & cin)|(cin & a)
endmodule
