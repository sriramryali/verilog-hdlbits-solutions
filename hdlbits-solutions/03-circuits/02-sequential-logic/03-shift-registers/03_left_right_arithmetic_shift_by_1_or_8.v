// Implementation of a left/right arithmetic shift(by 1 or 8)
module top_module(
    input clk,
    input load,            // synchronous load
    input ena,             // tells whether to shift or not
    input [1:0] amount,    // mentioned in the question
    input [63:0] data, 
    output reg [63:0] q);  // 64-bit shift register
    always @(posedge clk) begin
        if (load)
            q <= data;
        else if (ena) begin
            case (amount)
                2'b00 : q <= {q[62:0], 1'b0};       // shift left by 1 bit
                2'b01 : q <= {q[55:0], 8'd0};       // shift left by 8 bits
                2'b10 : q <= {q[63], q[63:1]};      // arithmetic shift right by 1 bit(sign bit is inserted)
                2'b11 : q <= {{8{q[63]}}, q[63:8]}; // arithmetic shift right by 8 bits(sign bit is inserted)
            endcase
        end
    end
endmodule
    