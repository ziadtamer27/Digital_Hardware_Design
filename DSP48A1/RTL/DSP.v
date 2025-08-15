module DSP #(
    parameter A0REG = 0,
    parameter A1REG = 1,
    parameter B0REG = 0,
    parameter B1REG = 1,
    parameter CREG = 1,
    parameter DREG = 1,
    parameter MREG = 1,
    parameter PREG = 1,
    parameter CARRYINREG = 1,
    parameter CARRYOUTREG = 1,
    parameter OPMODEREG =1,
    parameter CARRYINSEL = "OPMODE5",
    parameter B_INPUT = "DIRECT",
    parameter RSTTYPE = "SYNC"
)(
    //DATA PORTS
    input [17:0] A,
    input [17:0] B,
    input [47:0] C,
    input [17:0] D,
    input CARRYIN,
    output [35:0] M,
    output [47:0] P,
    output CARRYOUT,
    output CARRYOUTF,
    // CONTROL  INPUT PORTS
    input clk,
    input [7:0] OPMODE,
    // CLOCK ENABLE INPUT PORTS
    input CEA,
    input CEB,
    input CEC,
    input CECARRYIN,
    input CED,
    input CEM,
    input CEOPMODE,
    input CEP,
    // RESET INPUT PORTS
    input RSTA,
    input RSTB,
    input RSTC,
    input RSTD,
    input RSTCARRYIN,
    input RSTM,
    input RSTOPMODE,
    input RSTP,
    // CASCADE PORTS
    input [17:0] BCIN,
    output [17:0] BCOUT,
    input [47:0] PCIN,
    output [47:0] PCOUT
);
wire [17:0] B0_in, A0_reg, B0_reg, D_reg, A1_reg,add1_out, add2_out,B1_in,B1_reg;
wire [47:0] C_reg, concat, P_in , P_reg ;
reg [47:0] X, Z;
wire [35:0] M_in, M_reg;
wire [7:0] OPMODE_reg;
wire carry_in,carry_reg, carryout_in, carryout_reg,cout_dummy;

assign B0_in = (B_INPUT == "DIRECT")? B :(B_INPUT == "CASCADE")? BCIN : 0;

reg_mux #(
    .width(18),
    .rsttype(RSTTYPE),
    .regon(A0REG)
) A0_REG (
    .clken(CEA),
    .clk(clk),
    .rst(RSTA),
    .A(A),
    .out(A0_reg)
);
reg_mux #(
    .width(18),
    .rsttype(RSTTYPE),
    .regon(A1REG)
) A1_REG (
    .clken(CEA),
    .clk(clk),
    .rst(RSTA),
    .A(A0_reg),
    .out(A1_reg)
);
reg_mux #(
    .width(18),
    .rsttype(RSTTYPE),
    .regon(B0REG)
) B0_REG (
    .clken(CEB),
    .clk(clk),
    .rst(RSTB),
    .A(B0_in),
    .out(B0_reg)
);
reg_mux #(
    .width(18),
    .rsttype(RSTTYPE),
    .regon(B1REG)
) D_REG (
    .clken(CED),
    .clk(clk),
    .rst(RSTD),
    .A(D),
    .out(D_reg)
);
reg_mux #(
    .width(48),
    .rsttype(RSTTYPE),
    .regon(CREG)
) C_REG (
    .clken(CEC),
    .clk(clk),
    .rst(RSTC),
    .A(C),
    .out(C_reg)
);
reg_mux #(
    .width(8),
    .rsttype(RSTTYPE),
    .regon(OPMODEREG)
) OPMODE_REG (
    .clken(CEOPMODE),
    .clk(clk),
    .rst(RSTOPMODE),
    .A(OPMODE),
    .out(OPMODE_reg)
);
add_sub #(
    .width(18)
) pre_add_sub (
    .in1(D_reg),
    .in2(B0_reg),
    .cin(1'b0),
    .opmode(OPMODE_reg[6]),
    .out(add1_out),
    .cout(cout_dummy) 
);

assign B1_in = (OPMODE_reg[4]) ? add1_out : B0_reg;

reg_mux #(
    .width(18),
    .rsttype(RSTTYPE),
    .regon(B1REG)
) B1_REG (
    .clken(CEB),
    .clk(clk),
    .rst(RSTB),
    .A(B1_in),
    .out(B1_reg)
);
multiplier #(
    .width(18)
) multiplier_inst (
    .in1(A1_reg),
    .in2(B1_reg),
    .out(M_in)
);
reg_mux #(
    .width(36),
    .rsttype(RSTTYPE),
    .regon(MREG)
) M_REG (
    .clken(CEM),
    .clk(clk),
    .rst(RSTM),
    .A(M_in),
    .out(M_reg)
);

assign M = M_reg;
assign BCOUT = B1_reg;
assign concat = {D_reg[11:0], A1_reg[17:0], B1_reg[17:0]};
assign carry_in =   (CARRYINSEL == "CARRYIN")? CARRYIN : 
                (CARRYINSEL == "OPMODE5")? OPMODE_reg[5] : 0;

reg_mux #(
    .width(1),
    .rsttype(RSTTYPE),
    .regon(CARRYINREG)
) CYI ( 
    .clken(CECARRYIN),
    .clk(clk),
    .rst(RSTCARRYIN),
    .A(carry_in),
    .out(carry_reg)
);
always @(*) begin
    case (OPMODE_reg[1:0])
        2'b00: X = 0; // Default case
        2'b01: X = {12'b0, M_reg}; // PCIN
        2'b10: X = PCOUT; // Zero extension of M
        default: X = concat; // Concatenation
    endcase
    case (OPMODE_reg[3:2])
        2'b00: Z = 0; // Default case
        2'b01: Z = PCIN; // PCIN
        2'b10: Z = PCOUT; // PCOUT
        default: Z = C_reg; // C
    endcase
end

add_sub #(
    .width(48)
) post_add_sub (
    .in1(Z),
    .in2(X),
    .cin(carry_reg),
    .opmode(OPMODE_reg[7]),
    .out(P_in),
    .cout(carryout_in)
);
reg_mux #(
    .width(1),
    .rsttype(RSTTYPE),
    .regon(CARRYOUTREG)
) CYO (
    .clken(CEP),
    .clk(clk),
    .rst(RSTCARRYIN),
    .A(carryout_in),
    .out(carryout_reg)
);
assign CARRYOUT = carryout_reg;
assign CARRYOUTF = carryout_reg;

reg_mux #(
    .width(48),
    .rsttype(RSTTYPE),
    .regon(PREG)
) P_REG (
    .clken(CEP),
    .clk(clk),
    .rst(RSTP),
    .A(P_in),
    .out(P_reg)
);
assign P = P_reg;
assign PCOUT = P_reg;
endmodule