// Baisc implementation of an AND gate
module top_module(input a,b, output out);
    assign out = a & b; // This is a behavioral description
endmodule


// Using Netlist representation
module top_module(input a,b, output out);
    and #5 G(out,a,b); // This is a Netlist or Structural description, #5 represents the delay specified by us, ofcourse this will not be considered during synthesis
endmodule