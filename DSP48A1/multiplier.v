module multiplier #(
    parameter width = 18
)(
    input [width-1:0] in1,
    input [width-1:0] in2,
    output  [2*width-1:0] out
);
    assign out = in1 * in2; 
endmodule