// A combinational ckt that splits an input vector into upper and lower halves
`default_nettype none // Inclusion of this directory removes implicit nets, removes some bugs
module top_module(
    input [15:0] in,         // a 16-bit vector
    output [7:0] out_lo,     // an 8-bit vector 
    output [7:0] out_hi);    // an 8-bit vecotr
    assign out_hi = in[15:8]; // slicing the first 8 bits of in and assigning them to out_hi (8-bit vector)
    assign out_lo = in[7:0]; // slicing the last 8 bits of in and assigning them to out_lo (8-bit vector)
endmodule


// Implicit Nets (net -> variable type, can be wire, wand, wor)
// These are hard to find bugs that occur either due to the usage of undeclared nets (undeclared nets are 1-bit) in modules or due to the assignment of vectors to undeclared nets
// ex: Due to the use of undeclared nets in modules
//     module_1 ex(a,b) a,b are 1-bit vectors if undeclared, this will be an issue if they are intended to be vectors
// ex: Due to assignment of vectors to undeclared net type variables
//     wire [2:0] a,c; two 3-bit vectors
//     assign a = 3'b101; a = 101
//     assign b = a;   here b is undeclared, so it will be a 1-bit variable, b = 1
//     assign c = b;   c = 001 (as c is a 3-bit vector)-> bug, this is not intended, expected value is 101 as c = a 