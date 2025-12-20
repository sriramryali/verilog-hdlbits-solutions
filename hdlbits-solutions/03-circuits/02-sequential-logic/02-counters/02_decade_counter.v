// Implementation of a decade counter(counts 10 nos) - synchronus counter
module top_module(
    input clk,
    input reset,          // synchronus active high reset
    output reg [3:0] q);
    always @(posedge clk) begin 
        if (reset || (q == 4'b1001)) begin     // counts from 0 to 9, whenever reset is applied or q becomes 9, next state is set to 0
            q <= 4'b0000;     
        end
        else begin 
            q <= q + 1;     // normal function of a counter 
        end
    end
endmodule
