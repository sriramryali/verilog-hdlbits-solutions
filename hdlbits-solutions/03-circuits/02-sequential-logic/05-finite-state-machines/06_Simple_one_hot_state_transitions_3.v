// Implementation of moore state machine with one-hot encoding
module top_module(
    input in,
    input [3:0] state,
    output [3:0] next_state,
    output out);
    // parameter for states
    parameter A = 0, B = 1, C = 2, D = 3;

    // state transition, equation for each flip-flop
    assign next_state[A] = (state[A] | state[C]) && ~in;
    assign next_state[B] = (state[A] | state[B] | state[D]) && in;
    assign next_state[C] = (state[B] | state[D]) && ~in;
    assign next_state[D] = (state[C] & in);

    // output logic
    assign out = state[D];   // in one-hot encoding, a bit is given for each of the states, hence only one will be high at any time, with this logic equations become simpler(but it requires flip flops though)

endmodule