// Implementation of a given DFF (DFF with synchronus reset)
module top_module(
    input d,
    input clk,
    input r,    // synchronus reset
    output reg q);
    always @(posedge clk) begin
        if(r) begin
            q <= 1'b0;     // synchronus reset -> reset works in synchronism with clk
        end
        else begin
            q <= d;
        end
    end
endmodule