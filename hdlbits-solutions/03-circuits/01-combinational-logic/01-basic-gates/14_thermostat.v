// Implementation of a combinational ckt (thermostat)
module top_module(
    input too_hot,
    input too_cold,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan);
    assign heater = (mode & too_cold);   // think of this in the same way, output to corresponding inputs
    assign aircon = (~mode & too_hot);
    assign fan = (heater | aircon | fan_on);
endmodule
