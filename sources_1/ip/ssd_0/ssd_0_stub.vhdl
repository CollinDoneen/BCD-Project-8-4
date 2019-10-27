-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
-- Date        : Sun Oct 27 14:10:09 2019
-- Host        : laptop running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/jonny/Documents/verilog/project_8_4/project_8_4.srcs/sources_1/ip/ssd_0/ssd_0_stub.vhdl
-- Design      : ssd_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_0 is
  Port ( 
    clk : in STD_LOGIC;
    segs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    digit1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    anodes : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end ssd_0;

architecture stub of ssd_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,segs[7:0],digit1[3:0],digit2[3:0],digit3[3:0],digit4[3:0],anodes[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ssd,Vivado 2019.1.3";
begin
end;
