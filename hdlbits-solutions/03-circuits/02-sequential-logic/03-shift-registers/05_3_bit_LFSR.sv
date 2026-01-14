// Implementation of a 3-bit LFSR ckt
module top_module(             
    input [2:0] SW,            // represents R, naming is a bit different because in the question, it is mentioned that the ckt is implemented on a DE-1 SoC board
    input [1:0] KEY,           // KEY[0] : clk, KEY[1] : L
    output reg [2:0] LEDR);    // LEDR represents the state of register
    always @(posedge KEY[0]) begin
        LEDR[0] <= KEY[1] ? SW[0] : LEDR[2];    // simple, just see the diagram given in the question
        LEDR[1] <= KEY[1] ? SW[1] : LEDR[0]; 
        LEDR[2] <= KEY[1] ? SW[2] : LEDR[1] ^ LEDR[2];
    end
endmodule