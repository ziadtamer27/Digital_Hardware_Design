`timescale 1ns/1ps

module DSP_tb();

  reg clk;
  reg [17:0] A, B, D;
  reg [47:0] C;
  reg CARRYIN;
  reg [7:0] OPMODE;

  reg CEA, CEB, CEC, CECARRYIN, CED, CEM, CEOPMODE, CEP;
  reg RSTA, RSTB, RSTC, RSTD, RSTCARRYIN, RSTM, RSTOPMODE, RSTP;
  reg [17:0] BCIN;
  reg [47:0] PCIN;
  
  reg [47:0] last_P;
  reg last_CARRYOUT;

  wire [35:0] M;
  wire [47:0] P;
  wire CARRYOUT, CARRYOUTF;
  wire [17:0] BCOUT;
  wire [47:0] PCOUT;

  DSP DUT (
    .A(A), .B(B), .C(C), .D(D), .CARRYIN(CARRYIN),
    .M(M), .P(P), .CARRYOUT(CARRYOUT), .CARRYOUTF(CARRYOUTF),
    .clk(clk), .OPMODE(OPMODE),
    .CEA(CEA), .CEB(CEB), .CEC(CEC), .CECARRYIN(CECARRYIN),
    .CED(CED), .CEM(CEM), .CEOPMODE(CEOPMODE), .CEP(CEP),
    .RSTA(RSTA), .RSTB(RSTB), .RSTC(RSTC), .RSTD(RSTD),
    .RSTCARRYIN(RSTCARRYIN), .RSTM(RSTM), .RSTOPMODE(RSTOPMODE), .RSTP(RSTP),
    .BCIN(BCIN), .BCOUT(BCOUT), .PCIN(PCIN), .PCOUT(PCOUT)
  );

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $display("=== DSP Reset Verification Test ===");

    A = $random;
    B = $random;
    D = $random;
    C = $random;
    CARRYIN = $random;
    OPMODE = $random;
    BCIN = $random;
    PCIN = $random;

    RSTA = 1;
    RSTB = 1;
    RSTC = 1;
    RSTD = 1;
    RSTCARRYIN = 1;
    RSTM = 1;
    RSTOPMODE = 1;
    RSTP = 1;

    CEA = 0;
    CEB = 0;
    CEC = 0;
    CECARRYIN = 0;
    CED = 0;
    CEM = 0;
    CEOPMODE = 0;
    CEP = 0;

 
    @(negedge clk);

    if (M !== 0 || P !== 0 || CARRYOUT !== 0 || CARRYOUTF !== 0 || BCOUT !== 0 || PCOUT !== 0) begin
        $display("❌ Reset Test FAILED at time %0t", $time);
        $display("M = %h, P = %h, CARRYOUT = %b, BCOUT = %h, PCOUT = %h", M, P, CARRYOUT, BCOUT, PCOUT);
        $stop;
    end else begin
        $display(" Reset Test PASSED");
    end

    RSTA = 0; RSTB = 0; RSTC = 0; RSTD = 0;
    RSTCARRYIN = 0; RSTM = 0; RSTOPMODE = 0; RSTP = 0;

    CEA = 1; CEB = 1; CEC = 1; CECARRYIN = 1;
    CED = 1; CEM = 1; CEOPMODE = 1; CEP = 1;

    $display("=== DSP PATH1 Verification Test ===");

    A = 20;
    B = 10;
    C = 48'd350;
    D = 25;
    OPMODE = 8'b11011101;       
    BCIN = $random; 
    PCIN = $random; 
    CARRYIN = $random; 
    
    repeat (4) @(negedge clk);

  
    if (BCOUT != 18'h00F || M != 36'h12C || P != 48'h32 || PCOUT != 48'h32 || CARRYOUT != 0 || CARRYOUTF != 0) begin
        $display("❌ DSP Path 1 Test FAILED");
        $display("BCOUT     = %h (expected 000F)", BCOUT);
        $display("M         = %h (expected 012C)", M);
        $display("P         = %h (expected 0032)", P);
        $display("PCOUT     = %h (expected 0032)", PCOUT);
        $display("CARRYOUT  = %b (expected 0)", CARRYOUT);
        $display("CARRYOUTF = %b (expected 0)", CARRYOUTF);
        
        $stop;
    end else begin
        $display(" DSP Path 1 Test PASSED");
    end

    $display("=== DSP PATH2 Verification Test ===");
    A = 20;
    B = 10;
    C = 48'd350;
    D = 25;
    OPMODE = 8'b00010000;        
    BCIN = $random; 
    PCIN = $random; 
    CARRYIN = $random; 
    
    repeat (3) @(negedge clk);

    if (BCOUT != 18'h23 || M != 36'h2bc || P != 0 || PCOUT != 0 || CARRYOUT != 0 || CARRYOUTF != 0) begin
        $display("❌ DSP Path 2 Test FAILED");
        $display("BCOUT     = %h (expected 0023)", BCOUT);
        $display("M         = %h (expected 02bc)", M);
        $display("P         = %h (expected 0000)", P);
        $display("PCOUT     = %h (expected 0000)", PCOUT);
        $display("CARRYOUT  = %b (expected 0)", CARRYOUT);
        $display("CARRYOUTF = %b (expected 0)", CARRYOUTF);

        $stop;
    end else begin
        $display(" DSP Path 2 Test PASSED");
    end

    $display("=== DSP PATH3 Verification Test ===");

    last_CARRYOUT = CARRYOUTF;
    last_P = PCOUT;

    A = 20;
    B = 10;
    C = 48'd350;
    D = 25;
    OPMODE = 8'b00001010;        
    BCIN = $random; 
    PCIN = $random; 
    CARRYIN = $random; 
    
    repeat (3) @(negedge clk);

    if (BCOUT != 18'ha || M != 36'hc8 || P != last_P || CARRYOUT != last_CARRYOUT) begin
        $display("❌ DSP Path 3 Test FAILED");
        $display("BCOUT     = %h (expected 000a)", BCOUT);
        $display("M         = %h (expected 00c8)", M);
        $display("P         = %h (expected %h)", P, last_P);
        $display("CARRYOUT  = %b (expected 0)", CARRYOUT);

        $stop;
    end else begin
        $display(" DSP Path 3 Test PASSED");
    end

    $display("=== DSP PATH4 Verification Test ===");
    A = 5;
    B = 6;
    C = 48'd350;
    D = 25;
    PCIN = 48'd3000; 
    OPMODE = 8'b10100111;        
    BCIN = $random; 
    CARRYIN = $random; 

    repeat (3) @(negedge clk);

    if (BCOUT != 18'h6 || M != 36'h1e || P != 48'hfe6fffec0bb1 || PCOUT != 48'hfe6fffec0bb1 || CARRYOUT != 1 || CARRYOUTF != 1) begin
        $display("❌ DSP Path 4 Test FAILED");
        $display("BCOUT     = %h (expected 000a)", BCOUT);
        $display("M         = %h (expected 00c8)", M);
        $display("P         = %h (expected fe6fffec0bb1)", P );
        $display("PCOUT     = %h (expected fe6fffec0bb1)", PCOUT);
        $display("CARRYOUT  = %b (expected 1)", CARRYOUT);
        $display("CARRYOUTF = %b (expected 1)", CARRYOUTF);

        $stop;
    end else begin
        $display(" DSP Path 4 Test PASSED");
    end

    $stop;
  end
endmodule
