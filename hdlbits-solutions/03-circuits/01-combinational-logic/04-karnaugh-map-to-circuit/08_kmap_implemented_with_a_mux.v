// Implementation of a kmap using 4x1 MUX and 2x1 MUXs
module top_module(
    input c,
    input d, 
    output [3:0] mux_in);              // these expressions are obtained by solving kmap and comapring it with the second 4x1 MUX having a, b as select lines
    assign mux_in[0] = c ? 1 : d;      // actual expression : c | d
    assign mux_in[1] = 0;              
    assign mux_in[2] = c ? ~d : ~d;    // actual expression : ~d, other way -> d ? 0 : 1 (d as a select line)
    assign mux_in[3] = c ? d : 0;      // actual expression : c & d
endmodule
