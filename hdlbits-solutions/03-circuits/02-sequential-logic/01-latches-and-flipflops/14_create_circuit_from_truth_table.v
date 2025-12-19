// Implementation of a JKFF using a DFF
module top_module(
    input clk,
    input j,
    input k,
    output Q);
    always @(posedge clk) begin
        Q <= (j & ~Q)|(~k & Q);     // It's always better to use non-blocking assignments for sequential ckts
    end                             // if no SRFF is involved, for implementation of a FF using the other, we can simply equate both the required and given FFs' next state eqns(Q+)
endmodule                           // here, we need D in terms of J,K and Q