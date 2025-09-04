// Implementation of reduction operators
module top_module(
    input [99:0] in,      // a 100-bit vector
    output out_and,
    output out_or,
    output out_xor);
    assign out_and = &in;    // calculates the AND of 100 bits 
    assign out_or = |in;     // calculates the OR of 100 bits
    assign out_xor = ^in;    // calculates the XOR of 100 bits
endmodule
