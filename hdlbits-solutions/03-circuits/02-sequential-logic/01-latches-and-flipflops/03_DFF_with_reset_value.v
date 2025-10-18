// Implementation of a 8-bit DFF with a synchronus reset setting it to value 0x34(8-bit hexa decimal)
module top_module(
    input [7:0] d,
    input clk,
    input reset,
    output reg [7:0] q);
    always @(negedge clk) begin    // synchronus reset -> works only at the active edge of clk
        if (reset == 1'b1) begin
            q <= 8'h34;    // mentioned in the question
        end
        else begin
            q <= d;         // try to use <= for sequential ckts
        end
    end
endmodule