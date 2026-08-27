// Implementation of a simple moore FSM with asynchronous reset
module top_module(
    input clk,
    input areset,     // asynchronous rest
    input j,
    input k,
    output out);
    // paramters for different states
    parameter OFF = 1'b0, ON = 1'b1;

    // current and next states
    reg state, next_state;

    // state register
    always @(posedge clk or posedge areset) begin
        if (areset) begin
            state <= OFF;
        end
        else begin
            state <= next_state;
        end
    end

    // next state logic
    always @(*) begin
        case (state)
            OFF : next_state = j ? ON : OFF;
            ON  : next_state = k ? OFF : ON;
            default : next_state = OFF;
        endcase 
    end

    // output logic
    assign out = (state == ON);

endmodule 
    