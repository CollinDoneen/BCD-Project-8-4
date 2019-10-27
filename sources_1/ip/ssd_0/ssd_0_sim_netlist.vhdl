-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
-- Date        : Sun Oct 27 14:10:09 2019
-- Host        : laptop running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim
--               /home/jonny/Documents/verilog/project_8_4/project_8_4.srcs/sources_1/ip/ssd_0/ssd_0_sim_netlist.vhdl
-- Design      : ssd_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ssd_0_clock_divider is
  port (
    CLK : out STD_LOGIC;
    \^clk\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ssd_0_clock_divider : entity is "clock_divider";
end ssd_0_clock_divider;

architecture STRUCTURE of ssd_0_clock_divider is
  signal \^clk_1\ : STD_LOGIC;
  signal c_out_i_1_n_0 : STD_LOGIC;
  signal c_out_i_2_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  CLK <= \^clk_1\;
c_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count[0]_i_4_n_0\,
      I1 => c_out_i_2_n_0,
      I2 => \count[0]_i_3_n_0\,
      I3 => \^clk_1\,
      O => c_out_i_1_n_0
    );
c_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(3),
      I3 => count_reg(2),
      O => c_out_i_2_n_0
    );
c_out_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => c_out_i_1_n_0,
      Q => \^clk_1\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \count[0]_i_3_n_0\,
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(3),
      I4 => count_reg(2),
      I5 => \count[0]_i_4_n_0\,
      O => clear
    );
\count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      I2 => count_reg(10),
      I3 => count_reg(11),
      I4 => count_reg(15),
      I5 => count_reg(14),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(6),
      I2 => count_reg(5),
      I3 => count_reg(4),
      I4 => count_reg(9),
      I5 => count_reg(8),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[0]_i_2_n_7\,
      Q => count_reg(0),
      R => clear
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2) => \count_reg[0]_i_2_n_1\,
      CO(1) => \count_reg[0]_i_2_n_2\,
      CO(0) => \count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_5_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => clear
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => clear
    );
\count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => clear
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => clear
    );
\count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => clear
    );
