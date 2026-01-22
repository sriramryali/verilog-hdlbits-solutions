// Implementation of a 5-bit LFSR(linear feedback shift register) ckt
module top_module(
    input clk,
    input reset,                // active high synchronous reset : resets to 5'h1
    output reg [4:0] q);        // a 5-bit register
    always @(posedge clk) begin
        if (reset)
            q <= 5'h1;
        else begin
            q[0] <= q[1];          
            q[1] <= q[2];
            q[2] <= q[3] ^ q[0];    // these are mentioned in the question, a feedback taken from the first FF(q[0]) and is given as an input to xor for tap positions
            q[3] <= q[4];
            q[4] <= q[0];           // actually q[0] ^ 0
        end
    end
endmodule