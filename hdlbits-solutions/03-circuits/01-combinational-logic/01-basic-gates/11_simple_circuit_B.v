// Implementation of a ckt from a given waveform
module top_module(
    input x,
    input y,
    output z);
    assign z = ~(x ^ y);   // Timing diagram is given in the question
endmodule