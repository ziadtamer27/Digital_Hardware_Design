// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Aug  3 18:09:19 2025
// Host        : LAPTOP-3PKDCHF4 running 64-bit major release  (build 9200)
// Command     : write_verilog F:/KareemWaseem/Digital_Design/Project_2_SPI/netlistSPI.v
// Design      : spi_wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ram
   (tx_valid,
    MISO_reg,
    CLK,
    rx_valid,
    \rx_data_reg[9] ,
    SR,
    Q,
    WEA,
    rx_valid_reg,
    \count_reg[2] ,
    E,
    \rx_data_reg[8] );
  output tx_valid;
  output MISO_reg;
  input CLK;
  input rx_valid;
  input \rx_data_reg[9] ;
  input [0:0]SR;
  input [7:0]Q;
  input [0:0]WEA;
  input rx_valid_reg;
  input [2:0]\count_reg[2] ;
  input [0:0]E;
  input [0:0]\rx_data_reg[8] ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [2:0]\count_reg[2] ;
  wire [7:0]rd_addr;
  wire [0:0]\rx_data_reg[8] ;
  wire \rx_data_reg[9] ;
  wire rx_valid;
  wire rx_valid_reg;
  wire [7:0]tx_data;
  wire tx_valid;
  wire [7:0]wr_addr;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_3
       (.I0(tx_data[4]),
        .I1(tx_data[5]),
        .I2(\count_reg[2] [1]),
        .I3(tx_data[6]),
        .I4(\count_reg[2] [0]),
        .I5(tx_data[7]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_4
       (.I0(tx_data[0]),
        .I1(tx_data[1]),
        .I2(\count_reg[2] [1]),
        .I3(tx_data[2]),
        .I4(\count_reg[2] [0]),
        .I5(tx_data[3]),
        .O(MISO_i_4_n_0));
  MUXF7 MISO_reg_i_2
       (.I0(MISO_i_3_n_0),
        .I1(MISO_i_4_n_0),
        .O(MISO_reg),
        .S(\count_reg[2] [2]));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,wr_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,rd_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rx_valid),
        .ENBWREN(\rx_data_reg[9] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[0] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[0]),
        .Q(rd_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[1] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[1]),
        .Q(rd_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[2] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[2]),
        .Q(rd_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[3] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[3]),
        .Q(rd_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[4] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[4]),
        .Q(rd_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[5] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[5]),
        .Q(rd_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[6] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[6]),
        .Q(rd_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[7] 
       (.C(CLK),
        .CE(\rx_data_reg[8] ),
        .D(Q[7]),
        .Q(rd_addr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_reg),
        .Q(tx_valid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(wr_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(wr_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(wr_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(wr_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(wr_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(wr_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(wr_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(wr_addr[7]),
        .R(SR));
endmodule

module spi_slave
   (MISO_OBUF,
    rx_valid,
    SR,
    Q,
    WEA,
    \rd_addr_reg[7] ,
    E,
    \rd_addr_reg[7]_0 ,
    tx_valid_reg,
    mem_reg,
    \count_reg[2]_0 ,
    CLK,
    rst_n_IBUF,
    tx_valid,
    MOSI_IBUF,
    SS_n_IBUF);
  output MISO_OBUF;
  output rx_valid;
  output [0:0]SR;
  output [2:0]Q;
  output [0:0]WEA;
  output [7:0]\rd_addr_reg[7] ;
  output [0:0]E;
  output [0:0]\rd_addr_reg[7]_0 ;
  output tx_valid_reg;
  output mem_reg;
  input \count_reg[2]_0 ;
  input CLK;
  input rst_n_IBUF;
  input tx_valid;
  input MOSI_IBUF;
  input SS_n_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[4] ;
  wire \FSM_onehot_ns_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_ns_reg_n_0_[0] ;
  wire \FSM_onehot_ns_reg_n_0_[1] ;
  wire \FSM_onehot_ns_reg_n_0_[2] ;
  wire \FSM_onehot_ns_reg_n_0_[3] ;
  wire \FSM_onehot_ns_reg_n_0_[4] ;
  wire GND_2;
  wire MISO0_out;
  wire MISO_OBUF;
  wire MOSI_IBUF;
  wire [2:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire VCC_2;
  wire [0:0]WEA;
  (* RTL_KEEP = "yes" *) wire addr_read_check;
  wire addr_read_check_i_1_n_0;
  wire addr_read_check_reg_n_0;
  wire [31:3]count;
  wire \count[31]_i_10_n_0 ;
  wire \count[31]_i_11_n_0 ;
  wire \count[31]_i_12_n_0 ;
  wire \count[31]_i_13_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire \count[31]_i_5_n_0 ;
  wire \count[31]_i_6_n_0 ;
  wire \count[31]_i_8_n_0 ;
  wire \count[31]_i_9_n_0 ;
  wire [31:0]count_0;
  wire \count_reg[12]_i_2_n_0 ;
  wire \count_reg[12]_i_2_n_1 ;
  wire \count_reg[12]_i_2_n_2 ;
  wire \count_reg[12]_i_2_n_3 ;
  wire \count_reg[16]_i_2_n_0 ;
  wire \count_reg[16]_i_2_n_1 ;
  wire \count_reg[16]_i_2_n_2 ;
  wire \count_reg[16]_i_2_n_3 ;
  wire \count_reg[20]_i_2_n_0 ;
  wire \count_reg[20]_i_2_n_1 ;
  wire \count_reg[20]_i_2_n_2 ;
  wire \count_reg[20]_i_2_n_3 ;
  wire \count_reg[24]_i_2_n_0 ;
  wire \count_reg[24]_i_2_n_1 ;
  wire \count_reg[24]_i_2_n_2 ;
  wire \count_reg[24]_i_2_n_3 ;
  wire \count_reg[28]_i_2_n_0 ;
  wire \count_reg[28]_i_2_n_1 ;
  wire \count_reg[28]_i_2_n_2 ;
  wire \count_reg[28]_i_2_n_3 ;
  wire \count_reg[2]_0 ;
  wire \count_reg[31]_i_7_n_2 ;
  wire \count_reg[31]_i_7_n_3 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[4]_i_2_n_1 ;
  wire \count_reg[4]_i_2_n_2 ;
  wire \count_reg[4]_i_2_n_3 ;
  wire \count_reg[8]_i_2_n_0 ;
  wire \count_reg[8]_i_2_n_1 ;
  wire \count_reg[8]_i_2_n_2 ;
  wire \count_reg[8]_i_2_n_3 ;
  wire [31:1]data0;
  wire mem_reg;
  wire ns;
  wire [7:0]\rd_addr_reg[7] ;
  wire [0:0]\rd_addr_reg[7]_0 ;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[9]_i_1_n_0 ;
  wire [9:0]rx_data_1;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire rx_valid_i_3_n_0;
  wire rx_valid_i_4_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:10000,READ_ADD:01000,IDLE:00001,READ_DATA:00100" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_ns_reg_n_0_[0] ),
        .Q(\FSM_onehot_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:10000,READ_ADD:01000,IDLE:00001,READ_DATA:00100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_ns_reg_n_0_[1] ),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:10000,READ_ADD:01000,IDLE:00001,READ_DATA:00100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_ns_reg_n_0_[2] ),
        .Q(\FSM_onehot_cs_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:10000,READ_ADD:01000,IDLE:00001,READ_DATA:00100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_ns_reg_n_0_[3] ),
        .Q(addr_read_check),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:10000,READ_ADD:01000,IDLE:00001,READ_DATA:00100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_ns_reg_n_0_[4] ),
        .Q(\FSM_onehot_cs_reg_n_0_[4] ),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_ns_reg[0] 
       (.CLR(GND_2),
        .D(\FSM_onehot_ns_reg[0]_i_1_n_0 ),
        .G(ns),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
    \FSM_onehot_ns_reg[0]_i_1 
       (.I0(addr_read_check),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(SS_n_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[0] ),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .I5(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\FSM_onehot_ns_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[1] 
       (.CLR(GND_2),
        .D(\FSM_onehot_ns_reg[1]_i_1_n_0 ),
        .G(ns),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[1] ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_ns_reg[1]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(SS_n_IBUF),
        .O(\FSM_onehot_ns_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[2] 
       (.CLR(GND_2),
        .D(\FSM_onehot_ns_reg[2]_i_1_n_0 ),
        .G(ns),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h00FF0080)) 
    \FSM_onehot_ns_reg[2]_i_1 
       (.I0(addr_read_check_reg_n_0),
        .I1(MOSI_IBUF),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(SS_n_IBUF),
        .I4(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\FSM_onehot_ns_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[3] 
       (.CLR(GND_2),
        .D(\FSM_onehot_ns_reg[3]_i_1_n_0 ),
        .G(ns),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'h00FF0040)) 
    \FSM_onehot_ns_reg[3]_i_1 
       (.I0(addr_read_check_reg_n_0),
        .I1(MOSI_IBUF),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(SS_n_IBUF),
        .I4(addr_read_check),
        .O(\FSM_onehot_ns_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_ns_reg[4] 
       (.CLR(GND_2),
        .D(\FSM_onehot_ns_reg[4]_i_1_n_0 ),
        .G(ns),
        .GE(VCC_2),
        .Q(\FSM_onehot_ns_reg_n_0_[4] ));
  LUT4 #(
    .INIT(16'h0F04)) 
    \FSM_onehot_ns_reg[4]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(SS_n_IBUF),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\FSM_onehot_ns_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_ns_reg[4]_i_2 
       (.I0(addr_read_check),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(\FSM_onehot_cs_reg_n_0_[0] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(ns));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  LUT6 #(
    .INIT(64'h8888888000000000)) 
    MISO_i_1
       (.I0(rst_n_IBUF),
        .I1(tx_valid),
        .I2(\count[31]_i_3_n_0 ),
        .I3(\count[31]_i_4_n_0 ),
        .I4(\count[31]_i_5_n_0 ),
        .I5(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(MISO0_out));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO0_out),
        .D(\count_reg[2]_0 ),
        .Q(MISO_OBUF),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  LUT3 #(
    .INIT(8'hDC)) 
    addr_read_check_i_1
       (.I0(\FSM_onehot_cs_reg_n_0_[2] ),
        .I1(addr_read_check),
        .I2(addr_read_check_reg_n_0),
        .O(addr_read_check_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    addr_read_check_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(addr_read_check_i_1_n_0),
        .Q(addr_read_check_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF0000FE00)) 
    \count[0]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\count[31]_i_6_n_0 ),
        .O(count_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[10]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[10]),
        .O(count_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[11]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[11]),
        .O(count_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[12]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[12]),
        .O(count_0[12]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[13]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[13]),
        .O(count_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[14]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[14]),
        .O(count_0[14]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[15]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[15]),
        .O(count_0[15]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[16]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[16]),
        .O(count_0[16]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[17]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[17]),
        .O(count_0[17]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[18]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[18]),
        .O(count_0[18]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[19]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[19]),
        .O(count_0[19]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[1]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[1]),
        .O(count_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[20]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[20]),
        .O(count_0[20]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[21]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[21]),
        .O(count_0[21]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[22]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[22]),
        .O(count_0[22]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[23]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[23]),
        .O(count_0[23]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[24]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[24]),
        .O(count_0[24]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[25]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[25]),
        .O(count_0[25]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[26]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[26]),
        .O(count_0[26]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[27]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[27]),
        .O(count_0[27]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[28]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[28]),
        .O(count_0[28]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[29]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[29]),
        .O(count_0[29]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[2]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[2]),
        .O(count_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[30]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[30]),
        .O(count_0[30]));
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \count[31]_i_1 
       (.I0(addr_read_check),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(tx_valid),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\count[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_10 
       (.I0(count[26]),
        .I1(count[27]),
        .I2(count[24]),
        .I3(count[25]),
        .O(\count[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count[31]_i_11 
       (.I0(count[29]),
        .I1(count[28]),
        .O(\count[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_12 
       (.I0(count[18]),
        .I1(count[19]),
        .I2(count[16]),
        .I3(count[17]),
        .O(\count[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_13 
       (.I0(count[22]),
        .I1(count[23]),
        .I2(count[20]),
        .I3(count[21]),
        .O(\count[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[31]_i_2 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[31]),
        .O(count_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_3 
       (.I0(count[13]),
        .I1(count[12]),
        .I2(count[15]),
        .I3(count[14]),
        .I4(\count[31]_i_8_n_0 ),
        .O(\count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_4 
       (.I0(\count[31]_i_9_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(count[31]),
        .I4(Q[2]),
        .O(\count[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \count[31]_i_5 
       (.I0(\count[31]_i_10_n_0 ),
        .I1(count[3]),
        .I2(count[30]),
        .I3(\count[31]_i_11_n_0 ),
        .I4(\count[31]_i_12_n_0 ),
        .I5(\count[31]_i_13_n_0 ),
        .O(\count[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[31]_i_6 
       (.I0(addr_read_check),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_8 
       (.I0(count[10]),
        .I1(count[11]),
        .I2(count[8]),
        .I3(count[9]),
        .O(\count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[31]_i_9 
       (.I0(count[6]),
        .I1(count[7]),
        .I2(count[4]),
        .I3(count[5]),
        .O(\count[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[3]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[3]),
        .O(count_0[3]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[4]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[4]),
        .O(count_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[5]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[5]),
        .O(count_0[5]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[6]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[6]),
        .O(count_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[7]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[7]),
        .O(count_0[7]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[8]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[8]),
        .O(count_0[8]));
  LUT6 #(
    .INIT(64'hFFFFFE0000000000)) 
    \count[9]_i_1 
       (.I0(\count[31]_i_3_n_0 ),
        .I1(\count[31]_i_4_n_0 ),
        .I2(\count[31]_i_5_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .I4(\count[31]_i_6_n_0 ),
        .I5(data0[9]),
        .O(count_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[10]),
        .Q(count[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[11]),
        .Q(count[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[12]),
        .Q(count[12]),
        .R(SR));
  CARRY4 \count_reg[12]_i_2 
       (.CI(\count_reg[8]_i_2_n_0 ),
        .CO({\count_reg[12]_i_2_n_0 ,\count_reg[12]_i_2_n_1 ,\count_reg[12]_i_2_n_2 ,\count_reg[12]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S(count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[13]),
        .Q(count[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[14]),
        .Q(count[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[15]),
        .Q(count[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[16]),
        .Q(count[16]),
        .R(SR));
  CARRY4 \count_reg[16]_i_2 
       (.CI(\count_reg[12]_i_2_n_0 ),
        .CO({\count_reg[16]_i_2_n_0 ,\count_reg[16]_i_2_n_1 ,\count_reg[16]_i_2_n_2 ,\count_reg[16]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[16:13]),
        .S(count[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[17]),
        .Q(count[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[18]),
        .Q(count[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[19]),
        .Q(count[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[20]),
        .Q(count[20]),
        .R(SR));
  CARRY4 \count_reg[20]_i_2 
       (.CI(\count_reg[16]_i_2_n_0 ),
        .CO({\count_reg[20]_i_2_n_0 ,\count_reg[20]_i_2_n_1 ,\count_reg[20]_i_2_n_2 ,\count_reg[20]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[20:17]),
        .S(count[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[21]),
        .Q(count[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[22]),
        .Q(count[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[23]),
        .Q(count[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[24]),
        .Q(count[24]),
        .R(SR));
  CARRY4 \count_reg[24]_i_2 
       (.CI(\count_reg[20]_i_2_n_0 ),
        .CO({\count_reg[24]_i_2_n_0 ,\count_reg[24]_i_2_n_1 ,\count_reg[24]_i_2_n_2 ,\count_reg[24]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[24:21]),
        .S(count[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[25]),
        .Q(count[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[26]),
        .Q(count[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[27]),
        .Q(count[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[28]),
        .Q(count[28]),
        .R(SR));
  CARRY4 \count_reg[28]_i_2 
       (.CI(\count_reg[24]_i_2_n_0 ),
        .CO({\count_reg[28]_i_2_n_0 ,\count_reg[28]_i_2_n_1 ,\count_reg[28]_i_2_n_2 ,\count_reg[28]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[28:25]),
        .S(count[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[29]),
        .Q(count[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[30]),
        .Q(count[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[31]),
        .Q(count[31]),
        .R(SR));
  CARRY4 \count_reg[31]_i_7 
       (.CI(\count_reg[28]_i_2_n_0 ),
        .CO({\count_reg[31]_i_7_n_2 ,\count_reg[31]_i_7_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[31:29]),
        .S({\<const0> ,count[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[3]),
        .Q(count[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[4]),
        .Q(count[4]),
        .R(SR));
  CARRY4 \count_reg[4]_i_2 
       (.CI(\<const0> ),
        .CO({\count_reg[4]_i_2_n_0 ,\count_reg[4]_i_2_n_1 ,\count_reg[4]_i_2_n_2 ,\count_reg[4]_i_2_n_3 }),
        .CYINIT(Q[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S({count[4:3],Q[2:1]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[5]),
        .Q(count[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[6]),
        .Q(count[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[7]),
        .Q(count[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[8]),
        .Q(count[8]),
        .R(SR));
  CARRY4 \count_reg[8]_i_2 
       (.CI(\count_reg[4]_i_2_n_0 ),
        .CO({\count_reg[8]_i_2_n_0 ,\count_reg[8]_i_2_n_1 ,\count_reg[8]_i_2_n_2 ,\count_reg[8]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S(count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(\count[31]_i_1_n_0 ),
        .D(count_0[9]),
        .Q(count[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h8F)) 
    mem_reg_i_1
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rst_n_IBUF),
        .O(mem_reg));
  LUT1 #(
    .INIT(2'h1)) 
    mem_reg_i_2
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_3
       (.I0(rst_n_IBUF),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(WEA));
  LUT3 #(
    .INIT(8'h40)) 
    \rd_addr[7]_i_1 
       (.I0(rx_data[8]),
        .I1(rx_valid),
        .I2(rx_data[9]),
        .O(\rd_addr_reg[7]_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[0]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[0]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[1]_i_1 
       (.I0(\rd_addr_reg[7] [0]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[1]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[2]_i_1 
       (.I0(\rd_addr_reg[7] [1]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[2]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[3]_i_1 
       (.I0(\rd_addr_reg[7] [2]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[3]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[4]_i_1 
       (.I0(\rd_addr_reg[7] [3]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[4]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[5]_i_1 
       (.I0(\rd_addr_reg[7] [4]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[5]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[6]_i_1 
       (.I0(\rd_addr_reg[7] [5]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[6]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[7]_i_1 
       (.I0(\rd_addr_reg[7] [6]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[7]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[8]_i_1 
       (.I0(\rd_addr_reg[7] [7]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[8]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_data[9]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(addr_read_check),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(\FSM_onehot_cs_reg_n_0_[2] ),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[9]_i_2 
       (.I0(rx_data[8]),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(addr_read_check),
        .O(rx_data_1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[0]),
        .Q(\rd_addr_reg[7] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[1]),
        .Q(\rd_addr_reg[7] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[2]),
        .Q(\rd_addr_reg[7] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[3]),
        .Q(\rd_addr_reg[7] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[4]),
        .Q(\rd_addr_reg[7] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[5]),
        .Q(\rd_addr_reg[7] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[6]),
        .Q(\rd_addr_reg[7] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[7]),
        .Q(\rd_addr_reg[7] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[8]),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_data_1[9]),
        .Q(rx_data[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    rx_valid_i_1
       (.I0(\count[31]_i_3_n_0 ),
        .I1(rx_valid_i_2_n_0),
        .I2(rx_valid_i_3_n_0),
        .I3(rx_valid_i_4_n_0),
        .I4(\FSM_onehot_cs_reg_n_0_[4] ),
        .I5(addr_read_check),
        .O(rx_valid_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    rx_valid_i_2
       (.I0(\count[31]_i_9_n_0 ),
        .I1(count[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(rx_valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rx_valid_i_3
       (.I0(count[29]),
        .I1(count[28]),
        .I2(count[30]),
        .I3(count[31]),
        .I4(\count[31]_i_10_n_0 ),
        .O(rx_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rx_valid_i_4
       (.I0(count[21]),
        .I1(count[20]),
        .I2(count[23]),
        .I3(count[22]),
        .I4(\count[31]_i_12_n_0 ),
        .O(rx_valid_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hD5C0)) 
    tx_valid_i_1
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .I3(tx_valid),
        .O(tx_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \wr_addr[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .O(E));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module spi_wrapper
   (clk,
    rst_n,
    MOSI,
    MISO,
    SS_n);
  input clk;
  input rst_n;
  input MOSI;
  output MISO;
  input SS_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]count;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire rx_valid;
  wire tx_valid;
  wire u_ram_n_1;
  wire u_spi_slave_n_15;
  wire u_spi_slave_n_16;
  wire u_spi_slave_n_17;
  wire u_spi_slave_n_18;
  wire u_spi_slave_n_2;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  ram u_ram
       (.CLK(clk_IBUF_BUFG),
        .E(u_spi_slave_n_15),
        .MISO_reg(u_ram_n_1),
        .Q(rx_data),
        .SR(u_spi_slave_n_2),
        .WEA(mem),
        .\count_reg[2] (count),
        .\rx_data_reg[8] (u_spi_slave_n_16),
        .\rx_data_reg[9] (u_spi_slave_n_18),
        .rx_valid(rx_valid),
        .rx_valid_reg(u_spi_slave_n_17),
        .tx_valid(tx_valid));
  spi_slave u_spi_slave
       (.CLK(clk_IBUF_BUFG),
        .E(u_spi_slave_n_15),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(count),
        .SR(u_spi_slave_n_2),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .\count_reg[2]_0 (u_ram_n_1),
        .mem_reg(u_spi_slave_n_18),
        .\rd_addr_reg[7] (rx_data),
        .\rd_addr_reg[7]_0 (u_spi_slave_n_16),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid),
        .tx_valid_reg(u_spi_slave_n_17));
endmodule
