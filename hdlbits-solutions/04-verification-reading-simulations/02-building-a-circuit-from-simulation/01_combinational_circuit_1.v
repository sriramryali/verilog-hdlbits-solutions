// Building a combinational ckt from waveforms
module top_module(
    input a,
    input b,
    output q);
    assign q = a & b;    // from the waveform given in the question
endmodule