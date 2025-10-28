// Implementation of a given ckt that has DFFs and gates
module top_module(
    input clk,
    input x,
    output z);
    reg q1, q2, q3;
    always @(posedge clk) begin
        q1 <= q1 ^ x;
        q2 <= ~q2 & x;
        q3 <= ~q3 | x;            // if you write the expression of z here, then it won't act like a combinational variable -> z gets updated only with clock -> not as required
    end
    always @(*) begin
        z <= ~(q1 | q2 | q3);     // Here the output z should change whenever q1, q2 or q3 changes -> hence, it should be in a combinational way
    end
endmodule