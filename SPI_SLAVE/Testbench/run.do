vlib work
vlog ram.v spi_slave.v spi_wrapper.v spi_tb.v
vsim -voptargs=+acc work.spi_tb
add wave *
add wave -position insertpoint  \
sim:/spi_tb/Ram/mem \
sim:/spi_tb/Ram/wr_addr \
sim:/spi_tb/Ram/rd_addr
add wave -position insertpoint  \
sim:/spi_tb/u_spi_slave/count \
sim:/spi_tb/u_spi_slave/cs
add wave -position insertpoint  \
sim:/spi_tb/u_spi_slave/rx_data
add wave -position insertpoint  \
sim:/spi_tb/u_spi_slave/ns
run -all
#quit -sim