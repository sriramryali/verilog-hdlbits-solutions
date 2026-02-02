// Building a combinational ckt from waveforms
module top_module(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input [3:0] e,
    output reg [3:0] q);
    always @(*) begin
        case (c)
            0 : q = b;     // these are given in the waveform
            1 : q = e;
            2 : q = a;
            3 : q = d;
            default : q = 4'hf;   // can also be written as 4'hF 
        endcase
    end
endmodule