// Implementation of a ckt that detects both the edges
module top_module(
    input clk,
    input [7:0] in,
    output [7:0] anyedge);
    reg [7:0] Q;
    always @(posedge clk) begin
        Q <= in;
        anyedge <= in ^ Q;    // as we need to detect both 0 to 1 and 1 to 0 transitions, we consider both +ve and -ve edge detectors -> ~in & Q | in & ~Q : simply and xor operation 
    end
    
