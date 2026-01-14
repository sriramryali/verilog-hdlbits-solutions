// Implementation of a 4-bit shift register
module top_module(
    input [3:0] SW,           // R inputs
    input [3:0] KEY,          // KEY[0] : clk, KEY[1] : E, KEY[2] : L, KEY[3] : w
    input reg [3:0] LEDR);    // register states : Q
    always @(posedge KEY[0]) begin
        LEDR <= KEY[2] ? SW : (KEY[1] ? {KEY[3], LEDR[3:1]} : LEDR);   // simple, see the diagram 
    end
endmodule


// Another way : usign MUXDFF module(for one stage of the ckt)
module top_module(
    input [3:0] SW,           // R inputs
    input [3:0] KEY,          // KEY[0] : clk, KEY[1] : E, KEY[2] : L, KEY[3] : w
    input reg [3:0] LEDR);    // register states : Q

    MUXDFF inst1(.clk(KEY[0]), .w(KEY[3]), .R(SW[3]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[3]));
    MUXDFF inst2(.clk(KEY[0]), .w(LEDR[3]), .R(SW[2]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[2]));
    MUXDFF inst3(.clk(KEY[0]), .w(LEDR[2]), .R(SW[1]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[1]));
    MUXDFF inst4(.clk(KEY[0]), .w(LEDR[1]), .R(SW[0]), .E(KEY[1]), .L(KEY[2]), .Q(LEDR[0]));
    
endmodule


module MUXDFF(
    input clk,
    input w,
    input R,
    input E,
    input L,
    output reg Q);
    always @(posedge clk) begin
        Q <= L ? R : (E ? w : Q);
    end
endmodule

