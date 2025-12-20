// Implementation of a decade counter that counts from 1 to 10 : synchronus counter
module top_module(
    input clk,
    input reset,              // active high synchronus reset
    output [3:0] q);
    always @(posedge clk) begin 
        if (reset || (q == 4'd10)) begin 
            q <= 4'd1;        // counts from 1 to 10, and resets to value 1(4'b0001)
        end
        else begin 
            q <= q + 1;       // normal counter operation
        end
    end
endmodule