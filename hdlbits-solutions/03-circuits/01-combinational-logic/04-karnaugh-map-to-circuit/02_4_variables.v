// Implementation of a ckt described by kmap
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out);
    assign out = (~d & ~a)|(~c & ~b)|(c & d & b)|(c & d & a);      // SOP form
endmodule


// Another way
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out);
    assign out = (c|~d|~b) & (~a|~b|c) & (~c|d|~a) & (~c|~d|a|b);   // POS form
endmodule
