// Implementation of Dffs and MUX
module top_module(
    input d,
    input clk,
    input [1:0] sel, // A 2-bit slect line for MUX
    output q);
    wire [7:0] t[0:3]; // Declaring an array of wires(total wires: 3), each of size 8 bits
    assign t[0] = d;
    my_dff8 inst1(.clk(clk), .d(d), .q(t[1]));  // .d(d) or .d(t[0])
    my_dff8 inst2(.clk(clk), .d(t[1]), .q(t[2]));
    my_dff8 inst3(.clk(clk), .d(t[2]), .q(t[3]));
    assign q = t[sel];   // a simple behavioral description for MUX
endmodule


// Instantiated module my_dff8
module my_dff8(
    input clk,
    input d,
    output q);
    // body
endmodule