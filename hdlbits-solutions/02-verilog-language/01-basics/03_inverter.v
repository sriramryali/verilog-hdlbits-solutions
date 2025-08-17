// Basic implementation an inverter
module top_module(
    input in,
    output out);
    assign out = ~in; // This is a behavioral design style, using out = !in is not correct, because ! is used for logical or boolean operation, simply true (any non zero value) or false (all bits are zero)
endmodule


// Netlist or structural implementation of the same
module top_module(input in, output out);
    not M(out,in);
endmodule

