// Implementation of a given DFF (DFF with asynchronous reset)
module top_module(
    input d,
    input clk,
    input ar,   // asynchronous reset
    output reg q);
    always @(posedge clk or posedge ar) begin
        if(ar) begin
            q <= 1'b0;
        end
        else begin
            q <= d;
        end
    end
endmodule

