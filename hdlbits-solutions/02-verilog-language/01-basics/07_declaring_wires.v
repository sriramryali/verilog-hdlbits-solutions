// Declaring wire inside a module
module top_module(
    input a,
    input b,
    output out,
    output out_n);
    wire x;    // Declaring a wire (net type variable), these are used for internal connections 
    wire y;    // Delcarinng another wire
    assign x = a & b;
    assign y = c & d;
    assign out = x | y; // Note that the order of writing these two not gates wont effect the final ckt, because it is a piece of hardware
    assign out_n = ~out;
endmodule 
