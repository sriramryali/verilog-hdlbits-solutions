// Implementation of a D-flipflop
module top_module(
    input d,
    input clk,                   // clks are used in sequential ckts
    output reg q);               // output has to be a reg, because it is used inside an always block (if the condition is not met, it has to hold the previous value, hence reg type variable)
    always @(posedge clk) begin
        q <= d;                  // for a single statement, begin-end is not needed : be it always, initial, if-else
    end
endmodule


// Always use <= (non blocking assignment) for sequential ckts -> better consistency, reduces errors
// Always use = (blocking assignment) for combinational ckts -> better consistency , reduces errors
// Note : when you are solving sequential ckt related questions on hdl bits website, you can see that reg isn't mentioned while declaring outputs, because the simulator is system verilog based, hence no issues, but you better mention reg explicitly