// Gate operations on multi-bit vectors
module top_module(
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different);
    assign out_both = in[98:0] & in[99:1];
    assign out_any = in[99:1] | in[98:0];           // assign statements -> best way to do this, less prone to error and easier to read
    assign out_different = in ^ {in[0], in[99:1]};  // other way -> assign out_different[98:0] = in[98:0] ^ in[99:1]; assign out_different[99] = in[99] ^ in[0]
endmodule


// Using an always block and for loop
module top_module(
    input [99:0] in,
    output reg [98:0] out_both,
    output reg [99:1] out_any,
    output reg [99:0] out_different);
    always @(*) begin
        integer i,j,k;
        for (i=98; i>=0; i--) begin
            out_both[i] = in[i] & in[i+1];
        end
        for (j=99; j>=1; j--) begin
            out_any[j] = in[j] | in[j-1];
        end
        for (k=98; k>=0; k--) begin
            out_different[k] = in[k] ^ in[k+1];
        end
        out_different[99] = in[99] ^ in[0];
    end
endmodule
 