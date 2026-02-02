// Fixing bugs in a MUX ckt
module top_module(
    input [1:0] sel,
    input [7:0] a,
    input [7:0] b,
    input [7:0] c,
    input [7:0] d,
    output [7:0] out);
    wire [7:0] w0, w1;   // intermediate wires of size 8-bits
    mux2 m0(sel[0], a, b, w0);     // you can't use the same variable names for both instantiations and intermediate variables
    mux2 m1(sel[0], c, d, w1);     // the initial two MUXs should have select line as sel[0]
    mux2 m2(sel[1], w0, w1, out);
endmodule