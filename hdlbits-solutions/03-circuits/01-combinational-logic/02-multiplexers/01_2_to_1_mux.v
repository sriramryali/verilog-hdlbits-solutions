// Implementation of a 2:1 MUX
module top_module(
    input sel,
    input a,
    input b
    output out);
    assign out = sel ? b : a;   // easiest way to do is to use conditional ternery operator
endmodule


// Only using assign statements
module top_module(
    input sel,
    input a,
    input b,
    output out);
    assign out = (sel & b) | (~sel & a);  // this works well if no of bits in a, b and sel are equal
endmodule