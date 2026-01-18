// Implementation of a shift register ckt(4-bit)
module top_module(
    input clk,        
    input resetn,        // synchronus active low reset
    input in,            // external input to the first FF
    output out);         
    reg [3:0] q;         // temporary names for internal FFs
    always @(posedge clk) begin
        if (!resetn)
            q <= 4'd0;
        else
            q <= {in, q[3:1]};   // simply shifting the bits
    end
    assign out = q[0];   // here out is a wire type variable, not reg
endmodule
