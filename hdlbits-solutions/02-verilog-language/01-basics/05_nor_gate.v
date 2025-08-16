// Basic implementation of a nor gate
module top_module(input a,b, output out);
    assign out = ~(a|b); // This is a behavioral description
endmodule 


// Same using Netlist representation
module top_module(input a,b output out);
    nor #10 S(out,a,b); // Structural or Netlist description, #10 defines the delay of the gate
endmodule