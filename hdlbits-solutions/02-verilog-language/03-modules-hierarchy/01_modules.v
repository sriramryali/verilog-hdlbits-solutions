// Instantiating modules by name 
module top_module(
    input a,
    input b,
    output out);                                 // mod_a is already defined
    mod_a example(.in1(a), .in2(b), .out(out));  // connecting modules by name, verbose but reduces errors and can be written in any order
endmodule

// Instantiating modules by position
module top_module(
    input a,
    input b,
    output out);
    mod_a example(a,b,out);   // connecting modules by position, should be written in order, less verbose but errors might occur if not in order
endmodule


module module_a(
    input in1,
    input in2,
    output out);
    // body of module_a
endmodule