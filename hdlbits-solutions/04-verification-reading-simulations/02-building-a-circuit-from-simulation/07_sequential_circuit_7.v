// Building a sequential ckt from waveforms
module top_module(
    input a,
    input clk,
    output q);
    always @(posedge clk) 
        q <= ~a;    // from the waveform
endmodule 