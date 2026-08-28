// Implementation of Lemmings game as a moore FSM
module top_module(
    input clk,
    input areset,       // asynchronous reset
    input bump_left,
    input bump_right,
    output walk_left,
    output walk_right);
    // parameters for states
    parameter LEFT = 1'b0, RIGHT = 1'b1;    // suppose there are two states, first : moving in the left direction and the second : moving in the right direction

    // current and next states
    reg state, next_state;

    // state register
    always @(posedge clk or posedge areset) begin
        if (areset) begin
            state <= LEFT;    // it is mentioned in the question that when resetted it moves in the left direction
        end
        else begin
            state <= next_state;
        end
    end

    // next state logic
    always @(*) begin
        case (state)
            LEFT : next_state = (bump_left) ? RIGHT : LEFT;     // from the given question, you can simplify the next logic -> it moves right either when it is bumped on the left or bumped on both directions, ie, (l & ~r) & (l & r), which simplifies down to l(bumped on left)
            RIGHT : next_state = (bump_right) ? LEFT : RIGHT;   // same for right too
            default : next_state = LEFT;
        endcase 
    end

    // output logic
    assign walk_left = (state == LEFT);
    assign walk_right = (state == RIGHT);

endmodule 