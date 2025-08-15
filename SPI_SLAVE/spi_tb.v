module spi_tb();
    reg rst_n,clk,SS_n;
    wire MISO,tx_valid,rx_valid;
    wire [7:0]dout; wire[9:0]din;
    integer i;
    reg MOSI;
    reg [9:0] in_data;

     ram #(
        .MEM_DEPTH(256),
        .ADDR_SIZE(8)
    ) Ram (
        .din(din),
        .clk(clk),
        .rst_n(rst_n),
        .rx_valid(rx_valid),
        .dout(dout),
        .tx_valid(tx_valid)
    );

    // Instantiate SPI Slave
    spi_slave u_spi_slave (
        .clk(clk),
        .rst_n(rst_n),
        .MOSI(MOSI),
        .MISO(MISO),
        .SS_n(SS_n),
        .rx_data(din),
        .rx_valid(rx_valid),
        .tx_data(dout),
        .tx_valid(tx_valid)
    );
    
    initial begin
        clk=0;
        forever #1 clk=~clk;
    end
    initial begin
        $readmemh("spi_mem.dat",Ram.mem);
        rst_n=0;
        SS_n=0;
        @(negedge clk);
        rst_n=1; MOSI=0; @(negedge clk);
   // Test 1: Valid write address command 
        in_data=10'b00_10101011;  // {2'b00, 8'hAB}
 @(negedge clk);
            for (i = 9; i >= 0; i = i - 1) begin
                MOSI = in_data[i];
                @(negedge clk);  // Change data on falling edge
            end
   // Test 2: Valid write data command 
        SS_n = 1;  // End transaction
        @(negedge clk);
        SS_n = 0; MOSI=0; @(negedge clk);
        in_data=10'b01_11010111;  // {2'b00, 8'hAB}
         @(negedge clk);
        for (i = 9; i >= 0; i = i - 1) begin
            MOSI = in_data[i];
            @(negedge clk);  // Change data on falling edge
        end
   // Test 3: Valid read address command 
        SS_n = 1;  // End transaction
        @(negedge clk);
        SS_n = 0; MOSI=1; @(negedge clk);  
        in_data=10'b10_10101011;
        @(negedge clk); 
        for (i = 9; i >= 0; i = i - 1) begin
            MOSI = in_data[i];
            @(negedge clk);  // Change data on falling edge
        end
        SS_n = 1;
        @(negedge clk);
    // Test 4: Valid read data command
        SS_n = 0; MOSI=1; @(negedge clk);
        in_data = 10'b11_01010010; 
        @(negedge clk); 
        for (i = 9; i >= 0; i = i - 1) begin
            MOSI = in_data[i];
            @(negedge clk); 
        end
        // Wait for MISO data to be read (8 clock cycles)
        repeat(9) @(negedge clk); 
        SS_n = 1;
        @(negedge clk);
    $stop; 
    end
    initial begin
        $monitor(" SS_n=%b, MOSI=%b, MISO=%b"
                , SS_n, MOSI, MISO);
    end
endmodule