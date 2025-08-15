// A combinational ckt with four wires
module top_module(input a,b,c, output w,x,y,z);
    assign w = a; // connecting outputs to corresponding inputs
    assign x = b; 
    assign y = b;
    assign z = c;
endmodule