// Implementation of a simple  ckt
module top_module(
    input x,
    input y,
    output z);combinational
    assign z = (x ^ y) & x;
endmodule