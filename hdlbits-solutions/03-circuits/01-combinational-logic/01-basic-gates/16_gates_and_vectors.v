// Gate operations on a multi-bit vector
module top_module(
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different);
    assign out_both = in[2:0] & in[3:1];          // using assign statements -> easiest way
    assign out_any = in[3:1] | in[2:0];
    assign out_different = in ^ {in[0], in[3:1]};   // here, left of in[3] should be taken as in[0], so a concatenation operator is used, other way -> assign out_different[2:0] = in[2:0]^in[3:1]; assign out_different[3] = in[3]^in[0];
endmodule


// Using an always block and a for loop
module top_module(
    input [3:0] in,
    output reg [2:0] out_both,   // outputs are declared as reg, as they are to be used as outputs inside an always block
    output reg [3:1] out_any;
    output reg [3:0] out_different);
    always @(*) begin           // more verbose and prone to errors, better use the previous vector slicing method
        integer i,j,k;
        for (i=2; i>=0; i--) begin
            out_both[i] = in[i] & in[i+1];
        end
        for (j=3; j>=1; j--) begin
            out_any[j] = in[j] | in[j-1];
        end
        for (k=2; k>=0; k--) begin
            out_different[k] = in[k] ^ in[k+1];
        end
        out_different[3] = in[3] ^ in[0];   
    end
endmodule

    