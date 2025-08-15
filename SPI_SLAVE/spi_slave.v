module spi_slave #(
    parameter IDLE = 3'b000,
    parameter CHK_CMD = 3'b001,
    parameter WRITE = 3'b010,
    parameter READ_ADD = 3'b011,
    parameter READ_DATA = 3'b100
)(
    input clk,
    input rst_n,
    input MOSI,
    output reg MISO,
    input SS_n,
    output reg [9:0] rx_data,
    output reg rx_valid,
    input [7:0] tx_data,
    input  tx_valid
);
    integer count;
 // try one_hot , gray , sequential.
    (* fsm_encoding = "sequential" *)
    reg [2:0] cs,ns;
    reg addr_read_check;
    always @(posedge clk) begin
        if (!rst_n)
            cs <= IDLE;
        else
            cs <= ns;
    end
    always @(*) begin
        case (cs)
            IDLE: begin
                if (!SS_n) ns = CHK_CMD;
                else ns = IDLE;
            end
            CHK_CMD: begin
                if (SS_n) ns = IDLE;
                else begin
                    if(MOSI) begin
                        if (addr_read_check) ns = READ_DATA;
                        else ns = READ_ADD;
                    end 
                    else begin
                        ns = WRITE;
                    end
                end 
            end
            WRITE: begin
                if (!SS_n ) ns = WRITE;
                else if (SS_n) ns = IDLE;
            end
            READ_ADD: begin
                if (!SS_n ) ns = READ_ADD;
                else if (SS_n) ns = IDLE;
            end
            READ_DATA: begin
                if (!SS_n) ns = READ_DATA;
                else if (SS_n) ns = IDLE;
            end
        endcase
    end
    always @(posedge clk) begin
        if (!rst_n) begin
            count <= 0;
            rx_data <= 0;
            rx_valid <= 0;
            addr_read_check <= 0;
        end else begin
            case (cs)
            IDLE: begin
                rx_data <= 0;
            end
                WRITE: begin
                    rx_valid <= 0; 
                    rx_data <= {rx_data[8:0], MOSI}; 
                    count <= count + 1;
                    if(count == 9) begin  
                        rx_valid <= 1; 
                    end
                    if(count==10) rx_data <= 0;
                end
                READ_ADD: begin
                    rx_valid <= 0; 
                    rx_data <= {rx_data[8:0], MOSI}; 
                    count <= count + 1;
                    if(count == 9) begin  
                        rx_valid <= 1; 
                    end
                    if(count==10) rx_data <= 0;
                    addr_read_check <= 1;
                end
                READ_DATA: begin  
                    rx_valid <= 0; 
                    rx_data <= {rx_data[8:0], MOSI}; 
                    if (tx_valid) begin
                        if (count == 8) count <= 0;
                        else begin
                            MISO <= tx_data[7-count];
                            count <= count + 1; 
                        end
                    end                    
                    addr_read_check <= 0;
                end
                CHK_CMD: begin
                    count <= 0; 
                    rx_valid <= 0;
                    rx_data <= 0;
                end           
            endcase 
        end
    end
endmodule