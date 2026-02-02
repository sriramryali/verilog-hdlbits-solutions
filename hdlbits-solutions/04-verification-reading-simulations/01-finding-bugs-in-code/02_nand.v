// Building a 3-input NAND gate from 5-input AND gate
module top_module(
    input a,
    input b,
    input c,
    output out);
    wire x;   // temporary variable for storing result of AND gate
    andgate inst1(.out(x), .a(a), .b(b), .c(c), .d(1'b1), .e(1'b1));
    assign out = ~x;
endmodule