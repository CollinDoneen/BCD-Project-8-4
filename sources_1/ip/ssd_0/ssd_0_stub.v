// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
// Date        : Sun Oct 27 14:10:09 2019
// Host        : laptop running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/jonny/Documents/verilog/project_8_4/project_8_4.srcs/sources_1/ip/ssd_0/ssd_0_stub.v
// Design      : ssd_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ssd,Vivado 2019.1.3" *)
module ssd_0(clk, segs, digit1, digit2, digit3, digit4, anodes)
/* synthesis syn_black_box black_box_pad_pin="clk,segs[7:0],digit1[3:0],digit2[3:0],digit3[3:0],digit4[3:0],anodes[3:0]" */;
  input clk;
  output [7:0]segs;
  input [3:0]digit1;
  input [3:0]digit2;
  input [3:0]digit3;
  input [3:0]digit4;
  output [3:0]anodes;
endmodule
