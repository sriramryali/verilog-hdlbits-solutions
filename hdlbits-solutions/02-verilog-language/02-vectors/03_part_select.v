// Swapping the endianness using concatenation operator, just to note : once the endianness is fixed, you cant change it, for example if you've declared reg [7:0] men, then you cannot use men[0:4]
module top_module(
    input [31:0] in,   // a 32 bit vector
    output [31:0] out);  // a 32 bit vector
    assign out = {in[7:0], in[15:8], in[23:16], in[31:24]}; // reversing the bytes(8 - bits) order, {} -> concatenation operator, concatenates (combines) the bits together
endmodule


// Swapping the endianness using part select on both sides, endianness : see the last bit -> lsb, if its higher : big endianness, if its smaller : small endianness
module top_module(
    input [31:0] in;
    output [31:0] out);
    assign out[31:24] = in[7:0];
    assign out[23:16] = in[15:8];
    assign out[15:8] = in[23:16];
    assign out[7:0] = in[32:24];
endmodule