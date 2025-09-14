// Implementation of a half adder
module top_module(
    input a,
    input b,
    output sum,
    output cout;
    assign sum = a ^ b;   // a simple half adder ckt
    assign cout = a & b;
endmodule