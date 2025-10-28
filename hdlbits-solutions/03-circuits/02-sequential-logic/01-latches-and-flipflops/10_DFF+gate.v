// Implementation of a given sequential ckt (DFF with XOR gate)
module top_module(
    input in,
    input clk,
    output reg out);
    always @(posedge clk) begin
        out <= out ^ in;   // given in the ckt diagram 
    end
endmodule