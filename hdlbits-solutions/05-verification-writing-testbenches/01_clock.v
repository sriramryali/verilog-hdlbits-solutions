// Implementation of a testbench for a clk signal
module top_module;
    reg clk;                // inputs to the instatiated module have to be declared as reg, and outputs should be declared as wire
    dut inst(.clk(clk));    // module dut has been instantiated
    initial begin   
        clk = 0;                  // initialising clk to value 0
        forever #5 clk = ~clk;    // clk toggles every 5 time units, hence a time period of 10 units
    end         
endmodule 


// instantiated module
module dut(input clk);
// ...
endmodule


// some tips for writing testbenches
// never drive DUT inputs from multiple initial/ always blocks -> because it causes race conditions and unknown values(x)
// ex : initial A = 0;      -> better way :  initial begin
//      always #5 A = ~A;                       A = 0;
//                                              forever A = ~A;
//                                           end
// initialise everything at a time(t = 0) -> to avoid delta cycles, x propagation hides bugs
// ex : initial begin
//          A = 0;
//          B = 0;
//      end
// better follow this for clk generation
// initial begin
//      clk = 0;
//      forever #5 clk = ~clk;   // required time period
// end
// better write the delays and assignments in the same time instant
// ex : #10; a = 2'b01;   ->   better way : #10 a = 2'b01;  this avoids delta cycles
