// Implementation of Water reservoir controller as a moore state machine with synchronous reset
module top_module(
    input clk,
    input reset,   // synchronous reset
    input [3:1] s,
    output fr3,
    output fr2,
    output fr1,
    output reg dfr);
    // parameters for all the states, here we assume that there are 4 states, below s1 : a, between s1 and s2 : b, between s2 and s3 : c, above s3 : d
    parameter a = 2'b00, b = 2'b01, c = 2'b10, d = 2'b11;

    // current and next states
    reg [1:0] state, next_state;

    // state register(along with dfr output)
    always @(posedge clk) begin
        if (reset) begin
            state <= a;
            dfr <= 1'b1;    // all outputs should be set on reset, as the remaining 3 are driven combinationally, they are set directly because on reset current state becomes a, and when current state is 'a', all 3 flow rate(fr) outputs are set
        end
        else begin
            state <= next_state;
            if (state < next_state) begin      // as dfr needs to know the previous value(and it needs to retain it's value when there is no change), we register it
                dfr <= 1'b0;
            end
            else if (state > next_state) begin   // this is when extra input is required
                dfr <= 1'b1;
            end                                  // we leave the else condition because it creates a latch, when both states are equal, we need to retain the previous value
        end                                      
    end

    // next state logic
    always @(*) begin     // this is a bit different, till now we've seen examples where we take the case of each state and based on the input, we determine the next state, but now, we use the case of input and based on that we'll determine the next state
        case (s)
            3'b111 : next_state = d;
            3'b011 : next_state = c;
            3'b001 : next_state = b;
            3'b000 : next_state = a;
            default : next_state = a;
        endcase 
    end

    // output logic
    assign fr1 = (state == a)|(state == b)|(state == c);
    assign fr2 = (state == a)|(state == b);
    assign fr3 = (state == a);

endmodule 


// another way, using more states and driving dfr combinationally -> for this way, go through the solution given for this question, interesting one :)
