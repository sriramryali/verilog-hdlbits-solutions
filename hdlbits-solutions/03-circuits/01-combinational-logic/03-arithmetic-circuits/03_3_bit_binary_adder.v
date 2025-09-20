// Implementation of a 3-bit binary adder ckt
module top_module(
    input [2:0] a,
    input [2:0] b,
    input cin,
    output [2:0] sum,
    output [2:0] cout);
    full_adder inst1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(cout[0]));      // Instantiating three full adders
    full_adder inst2(.a(a[1]), .b(b[1]), .cin(cout[0]), .sum(sum[1]), .cout(cout[1]));
    full_adder inst3(.a(a[2]), .b(b[2]), .cin(cout[1]), .sum(sum[2]), .cout(cout[2]));

endmodule


// full adder ckt
module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b)|(b & cin)|(cin & a);   // cout can also be written as (a & b)|((a ^ b) & cin)
endmodule