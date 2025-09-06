// Ikplementation of a two gate ckt
module top_module(
    input in1,
    input in2,
    input in3,
    output out);
    wire t;
    assign t = ~(in1 ^ in2);   // behavioral description
    assign out = t ^ in3;
endmodule


// Structural description
module top_module(
    input in1,
    input in2,
    input in3,
    output out);
    wire t;
    xnor H(t, in1, in2);
    xor M(out, t, in3);
endmodule