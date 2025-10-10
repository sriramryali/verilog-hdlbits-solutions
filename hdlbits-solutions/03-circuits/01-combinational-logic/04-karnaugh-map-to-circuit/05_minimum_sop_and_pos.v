// Implementation of a ckt described by kmap
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos); 
    assign out_sop = (c & d)|(~a & ~b & c);     // minimised expression in SOP form
    assign out_pod = c & (~a|d) & (~b|d);       // minimised expression in POS form
endmodule