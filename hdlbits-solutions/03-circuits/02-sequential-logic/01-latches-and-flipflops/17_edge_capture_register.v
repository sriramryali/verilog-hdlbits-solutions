// Implementation of a ckt that detects -ve edge(1 to 0 transition) and stores it
module top_module(
    input clk,
    input reset,               // synchronus active high reset
    input [31:0] in,
    output reg [31:0] out);
    reg [31:0] Q;
    always @(posedge clk) begin         // we are using a DFF because it simply delays the input by a clock edge(one clock period) : hence the name D : Delay (it also means Data, but predominantly it is Delay )
        Q <= in;                        // simply, we are storing the value of input(DFF), so input gets delayed by a clock period and is stored in Q(output of DFF), now simply we can compare both to detect a negative edge(in:0 and Q:1)
        if (reset) begin 
            out <= 32'd0;
        end
        else begin
            out <= (~in & Q) | out;     // negative edge detection, only difference is that once a negative edge is found, the output should be one until reset occurs : hence we are using an OR operation with the previous value of output and the present outptu condition(~in & Q)
        end
    end
endmodule