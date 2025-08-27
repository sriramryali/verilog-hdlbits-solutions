// Connecting ports by name
module top_module(
    input a,b,c,d,
    output out1,
    output out2);
    mod_a ex(.out1(out1), .in1(a), .in2(b), .out2(out2), .in4(d), .in3(c)); // can be written in any order
endmodule


// mod_a
module mod_a(
    input in1,in2,in3,in4,
    output out1,
    output out2);
    // body
endmodule
