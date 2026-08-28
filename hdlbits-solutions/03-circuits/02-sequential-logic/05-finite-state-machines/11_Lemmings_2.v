// Implementation of Lemmings game as a moore FSM
module top_module(
    input clk, 
    input areset,
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah);
    // parameters for all the states, here we consider 4 states -> LEFT : walking left, LFALL : fell while walking left, RIGHT : walking right, RFALL : fell while walking right
    parameter LEFT = 2'b00, RIGHT = 2'b01, LFALL = 2'b10, RFALL = 2'b11;

    // current and next states
    reg [1:0] state, next_state;

    // state register
    always @(posedge clk or posedge areset) begin
        if (areset) begin
            state <= LEFT;
        end
        else begin
            state <= next_state;
        end
    end

    // state transition logic/ next state logic
    always @(*) begin
        case (state)
            LEFT : next_state = (~ground) ? LFALL : ((bump_left) ? RIGHT : LEFT);
            RIGHT : next_state = (~ground) ? RFALL : ((bump_right) ? LEFT : RIGHT);
            LFALL : next_state = (ground) ? LEFT : LFALL;
            RFALL : next_state = (ground) ? RIGHT : RFALL;
            default : next_state = LEFT;
        endcase 
    end

    // output logic
    assign walk_left = (state == LEFT);
    assign walk_right = (state == RIGHT);
    assign aaah = (state == LFALL) | (state == RFALL);

endmodule