// AND gate using assign statement and always combinational block
module top_module(
    input a,
    input b,
    output wire and_assign,                  
    output reg and_alwaysblock);              // assign statement cannot be used inside a procedural block
    assign and_assign = a & b;                // combinational ckt using assign statement
    always @(*) end_alwaysblock = a & b;      // combinational ckt using always @(*) procedural block
endmodule