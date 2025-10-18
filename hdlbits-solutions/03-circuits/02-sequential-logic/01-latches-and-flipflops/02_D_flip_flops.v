// Implementation of 8 D-FFs
module top_module(
    input [7:0] d,
    input clk,
    output reg [7:0] q);
    always @(posedge clk) begin
        q <= d;         // can also be written as q = d (as only one statement has to be executed) -> but better to use <= for sequential ckts
    end                 // can be written directly, as both q and d are 8-bit vectors
endmodule