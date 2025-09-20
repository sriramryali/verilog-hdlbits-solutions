// Implementing the ckt given in question( a 4-bit ripple carry adder)
module top_module(
    input [3:0] x,
    input [3:0] y,
    output [4:0] sum);      // sum[4] is the final carry
    wire [2:0] cout;        // for internal carries 
    full_adder inst1(.a(x[0]), .b(y[0]), .cin(0), .sum(sum[0]), .cout(cout[0]));
    full_adder inst2(.a(x[1]), .b(y[1]), .cin(cout[0]), .sum(sum[1]), .cout(cout[1]));
    full_adder inst3(.a(x[2]), .b(y[2]), .cin(cout[1]), .sum(sum[2]), .cout(cout[2]));
    full_adder inst4(.a(x[3]), .b(y[3]), .cin(cout[2]), .sum(sum[3]), .cout(sum[4]));   // sum[4] is the final carry
endmodule


// full adder ckt
module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b)|((a ^ b) & cin);      // cout can also be written as (a & b)|(b & cin)|(cin & a)
endmodule