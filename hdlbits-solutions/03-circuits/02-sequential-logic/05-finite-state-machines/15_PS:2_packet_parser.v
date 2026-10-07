// Implementation of a PS/2 packet parser(simply a non overlapping 1xx detector)
module top_module(
    input clk,
    input [7:0] in,    // a byte arrives at the input each cycle, you need to consider 3Bytes, ie, 3 cycles, and the 4th bit(in[3]) of first byte should be 1 for it to be the starting of the byte stream
    input reset,
    output done);

    // parameters for 4 states, we are implementing a moore machine
    parameter a = 2'b00, b = 2'b01, c = 2'b10, d = 2'b11;   // can also directly write a = 0, b = 1, ...

    // current and next state registers
    reg [1:0] ps, ns;

    // state register
    always @(posedge clk) begin
        if (reset) begin
            ps <= a;
        end
        else begin
            ps <= ns;
        end
    end

    // next state logic
    always @(*) begin
        case (ps)
            a : ns = in[3] ? b : a;
            b : ns = c;
            c : ns = d;
            d : ns = in[3] ? b : a;
            default : ns = a;
        endcase 
    end

    // output logic
    assign done = (ps == d);

endmodule 