// Implementation of a single block of a n-bit shift register
module top_module(
    input clk,
    input w,
    input R,
    input E,
    input L,
    output reg Q);
    always @(posedge clk) begin
        Q <= L ? R : (E ? w : Q);   // a simple MUX ckt mentioned given in the diagram
    end
endmodule
