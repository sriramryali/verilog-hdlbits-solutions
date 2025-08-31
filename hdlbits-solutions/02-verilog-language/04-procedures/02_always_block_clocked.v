// Implementation of XOR in three ways (assign, always_combinational, always_clocked)
module top_module(
    input a,
    input b,
    input clk,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff);
    assign out_assign = a ^ b;                    // xor using assign statement
    always @(*) out_always_comb = a ^ b;          // xor using always_combinational -> @(*)
    always @(posedge clk) out_always_ff = a ^ b;  // xor using a ff, ckt works only at the positive edge of the clk, else where it acts as memory(hence, memory element is also present), hence the synthesized ckt will be different from the above ckts
endmodule

