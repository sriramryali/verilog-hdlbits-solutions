// Connecting ports by position
module top_module(
    input a,b,c,d,
    output out1,
    output out2);
    mod_a example(out1,out2,a,b,c,d);   // should be in the same order as that of instantiated module
endmodule 

// mod_a
module mod_a(
    input in1,in2,in3,in4,
    output out1,
    output out2);
    // body
endmodule