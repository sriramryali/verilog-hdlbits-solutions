// Fixing bugs in a MUX ckt
module top_module(
    input sel,
    input [7:0] a,
    input [7:0] b,
    output [7:0] out);          // here out should also be of 8-bits
    assign out = sel ? a : b;   // here sel & a | ~sel & b doesn't work, because a and b are 8-bit vectors but sel is of single bit, also from simulation waveform we can see that sel = 1 gives output a
endmodule