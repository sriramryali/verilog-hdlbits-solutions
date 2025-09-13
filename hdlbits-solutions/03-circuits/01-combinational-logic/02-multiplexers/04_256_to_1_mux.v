// Implementation of a 256-bit MUX
module top_module(
    input [255:0] in,
    input [7:0] sel,
    output out);
    assign out = in[sel];    // simple way, this can be used when all the input bits are treated as a vector and it represents a behavioral modeling 
endmodule