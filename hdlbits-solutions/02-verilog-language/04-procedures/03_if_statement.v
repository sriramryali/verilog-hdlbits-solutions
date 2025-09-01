// Implementation of if-else statement
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always);
    assign out_assign = (sel_b1 ? (sel_b2 ? b : a) : a);     // other way -> (sel_b1 ? (sel_b2 ? b : a) : (sel_b2 ? a : a))
    always @(*) begin                                        // always @(*) models a combinational ckt
        if (sel_b1 & sel_b2) begin                           // Inside a procedure block, the LHS variable must be of a 'reg' type
            out_always = b;
        end
        else begin
            out_always = a;
        end
    end
endmodule