// Building a sequential ckt from waveforms
module top_module(
    input clock,
    input a,
    output reg p,
    output reg q);
    always @(*) 
        p = (clock) ? a : p;   // can also be written as assign p = clock ? a : p, if p was declared as wire
    always @(negedge clock)    // from given waveforms
        q <= a;                // q <= p also works
endmodule 
