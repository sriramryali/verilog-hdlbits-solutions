// Implementation of a 4-bit 256:1 MUX (a total of 1024 bits packed into groups of four)
module top_module(
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out);
    assign out = in[4*sel :+4];  // 
endmodule


// assign out = in[4*sel+3 : 4*sel] doesn't work here