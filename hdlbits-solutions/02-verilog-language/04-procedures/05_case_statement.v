// Implementation of case statement 
module top_module(
    input [2:0] sel,       // 3-bit select line
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out);
    always @(*) begin                 // represents a combinational ckt
        case (sel)                    // based on the sel, output value changes
            3'b000 : out = data0;
            3'b001 : out = data1;
            3'b002 : out = data2;
            3'b003 : out = data3;
            3'b004 : out = data4;
            3'b005 : out = data5;
            default : out = 4'b0000;   // can also be written as out = 0;
        endcase
    end
endmodule

