// Implementation of a ckt described by kmap
module top_module(
    input [4:1] x,     // a 4-bit input 
    output f);
    assign f = (x[3] & ~x[1])|(x[2] & x[4]);                       // SOP form
endmodule


// Another way
module top_module(
    input [4:1] x,
    output f);
    assign f = (x[3] | x[1]) & (~x[3] | ~x[1]) & (~x[1] | x[2]);   // POS form
endmodule