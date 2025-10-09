// Checking if overflow has occured
module top_module(
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow);
    assign s = a + b;                                                  // overflow is defined in the case of signed numbers and carry out is defined in the case of unsigned numbers
    assign overflow = (a[7] & b[7] & ~s[7])|(~a[7] & ~b[7] & s[7]);    // overflow occurs when either sign(last) digits of a and b are 0 and c is 1 or the last digits of a and b are 1 and c is 0
endmodule