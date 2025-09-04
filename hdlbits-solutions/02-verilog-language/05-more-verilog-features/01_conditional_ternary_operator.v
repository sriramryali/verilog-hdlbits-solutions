// Finding the minimum of given numbers using conditional ternary operator
module top_module(
    input [7:0] a,
    input [7:0] b,
    input [7:0] c,
    input [7:0] d,
    output [7:0] min);                                  // we can use a chain of ternary operators and is right associative(right most ones are grouped first )
    assign min = ((a<b) && (a<c) && (a<d)) ? a :        // simple and eaiser to understand, ex -> a ? b : c ? d : e
                 ((b<c) && (b<d)) ? b :
                 (c<d) ? c : d;
endmodule


// Another way 
module top_module(
    input [7:0] a,
    input [7:0] b,
    input [7:0] c,
    input [7:0] d,
    output [7:0] e);
    assign min = ((a < b) ? ((a < c) ? ((a < d) ? a : d)) : ((b < c) ? ((b < d) ? b : d) : ((c < d) ? c : d)));   // not recommended, prone to errors
endmodule