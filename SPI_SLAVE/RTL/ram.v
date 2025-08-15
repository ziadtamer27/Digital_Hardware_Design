module ram #(
    parameter MEM_DEPTH = 256,
    parameter ADDR_SIZE = 8
)(
    input [9:0] din,
    input clk,
    input rst_n,
    input rx_valid,
    output reg [7:0] dout,
    output reg tx_valid
);
    reg [7:0] mem [0:MEM_DEPTH-1];
    reg [ADDR_SIZE-1:0] wr_addr;
    reg [ADDR_SIZE-1:0] rd_addr;
    always @(posedge clk) begin
        if(!rst_n) begin
            wr_addr <= 0;
            rd_addr <= 0;
            dout <= 0;
            tx_valid <= 0;
        end
        else begin  
                case (din[9:8])
                    2'b00: if(rx_valid) begin tx_valid <= 0; wr_addr <= din[7:0]; end
                    2'b01: if(rx_valid) begin tx_valid <= 0; mem[wr_addr] <= din[7:0]; end
                    2'b10: if(rx_valid) begin tx_valid <= 0; rd_addr <= din[7:0]; end
                    2'b11: begin 
                        tx_valid <= 1'b1;
                        dout <= mem[rd_addr];
                    end      
                    default: tx_valid<=0;
                endcase
        end
    end
endmodule