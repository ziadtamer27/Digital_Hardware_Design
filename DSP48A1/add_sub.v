module add_sub #(
    parameter width = 18
)(
    input [width-1:0] in1,
    input [width-1:0] in2,
    input cin,
    input opmode, // 0 for addition, 1 for subtraction
    output reg [width-1:0] out,
    output reg cout
);
    always @(*) begin
        if (opmode == 0) begin
            {cout,out} = in1 + in2 + cin; // Addition
        end 
        else begin
            {cout,out} = in1 - in2 - cin; // Subtraction
        end
    end
endmodule