// Reversing a vector
module top_module(
    input [99:0] in,
    output reg [99:0] out);
    always @(*) begin
        integer i;
        for (i=0; i<100, i++) begin        // a for loop in verilog can be used only inside a procedural block(initial block or always block)
            out[i] = in[90-i];
        end
    end
endmodule
