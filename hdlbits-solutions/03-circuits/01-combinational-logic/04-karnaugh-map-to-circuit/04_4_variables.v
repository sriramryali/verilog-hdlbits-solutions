// Implementation of a ckt described by kmap
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out);
    assign out = a ^ b ^ c ^ d;     // from kmap, alternate 0's and 1's starting with 0 : xor, also for even no of variables xnor = ~xor, and for odd no of variables xnor = xor
endmodule