// Implementation of a 32-bit LFSR(tap positions are given at 32,22,2,1) Note : tap positions start from 1, but FFs' naming starts from 0 - just a convention  
module top_module(
    input clk,
    input reset,                // active high synchronus reset : resets to 32'h1 
    output reg [31:0] q);       // a 32-bit regiser
    always @(posedge clk) begin
        if (reset)
            q <= 32'h1;
        else begin
            q[31]    <= q[0];          // actually q[0] ^ 0
            q[30:22] <= q[31:23];      // no xor, as no tops
            q[21]    <= q[22] ^ q[0];  // tap is present
            q[20:2]  <= q[21:3];       // no taps
            q[1]     <= q[2] ^ q[0];   // tap is present
            q[0]     <= q[1] ^ q[0];   // tap is present
        end
    end
endmodule