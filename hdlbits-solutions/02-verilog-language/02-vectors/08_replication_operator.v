// Replication operator
module top_module(
    input [7:0] in,
    output [31:0] out);
    assign out = {{24{in[7]}},in};  // replication operator: {num{vector}} -> replicates the same vector given number of times, here we are extending the sign bit 24 times to get a 32-bit output vector
endmodule                           // it is useful while sign-extending (0: +ve, 1: -ve) a smaller number to a larger one, ex: 3'b011 -> 6'b000011, ex: 3'b101 -> 6'b111101