// Implementation of a 8-bit DFF with a synchronus reset setting it to 0
module top_module(
    input clk,
    input reset,
    input [7:0] d,
    output reg [7:0] q);
    always @(posedge clk) begin  
        if (reset) begin    // this is synchronous reset, it works only on the +ve edge of clk
            q <= 8'd0;      // can also be written as 8'b00000000 or 8'h00
        end
        else begin 
            q <= d;
        end
    end
endmodule

