// Fixing bugs in a adder-subtractor ckt
module top_module(
    input do_sub,
    input [7:0] a,
    input [7:0] b,
    output [7:0] out,
    output result_is_zero);
    always @(*) begin
        case (do_sub)
            1'b0 : out = a + b;
            1'b1 : out = a - b;
            default : out = 8'b0;        // always better to add default statements, else latches are inferred
        endcase 

        result_is_zero = (!out) ? 1'b1 : 1'b0;  // you should'nt use unary operator here ~out
    end
endmodule