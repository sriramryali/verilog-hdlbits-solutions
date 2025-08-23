// Basic implementation of vectors
module top_module(
    input [2:0] vec,      // type [msb : lsb] name. Type can be wire, reg, input and output, size of the vector is mentioned before its name. ex: reg [0:3] latch -> a 4-bit vector, 0 -> MSB 3-> LSB, -ve ranges are also allowed, [0:0] -> single bit vector
    output [2:0] outv,    // slicing(taking a part of the vector) can be done, this comes after the name, ex: latch[1:2]
    output o0,            // Once a vector is defined, it MSB and LSB cannot be changed, ex: assign mux = latch[3:0] -> wrong, because latch is from 0 to 3 (latch[0:3])
    output o1,
    output o2);
    assign outv = vec;
    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];
endmodule