// Implementation of an 8-bit priority encoder using casez or casex statements
module top_module(
    input [7:0] in,
    output reg[2:0] pos);
    always @(*) begin 
        casex (in)
            8'bxxxxxxx1 : pos = 0;   // can be written as pos = 3'b000
            8'bxxxxxx10 : pos = 1;   // you can also use z in the place of x
            8'bxxxxx100 : pos = 2;   // if you use case statement, you need to write the output for all 256(2^8) cases
            8'bxxxx1000 : pos = 3;
            8'bxxx10000 : pos = 4;
            8'bxx100000 : pos = 5;
            8'bx1000000 : pos = 6;
            8'b10000000 : pos = 7;
            default : pos = 0;
        endcase
    end
endmodule
