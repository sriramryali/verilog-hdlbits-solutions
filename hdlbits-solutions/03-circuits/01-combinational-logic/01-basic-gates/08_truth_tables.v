// A combinational ckt that implements a given truth table 
module top_module(
    input x1,
    input x2,
    input x3,
    output f);
    assign f = (~x3 & x2 & ~x1)|(~x3 & x2 & x1)|(x3 & ~x2 & x1)|(x3 & x2 & x1);
endmodule
