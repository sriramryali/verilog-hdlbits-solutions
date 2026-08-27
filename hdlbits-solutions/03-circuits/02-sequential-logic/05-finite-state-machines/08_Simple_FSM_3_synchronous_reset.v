// Implementation of a moore state machine with synchronous reset 
module top_module(
    input clk,
    input in,
    input reset,   // synchronous reset
    output out);
    // parameters for different states
    parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;

    // current and next state registers
    reg [1:0] state, next_state;

    // state register
    always @(posedge clk) begin    // synchronous reset
        if (reset) begin 
            state <= A;
        end
        else begin
            state <= next_state;
        end
    end

    // next state logic
    always @(*) begin
        case (state)
            A : next_state = in ? B : A;
            B : next_state = in ? B : C;
            C : next_state = in ? D : A;
            D : next_state = in ? B : C;
        endcase 
    end

    // output logic
    assign out = (state == D);

endmodule 