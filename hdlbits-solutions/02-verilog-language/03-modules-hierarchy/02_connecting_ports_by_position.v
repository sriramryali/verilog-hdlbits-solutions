// Connecting ports by position
module top_module(
    input a,b,c,d,
    output out1,
    output out2);
    mod_a example(out1,out2,a,b,c,d);   // connected ports of mosules by position
endmodule