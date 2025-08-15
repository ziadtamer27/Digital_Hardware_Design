module reg_mux #(
    parameter width = 18,
    parameter rsttype = "SYNC",
    parameter regon =1
)(
    input clken,
    input clk,
    input rst,
    input [width-1:0] A,
    output reg [width-1:0] out
);
    generate
        if (regon) begin
            if (rsttype == "SYNC") begin
                always @(posedge clk) begin
                        if (rst) out <= 0;
                        else if (clken)  out <= A;
                end
            end 
            else if (rsttype == "ASYNC") begin
                always @(posedge clk or posedge rst) begin
                    if (rst) out <= 0;
                    else if (clken)  out <= A;
                end
            end
        end
        else begin
            always @(*) begin
                out = A; 
            end
        end
    endgenerate
endmodule