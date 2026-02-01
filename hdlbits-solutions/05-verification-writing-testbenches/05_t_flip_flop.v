// Testbench for a TFF
module top_module;
    reg clk;        
    reg reset;
    reg t;
    wire q;
    tff dut(.clk(clk), .reset(reset), .t(t), .q(q));
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    initial begin
        reset = 1'b1;          // mentioned in the question
        #10 begin              // can also be written as #10 reset = 0; t = 1; but better use that -> avoids delta cycles
            reset = 1'b0;
            t = 1'b1;
        end
    end
endmodule