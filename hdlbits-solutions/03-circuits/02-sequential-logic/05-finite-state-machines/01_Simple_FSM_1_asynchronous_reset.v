// Implementation of a Moore state machine
module top_module(
    input clk,
    input areset,
    input in,
    output out);

    // finite state machine simply consists of 3 parts : state register(the one with flip flops to store state), output logic(if output depends only on the current state -> moore state machine, if on both current state and inputs -> mealy state machine), and next state logic(this includes transitions from each state on all possible inputs)
    // declaring parameters for states(easy to read)
    parameter A = 1'b0, B = 1'b1;

    // current and next states
    reg state, next_state;

    // state register
    always @(posedge clk or posedge areset) begin
        if (areset) begin
            state <= B;
        end
        else begin
            state <= next_state;
        end
    end

    // next state logic
    always @(*) begin
        case (state)
            A : next_state = in ? A : B;
            B : next_state = in ? B : A;
            default : next_state = B;
        endcase
    end

    // output logic
    assign out = (state == B);

endmodule