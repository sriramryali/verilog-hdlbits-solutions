// Combining previous two modules
module top_module(
    input x,
    input y,
    output z);
    wire t1, t2, t3, t4;
    assign t1 = (x ^ y) & x;    // code without instantiation of modules
    assign t2 = ~(x ^ y);
    assign t3 = t1 | t2;
    assign t4 = t1 & t2;
    assign out = t3 ^ t4;
endmodule


// Same using instantiation
module top_module(
    input x,
    input y,
    output z);
    wire t1, t2, t3, t4, t5, t6;
    simple_ckt_a m1(.x(x), .y(y), .z(t1));
    simple_ckt_b n1(.x(x), .y(y), .z(t2));
    simple_ckt_a m2(.x(x), .y(y), .z(t3));
    simple_ckt_b n2(.x(x), .y(y), .z(t4));
    assign t5 = t1 | t2;
    assign t6 = t3 & t4;
    assign z = t5 ^ t6;
endmodule

module simple_ckt_a(
    input x,
    input y,
    output z);
    assign z = (x ^ y) & x;
endmodule

module simple_ckt_b(
    input x,
    input y,
    output z);
    assign z = ~(x ^ y);
endmodule