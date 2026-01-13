// Implementation of a left/right rotator ckt
module top_module(
    input clk,
    input load,              // loads the data into the register
    input [1:0] ena,         // mentioned in the question -> 01 : rotate right, 10 : rotate left
    input [99:0] data,       // rotation is an extension of shifting, simply removed bits on side are added on the other side
    output reg [99:0] q);
    always @(posedge clk) begin
        if (load)
            q <= data;    // loads the data into register
        else begin
            case (ena)
                2'b01 : q <= {q[0], q[99:1]};   // rotate right by 1 bit
                2'b10 : q <= {q[98:0], q[99]};  // rotate left by 1 bit
                default : q <= q;               // 00,11 : no rotation, in case statements, always try to include default case(as bits can also have x,z values)
            endcase 
        end
    end
endmodule