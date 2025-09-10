// Implementation of a 2:1 MUX with vectors as inputs
module top_module(
    input sel,        // single bit select line
    input [99:0] a,   // 100-bit input vectors
    input [99:0] b,
    output [99:0] out);
    assign out = sel ? b : a;  // this can also be used for multi-bit vectors
endmodule


// this cannot be used 
// assign out = (sel & b) | (sel & a); this won't work because sel is a single bit vector and a, b are 100-bit vectors