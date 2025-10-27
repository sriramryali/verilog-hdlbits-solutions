// Implementation of a D-latch
module top_module(
    input d,
    input ena,       // enable is used for a latch
    output q);
    always @(ena) begin    // whenever the value of enable changes
        if(ena) begin
            q <= d;        // if enable = 1, q = d, otherwise previous value of q is stored (if we haven't mentioned else part)
        end                // here, else part can also be mentioned : else q <= q;
    end
endmodule

