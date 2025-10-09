// Implementation of a ckt described by kmap
module top_module(
    input a,
    input b,
    input c,
    output f);
    assign f = (a | b | c);   // obtained by simplifying the kmap, here you get the same result for both SOP and POS forms
endmodule
