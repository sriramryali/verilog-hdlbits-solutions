// Implementation of multiple gates
module top_module(
    input a,
    input b,
    output out_and,
    output out_or,
    output out_nand,
    output out_nor,
    output out_xor,
    output out_xnor,
    output out_anotb);
    assign out_and  = a & b;          // these are all behavioral descriptions
    assign out_or = a | b;
    assign out_nand = ~(a & b);
    assign out_nor = ~(a | b);
    assign out_xor = a ^ b;
    assign out_xnor = ~(a ^ b);
    assign out_anotb = a & ~b;  // defined in the question
endmodule


// Structural description
module top_module(
    input a,
    input b,
    output out_and,
    output out_or,
    output out_nand,
    output out_nor,
    output out_xor,
    output out_xnor,
    output out_anotb);
    and q(out_and, a, b);
    or w(out_or, a, b);
    nand e(out_nand, a, b);
    nor r(out_nor, a, b);
    xor t(out_xor, a, b); 
    xnor y(out_xnor, a, b);
    and u(out_anotb, a, ~b);
endmodule
