// Basic implementation of a xnor gate
module top_module(
    input a,
    input b,
    output out);
    assign out = ~(a|b);
endmodule


// Netlist representation of the same
module top_module(
    input a,
    input b,
    output out);
    xnor M(out,a,b); // Netlist or structural design
endmodule

