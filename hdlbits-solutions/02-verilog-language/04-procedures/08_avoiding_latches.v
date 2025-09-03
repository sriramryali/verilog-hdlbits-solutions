// Implementing the keys of a PS-2 using case statement
module top_module(
    input [15:0] scancode,
    output reg left,
    output reg right,
    output reg up,
    output reg down);
    always @(*) begin
        left = 1'b0;    // initialising all keys to 0
        right = 1'b0;   // this way of initialising values makes the code easier
        down = 1'b0;
        up = 1'b0; 
        case (scancode)
            16'he06b : left = 1;	// change the values only when the corresponding keys are clicked
            16'he072 : down = 1;    // as the initial values are already declared, no need of default statement here
            16'he074 : right = 1;   // these hexadecimal codes are given in the question
            16'he075 : up = 1;	
        endcase
    end
endmodule
            
            
