// Checking if two 2-bit vectors are equal
module top_module(
    input [1:0] A,
    input [1:0] B,
    output z);                      // == (outputs one only if all bits match, here x and z are not checked, they assume as if they are equal)
    assign z = (A === B) ? 1 : 0;   // === (outputs one only if all bits match, even x and z bits must be the same in both numbers)
endmodule


// for the testcases provided in the question, both == and === can be used