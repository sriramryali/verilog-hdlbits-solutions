// A simple combinational ckt
module top_module(
    input ring,
    input vibrate_mode,
    output motor,
    output ringer);
    assign motor = (ring & vibrate_mode);    // In hardware, you have to think backwards -> for which inputs does an output occur, go from outpus to inputs
    assign ringer = (ring & ~vibrate_mode);  
endmodule