// Implementation of a 7458 chip, only using assign statements without any intermediate wires
module top_module(
    input p1a,p1b,p1c,p1d,p1e,p1f,
    output p1y,
    input p2a,p2b,p2c,p2d,     
    output p2y);  // easier, but be careful while writing the expression
    assign p2y = (p2c & p2d)|(p2a & p2b);
    assign p1y = (p1a & p1b & p1c)|(p1d & p1e & p1f);
endmodule


// Implementing the same using wires
module top_module(
    input p1a,p1b,p1c,p1d,p1e,p1f,
    output p1y,
    input p2a,p2b,p2c,p2d,
    output p2y);
    wire k;
    wire l;
    wire m;
    wire n;
    assign k = (p2a & p2b); // more stuctured
    assign l = (p2c & p2d);
    assign p2y = k | l;
    assign m = (p1a & p1b & p1c);
    assign n = (p1d & p2e & p2f);
    assign p1y = m | n;
endmodule


