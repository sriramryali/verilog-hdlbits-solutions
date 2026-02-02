// Building a combinational ckt from waveforms
module top_module(
    input a,
    input b,
    input c,
    input d,
    output q);
    assign q = ~(a ^ b ^ c ^ d);    // xnor, from the given waveform
endmodule