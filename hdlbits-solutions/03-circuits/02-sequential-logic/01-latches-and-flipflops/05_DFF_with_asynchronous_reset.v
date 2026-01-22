// Implementation of a DFF with asynchronus reset
module top_module(
    input [7:0] d,
    input clk,
    input areset,
    output reg [7:0] q);     // if the compiler uses system veriog (as with the case of hdl bits),  no need to mention reg here : output x is same as ouptut logic x -> the compiler decides if it is reg or wire
    always @(posedge clk or posedge areset) begin      // asynchronous reset (comma can also be used in the place of or)
        if (reset) begin
            q <= 8'h00;
        end
        else begin
            q <= d;
        end
    end
endmodule
 

// always @(posedge clk, areset) : this is not valid(edge triggered for clk and level triggered for areset) -> a block might be executed twice here
// we can use comma ',' or 'or' : use 'or' for better readability