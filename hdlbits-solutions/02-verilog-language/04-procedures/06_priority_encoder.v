// Implementation of a priority encoder using case statements
module top_module(
    input [3:0] in,
    output reg [1:0] pos);
    always @(*) begin            // this models a combinational ckt
        case (in)
            4'b0000 : pos = 0;   // can also be written as pos = 2'b00, instead of this statement, we can also use default : pos = 0
            4'b0001 : pos = 0;   // the first bit (from the least significant side)
            4'b0010 : pos = 1;
            4'b0011 : pos = 0;
            4'b0100 : pos = 2;
            4'b0101 : pos = 0;
            4'b0110 : pos = 1;
            4'b0111 : pos = 0;
            4'b1000 : pos = 3;
            4'b1001 : pos = 0;
            4'b1010 : pos = 1;
            4'b1011 : pos = 0;
            4'b1100 : pos = 2;
            4'b1101 : pos = 0;
            4'b1110 : pos = 1;
            4'b1111 : pos = 0;
        endcase
    end
endmodule


// Same implementation using casex or casez -> less verbose and easy to use
module top_module(
    input [3:0],
    output reg [1:0] pos);
    always @(*) begin
        casez (in)
            4'bzzz1 : pos = 0;     
            4'bzz10 : pos = 1;     // this can also be written as 4'bzz1z : pos = 2; inplace of 0, z can be written
            4'bz100 : pos = 2;     // instead of casez, casex can also be used and it results the same
            4'b1000 : pos = 3;     
            default : pos = 0;     // same as 4'b0000 : pos = 0
        endcase
    end
endmodule


// ways to write :
// 4'bz1zz : pos = 2;
// 4'bz100 : pos = 2;   better to put zeros, easier to understand and logical
// 4'bx100 : pos = 2; 