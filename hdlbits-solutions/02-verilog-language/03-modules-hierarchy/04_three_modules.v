// Instantiating D_FFs in a counter module
module top_module(
    input clk,
    input d,
    output q);
    wire t1,t2;     // for the outputs of first two d_ffs
    d_ff inst1(.clk(clk), .d(d), .q(t1));     // simply once see the ckt diagram, then coding will be super easy
    d_ff inst2(.clk(clk), .d(t1), .q(t2));
    d_ff inst3(.clk(clk), .d(t2), .q(q));
endmodule


// d_ff module
module d_ff(
    input clk,
    input d,
    output q);
    // body
endmodule