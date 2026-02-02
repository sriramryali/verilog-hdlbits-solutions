// Building a sequential ckt from waveforms
module top_module(
    input a,
    input clk,
    output [3:0] q);
    always @(posedge clk) begin
        if (a)                      // synchronous reset to 4, from given waveform
            q <= 4'd4; 
        else
            q <= (q == 4'd6) ? 4'd0 : q + 1;   // a MOD-7 counter(0-6)
    end
endmodule