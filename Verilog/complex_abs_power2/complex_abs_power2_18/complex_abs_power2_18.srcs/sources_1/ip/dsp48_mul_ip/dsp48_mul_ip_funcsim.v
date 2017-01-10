// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
// Date        : Tue Jan 10 19:47:18 2017
// Host        : FUTURE3 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/jiaweiwei/Project/MyReusableCode/Verilog/complex_abs_power2/complex_abs_power2_18/complex_abs_power2_18.srcs/sources_1/ip/dsp48_mul_ip/dsp48_mul_ip_funcsim.v
// Design      : dsp48_mul_ip
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045fbg676-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{}" *) (* core_generation_info = "dsp48_mul_ip,xbip_dsp48_macro_v3_0,{x_ipProduct=Vivado 2015.2.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xbip_dsp48_macro,x_ipVersion=3.0,x_ipCoreRevision=9,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_VERBOSITY=0,C_MODEL_TYPE=0,C_XDEVICEFAMILY=zynq,C_HAS_CE=0,C_HAS_INDEP_CE=0,C_HAS_CED=0,C_HAS_CEA=0,C_HAS_CEB=0,C_HAS_CEC=0,C_HAS_CECONCAT=0,C_HAS_CEM=0,C_HAS_CEP=0,C_HAS_CESEL=0,C_HAS_SCLR=0,C_HAS_INDEP_SCLR=0,C_HAS_SCLRD=0,C_HAS_SCLRA=0,C_HAS_SCLRB=0,C_HAS_SCLRC=0,C_HAS_SCLRM=0,C_HAS_SCLRP=0,C_HAS_SCLRCONCAT=0,C_HAS_SCLRSEL=0,C_HAS_CARRYCASCIN=0,C_HAS_CARRYIN=0,C_HAS_ACIN=0,C_HAS_BCIN=0,C_HAS_PCIN=0,C_HAS_A=1,C_HAS_B=1,C_HAS_D=0,C_HAS_CONCAT=0,C_HAS_C=0,C_A_WIDTH=18,C_B_WIDTH=18,C_C_WIDTH=48,C_D_WIDTH=18,C_CONCAT_WIDTH=48,C_P_MSB=47,C_P_LSB=0,C_SEL_WIDTH=0,C_HAS_ACOUT=0,C_HAS_BCOUT=0,C_HAS_CARRYCASCOUT=0,C_HAS_CARRYOUT=0,C_HAS_PCOUT=0,C_CONSTANT_1=1,C_LATENCY=128,C_OPMODES=000100100000010100000000,C_REG_CONFIG=00000000000000000011000000000100,C_TEST_CORE=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "xbip_dsp48_macro_v3_0,Vivado 2015.2.1" *) 
(* NotValidForBitStream *)
module dsp48_mul_ip
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) output [47:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [47:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* DONT_TOUCH *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dsp48_mul_ip_xbip_dsp48_macro_v3_0 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100000000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000011000000000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module dsp48_mul_ip_xbip_dsp48_macro_v3_0
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [47:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [17:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [47:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CE;
  wire CEA;
  wire CEA1;
  wire CEA2;
  wire CEA3;
  wire CEA4;
  wire CEB;
  wire CEB1;
  wire CEB2;
  wire CEB3;
  wire CEB4;
  wire CEC;
  wire CEC1;
  wire CEC2;
  wire CEC3;
  wire CEC4;
  wire CEC5;
  wire CECONCAT;
  wire CECONCAT3;
  wire CECONCAT4;
  wire CECONCAT5;
  wire CED;
  wire CED1;
  wire CED2;
  wire CED3;
  wire CEM;
  wire CEP;
  wire CESEL;
  wire CESEL1;
  wire CESEL2;
  wire CESEL3;
  wire CESEL4;
  wire CESEL5;
  wire CLK;
  wire [47:0]CONCAT;
  wire [17:0]D;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SCLRA;
  wire SCLRB;
  wire SCLRC;
  wire SCLRCONCAT;
  wire SCLRD;
  wire SCLRM;
  wire SCLRP;
  wire SCLRSEL;
  wire [0:0]SEL;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dsp48_mul_ip_xbip_dsp48_macro_v3_0_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(CE),
        .CEA(CEA),
        .CEA1(CEA1),
        .CEA2(CEA2),
        .CEA3(CEA3),
        .CEA4(CEA4),
        .CEB(CEB),
        .CEB1(CEB1),
        .CEB2(CEB2),
        .CEB3(CEB3),
        .CEB4(CEB4),
        .CEC(CEC),
        .CEC1(CEC1),
        .CEC2(CEC2),
        .CEC3(CEC3),
        .CEC4(CEC4),
        .CEC5(CEC5),
        .CECONCAT(CECONCAT),
        .CECONCAT3(CECONCAT3),
        .CECONCAT4(CECONCAT4),
        .CECONCAT5(CECONCAT5),
        .CED(CED),
        .CED1(CED1),
        .CED2(CED2),
        .CED3(CED3),
        .CEM(CEM),
        .CEP(CEP),
        .CESEL(CESEL),
        .CESEL1(CESEL1),
        .CESEL2(CESEL2),
        .CESEL3(CESEL3),
        .CESEL4(CESEL4),
        .CESEL5(CESEL5),
        .CLK(CLK),
        .CONCAT(CONCAT),
        .D(D),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SCLRA(SCLRA),
        .SCLRB(SCLRB),
        .SCLRC(SCLRC),
        .SCLRCONCAT(SCLRCONCAT),
        .SCLRD(SCLRD),
        .SCLRM(SCLRM),
        .SCLRP(SCLRP),
        .SCLRSEL(SCLRSEL),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
TYC2a98Y1yysY91l546ob+IXQg6fiMRAm6syn2FqZ8C4J00TJH9s9pBK99lKAlmxD58wDHg2XKOB
4+D4sI/OnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
IYo4LY638jReFPtBZA8oIrfMNP47X7knj8vR4HmvueYKSZWAAwFtiSPbhdiHrQdj/Jr2MVzYEcfd
vRsRxe3v7ynxxUMH5timX7mlzx07A/AyIO+uhqGDAbSyVKFJ3Gken+AeMGyZtQm6kssqDVNq8+FO
qY6FIJeeOJAkf6HKLQ4=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fCKxKqpijP/7rpIjfkXBt9viSVW6GhZmaQb8SCQ2AOAPWdxNwyVH+kSJghpmUfV3WyKheuuDbIua
PCbiAqbP4Q1WffU+QdbKAV1MD11yHylQagVgeUsl1HbG1U2WlOD/Yfj48ksMn+llZDhZ2W8YLK6x
awmnT/y8PZrICy2D9+0a7TpZScZ+8g8rmgNvFJdoTmUW1rYs4TG5y6IkW6i7e7EWh6lY1/xXJVvc
suiWg5Gywy9NNWPJVgvTTj+QlsXTKD7aniyg/Wf5EByN0lEizV5utPNRLxORI1T5AH2PLQxwTnAb
CpRxZb+Ymkw3M4mCSn+rnWWQQBJNZ40mqgAs2Q==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
CdJL3sB+6k2qfKx5AIlvhCqnCiYX0XkkBTKRNyzFcWV1F9+uS+QEiM7C+8DTOsm+fS98iciviKiK
3d0IwMUKnQnjT9PPYtCdkpcD/XLOFsBAPIYR9jt+ubCrOFBXRAViIZf3mMIeydWehrRxX0z9azPn
met3gl41ccDQOhZacM4=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Joy/Zu48hyfOuMcFFUFc9UX77pQ/evKtrfBnlX022U+1AY594DoKNkUlYrXk7xS6/ZR6OI3xkmlo
PoXSY7UY5SpLjztMrPQkKdQJcwNonE05xLJDWTeI3ydFZw73Pma4oypwaIleDBnnXtiw0KxzaXr9
X1OrDRrFCkO3cKBy9567w6E1Bj4tKgcZkLaT74LaC43otaBprzCmC3qfMzgptdOb8ZpoXa1Ndito
Z96ueEadkxFzAj/pubMwLGv/ZVI2s/THLgYf1NRowC9HKXaFngSCso+vhsMW7j1PDrwBFAQopepK
auZlkKb6gBUD1HQXwwpr5R0j4cXE6xCTecFqIg==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
KamZXOVmD7GarG54K1ReKG00OUORjQA833OrTqD5IOxD3dJmwsjBYcS3f1RrGr8rTXPgA2A/t/fz
DwyYoXfaDc7iwxmGSzc7E1hr74cF+MbypQNFe+/6zY1MQBHcmrEfQClg2UnDKOc96vUjcddVOJyG
7PL4r2pZpunGqzYDnEc+Q9ZoaMVn8hXuhswKfQl8MK6QL/EEnb3EiEInP6oziDef7Ft1Sz8RkLcc
JS7ASKkTmX+roreFpjrBu3QGqfNnbLiBt6QOQJl/rN9L+9ISr7s71s9ZDDRL0fFMkVswEnuJeUdT
3eKWX8qJOq1kuF1yqBKlfpTIxAa4SWRY4vRSeA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
ld9uzV/mM6SG+aGdSuzFeAEgRUDx78hOIDa96Cs9WJoiTS/P3BNeFIPfGD606Hska59sQDfmLuMq
b1xpKgcdgT9dlO3UroshyTYH5emxTp82fHv8AYf9oSxwfC2c8INjXdyc+Xeq5wcgYgztalc/QBlS
vkOkvh6XELFae8+xEuT2xtBPeAsQnuKK+Y82kfLsoNZ2RNVg+v+cOA2OWUMjqPlpwyQA6hmZdh2m
r8Pc4+gvw/Jc0uyrKU1qREa6NgsLXeF/IeTeSGE9tN7vuhFLcC1fiHQGVCyEi2z9Ev7dAanQO90V
X2IkTfLqrs9W9gFxhj+OGAir3xZAZPzHEUFKLQ==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3696)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
TYC2a98Y1yysY91l546ob+IXQg6fiMRAm6syn2FqZ8C4J00TJH9s9pBK99lKAlmxD58wDHg2XKOB
4+D4sI/OnA==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
IYo4LY638jReFPtBZA8oIrfMNP47X7knj8vR4HmvueYKSZWAAwFtiSPbhdiHrQdj/Jr2MVzYEcfd
vRsRxe3v7ynxxUMH5timX7mlzx07A/AyIO+uhqGDAbSyVKFJ3Gken+AeMGyZtQm6kssqDVNq8+FO
qY6FIJeeOJAkf6HKLQ4=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
fCKxKqpijP/7rpIjfkXBt9viSVW6GhZmaQb8SCQ2AOAPWdxNwyVH+kSJghpmUfV3WyKheuuDbIua
PCbiAqbP4Q1WffU+QdbKAV1MD11yHylQagVgeUsl1HbG1U2WlOD/Yfj48ksMn+llZDhZ2W8YLK6x
awmnT/y8PZrICy2D9+0a7TpZScZ+8g8rmgNvFJdoTmUW1rYs4TG5y6IkW6i7e7EWh6lY1/xXJVvc
suiWg5Gywy9NNWPJVgvTTj+QlsXTKD7aniyg/Wf5EByN0lEizV5utPNRLxORI1T5AH2PLQxwTnAb
CpRxZb+Ymkw3M4mCSn+rnWWQQBJNZ40mqgAs2Q==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
CdJL3sB+6k2qfKx5AIlvhCqnCiYX0XkkBTKRNyzFcWV1F9+uS+QEiM7C+8DTOsm+fS98iciviKiK
3d0IwMUKnQnjT9PPYtCdkpcD/XLOFsBAPIYR9jt+ubCrOFBXRAViIZf3mMIeydWehrRxX0z9azPn
met3gl41ccDQOhZacM4=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
Joy/Zu48hyfOuMcFFUFc9UX77pQ/evKtrfBnlX022U+1AY594DoKNkUlYrXk7xS6/ZR6OI3xkmlo
PoXSY7UY5SpLjztMrPQkKdQJcwNonE05xLJDWTeI3ydFZw73Pma4oypwaIleDBnnXtiw0KxzaXr9
X1OrDRrFCkO3cKBy9567w6E1Bj4tKgcZkLaT74LaC43otaBprzCmC3qfMzgptdOb8ZpoXa1Ndito
Z96ueEadkxFzAj/pubMwLGv/ZVI2s/THLgYf1NRowC9HKXaFngSCso+vhsMW7j1PDrwBFAQopepK
auZlkKb6gBUD1HQXwwpr5R0j4cXE6xCTecFqIg==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
KamZXOVmD7GarG54K1ReKG00OUORjQA833OrTqD5IOxD3dJmwsjBYcS3f1RrGr8rTXPgA2A/t/fz
DwyYoXfaDc7iwxmGSzc7E1hr74cF+MbypQNFe+/6zY1MQBHcmrEfQClg2UnDKOc96vUjcddVOJyG
7PL4r2pZpunGqzYDnEc+Q9ZoaMVn8hXuhswKfQl8MK6QL/EEnb3EiEInP6oziDef7Ft1Sz8RkLcc
JS7ASKkTmX+roreFpjrBu3QGqfNnbLiBt6QOQJl/rN9L+9ISr7s71s9ZDDRL0fFMkVswEnuJeUdT
3eKWX8qJOq1kuF1yqBKlfpTIxAa4SWRY4vRSeA==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
ld9uzV/mM6SG+aGdSuzFeAEgRUDx78hOIDa96Cs9WJoiTS/P3BNeFIPfGD606Hska59sQDfmLuMq
b1xpKgcdgT9dlO3UroshyTYH5emxTp82fHv8AYf9oSxwfC2c8INjXdyc+Xeq5wcgYgztalc/QBlS
vkOkvh6XELFae8+xEuT2xtBPeAsQnuKK+Y82kfLsoNZ2RNVg+v+cOA2OWUMjqPlpwyQA6hmZdh2m
r8Pc4+gvw/Jc0uyrKU1qREa6NgsLXeF/IeTeSGE9tN7vuhFLcC1fiHQGVCyEi2z9Ev7dAanQO90V
X2IkTfLqrs9W9gFxhj+OGAir3xZAZPzHEUFKLQ==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5536)
`pragma protect data_block
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
+7hOG3njeQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
