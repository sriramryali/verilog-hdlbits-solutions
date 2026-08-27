// Implementation of a moore state machine with synchronous reset
module top_module(
    input clk,
    input reset,
    input in,
    output out);

    // this is the best way to model FSMs in verilog, 3 parts : state register + next state logic + output logic
    // parameters for states
    parameter A = 1'b0, B = 1'b1;

    // current and next states 
    reg present_state, next_state;

    // state register logic
    always @(posedge clk) begin     // synchronous reset
        if (reset) begin
            present_state <= B;
        end
        else begin
            present_state <= next_state;
        end
    end

    // next state logic
    always @(*) begin
        case (present_state)
            A : next_state = in ? A : B;
            B : next_state = in ? B : A;
            default : next_state = B;
        endcase 
    end

    // output logic
    assign out = (present_state == B);

endmodule 