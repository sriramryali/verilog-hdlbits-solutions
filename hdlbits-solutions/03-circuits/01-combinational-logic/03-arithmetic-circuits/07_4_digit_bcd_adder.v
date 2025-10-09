// Implementation of a 4-digit BCD ripple carry adder
module top_module(
    input [15:0] a,      // four 4-bit BCD numbers packed into a 16-bit vector : a,b and sum
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout);
    wire [2:0] carry;  // for internal carries
    bcd_fadd inst1(.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(carry[0]));       // instantiating the module
    bcd_fadd inst2(.a(a[7:4]), .b(b[7:4]), .cin(carry[0]), .sum(sum[7:4]), .cout(carry[1]));
    bcd_fadd inst3(.a(a[11:8]), .b(b[11:8]), .cin(carry[1]), .sum(sum[11:8]), .cout(carry[2]));
    bcd_fadd inst4(.a(a[15:12]), .b(b[15:12]), .cin(carry[2]), .sum(sum[15:12]), .cout(cout));
endmodule


// 4-bit BCD adder(the module which has been instantiated)
module bcd_fadd(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout);
    // body
endmodule