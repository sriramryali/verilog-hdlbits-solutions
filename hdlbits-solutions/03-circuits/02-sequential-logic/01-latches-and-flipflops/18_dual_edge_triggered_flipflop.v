// Implementation of a dual edge triggered FF
module top_module(
    input clk,
    input d,
    output q); 
    reg q_pos, q_neg;                  // always @(posedge clk or negedge clk) is not allowed in verilog
    always @(posedge clk) begin        // this is for +ve edge of clk
        q_pos <= d;                    // creating two variables to store the values at +ve ad -ve edges
    end
    always @(posedge clk) begin        // this is for -ve edge of clk
        q_neg <= d;
    end
    assign q = clk ? q_pos : q_neg;    // assigning values to q based on clk 
endmodule