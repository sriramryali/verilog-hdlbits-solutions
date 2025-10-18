// Implementation of a D-flipflop
module top_module(
    input d,
    input clk,                   // clks are used in sequential ckts
    output reg q);               // output has to be a reg, because it is used inside an always block (if the condition is not met, it has to hold the previous value, hence reg type variable)
    always @(posedge clk) begin
        q <= d;                  // for a single statement, begin-end is not needed
    end
endmodule


// Always use <= (non blocking assignment) for sequential ckts -> better consistency, reduces errors
// Always use = (blocking assignment) for combinational ckts -> better consistency , reduces errors