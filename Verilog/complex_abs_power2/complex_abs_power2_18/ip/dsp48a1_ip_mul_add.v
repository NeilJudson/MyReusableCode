////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.40d
//  \   \         Application: netgen
//  /   /         Filename: dsp48a1_ip_mul_add.v
// /___/   /\     Timestamp: Tue Oct 27 16:46:16 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg\dsp48a1_ip_mul_add.ngc ./tmp/_cg\dsp48a1_ip_mul_add.v 
// Device	: 6slx100tfgg484-3
// Input file	: ./tmp/_cg/dsp48a1_ip_mul_add.ngc
// Output file	: ./tmp/_cg/dsp48a1_ip_mul_add.v
// # of Modules	: 1
// Design Name	: dsp48a1_ip_mul_add
// Xilinx        : D:\Xilinx\13.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module dsp48a1_ip_mul_add (
  clk, a, b, c, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input [17 : 0] a;
  input [17 : 0] b;
  input [47 : 0] c;
  output [47 : 0] p;
  
  // synthesis translate_off
  
  wire \blk00000003/sig000000fb ;
  wire \blk00000003/sig000000fa ;
  wire \blk00000003/sig000000f9 ;
  wire \blk00000003/sig000000c8 ;
  wire \blk00000003/sig000000c7 ;
  wire \blk00000003/sig000000c6 ;
  wire \blk00000003/sig000000c5 ;
  wire \blk00000003/sig000000c4 ;
  wire \blk00000003/sig000000c3 ;
  wire \blk00000003/sig000000c2 ;
  wire \blk00000003/sig000000c1 ;
  wire \blk00000003/sig000000c0 ;
  wire \blk00000003/sig000000bf ;
  wire \blk00000003/sig000000be ;
  wire \blk00000003/sig000000bd ;
  wire \blk00000003/sig000000bc ;
  wire \blk00000003/sig000000bb ;
  wire \blk00000003/sig000000ba ;
  wire \blk00000003/sig000000b9 ;
  wire \blk00000003/sig000000b8 ;
  wire \blk00000003/sig000000b7 ;
  wire \blk00000003/sig000000b6 ;
  wire \blk00000003/sig000000b5 ;
  wire \blk00000003/sig000000b4 ;
  wire \blk00000003/sig000000b3 ;
  wire \blk00000003/sig000000b2 ;
  wire \blk00000003/sig000000b1 ;
  wire \blk00000003/sig000000b0 ;
  wire \blk00000003/sig000000af ;
  wire \blk00000003/sig000000ae ;
  wire \blk00000003/sig000000ad ;
  wire \blk00000003/sig000000ac ;
  wire \blk00000003/sig000000ab ;
  wire \blk00000003/sig000000aa ;
  wire \blk00000003/sig000000a9 ;
  wire \blk00000003/sig000000a8 ;
  wire \blk00000003/sig000000a7 ;
  wire \blk00000003/sig000000a6 ;
  wire \blk00000003/sig000000a5 ;
  wire \blk00000003/sig000000a4 ;
  wire \blk00000003/sig000000a3 ;
  wire \blk00000003/sig000000a2 ;
  wire \blk00000003/sig000000a1 ;
  wire \blk00000003/sig000000a0 ;
  wire \blk00000003/sig0000009f ;
  wire \blk00000003/sig0000009e ;
  wire \blk00000003/sig0000009d ;
  wire \blk00000003/sig0000009c ;
  wire \blk00000003/sig0000009b ;
  wire \blk00000003/sig0000009a ;
  wire \blk00000003/sig00000099 ;
  wire \blk00000003/sig00000098 ;
  wire \blk00000003/sig00000097 ;
  wire \blk00000003/sig00000096 ;
  wire \blk00000003/sig00000095 ;
  wire \blk00000003/sig00000094 ;
  wire \blk00000003/sig00000093 ;
  wire \blk00000003/sig00000092 ;
  wire \blk00000003/sig00000091 ;
  wire \blk00000003/sig00000090 ;
  wire \blk00000003/sig0000008f ;
  wire \blk00000003/sig0000008e ;
  wire \blk00000003/sig0000008d ;
  wire \blk00000003/sig0000008c ;
  wire \blk00000003/sig0000008b ;
  wire \blk00000003/sig0000008a ;
  wire \blk00000003/sig00000089 ;
  wire \blk00000003/sig00000088 ;
  wire \blk00000003/sig00000087 ;
  wire \blk00000003/sig00000086 ;
  wire \blk00000003/sig00000030 ;
  wire \blk00000003/sig0000002f ;
  wire \blk00000003/sig0000002e ;
  wire \blk00000003/sig0000002d ;
  wire \blk00000003/sig0000002c ;
  wire \blk00000003/sig0000002b ;
  wire \blk00000003/sig0000002a ;
  wire \blk00000003/sig00000029 ;
  wire \blk00000003/sig00000028 ;
  wire \blk00000003/sig00000027 ;
  wire \blk00000003/sig00000026 ;
  wire \blk00000003/sig00000025 ;
  wire \blk00000003/sig00000024 ;
  wire \blk00000003/sig00000023 ;
  wire \blk00000003/sig00000022 ;
  wire \blk00000003/sig00000021 ;
  wire \blk00000003/sig00000020 ;
  wire \blk00000003/sig0000001f ;
  wire \blk00000003/sig0000001e ;
  wire \blk00000003/sig0000001d ;
  wire \blk00000003/sig0000001c ;
  wire \blk00000003/sig0000001b ;
  wire \blk00000003/sig0000001a ;
  wire \blk00000003/sig00000019 ;
  wire \blk00000003/sig00000018 ;
  wire \blk00000003/sig00000017 ;
  wire \blk00000003/sig00000016 ;
  wire \blk00000003/sig00000015 ;
  wire \blk00000003/sig00000014 ;
  wire \blk00000003/sig00000013 ;
  wire \blk00000003/sig00000012 ;
  wire \blk00000003/sig00000011 ;
  wire \blk00000003/sig00000010 ;
  wire \blk00000003/sig0000000f ;
  wire \blk00000003/sig0000000e ;
  wire \blk00000003/sig0000000d ;
  wire \blk00000003/sig0000000c ;
  wire \blk00000003/sig0000000b ;
  wire \blk00000003/sig0000000a ;
  wire \blk00000003/sig00000009 ;
  wire \blk00000003/sig00000008 ;
  wire \blk00000003/sig00000007 ;
  wire \blk00000003/sig00000006 ;
  wire \blk00000003/sig00000005 ;
  wire \blk00000003/sig00000004 ;
  wire \blk00000003/sig00000003 ;
  wire \blk00000003/sig00000002 ;
  wire \blk00000003/sig00000001 ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk00000006_M<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<0>_UNCONNECTED ;
  wire [17 : 0] a_0;
  wire [17 : 0] b_1;
  wire [47 : 0] c_2;
  wire [47 : 0] p_3;
  assign
    a_0[17] = a[17],
    a_0[16] = a[16],
    a_0[15] = a[15],
    a_0[14] = a[14],
    a_0[13] = a[13],
    a_0[12] = a[12],
    a_0[11] = a[11],
    a_0[10] = a[10],
    a_0[9] = a[9],
    a_0[8] = a[8],
    a_0[7] = a[7],
    a_0[6] = a[6],
    a_0[5] = a[5],
    a_0[4] = a[4],
    a_0[3] = a[3],
    a_0[2] = a[2],
    a_0[1] = a[1],
    a_0[0] = a[0],
    b_1[17] = b[17],
    b_1[16] = b[16],
    b_1[15] = b[15],
    b_1[14] = b[14],
    b_1[13] = b[13],
    b_1[12] = b[12],
    b_1[11] = b[11],
    b_1[10] = b[10],
    b_1[9] = b[9],
    b_1[8] = b[8],
    b_1[7] = b[7],
    b_1[6] = b[6],
    b_1[5] = b[5],
    b_1[4] = b[4],
    b_1[3] = b[3],
    b_1[2] = b[2],
    b_1[1] = b[1],
    b_1[0] = b[0],
    c_2[47] = c[47],
    c_2[46] = c[46],
    c_2[45] = c[45],
    c_2[44] = c[44],
    c_2[43] = c[43],
    c_2[42] = c[42],
    c_2[41] = c[41],
    c_2[40] = c[40],
    c_2[39] = c[39],
    c_2[38] = c[38],
    c_2[37] = c[37],
    c_2[36] = c[36],
    c_2[35] = c[35],
    c_2[34] = c[34],
    c_2[33] = c[33],
    c_2[32] = c[32],
    c_2[31] = c[31],
    c_2[30] = c[30],
    c_2[29] = c[29],
    c_2[28] = c[28],
    c_2[27] = c[27],
    c_2[26] = c[26],
    c_2[25] = c[25],
    c_2[24] = c[24],
    c_2[23] = c[23],
    c_2[22] = c[22],
    c_2[21] = c[21],
    c_2[20] = c[20],
    c_2[19] = c[19],
    c_2[18] = c[18],
    c_2[17] = c[17],
    c_2[16] = c[16],
    c_2[15] = c[15],
    c_2[14] = c[14],
    c_2[13] = c[13],
    c_2[12] = c[12],
    c_2[11] = c[11],
    c_2[10] = c[10],
    c_2[9] = c[9],
    c_2[8] = c[8],
    c_2[7] = c[7],
    c_2[6] = c[6],
    c_2[5] = c[5],
    c_2[4] = c[4],
    c_2[3] = c[3],
    c_2[2] = c[2],
    c_2[1] = c[1],
    c_2[0] = c[0],
    p[47] = p_3[47],
    p[46] = p_3[46],
    p[45] = p_3[45],
    p[44] = p_3[44],
    p[43] = p_3[43],
    p[42] = p_3[42],
    p[41] = p_3[41],
    p[40] = p_3[40],
    p[39] = p_3[39],
    p[38] = p_3[38],
    p[37] = p_3[37],
    p[36] = p_3[36],
    p[35] = p_3[35],
    p[34] = p_3[34],
    p[33] = p_3[33],
    p[32] = p_3[32],
    p[31] = p_3[31],
    p[30] = p_3[30],
    p[29] = p_3[29],
    p[28] = p_3[28],
    p[27] = p_3[27],
    p[26] = p_3[26],
    p[25] = p_3[25],
    p[24] = p_3[24],
    p[23] = p_3[23],
    p[22] = p_3[22],
    p[21] = p_3[21],
    p[20] = p_3[20],
    p[19] = p_3[19],
    p[18] = p_3[18],
    p[17] = p_3[17],
    p[16] = p_3[16],
    p[15] = p_3[15],
    p[14] = p_3[14],
    p[13] = p_3[13],
    p[12] = p_3[12],
    p[11] = p_3[11],
    p[10] = p_3[10],
    p[9] = p_3[9],
    p[8] = p_3[8],
    p[7] = p_3[7],
    p[6] = p_3[6],
    p[5] = p_3[5],
    p[4] = p_3[4],
    p[3] = p_3[3],
    p[2] = p_3[2],
    p[1] = p_3[1],
    p[0] = p_3[0];
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  DSP48A1 #(
    .A0REG ( 0 ),
    .A1REG ( 1 ),
    .B0REG ( 0 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CARRYOUTREG ( 1 ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ))
  \blk00000003/blk00000006  (
    .CECARRYIN(\blk00000003/sig000000fb ),
    .RSTC(\blk00000003/sig00000098 ),
    .RSTCARRYIN(\blk00000003/sig00000098 ),
    .CED(\blk00000003/sig00000098 ),
    .RSTD(\blk00000003/sig00000098 ),
    .CEOPMODE(\blk00000003/sig00000098 ),
    .CEC(\blk00000003/sig00000098 ),
    .CARRYOUTF(\blk00000003/sig000000f9 ),
    .RSTOPMODE(\blk00000003/sig00000098 ),
    .RSTM(\blk00000003/sig00000098 ),
    .CLK(clk),
    .RSTB(\blk00000003/sig00000098 ),
    .CEM(\blk00000003/sig000000fb ),
    .CEB(\blk00000003/sig000000fb ),
    .CARRYIN(\blk00000003/sig00000098 ),
    .CEP(\blk00000003/sig000000fb ),
    .CEA(\blk00000003/sig000000fb ),
    .CARRYOUT(\blk00000003/sig000000fa ),
    .RSTA(\blk00000003/sig00000098 ),
    .RSTP(\blk00000003/sig00000098 ),
    .B({a_0[17], a_0[16], a_0[15], a_0[14], a_0[13], a_0[12], a_0[11], a_0[10], a_0[9], a_0[8], a_0[7], a_0[6], a_0[5], a_0[4], a_0[3], a_0[2], a_0[1]
, a_0[0]}),
    .BCOUT({\blk00000003/sig00000086 , \blk00000003/sig00000087 , \blk00000003/sig00000088 , \blk00000003/sig00000089 , \blk00000003/sig0000008a , 
\blk00000003/sig0000008b , \blk00000003/sig0000008c , \blk00000003/sig0000008d , \blk00000003/sig0000008e , \blk00000003/sig0000008f , 
\blk00000003/sig00000090 , \blk00000003/sig00000091 , \blk00000003/sig00000092 , \blk00000003/sig00000093 , \blk00000003/sig00000094 , 
\blk00000003/sig00000095 , \blk00000003/sig00000096 , \blk00000003/sig00000097 }),
    .PCIN({\blk00000003/sig00000001 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , \blk00000003/sig00000004 , \blk00000003/sig00000005 , 
\blk00000003/sig00000006 , \blk00000003/sig00000007 , \blk00000003/sig00000008 , \blk00000003/sig00000009 , \blk00000003/sig0000000a , 
\blk00000003/sig0000000b , \blk00000003/sig0000000c , \blk00000003/sig0000000d , \blk00000003/sig0000000e , \blk00000003/sig0000000f , 
\blk00000003/sig00000010 , \blk00000003/sig00000011 , \blk00000003/sig00000012 , \blk00000003/sig00000013 , \blk00000003/sig00000014 , 
\blk00000003/sig00000015 , \blk00000003/sig00000016 , \blk00000003/sig00000017 , \blk00000003/sig00000018 , \blk00000003/sig00000019 , 
\blk00000003/sig0000001a , \blk00000003/sig0000001b , \blk00000003/sig0000001c , \blk00000003/sig0000001d , \blk00000003/sig0000001e , 
\blk00000003/sig0000001f , \blk00000003/sig00000020 , \blk00000003/sig00000021 , \blk00000003/sig00000022 , \blk00000003/sig00000023 , 
\blk00000003/sig00000024 , \blk00000003/sig00000025 , \blk00000003/sig00000026 , \blk00000003/sig00000027 , \blk00000003/sig00000028 , 
\blk00000003/sig00000029 , \blk00000003/sig0000002a , \blk00000003/sig0000002b , \blk00000003/sig0000002c , \blk00000003/sig0000002d , 
\blk00000003/sig0000002e , \blk00000003/sig0000002f , \blk00000003/sig00000030 }),
    .C({c_2[47], c_2[46], c_2[45], c_2[44], c_2[43], c_2[42], c_2[41], c_2[40], c_2[39], c_2[38], c_2[37], c_2[36], c_2[35], c_2[34], c_2[33], c_2[32]
, c_2[31], c_2[30], c_2[29], c_2[28], c_2[27], c_2[26], c_2[25], c_2[24], c_2[23], c_2[22], c_2[21], c_2[20], c_2[19], c_2[18], c_2[17], c_2[16], 
c_2[15], c_2[14], c_2[13], c_2[12], c_2[11], c_2[10], c_2[9], c_2[8], c_2[7], c_2[6], c_2[5], c_2[4], c_2[3], c_2[2], c_2[1], c_2[0]}),
    .P({p_3[47], p_3[46], p_3[45], p_3[44], p_3[43], p_3[42], p_3[41], p_3[40], p_3[39], p_3[38], p_3[37], p_3[36], p_3[35], p_3[34], p_3[33], p_3[32]
, p_3[31], p_3[30], p_3[29], p_3[28], p_3[27], p_3[26], p_3[25], p_3[24], p_3[23], p_3[22], p_3[21], p_3[20], p_3[19], p_3[18], p_3[17], p_3[16], 
p_3[15], p_3[14], p_3[13], p_3[12], p_3[11], p_3[10], p_3[9], p_3[8], p_3[7], p_3[6], p_3[5], p_3[4], p_3[3], p_3[2], p_3[1], p_3[0]}),
    .OPMODE({\blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig000000fb , 
\blk00000003/sig000000fb , \blk00000003/sig00000098 , \blk00000003/sig000000fb }),
    .D({\blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , 
\blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , 
\blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 , 
\blk00000003/sig00000098 , \blk00000003/sig00000098 , \blk00000003/sig00000098 }),
    .PCOUT({\blk00000003/sig00000099 , \blk00000003/sig0000009a , \blk00000003/sig0000009b , \blk00000003/sig0000009c , \blk00000003/sig0000009d , 
\blk00000003/sig0000009e , \blk00000003/sig0000009f , \blk00000003/sig000000a0 , \blk00000003/sig000000a1 , \blk00000003/sig000000a2 , 
\blk00000003/sig000000a3 , \blk00000003/sig000000a4 , \blk00000003/sig000000a5 , \blk00000003/sig000000a6 , \blk00000003/sig000000a7 , 
\blk00000003/sig000000a8 , \blk00000003/sig000000a9 , \blk00000003/sig000000aa , \blk00000003/sig000000ab , \blk00000003/sig000000ac , 
\blk00000003/sig000000ad , \blk00000003/sig000000ae , \blk00000003/sig000000af , \blk00000003/sig000000b0 , \blk00000003/sig000000b1 , 
\blk00000003/sig000000b2 , \blk00000003/sig000000b3 , \blk00000003/sig000000b4 , \blk00000003/sig000000b5 , \blk00000003/sig000000b6 , 
\blk00000003/sig000000b7 , \blk00000003/sig000000b8 , \blk00000003/sig000000b9 , \blk00000003/sig000000ba , \blk00000003/sig000000bb , 
\blk00000003/sig000000bc , \blk00000003/sig000000bd , \blk00000003/sig000000be , \blk00000003/sig000000bf , \blk00000003/sig000000c0 , 
\blk00000003/sig000000c1 , \blk00000003/sig000000c2 , \blk00000003/sig000000c3 , \blk00000003/sig000000c4 , \blk00000003/sig000000c5 , 
\blk00000003/sig000000c6 , \blk00000003/sig000000c7 , \blk00000003/sig000000c8 }),
    .A({b_1[17], b_1[16], b_1[15], b_1[14], b_1[13], b_1[12], b_1[11], b_1[10], b_1[9], b_1[8], b_1[7], b_1[6], b_1[5], b_1[4], b_1[3], b_1[2], b_1[1]
, b_1[0]}),
    .M({\NLW_blk00000003/blk00000006_M<35>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<33>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<32>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<31>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<30>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<29>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<27>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<26>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<25>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<24>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<23>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<21>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<20>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<19>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<18>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<17>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<15>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<14>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<13>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<12>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<11>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<9>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<8>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<7>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<6>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<5>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<3>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<2>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<1>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<0>_UNCONNECTED })
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig000000fb )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig00000098 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
