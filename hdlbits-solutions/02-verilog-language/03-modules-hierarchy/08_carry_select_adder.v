// Improved implementation of an adder, with carry selection using a MUX
module top_module(
    input [31:0] a,
    input [31:0] b,       // drawback of a ripple carry adder is its delay
    output [31:0] sum);   // here, 3 copies of add16 are instantiated, one for the lower 16 bits, and rest two for upper 16 bits(one is for c1 = 0 and the other for c1 = 1)
    wire c1,c2_1,c2_2;    // with this implementation, we can reduce the delay of adder
    wire [15:0] sum1,sum2_1,sum2_2;
    add16 inst1(.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(c1), .sum(sum1));         // as we already know that the cout of first adder will be either 0 or 1, we can use two adders with 0 and 1 as cin respectively, this reduces the delay of adder
    add16 inst2(.a(a[31:16]), .b(b[31:16]), .cin(0), .cout(c2_1), .sum(sum2_1));   // this adder is used when c1 is 0
    add16 inst3(.a(a[31:16]), .b(b[31:16]), .cin(1), .cout(c2_2), .sum(sum2_2));   // this adder is used when c1 is 1
    assign sum = { c1 ? sum2_2 : sum2_1, sum1};     // this creates a 2x1 MUX
endmodule


//add16 module
module add16(
    input [15:0] a,
    input [15:0] b,
    output [15:0] sum,
    input cin,
    output cout);
    // body
endmodule

