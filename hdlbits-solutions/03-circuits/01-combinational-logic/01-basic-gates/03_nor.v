// Implementation of a nor gate
module top_module(
    input in1,
    input in2,
    output out);
    assign out = ~(in1|in2);   // this is a behavioral description
endmodule


// Structural description
module top_module(
    input in1,
    input in2,
    output out);
    nor s(out, in1, in2);   
endmodule