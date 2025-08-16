// A simple buffer (out = in), with no delay
module top_module(
    input in,
    output out);
    assign out = in; // a simple buffer
endmodule