// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
// Date        : Sun Oct 27 14:10:09 2019
// Host        : laptop running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/jonny/Documents/verilog/project_8_4/project_8_4.srcs/sources_1/ip/ssd_0/ssd_0_sim_netlist.v
// Design      : ssd_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ssd_0,ssd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ssd,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module ssd_0
   (clk,
    segs,
    digit1,
    digit2,
    digit3,
    digit4,
    anodes);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  output [7:0]segs;
  input [3:0]digit1;
  input [3:0]digit2;
  input [3:0]digit3;
  input [3:0]digit4;
  output [3:0]anodes;

  wire [3:0]anodes;
  wire clk;
  wire [3:0]digit1;
  wire [3:0]digit2;
  wire [3:0]digit3;
  wire [3:0]digit4;
  wire [7:0]segs;

  ssd_0_ssd inst
       (.anodes(anodes),
        .clk(clk),
        .digit1(digit1),
        .digit2(digit2),
        .digit3(digit3),
        .digit4(digit4),
        .segs(segs));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module ssd_0_clock_divider
   (CLK,
    clk);
  output CLK;
  input clk;

  wire CLK;
  wire c_out_i_1_n_0;
  wire c_out_i_2_n_0;
  wire clear;
  wire clk;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire [15:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h7F80)) 
    c_out_i_1
       (.I0(\count[0]_i_4_n_0 ),
        .I1(c_out_i_2_n_0),
        .I2(\count[0]_i_3_n_0 ),
        .I3(CLK),
        .O(c_out_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    c_out_i_2
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .O(c_out_i_2_n_0));
  FDRE c_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(c_out_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_3_n_0 ),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .I4(count_reg[2]),
        .I5(\count[0]_i_4_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \count[0]_i_3 
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .I2(count_reg[10]),
        .I3(count_reg[11]),
        .I4(count_reg[15]),
        .I5(count_reg[14]),
        .O(\count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \count[0]_i_4 
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .I2(count_reg[5]),
        .I3(count_reg[4]),
        .I4(count_reg[9]),
        .I5(count_reg[8]),
        .O(\count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5 
       (.I0(count_reg[0]),
        .O(\count[0]_i_5_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_5_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\NLW_count_reg[12]_i_1_CO_UNCONNECTED [3],\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module ssd_0_counter
   (anodes,
    D,
    CLK,
    digit2,
    digit1,
    digit4,
    digit3);
  output [3:0]anodes;
  output [3:0]D;
  input CLK;
  input [3:0]digit2;
  input [3:0]digit1;
  input [3:0]digit4;
  input [3:0]digit3;

  wire CLK;
  wire [3:0]D;
  wire [3:0]anodes;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire [3:0]digit1;
  wire [3:0]digit2;
  wire [3:0]digit3;
  wire [3:0]digit4;
  wire [1:0]sel;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \anodes[0]_INST_0 
       (.I0(sel[1]),
        .I1(sel[0]),
        .O(anodes[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \anodes[1]_INST_0 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(anodes[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \anodes[2]_INST_0 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(anodes[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \anodes[3]_INST_0 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(anodes[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(sel[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(\count[1]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(sel[0]),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(sel[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \current_digit[0]_i_1 
       (.I0(digit2[0]),
        .I1(digit1[0]),
        .I2(digit4[0]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(digit3[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \current_digit[1]_i_1 
       (.I0(digit2[1]),
        .I1(digit1[1]),
        .I2(digit4[1]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(digit3[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \current_digit[2]_i_1 
       (.I0(digit2[2]),
        .I1(digit1[2]),
        .I2(digit4[2]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(digit3[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \current_digit[3]_i_1 
       (.I0(digit2[3]),
        .I1(digit1[3]),
        .I2(digit4[3]),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(digit3[3]),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "seg_decoder" *) 
module ssd_0_seg_decoder
   (segs,
    Q);
  output [1:0]segs;
  input [3:0]Q;

  wire [3:0]Q;
  wire [1:0]segs;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \segs[4]_INST_0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(segs[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEAA5)) 
    \segs[6]_INST_0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(segs[1]));
endmodule

(* ORIG_REF_NAME = "ssd" *) 
module ssd_0_ssd
   (clk,
    segs,
    digit1,
    digit2,
    digit3,
    digit4,
    anodes);
  input clk;
  output [7:0]segs;
  input [3:0]digit1;
  input [3:0]digit2;
  input [3:0]digit3;
  input [3:0]digit4;
  output [3:0]anodes;

  wire \<const1> ;
  wire [3:0]anodes;
  wire c_out;
  wire clk;
  wire count_n_4;
  wire count_n_5;
  wire count_n_6;
  wire count_n_7;
  wire [3:0]current_digit;
  wire [3:0]digit1;
  wire [3:0]digit2;
  wire [3:0]digit3;
  wire [3:0]digit4;
  wire [6:0]\^segs ;

  assign segs[7] = \<const1> ;
  assign segs[6:0] = \^segs [6:0];
  VCC VCC
       (.P(\<const1> ));
  ssd_0_clock_divider cd
       (.CLK(c_out),
        .clk(clk));
  ssd_0_counter count
       (.CLK(c_out),
        .D({count_n_4,count_n_5,count_n_6,count_n_7}),
        .anodes(anodes),
        .digit1(digit1),
        .digit2(digit2),
        .digit3(digit3),
        .digit4(digit4));
  FDRE \current_digit_reg[0] 
       (.C(c_out),
        .CE(1'b1),
        .D(count_n_7),
        .Q(current_digit[0]),
        .R(1'b0));
  FDRE \current_digit_reg[1] 
       (.C(c_out),
        .CE(1'b1),
        .D(count_n_6),
        .Q(current_digit[1]),
        .R(1'b0));
  FDRE \current_digit_reg[2] 
       (.C(c_out),
        .CE(1'b1),
        .D(count_n_5),
        .Q(current_digit[2]),
        .R(1'b0));
  FDRE \current_digit_reg[3] 
       (.C(c_out),
        .CE(1'b1),
        .D(count_n_4),
        .Q(current_digit[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \segs[0]_INST_0 
       (.I0(current_digit[1]),
        .I1(current_digit[0]),
        .I2(current_digit[2]),
        .I3(current_digit[3]),
        .O(\^segs [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \segs[1]_INST_0 
       (.I0(current_digit[0]),
        .I1(current_digit[1]),
        .I2(current_digit[2]),
        .I3(current_digit[3]),
        .O(\^segs [1]));
  LUT4 #(
    .INIT(16'h0004)) 
    \segs[2]_INST_0 
       (.I0(current_digit[2]),
        .I1(current_digit[1]),
        .I2(current_digit[0]),
        .I3(current_digit[3]),
        .O(\^segs [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0094)) 
    \segs[3]_INST_0 
       (.I0(current_digit[1]),
        .I1(current_digit[0]),
        .I2(current_digit[2]),
        .I3(current_digit[3]),
        .O(\^segs [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h008E)) 
    \segs[5]_INST_0 
       (.I0(current_digit[0]),
        .I1(current_digit[1]),
        .I2(current_digit[2]),
        .I3(current_digit[3]),
        .O(\^segs [5]));
  ssd_0_seg_decoder ssdd
       (.Q(current_digit),
        .segs({\^segs [6],\^segs [4]}));
endmodule
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
