// Implementation of a shift register(shift right)
module top_module(
    input clk,
    input areset,      // asynchronous reset
    input load,        // when load is high, instead of shifting, it loads the data(like a DFF) : q <= data
    input ena,         // it shifts only when enable is high
    input [3:0] data,
    output reg [3:0] q);
    always @(posedge clk or posedge areset) begin 
        if (areset)
            q <= 4'd0;     // else-if creates a priority
        else if (load)
            q <= data;
        else if (ena)               // no need mention else : q <= q,
            q <= {1'b0, q[3:1]};    // all bits are shifted to right by a bit, zeros are inserted at the start : arithmetic shift right(unsigned numbers)
    end
endmodule 
    
    