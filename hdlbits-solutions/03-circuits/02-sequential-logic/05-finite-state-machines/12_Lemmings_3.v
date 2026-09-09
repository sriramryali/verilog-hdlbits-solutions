// Implementation of Lemmings game as a moore state machine
module top_module(
    input clk,
    input areset,
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging);
    // paramter for all the states(here we have 6 states : lwalk -> walking left, rwalk -> walking right, ldig -> digging while walking previously left, rdig -> digging while walking previously right, lfall -> falling while previously walking left, rfall -> falling while previously walking right)
    parameter lwalk = 3'b000, rwalk = 3'b001, ldig = 3'b010, rdig = 3'b011, lfall = 3'b100, rfall = 3'b101;

    // current and next states
    reg [2:0] state, next_state;

    // state register
    always @(posedge clk or posedge areset) begin    // asynchronous reset
        if (areset) begin
            state <= lwalk;
        end
        else begin
            state <= next_state;
        end
    end

    // next state logic
    always @(*) begin
        case (state)
            lwalk : begin
                if (!ground) begin
                    next_state = lfall;  // as mentioned in the question, highest priority for falling
                end
                else if (dig) begin
                    next_state = ldig;
                end
                else if (bump_left) begin
                    next_state = rwalk;
                end
                else begin
                    next_state = lwalk;
                end
            end 
            rwalk : begin
                if (!ground) begin
                    next_state = rfall;   // as mentioned in the question, highest priority for falling
                end
                else if (dig) begin
                    next_state = rdig;
                end
                else if (bump_right) begin
                    next_state = lwalk;
                end
                else begin
                    next_state = rwalk;
                end
            end 
            ldig : next_state = (!ground) ? lfall : ldig;
            rdig : next_state = (!ground) ? rfall : rdig;
            lfall : next_state = (ground) ? lwalk : lfall;
            rfall : next_state = (ground) ? rwalk : rfall;
            default : next_state = lwalk;
        endcase
    end

    // output logic
    assign walk_left = (state == lwalk);
    assign walk_right = (state == rwalk);
    assign aaah = (state == lfall) | (state == rfall);
    assign digging = (state == ldig) | (state == rdig);

endmodule 