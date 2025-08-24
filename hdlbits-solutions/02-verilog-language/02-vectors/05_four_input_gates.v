// Using bit-wise operators on a single vector
module top_module(
    input [3:0] in,   // 4 input wires combined together as a single vector
    output [3:0] out_and,
    output [3:0] out_or,
    output [3:0] out_xor);
    assign out_and = &in;   // bit-wise and logical operators can also be used on a single vector
    assign out_or = |in;
    assign out_xor = ^in;
endmodule