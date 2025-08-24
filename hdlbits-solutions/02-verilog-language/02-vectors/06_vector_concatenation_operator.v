// Concatenation operator
module top_module(
    input [4:0] a,
    input [4:0] b,
    input [4:0] c,
    input [4:0] d,
    input [4:0] e,
    input [4:0] f,
    output [7:0] w,
    output [7:0] x,
    output [7:0] y,        
    output [7:0] z);                          // Concatenation can be used instead of multiple assign statements
    assign {w,x,y,z} = {a,b,c,d,e,f,2'b11};   // Size of a vector or a constant must be known to write it in the concatenation operator
endmodule 


// Points to note about concatenation operator
// Unsized constants are not allowed (these are allowed in the new version(2005), but will be of 32-bit size: causes ambiguity), ex: {1,2,3} -> error (96-bit output),  {1'd1,1'd2,1'd3} -> correct way
// ex: input [15:0] in;          in -> 16-bit
//     output [23:0] out;        out -> 24-bit
//     assign out[15:0] = {in[7:0],in[15:8]};    swapped bytes, 16-bit output, out[23:16] are not assigned
//     assign {out[7:0],out[15:8]} = in;         same result swapped bytes, 16-bit output, out[23:16] are not assigned
//     assign out = {in[7:0],in[15:8]};          this will be a 24-bit result, previous vector will be 0 extended to get 24-bit vector, hence not the same result