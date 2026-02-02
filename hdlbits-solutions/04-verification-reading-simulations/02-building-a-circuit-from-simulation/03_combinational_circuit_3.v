// Building a combinational ckt from waveforms
module top_module(
    input a,
    input b,
    input c,
    input d,
    output q);
    assign q = (b & d)|(a & d)|(b & c)|(a & c);    // simplify it using a kmap
endmodule