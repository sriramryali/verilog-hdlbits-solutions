// Implementation of a ckt that detects an edge(+ve)
module top_module(
    input clk,
    input [7:0] in,
    output reg [7:0] pedge);       // detects when the value of input changes from 0 to 1 : concept is similar to a positive edge triggering ckt where a clk and its delayed inverse are used
    reg [7:0] Q;                   // Simply using a DFF, to get the delayed version of input(gets delayed by a clk period)
    always @(posedge clk) begin    // now, the output of DFF and input are compared, prev value : 0, present value : 1 -> this is our required case, this occurs when input(indicates present value) is 1 and Q(effectively is the past value, as it is delayed by clock period) is 0, here the output will be in & ~Q(because in is 1 and Q is 0) 
        Q <= in;                   // represents a DFF
        pedge <= in & ~Q;          // keep the picture in mind, in -> DFF -> Q, in AND ~Q
    end 
endmodule


// Similarly for a ckt that detects a -ve edge
// here, in (present value) becomes 0, leaving Q to hold the past value 1 : this is our required case, 1 to 0 zero transition -> so the output would be ~in & Q
module top_module(
    input clk,
    input [7:0] in,
    output reg [7:0] nedge);
    reg [7:0] Q;
    always @(posedge clk) begin
        Q <= in;
        nedge <= ~in & Q;
    end
endmodule




