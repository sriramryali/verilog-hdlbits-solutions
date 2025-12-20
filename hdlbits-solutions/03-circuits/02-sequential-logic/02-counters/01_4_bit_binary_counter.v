// Implementation of a counter : synchronus counter 
module top_module(
    input clk,
    input reset,      // active high synchronus reset
    output reg [3:0] q);
    always @(posedge clk) begin           // this is an example of a synchronus counter, all the FFs are given the same clock
        if (reset || (q == 4'd15)) begin  // whenever there is a reset or q becomes 15(4'b1111), reset the counter's state to 0, || : logical OR
            q <= 4'b0000;                
        end
        else begin
            q <= q + 1;                  // simply incrementing the value
        end
    end
endmodule


// Counters are simply a set of FFs which count
// there are asynchronus(primary clk + output of one FF as the clk to the following FF) and synchronus(share the same clk) counters
