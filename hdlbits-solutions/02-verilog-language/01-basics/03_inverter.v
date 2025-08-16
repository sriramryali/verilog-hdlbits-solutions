// Basic implemention an inverter
module top_module(
    input in,
    output out);
    assign out = in; // This is a behavioral design style 
endmodule


// Netlist or structural implementation of the same
module top_module(input in, output out);
    not M(out,in);
endmodule

