// Implementation of a submodule for given ckt
module top_module(
    input clk,
    input L,
    input r_in,
    input q_in,
    output reg Q);
    always @(posedge clk) begin
        Q <= L ? r_in : q_in;      // MUX is given in the ckt diagram
    end
endmodule