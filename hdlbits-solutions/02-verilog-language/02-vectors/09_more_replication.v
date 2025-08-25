// A problem on replication
module top_module(
    input a,b,c,d,e;
    output out);
    assign out = ~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ^ {5{a,b,c,d,e}};  // using xnor gate to compare two bits, output 1 if equal
endmodule 