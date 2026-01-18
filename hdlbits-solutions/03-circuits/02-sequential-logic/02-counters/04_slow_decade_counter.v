// Implementation of a decade counter with enable(slowena)
module top_module(
    input clk,
    input reset,    // active high synchronus reset
    input slowena,  // counter counts only when the enable is high(else it retains it's previous value )
    output [3:0] q);
    always @(posedge clk) begin
        if (reset || ((q == 4'd9) && slowena))    // the counter resets when either reset is high(irrespective of enable) or when q = 9 and enable is high
            q <= 4'd0;
        else
            q <= slowena ? (q + 1'b1) : q;    // if enable is high, it counts, else q remains the same
    end
endmodule


// for single bit vectors, it doesn't matter if you use logical(||,&&) or bitwise(|,&)