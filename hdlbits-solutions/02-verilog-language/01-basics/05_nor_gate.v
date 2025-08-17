// Basic implementation of a nor gate
module top_module(
    input a,b,
    output out);
    assign out = ~(a|b); // This is a behavioral description
endmodule 


// Same using Netlist representation
module top_module(input a,b output out);
    nor #10 S(out,a,b); // Structural or Netlist description, #10 defines the delay of the gate
endmodule


// Binary vs Boolean: 
// Binary -> ~,|,& these are all bit wise operations, used in hardware gate implementations
// Boolean or logical -> !,||,&& these are all boolean or logical operators, used in logical expressions (true or false)
