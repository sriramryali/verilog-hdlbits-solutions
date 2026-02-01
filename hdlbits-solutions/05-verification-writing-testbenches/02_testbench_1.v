// Testbench for a given waveform
module top_module(
    input reg A,
    input reg B);
    initial begin
        A = 0; B = 0;    // see the diagram given in the question
        #10 A = 1;
        #5 B = 1;
        #5 A = 0;
        #20 B = 0;
    end
endmodule