\count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[0]_i_2_n_6\,
      Q => count_reg(1),
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[0]_i_2_n_5\,
      Q => count_reg(2),
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[0]_i_2_n_4\,
      Q => count_reg(3),
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => clear
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => clear
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => clear
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => clear
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => clear
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ssd_0_counter is
  port (
    anodes : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    digit2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit3 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ssd_0_counter : entity is "counter";
end ssd_0_counter;

architecture STRUCTURE of ssd_0_counter is
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \anodes[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \anodes[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \anodes[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \anodes[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair2";
begin
\anodes[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel(1),
      I1 => sel(0),
      O => anodes(0)
    );
\anodes[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => anodes(1)
    );
\anodes[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => anodes(2)
    );
\anodes[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => anodes(3)
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => \count[1]_i_1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => sel(0),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      Q => sel(1),
      R => '0'
    );
\current_digit[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => digit2(0),
      I1 => digit1(0),
      I2 => digit4(0),
      I3 => sel(1),
      I4 => sel(0),
      I5 => digit3(0),
      O => D(0)
    );
\current_digit[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => digit2(1),
      I1 => digit1(1),
      I2 => digit4(1),
      I3 => sel(1),
      I4 => sel(0),
      I5 => digit3(1),
      O => D(1)
    );
\current_digit[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => digit2(2),
      I1 => digit1(2),
      I2 => digit4(2),
      I3 => sel(1),
      I4 => sel(0),
      I5 => digit3(2),
      O => D(2)
    );
\current_digit[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => digit2(3),
      I1 => digit1(3),
      I2 => digit4(3),
      I3 => sel(1),
      I4 => sel(0),
      I5 => digit3(3),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ssd_0_seg_decoder is
  port (
    segs : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ssd_0_seg_decoder : entity is "seg_decoder";
end ssd_0_seg_decoder;

architecture STRUCTURE of ssd_0_seg_decoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \segs[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \segs[6]_INST_0\ : label is "soft_lutpair3";
begin
\segs[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => segs(0)
    );
\segs[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA5"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => segs(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ssd_0_ssd is
  port (
    clk : in STD_LOGIC;
    segs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    digit1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    anodes : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ssd_0_ssd : entity is "ssd";
end ssd_0_ssd;

architecture STRUCTURE of ssd_0_ssd is
  signal \<const1>\ : STD_LOGIC;
  signal c_out : STD_LOGIC;
  signal count_n_4 : STD_LOGIC;
  signal count_n_5 : STD_LOGIC;
  signal count_n_6 : STD_LOGIC;
  signal count_n_7 : STD_LOGIC;
  signal current_digit : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^segs\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \segs[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \segs[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \segs[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \segs[5]_INST_0\ : label is "soft_lutpair5";
begin
  segs(7) <= \<const1>\;
  segs(6 downto 0) <= \^segs\(6 downto 0);
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
cd: entity work.ssd_0_clock_divider
     port map (
      CLK => c_out,
      \^clk\ => clk
    );
count: entity work.ssd_0_counter
     port map (
      CLK => c_out,
      D(3) => count_n_4,
      D(2) => count_n_5,
      D(1) => count_n_6,
      D(0) => count_n_7,
      anodes(3 downto 0) => anodes(3 downto 0),
      digit1(3 downto 0) => digit1(3 downto 0),
      digit2(3 downto 0) => digit2(3 downto 0),
      digit3(3 downto 0) => digit3(3 downto 0),
      digit4(3 downto 0) => digit4(3 downto 0)
    );
\current_digit_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => c_out,
      CE => '1',
      D => count_n_7,
      Q => current_digit(0),
      R => '0'
    );
\current_digit_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => c_out,
      CE => '1',
      D => count_n_6,
      Q => current_digit(1),
      R => '0'
    );
\current_digit_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => c_out,
      CE => '1',
      D => count_n_5,
      Q => current_digit(2),
      R => '0'
    );
\current_digit_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => c_out,
      CE => '1',
      D => count_n_4,
      Q => current_digit(3),
      R => '0'
    );
\segs[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => current_digit(1),
      I1 => current_digit(0),
      I2 => current_digit(2),
      I3 => current_digit(3),
      O => \^segs\(0)
    );
\segs[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => current_digit(0),
      I1 => current_digit(1),
      I2 => current_digit(2),
      I3 => current_digit(3),
      O => \^segs\(1)
    );
\segs[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => current_digit(2),
      I1 => current_digit(1),
      I2 => current_digit(0),
      I3 => current_digit(3),
      O => \^segs\(2)
    );
\segs[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0094"
    )
        port map (
      I0 => current_digit(1),
      I1 => current_digit(0),
      I2 => current_digit(2),
      I3 => current_digit(3),
      O => \^segs\(3)
    );
\segs[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008E"
    )
        port map (
      I0 => current_digit(0),
      I1 => current_digit(1),
      I2 => current_digit(2),
      I3 => current_digit(3),
      O => \^segs\(5)
    );
ssdd: entity work.ssd_0_seg_decoder
     port map (
      Q(3 downto 0) => current_digit(3 downto 0),
      segs(1) => \^segs\(6),
      segs(0) => \^segs\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ssd_0 is
  port (
    clk : in STD_LOGIC;
    segs : out STD_LOGIC_VECTOR ( 7 downto 0 );
    digit1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    anodes : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ssd_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ssd_0 : entity is "ssd_0,ssd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ssd_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ssd_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ssd_0 : entity is "ssd,Vivado 2019.1.3";
end ssd_0;

architecture STRUCTURE of ssd_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
inst: entity work.ssd_0_ssd
     port map (
      anodes(3 downto 0) => anodes(3 downto 0),
      clk => clk,
      digit1(3 downto 0) => digit1(3 downto 0),
      digit2(3 downto 0) => digit2(3 downto 0),
      digit3(3 downto 0) => digit3(3 downto 0),
      digit4(3 downto 0) => digit4(3 downto 0),
      segs(7 downto 0) => segs(7 downto 0)
    );
end STRUCTURE;
