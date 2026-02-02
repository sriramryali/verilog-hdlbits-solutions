// Building a combinational ckt from waveforms
module top_module(
    input a,
    input b,
    input c,
    input d,
    output q);
    assign q = b | c;    // simplify it using a kmap
endmodule