// Implementation of Lemmings game as a moore state machine
module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging ); 
    
    parameter lwalk = 0, rwalk = 1, lfall = 2, rfall = 3, ldig = 4, rdig = 5, splat = 6;
    
    reg [2:0] state, next_state;
    reg [4:0] count;
    
    always @(posedge clk or posedge areset) begin
        if (areset)
            state <= lwalk;
        else
            state <= next_state;
    end
    
    always @(posedge clk or posedge areset) begin
        if (areset) begin
            count <= 0;
        end
        else if(state == lfall || state == rfall) begin
            if (count < 20)
                 count <= count + 1;
        end
        else 
            count <= 0;
    end
    
    always @(*) begin
        case (state)
            lwalk : begin
                if (!ground)
                    next_state = lfall;
                else if (dig)
                    next_state = ldig;
                else if (bump_left)
                    next_state = rwalk;
                else
                    next_state = lwalk;
            end
            rwalk : begin
                if (!ground)
                    next_state = rfall;
                else if (dig)
                    next_state = rdig;
                else if (bump_right)
                    next_state = lwalk;
                else
                    next_state = rwalk;
            end
            ldig : next_state = (!ground) ? lfall : ldig;
            rdig : next_state = (!ground) ? rfall : rdig;
            lfall : next_state = (ground) ? ((count > 19) ? splat : lwalk) : lfall;
            rfall : next_state = (ground) ? ((count > 19) ? splat : rwalk) : rfall;
            splat : next_state = splat;
        endcase
    end
    
    assign walk_left = (state == lwalk);
    assign walk_right = (state == rwalk);
    assign aaah = (state == lfall)|(state == rfall);
    assign digging = (state == ldig)|(state == rdig);
 
    
endmodule
