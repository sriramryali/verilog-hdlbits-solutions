// A combinational ckt (population counter)
module top_module(
    input [254:0] in,
    output [7:0] out);
    always @(*) begin
        integer i;
        out = 0;      // this statement is essential if multiple test cases are to be tested
        for (i=0; i<256; i++) begin
            if (in[i]) out = out + 1;    
        end
    end
endmodule


// Another way
module top_module(
    input [254:0] in,
    output [7:0] out);
    always @(*) begin
        integer i;
        out = 0;
        for (i=0; i<255; i++) begin
            out = out + in[i];       // without if statement
        end
    end
endmodule
    