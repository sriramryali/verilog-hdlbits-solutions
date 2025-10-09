// Implementation of a ckt described by kmap
module top_module(
    input a,
    input b,
    input c,
    input out);
    assign out = (c & b)|(c & a)|(~d & a)|(~c & d & a);         // SOP form
endmodule


// Another way
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out);
    assign out = (a|~b|~c) & (a|c|~d) & (a|b|c) & (a|~b|c|d);   // POS form, these two results are obtained when 'd' in the kmap is treated as a variable, we'll get the same answer even by treating 'd' in the kmap as don't care, only in this question because the output function doesn't depend on 'd', usually we cannot take a variable as a don't care(x) -> Beware of this
endmodule