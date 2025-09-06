// Implementaion of a wire
module top_module(
    input in,
    output out);
    assign out = in;   // this is a behavioral description
endmodule


// Structural representation
module top_module(
    input in,
    output out);
    buf ex(out, in);
endmodule