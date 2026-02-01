// Testbench for given waveforms
module top_module;   
    reg clk;
    reg in;
    reg [2:0] s;
    wire out;
    q7 dut(.clk(clk), .in(in), .s(s), .out(out));
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;  // time period is 10 units, never forget the delay in clk assignment, if so, it becomes an infinte loop
    end
    initial begin
        in = 0; s = 3'd2;         // given in the waveform
        #10 s = 3'd6;
        #10 s = 3'd2; in = 1'b1;
        #10 s = 3'd7; in = 1'b0;
        #10 s = 3'd0; in = 1'b1;
        #30 in = 1'b0;
    end
endmodule