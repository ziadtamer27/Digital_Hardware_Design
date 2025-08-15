module spi_wrapper (
    input clk,
    input rst_n,
    input MOSI,
    output MISO,
    input SS_n
);

    wire [9:0] rx_data;
    wire rx_valid;
    wire [7:0] tx_data;
    wire tx_valid;

    // Instantiate RAM
    ram #(
        .MEM_DEPTH(256),
        .ADDR_SIZE(8)
    ) u_ram (
        .din(rx_data),
        .clk(clk),
        .rst_n(rst_n),
        .rx_valid(rx_valid),
        .dout(tx_data),
        .tx_valid(tx_valid)
    );

    // Instantiate SPI Slave
    spi_slave u_spi_slave (
        .clk(clk),
        .rst_n(rst_n),
        .MOSI(MOSI),
        .MISO(MISO),
        .SS_n(SS_n),
        .rx_data(rx_data),
        .rx_valid(rx_valid),
        .tx_data(tx_data),
        .tx_valid(tx_valid)
    );

endmodule
