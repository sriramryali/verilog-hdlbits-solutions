// Implementation of a DFF with byte enable that allows to modify parts of a group of flip flops
module top_module(
    input clk,
    input resetn,      // synchronous active low reset triggered by +ve edge of the clock
    input [15:0] d,
    input [1:0] byteena,
    output reg [15:0] q);
    always @(posedge clk) begin
        if (resetn) begin
            q[15:8] <= (byteena[1]) ? d[15:8] : q[15:8];     // upper bits will be written when byteena[1] = 1
            q[7:0] <= (byteena[0]) ? d[7:0] : q[7:0];        // lower bits will be written when byteena[0] = 1
        end
        else begin
            q = 16'h0000;     // resetting the value to zero
        end
    end
endmodule