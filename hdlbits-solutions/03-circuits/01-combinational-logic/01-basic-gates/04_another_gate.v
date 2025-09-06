// Implementing a gate
module top_module(
    input in1,
    input in2,
    output out);
    assign out = in1 & ~in2;   // behavioral style
endmodule


// Structural description
module top_module(
    input in1,
    input in2,
    output out);
    and s(out, in1, ~in2);
endmodule