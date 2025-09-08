// A 3-bit population counter
module top_module(
    input [2:0] in,
    output reg [1:0] out);
    always @(*) begin
        integer i;
        out = 0;                    // initialise out with 0 inside the always block, if initialised outside, the output values goes on increasing as different test cases are checked
        for (i=0; i<3; i++) begin
            out = out + in[i];      // this can also be written as if (in[i]) out = out + 1
        end
    end
endmodule
