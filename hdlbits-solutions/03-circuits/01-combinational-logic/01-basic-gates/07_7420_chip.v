// Implementation of 7420 chip
module top_module(
    input p1a,
    input p1b,
    input p1c,
    input p1d,
    output p1y,
    input p2a,
    input p2b,
    input p2c,
    input p2d,
    output p2y);                             // Better prefer behavioral style for rtl coding
    assign p1y = ~(p1a & p1b & p1c & p1d);   // behavioral style
    assign p2y = ~(p2a & p2b & p2c & p2d);
endmodule


// Structural representation
module top_module(
    input p1a,
    input p1b,
    input p1c,
    input p1d,
    output p1y,
    input p2a,
    input p2b,
    input p2c,
    input p2d,
    output p2y);
    nand x(p1y, p1a, p1b, p1c, p1d);
    nand y(p2y, p2a, p2b, p2c, p2d);    
endmodule