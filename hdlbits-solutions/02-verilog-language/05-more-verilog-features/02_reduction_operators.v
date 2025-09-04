// Implementation of a reduction operator in parity checking
module top_module(
    input [7:0] in,
    output parity);
    assign parity = ^in;    // it does the xor of all bits of a and results a single bit as output
endmodule