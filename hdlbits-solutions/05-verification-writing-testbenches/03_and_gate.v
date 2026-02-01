// Testbench for an AND gate
module top_module;    // inputs and outputs are not required for the testbench, itself creates inputs and checks outputs
    reg [1:0] in;
    wire out;
    andgate dut(.in(in), .out(out));
    initial begin
        in = 2'b00;        // waveform is given in the question
        #10 in = 2'b01;    // for hdlbits, don't use $finish function, it won't give you the final result, the solution testbench has it already
        #10 in = 2'b10;
        #10 in = 2'b11;
    end
endmodule


// instantiated module
module andgate(
    input [1:0] in,
    output out);
// ...
endmodule
