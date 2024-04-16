-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Apr 16 22:16:13 2024
-- Host        : localhost.localdomain running 64-bit openSUSE Leap 15.4
-- Command     : write_vhdl -force -mode funcsim
--               /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step3/fpadd_arm/fpadd_arm.gen/sources_1/bd/Cortex_A9/ip/Cortex_A9_fpadd_ip_0_0/Cortex_A9_fpadd_ip_0_0_sim_netlist.vhdl
-- Design      : Cortex_A9_fpadd_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_DataMemory is
  port (
    D : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \pointer_reg[2]_0\ : out STD_LOGIC;
    \pointer_reg[2]_1\ : out STD_LOGIC;
    \pointer_reg[3]_0\ : out STD_LOGIC;
    \pointer_reg[0]_0\ : out STD_LOGIC_VECTOR ( 17 downto 0 );
    numA : out STD_LOGIC_VECTOR ( 2 downto 0 );
    numB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_DataMemory : entity is "DataMemory";
end Cortex_A9_fpadd_ip_0_0_DataMemory;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_DataMemory is
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \pointer[3]_i_1_n_0\ : STD_LOGIC;
  signal pointer_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \A[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \A[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \A[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A[14]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \A[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \A[16]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \A[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \A[18]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \A[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A[22]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \A[23]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \A[24]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \A[25]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \A[26]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \A[27]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \A[28]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \A[30]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \A[31]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \A[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \A[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \A[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \B[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \B[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \B[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \B[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \B[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \B[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \B[16]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \B[19]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \B[21]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \B[22]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \B[24]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \B[26]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \B[27]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \B[28]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \B[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \B[30]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \B[31]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \B[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pointer[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pointer[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pointer[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pointer[3]_i_2\ : label is "soft_lutpair9";
begin
\A[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => \pointer_reg[0]_0\(0)
    );
\A[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACA0"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(2),
      I2 => pointer_reg(3),
      I3 => pointer_reg(1),
      O => \pointer_reg[0]_0\(3)
    );
\A[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0108"
    )
        port map (
      I0 => pointer_reg(1),
      I1 => pointer_reg(0),
      I2 => pointer_reg(3),
      I3 => pointer_reg(2),
      O => \pointer_reg[0]_0\(4)
    );
\A[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1220"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => \pointer_reg[0]_0\(5)
    );
\A[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => pointer_reg(1),
      I1 => pointer_reg(0),
      I2 => pointer_reg(2),
      I3 => pointer_reg(3),
      O => \pointer_reg[0]_0\(6)
    );
\A[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DC32"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => \pointer_reg[0]_0\(7)
    );
\A[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(1),
      I2 => pointer_reg(3),
      I3 => pointer_reg(2),
      O => numA(1)
    );
\A[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => pointer_reg(3),
      I1 => pointer_reg(2),
      I2 => pointer_reg(0),
      O => \pointer_reg[3]_0\
    );
\A[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"070C"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(1),
      I2 => pointer_reg(3),
      I3 => pointer_reg(2),
      O => numA(2)
    );
\A[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(2),
      I2 => pointer_reg(3),
      I3 => pointer_reg(1),
      O => \pointer_reg[0]_0\(8)
    );
\A[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => pointer_reg(1),
      I1 => pointer_reg(3),
      I2 => pointer_reg(2),
      O => \pointer_reg[0]_0\(9)
    );
\A[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0133"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(0),
      I3 => pointer_reg(1),
      O => \pointer_reg[0]_0\(10)
    );
\A[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1321"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => \pointer_reg[0]_0\(11)
    );
\A[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => pointer_reg(1),
      I1 => pointer_reg(3),
      I2 => pointer_reg(2),
      O => \pointer_reg[0]_0\(12)
    );
\A[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4451"
    )
        port map (
      I0 => pointer_reg(3),
      I1 => pointer_reg(2),
      I2 => pointer_reg(0),
      I3 => pointer_reg(1),
      O => \pointer_reg[0]_0\(13)
    );
\A[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F705"
    )
        port map (
      I0 => pointer_reg(1),
      I1 => pointer_reg(2),
      I2 => pointer_reg(3),
      I3 => pointer_reg(0),
      O => \pointer_reg[0]_0\(14)
    );
\A[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC0D"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(0),
      I2 => pointer_reg(1),
      I3 => pointer_reg(3),
      O => \pointer_reg[0]_0\(15)
    );
\A[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pointer_reg(1),
      I1 => pointer_reg(3),
      O => \pointer_reg[0]_0\(16)
    );
\A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(1),
      I2 => pointer_reg(3),
      O => \pointer_reg[0]_0\(17)
    );
\A[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3002"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => \pointer_reg[0]_0\(1)
    );
\A[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A08"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(1),
      I2 => pointer_reg(3),
      I3 => pointer_reg(2),
      O => \pointer_reg[0]_0\(2)
    );
\A[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(3),
      O => numA(0)
    );
\B[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2230"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => D(1)
    );
\B[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE30"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => D(2)
    );
\B[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"090C"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(1),
      I2 => pointer_reg(3),
      I3 => pointer_reg(2),
      O => D(3)
    );
\B[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => pointer_reg(3),
      I1 => pointer_reg(2),
      I2 => pointer_reg(0),
      I3 => pointer_reg(1),
      O => D(4)
    );
\B[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(1),
      I2 => pointer_reg(3),
      O => D(5)
    );
\B[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B5E0"
    )
        port map (
      I0 => pointer_reg(3),
      I1 => pointer_reg(1),
      I2 => pointer_reg(0),
      I3 => pointer_reg(2),
      O => D(6)
    );
\B[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      I4 => rst,
      O => \pointer_reg[2]_0\
    );
\B[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(1),
      I2 => pointer_reg(3),
      I3 => pointer_reg(2),
      O => D(7)
    );
\B[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => pointer_reg(1),
      I1 => pointer_reg(3),
      I2 => pointer_reg(2),
      O => numB(1)
    );
\B[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3222"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(0),
      I3 => pointer_reg(1),
      O => \pointer_reg[2]_1\
    );
\B[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => pointer_reg(3),
      I1 => pointer_reg(1),
      I2 => pointer_reg(0),
      O => D(8)
    );
\B[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D0A"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(2),
      I2 => pointer_reg(3),
      I3 => pointer_reg(1),
      O => D(9)
    );
\B[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AE"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(2),
      I2 => pointer_reg(3),
      I3 => pointer_reg(1),
      O => D(10)
    );
\B[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => pointer_reg(3),
      I1 => pointer_reg(1),
      I2 => pointer_reg(0),
      O => D(11)
    );
\B[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => pointer_reg(0),
      I1 => pointer_reg(1),
      I2 => pointer_reg(3),
      I3 => pointer_reg(2),
      O => D(0)
    );
\B[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => pointer_reg(3),
      I1 => pointer_reg(1),
      I2 => pointer_reg(0),
      O => D(12)
    );
\B[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EC00"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => D(13)
    );
\B[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1022"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(0),
      I3 => pointer_reg(1),
      O => numB(0)
    );
\pointer[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => \pointer[0]_i_1_n_0\
    );
\pointer[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(3),
      I2 => pointer_reg(1),
      I3 => pointer_reg(0),
      O => \p_0_in__0\(1)
    );
\pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pointer_reg(2),
      I1 => pointer_reg(0),
      I2 => pointer_reg(1),
      O => \p_0_in__0\(2)
    );
\pointer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444F444444"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => pointer_reg(2),
      I3 => pointer_reg(3),
      I4 => pointer_reg(1),
      I5 => pointer_reg(0),
      O => \pointer[3]_i_1_n_0\
    );
\pointer[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7D80"
    )
        port map (
      I0 => pointer_reg(1),
      I1 => pointer_reg(0),
      I2 => pointer_reg(2),
      I3 => pointer_reg(3),
      O => \p_0_in__0\(3)
    );
\pointer_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \pointer[3]_i_1_n_0\,
      CLR => rst,
      D => \pointer[0]_i_1_n_0\,
      Q => pointer_reg(0)
    );
\pointer_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \pointer[3]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(1),
      Q => pointer_reg(1)
    );
\pointer_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \pointer[3]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(2),
      Q => pointer_reg(2)
    );
\pointer_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \pointer[3]_i_1_n_0\,
      CLR => rst,
      D => \p_0_in__0\(3),
      Q => pointer_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_SSD_clock_module is
  port (
    \counter_reg[4]_0\ : out STD_LOGIC;
    digit_sel_reg : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_SSD_clock_module : entity is "SSD_clock_module";
end Cortex_A9_fpadd_ip_0_0_SSD_clock_module;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_SSD_clock_module is
  signal \counter0__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \counter[1]_i_1__0_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[3]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \counter[4]_i_1__0\ : label is "soft_lutpair24";
begin
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter0__0\(0)
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => \counter[1]_i_1__0_n_0\
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(2),
      O => \counter0__0\(2)
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      I3 => counter_reg(2),
      O => \counter0__0\(3)
    );
\counter[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(3),
      I2 => counter_reg(2),
      I3 => counter_reg(1),
      I4 => counter_reg(0),
      O => \counter0__0\(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter0__0\(0),
      PRE => rst,
      Q => counter_reg(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1__0_n_0\,
      PRE => rst,
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter0__0\(2),
      PRE => rst,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter0__0\(3),
      PRE => rst,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter0__0\(4),
      PRE => rst,
      Q => counter_reg(4)
    );
\digit_sel_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      I3 => counter_reg(2),
      I4 => counter_reg(3),
      I5 => digit_sel_reg,
      O => \counter_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_SSD_clock_module_1 is
  port (
    \counter_reg[4]_0\ : out STD_LOGIC;
    digit_sel_reg : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_SSD_clock_module_1 : entity is "SSD_clock_module";
end Cortex_A9_fpadd_ip_0_0_SSD_clock_module_1;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_SSD_clock_module_1 is
  signal counter0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair22";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => counter0(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(2),
      O => counter0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      I3 => counter_reg(2),
      O => counter0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(3),
      I2 => counter_reg(2),
      I3 => counter_reg(1),
      I4 => counter_reg(0),
      O => counter0(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter0(0),
      PRE => rst,
      Q => counter_reg(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      PRE => rst,
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter0(2),
      PRE => rst,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter0(3),
      PRE => rst,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => counter0(4),
      PRE => rst,
      Q => counter_reg(4)
    );
digit_sel_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      I3 => counter_reg(2),
      I4 => counter_reg(3),
      I5 => digit_sel_reg,
      O => \counter_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_compare_shift_module is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \B_reg[24]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \pipe_Mantissa_shift_B_reg[21]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pipe_Mantissa_shift_A_reg[21]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \pipe_Mantissa_shift_A_reg[21]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \pipe_Mantissa_shift_B_reg[23]\ : in STD_LOGIC;
    \pipe_Mantissa_shift_B_reg[22]\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    p_0_in1_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \pipe_Mantissa_shift_A_reg[22]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_compare_shift_module : entity is "compare_shift_module";
end Cortex_A9_fpadd_ip_0_0_compare_shift_module;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_compare_shift_module is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Mantissa_shift_A11_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Mantissa_shift_A1_carry_n_1 : STD_LOGIC;
  signal Mantissa_shift_A1_carry_n_2 : STD_LOGIC;
  signal Mantissa_shift_A1_carry_n_3 : STD_LOGIC;
  signal \Mantissa_shift_A1_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \Mantissa_shift_A1_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \Mantissa_shift_A1_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \Mantissa_shift_A1_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \Mantissa_shift_A1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \Mantissa_shift_A1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \Mantissa_shift_A1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal Mantissa_shift_B10_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mantissa_shift_B1_carry__0_n_1\ : STD_LOGIC;
  signal \Mantissa_shift_B1_carry__0_n_2\ : STD_LOGIC;
  signal \Mantissa_shift_B1_carry__0_n_3\ : STD_LOGIC;
  signal Mantissa_shift_B1_carry_i_1_n_0 : STD_LOGIC;
  signal Mantissa_shift_B1_carry_i_2_n_0 : STD_LOGIC;
  signal Mantissa_shift_B1_carry_i_3_n_0 : STD_LOGIC;
  signal Mantissa_shift_B1_carry_i_4_n_0 : STD_LOGIC;
  signal Mantissa_shift_B1_carry_n_0 : STD_LOGIC;
  signal Mantissa_shift_B1_carry_n_1 : STD_LOGIC;
  signal Mantissa_shift_B1_carry_n_2 : STD_LOGIC;
  signal Mantissa_shift_B1_carry_n_3 : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[0]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[0]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[0]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[10]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[10]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[11]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[11]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[12]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[12]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[13]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[13]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[14]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[14]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[15]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[15]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[16]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[16]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[17]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[17]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[17]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[18]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[18]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[19]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[19]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[19]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[1]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[1]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[1]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[20]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[21]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[21]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[23]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[23]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[2]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[2]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[2]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[3]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[3]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[3]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[4]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[4]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[5]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[5]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[6]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[6]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[6]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[7]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[7]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[7]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[8]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[8]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[8]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[9]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[9]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_A[9]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[0]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[0]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[0]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[10]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[10]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[10]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[11]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[11]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[12]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[12]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[13]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[13]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[14]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[14]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[15]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[15]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[16]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[16]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[17]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[17]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[18]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[18]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[19]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[1]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[1]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[1]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[20]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[20]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[20]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[21]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[23]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[23]_i_6_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[2]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[2]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[2]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[3]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[3]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[3]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[4]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[4]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[5]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[5]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[6]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[6]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[6]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[7]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[7]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[7]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[8]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[8]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[8]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[9]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[9]_i_3_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[9]_i_4_n_0\ : STD_LOGIC;
  signal NLW_Mantissa_shift_A1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Mantissa_shift_A1_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Mantissa_shift_B1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of Mantissa_shift_A1_carry : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \Mantissa_shift_A1_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \Mantissa_shift_A1_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of Mantissa_shift_B1_carry : label is 35;
  attribute ADDER_THRESHOLD of \Mantissa_shift_B1_carry__0\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[0]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[10]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[11]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[12]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[13]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[14]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[15]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[16]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[16]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[17]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[17]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[19]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[1]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[21]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[23]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[3]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[4]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[5]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[6]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[7]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[8]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[8]_i_4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[9]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[9]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[0]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[10]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[10]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[11]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[12]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[13]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[14]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[16]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[16]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[17]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[1]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[1]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[20]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[23]_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[2]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[2]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[3]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[4]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[5]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[6]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[7]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[7]_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[8]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[8]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[9]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[9]_i_4\ : label is "soft_lutpair41";
begin
  CO(0) <= \^co\(0);
Mantissa_shift_A1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^co\(0),
      CO(2) => Mantissa_shift_A1_carry_n_1,
      CO(1) => Mantissa_shift_A1_carry_n_2,
      CO(0) => Mantissa_shift_A1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_Mantissa_shift_A1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\Mantissa_shift_A1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Mantissa_shift_A1_inferred__1/i__carry_n_0\,
      CO(2) => \Mantissa_shift_A1_inferred__1/i__carry_n_1\,
      CO(1) => \Mantissa_shift_A1_inferred__1/i__carry_n_2\,
      CO(0) => \Mantissa_shift_A1_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \pipe_Mantissa_shift_A_reg[21]\(9),
      DI(2) => \pipe_Mantissa_shift_A_reg[21]\(10),
      DI(1) => \pipe_Mantissa_shift_A_reg[21]\(8),
      DI(0) => \pipe_Mantissa_shift_A_reg[21]\(10),
      O(3 downto 0) => Mantissa_shift_A11_out(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\Mantissa_shift_A1_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \Mantissa_shift_A1_inferred__1/i__carry_n_0\,
      CO(3) => \NLW_Mantissa_shift_A1_inferred__1/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \Mantissa_shift_A1_inferred__1/i__carry__0_n_1\,
      CO(1) => \Mantissa_shift_A1_inferred__1/i__carry__0_n_2\,
      CO(0) => \Mantissa_shift_A1_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \pipe_Mantissa_shift_A_reg[21]\(10),
      DI(1 downto 0) => \pipe_Mantissa_shift_A_reg[21]\(11 downto 10),
      O(3 downto 0) => Mantissa_shift_A11_out(7 downto 4),
      S(3 downto 0) => \pipe_Mantissa_shift_A_reg[21]_0\(3 downto 0)
    );
Mantissa_shift_B1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Mantissa_shift_B1_carry_n_0,
      CO(2) => Mantissa_shift_B1_carry_n_1,
      CO(1) => Mantissa_shift_B1_carry_n_2,
      CO(0) => Mantissa_shift_B1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => Q(13 downto 10),
      O(3 downto 0) => Mantissa_shift_B10_out(3 downto 0),
      S(3) => Mantissa_shift_B1_carry_i_1_n_0,
      S(2) => Mantissa_shift_B1_carry_i_2_n_0,
      S(1) => Mantissa_shift_B1_carry_i_3_n_0,
      S(0) => Mantissa_shift_B1_carry_i_4_n_0
    );
\Mantissa_shift_B1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Mantissa_shift_B1_carry_n_0,
      CO(3) => \NLW_Mantissa_shift_B1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \Mantissa_shift_B1_carry__0_n_1\,
      CO(1) => \Mantissa_shift_B1_carry__0_n_2\,
      CO(0) => \Mantissa_shift_B1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => Q(14),
      DI(1 downto 0) => Q(15 downto 14),
      O(3 downto 0) => Mantissa_shift_B10_out(7 downto 4),
      S(3 downto 0) => \pipe_Mantissa_shift_B_reg[21]\(3 downto 0)
    );
Mantissa_shift_B1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(9),
      I1 => Q(13),
      O => Mantissa_shift_B1_carry_i_1_n_0
    );
Mantissa_shift_B1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(10),
      I1 => Q(12),
      O => Mantissa_shift_B1_carry_i_2_n_0
    );
Mantissa_shift_B1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(8),
      I1 => Q(11),
      O => Mantissa_shift_B1_carry_i_3_n_0
    );
Mantissa_shift_B1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(10),
      I1 => Q(10),
      O => Mantissa_shift_B1_carry_i_4_n_0
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(9),
      I1 => Q(13),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(10),
      I1 => Q(12),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(8),
      I1 => Q(11),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(10),
      I1 => Q(10),
      O => \i__carry_i_4_n_0\
    );
\pipe_Mantissa_shift_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444F4444444F444F"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(0),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[0]_i_2_n_0\,
      I4 => \pipe_Mantissa_shift_A[1]_i_2_n_0\,
      I5 => Mantissa_shift_A11_out(0),
      O => \B_reg[24]\(0)
    );
\pipe_Mantissa_shift_A[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015155550151"
    )
        port map (
      I0 => Mantissa_shift_A11_out(0),
      I1 => \pipe_Mantissa_shift_A[0]_i_3_n_0\,
      I2 => Mantissa_shift_A11_out(2),
      I3 => \pipe_Mantissa_shift_A[0]_i_4_n_0\,
      I4 => Mantissa_shift_A11_out(1),
      I5 => \pipe_Mantissa_shift_A[2]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[0]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in(0),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in(1),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Q(0),
      O => \pipe_Mantissa_shift_A[0]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Q(4),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in(5),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Q(1),
      O => \pipe_Mantissa_shift_A[0]_i_4_n_0\
    );
\pipe_Mantissa_shift_A[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(6),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[11]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[10]_i_2_n_0\,
      O => \B_reg[24]\(10)
    );
\pipe_Mantissa_shift_A[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[12]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[10]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[10]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => Q(9),
      I1 => Mantissa_shift_A11_out(2),
      I2 => p_0_in(3),
      I3 => Mantissa_shift_A11_out(3),
      I4 => Q(6),
      I5 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[10]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(3),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[12]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[11]_i_2_n_0\,
      O => \B_reg[24]\(11)
    );
\pipe_Mantissa_shift_A[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[13]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[11]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[11]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FCBBFC88"
    )
        port map (
      I0 => Q(7),
      I1 => Mantissa_shift_A11_out(2),
      I2 => p_0_in(4),
      I3 => Mantissa_shift_A11_out(3),
      I4 => Q(3),
      I5 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[11]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(4),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[13]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[12]_i_2_n_0\,
      O => \B_reg[24]\(12)
    );
\pipe_Mantissa_shift_A[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[14]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[12]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[12]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in(1),
      I1 => Mantissa_shift_A11_out(2),
      I2 => p_0_in(5),
      I3 => Mantissa_shift_A11_out(3),
      I4 => Q(4),
      I5 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[12]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(5),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[14]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[13]_i_2_n_0\,
      O => \B_reg[24]\(13)
    );
\pipe_Mantissa_shift_A[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[15]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[13]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[13]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in(2),
      I1 => Mantissa_shift_A11_out(2),
      I2 => Q(8),
      I3 => Mantissa_shift_A11_out(3),
      I4 => Q(5),
      I5 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[13]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(6),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[15]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[14]_i_2_n_0\,
      O => \B_reg[24]\(14)
    );
\pipe_Mantissa_shift_A[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[16]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[14]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[14]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Mantissa_shift_A11_out(2),
      I2 => Q(9),
      I3 => Mantissa_shift_A11_out(3),
      I4 => Q(6),
      I5 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[14]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4444444F44"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(7),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[15]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[16]_i_2_n_0\,
      O => \B_reg[24]\(15)
    );
\pipe_Mantissa_shift_A[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[17]_i_4_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[15]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[15]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003B0038"
    )
        port map (
      I0 => p_0_in(4),
      I1 => Mantissa_shift_A11_out(2),
      I2 => Mantissa_shift_A11_out(3),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Q(7),
      O => \pipe_Mantissa_shift_A[15]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4444444F44"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in(1),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[16]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[17]_i_3_n_0\,
      O => \B_reg[24]\(16)
    );
\pipe_Mantissa_shift_A[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[18]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[16]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[16]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => p_0_in(5),
      I1 => Mantissa_shift_A11_out(2),
      I2 => p_0_in(1),
      I3 => Mantissa_shift_A11_out(3),
      I4 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[16]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4444444F44"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in(2),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[17]_i_3_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[18]_i_2_n_0\,
      O => \B_reg[24]\(17)
    );
\pipe_Mantissa_shift_A[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Mantissa_shift_A11_out(5),
      I2 => Mantissa_shift_A11_out(6),
      I3 => Mantissa_shift_A11_out(7),
      O => \pipe_Mantissa_shift_A[17]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110FFFF11100000"
    )
        port map (
      I0 => Mantissa_shift_A11_out(3),
      I1 => Mantissa_shift_A11_out(4),
      I2 => Mantissa_shift_A11_out(2),
      I3 => p_0_in(4),
      I4 => Mantissa_shift_A11_out(1),
      I5 => \pipe_Mantissa_shift_A[17]_i_4_n_0\,
      O => \pipe_Mantissa_shift_A[17]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => Q(8),
      I1 => Mantissa_shift_A11_out(2),
      I2 => p_0_in(2),
      I3 => Mantissa_shift_A11_out(3),
      I4 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[17]_i_4_n_0\
    );
\pipe_Mantissa_shift_A[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FF4444444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in(3),
      I2 => \pipe_Mantissa_shift_A[19]_i_3_n_0\,
      I3 => \pipe_Mantissa_shift_A[18]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[19]_i_4_n_0\,
      O => \B_reg[24]\(18)
    );
\pipe_Mantissa_shift_A[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => Mantissa_shift_A11_out(3),
      I1 => p_0_in(5),
      I2 => Mantissa_shift_A11_out(4),
      I3 => Mantissa_shift_A11_out(2),
      I4 => Mantissa_shift_A11_out(1),
      I5 => \pipe_Mantissa_shift_A[18]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[18]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => Q(9),
      I1 => Mantissa_shift_A11_out(2),
      I2 => p_0_in(3),
      I3 => Mantissa_shift_A11_out(3),
      I4 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[18]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4FFF4444444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in(4),
      I2 => \pipe_Mantissa_shift_A[19]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[19]_i_3_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[19]_i_4_n_0\,
      O => \B_reg[24]\(19)
    );
\pipe_Mantissa_shift_A[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFFFFFEFF"
    )
        port map (
      I0 => Mantissa_shift_A11_out(4),
      I1 => Mantissa_shift_A11_out(3),
      I2 => Mantissa_shift_A11_out(2),
      I3 => p_0_in(5),
      I4 => Mantissa_shift_A11_out(1),
      I5 => Q(9),
      O => \pipe_Mantissa_shift_A[19]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000B00030008"
    )
        port map (
      I0 => Q(8),
      I1 => Mantissa_shift_A11_out(1),
      I2 => Mantissa_shift_A11_out(3),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Mantissa_shift_A11_out(2),
      I5 => p_0_in(4),
      O => \pipe_Mantissa_shift_A[19]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Mantissa_shift_A11_out(5),
      I2 => Mantissa_shift_A11_out(6),
      I3 => Mantissa_shift_A11_out(7),
      O => \pipe_Mantissa_shift_A[19]_i_4_n_0\
    );
\pipe_Mantissa_shift_A[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(6),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[2]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[1]_i_2_n_0\,
      O => \B_reg[24]\(1)
    );
\pipe_Mantissa_shift_A[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[3]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[1]_i_3_n_0\,
      I3 => Mantissa_shift_A11_out(2),
      I4 => \pipe_Mantissa_shift_A[1]_i_4_n_0\,
      O => \pipe_Mantissa_shift_A[1]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Q(5),
      I1 => Mantissa_shift_A11_out(3),
      I2 => Q(8),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Q(2),
      O => \pipe_Mantissa_shift_A[1]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in(2),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Q(6),
      O => \pipe_Mantissa_shift_A[1]_i_4_n_0\
    );
\pipe_Mantissa_shift_A[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0A0A0A3A"
    )
        port map (
      I0 => p_0_in(5),
      I1 => \pipe_Mantissa_shift_A[20]_i_2_n_0\,
      I2 => \pipe_Mantissa_shift_A_reg[22]\,
      I3 => Mantissa_shift_A11_out(5),
      I4 => Mantissa_shift_A11_out(6),
      I5 => Mantissa_shift_A11_out(7),
      O => \B_reg[24]\(20)
    );
\pipe_Mantissa_shift_A[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F4F7F3F3F4F7F"
    )
        port map (
      I0 => Q(8),
      I1 => Mantissa_shift_A11_out(0),
      I2 => \pipe_Mantissa_shift_A[23]_i_3_n_0\,
      I3 => p_0_in(5),
      I4 => Mantissa_shift_A11_out(1),
      I5 => Q(9),
      O => \pipe_Mantissa_shift_A[20]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A0A0A0A0A3A"
    )
        port map (
      I0 => Q(8),
      I1 => \pipe_Mantissa_shift_A[21]_i_2_n_0\,
      I2 => \pipe_Mantissa_shift_A_reg[22]\,
      I3 => Mantissa_shift_A11_out(5),
      I4 => Mantissa_shift_A11_out(6),
      I5 => Mantissa_shift_A11_out(7),
      O => \B_reg[24]\(21)
    );
\pipe_Mantissa_shift_A[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFC4FFFFFFC7"
    )
        port map (
      I0 => Q(9),
      I1 => Mantissa_shift_A11_out(0),
      I2 => Mantissa_shift_A11_out(1),
      I3 => Mantissa_shift_A11_out(2),
      I4 => \pipe_Mantissa_shift_A[21]_i_3_n_0\,
      I5 => Q(8),
      O => \pipe_Mantissa_shift_A[21]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[21]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Mantissa_shift_A11_out(4),
      I1 => Mantissa_shift_A11_out(3),
      O => \pipe_Mantissa_shift_A[21]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E0CCCCCCCC"
    )
        port map (
      I0 => Mantissa_shift_A11_out(0),
      I1 => Q(9),
      I2 => \pipe_Mantissa_shift_A[23]_i_3_n_0\,
      I3 => Mantissa_shift_A11_out(1),
      I4 => \pipe_Mantissa_shift_A[23]_i_2_n_0\,
      I5 => \pipe_Mantissa_shift_A_reg[22]\,
      O => \B_reg[24]\(22)
    );
\pipe_Mantissa_shift_A[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500000100"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[23]\,
      I1 => \pipe_Mantissa_shift_A[23]_i_2_n_0\,
      I2 => Mantissa_shift_A11_out(1),
      I3 => \pipe_Mantissa_shift_A[23]_i_3_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \^co\(0),
      O => \B_reg[24]\(23)
    );
\pipe_Mantissa_shift_A[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Mantissa_shift_A11_out(7),
      I1 => Mantissa_shift_A11_out(6),
      I2 => Mantissa_shift_A11_out(5),
      O => \pipe_Mantissa_shift_A[23]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Mantissa_shift_A11_out(2),
      I1 => Mantissa_shift_A11_out(3),
      I2 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[23]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in1_in(0),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[3]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[2]_i_2_n_0\,
      O => \B_reg[24]\(2)
    );
\pipe_Mantissa_shift_A[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[4]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[2]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[2]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[6]_i_4_n_0\,
      I1 => Mantissa_shift_A11_out(2),
      I2 => \pipe_Mantissa_shift_A[2]_i_4_n_0\,
      O => \pipe_Mantissa_shift_A[2]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Q(6),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in(3),
      I3 => Mantissa_shift_A11_out(4),
      I4 => p_0_in1_in(0),
      O => \pipe_Mantissa_shift_A[2]_i_4_n_0\
    );
\pipe_Mantissa_shift_A[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in1_in(3),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[4]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[3]_i_2_n_0\,
      O => \B_reg[24]\(3)
    );
\pipe_Mantissa_shift_A[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[5]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[3]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[3]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B8FFFF33B80000"
    )
        port map (
      I0 => Q(7),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in1_in(3),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Mantissa_shift_A11_out(2),
      I5 => \pipe_Mantissa_shift_A[3]_i_4_n_0\,
      O => \pipe_Mantissa_shift_A[3]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Q(3),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in(4),
      I3 => Mantissa_shift_A11_out(4),
      I4 => p_0_in1_in(3),
      O => \pipe_Mantissa_shift_A[3]_i_4_n_0\
    );
\pipe_Mantissa_shift_A[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(1),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[5]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[4]_i_2_n_0\,
      O => \B_reg[24]\(4)
    );
\pipe_Mantissa_shift_A[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[6]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[4]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[4]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in(0),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Mantissa_shift_A11_out(2),
      I5 => \pipe_Mantissa_shift_A[0]_i_4_n_0\,
      O => \pipe_Mantissa_shift_A[4]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => Q(2),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[6]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[5]_i_2_n_0\,
      O => \B_reg[24]\(5)
    );
\pipe_Mantissa_shift_A[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[7]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[5]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[5]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in1_in(4),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Mantissa_shift_A11_out(2),
      I5 => \pipe_Mantissa_shift_A[1]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[5]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in1_in(2),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[7]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[6]_i_2_n_0\,
      O => \B_reg[24]\(6)
    );
\pipe_Mantissa_shift_A[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[8]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[6]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[6]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Mantissa_shift_A11_out(3),
      I2 => Q(6),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Mantissa_shift_A11_out(2),
      I5 => \pipe_Mantissa_shift_A[6]_i_4_n_0\,
      O => \pipe_Mantissa_shift_A[6]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Q(6),
      I1 => Mantissa_shift_A11_out(3),
      I2 => Q(9),
      I3 => Mantissa_shift_A11_out(4),
      I4 => p_0_in1_in(2),
      O => \pipe_Mantissa_shift_A[6]_i_4_n_0\
    );
\pipe_Mantissa_shift_A[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in1_in(3),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[8]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[7]_i_2_n_0\,
      O => \B_reg[24]\(7)
    );
\pipe_Mantissa_shift_A[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[9]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[7]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[7]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in(4),
      I1 => Mantissa_shift_A11_out(3),
      I2 => Q(3),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Mantissa_shift_A11_out(2),
      I5 => \pipe_Mantissa_shift_A[7]_i_4_n_0\,
      O => \pipe_Mantissa_shift_A[7]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33B8"
    )
        port map (
      I0 => Q(7),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in1_in(3),
      I3 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[7]_i_4_n_0\
    );
\pipe_Mantissa_shift_A[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in(0),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[9]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[8]_i_2_n_0\,
      O => \B_reg[24]\(8)
    );
\pipe_Mantissa_shift_A[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[10]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[8]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[8]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in(5),
      I1 => Mantissa_shift_A11_out(3),
      I2 => Q(4),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Mantissa_shift_A11_out(2),
      I5 => \pipe_Mantissa_shift_A[8]_i_4_n_0\,
      O => \pipe_Mantissa_shift_A[8]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in(0),
      I3 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[8]_i_4_n_0\
    );
\pipe_Mantissa_shift_A[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[22]\,
      I1 => p_0_in1_in(4),
      I2 => \pipe_Mantissa_shift_A[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_A[10]_i_2_n_0\,
      I4 => Mantissa_shift_A11_out(0),
      I5 => \pipe_Mantissa_shift_A[9]_i_2_n_0\,
      O => \B_reg[24]\(9)
    );
\pipe_Mantissa_shift_A[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A[11]_i_3_n_0\,
      I1 => Mantissa_shift_A11_out(1),
      I2 => \pipe_Mantissa_shift_A[9]_i_3_n_0\,
      O => \pipe_Mantissa_shift_A[9]_i_2_n_0\
    );
\pipe_Mantissa_shift_A[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => Q(8),
      I1 => Mantissa_shift_A11_out(3),
      I2 => Q(5),
      I3 => Mantissa_shift_A11_out(4),
      I4 => Mantissa_shift_A11_out(2),
      I5 => \pipe_Mantissa_shift_A[9]_i_4_n_0\,
      O => \pipe_Mantissa_shift_A[9]_i_3_n_0\
    );
\pipe_Mantissa_shift_A[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => Mantissa_shift_A11_out(3),
      I2 => p_0_in1_in(4),
      I3 => Mantissa_shift_A11_out(4),
      O => \pipe_Mantissa_shift_A[9]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F88888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(7),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[1]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[0]_i_2_n_0\,
      O => D(0)
    );
\pipe_Mantissa_shift_B[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEAEAEAEFEA"
    )
        port map (
      I0 => Mantissa_shift_B10_out(0),
      I1 => \pipe_Mantissa_shift_B[2]_i_3_n_0\,
      I2 => Mantissa_shift_B10_out(1),
      I3 => \pipe_Mantissa_shift_B[0]_i_3_n_0\,
      I4 => Mantissa_shift_B10_out(2),
      I5 => \pipe_Mantissa_shift_B[0]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[0]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in(0),
      I1 => Mantissa_shift_B10_out(3),
      I2 => p_0_in1_in(1),
      I3 => Mantissa_shift_B10_out(4),
      I4 => \pipe_Mantissa_shift_A_reg[21]\(7),
      O => \pipe_Mantissa_shift_B[0]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(3),
      I1 => Mantissa_shift_B10_out(3),
      I2 => p_0_in(5),
      I3 => Mantissa_shift_B10_out(4),
      I4 => p_0_in1_in(0),
      O => \pipe_Mantissa_shift_B[0]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8888888F88"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(1),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[10]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[11]_i_2_n_0\,
      O => D(10)
    );
\pipe_Mantissa_shift_B[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[12]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[10]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[10]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => Mantissa_shift_B10_out(3),
      I2 => \pipe_Mantissa_shift_A_reg[21]\(5),
      I3 => Mantissa_shift_B10_out(4),
      I4 => Mantissa_shift_B10_out(2),
      I5 => \pipe_Mantissa_shift_B[10]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[10]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Mantissa_shift_B10_out(3),
      I2 => \pipe_Mantissa_shift_A_reg[21]\(1),
      I3 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[10]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(2),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[12]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[11]_i_2_n_0\,
      O => D(11)
    );
\pipe_Mantissa_shift_B[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[13]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[11]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[11]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FCBBFC88"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(6),
      I1 => Mantissa_shift_B10_out(2),
      I2 => \pipe_Mantissa_shift_A_reg[21]\(7),
      I3 => Mantissa_shift_B10_out(3),
      I4 => \pipe_Mantissa_shift_A_reg[21]\(2),
      I5 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[11]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(3),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[13]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[12]_i_2_n_0\,
      O => D(12)
    );
\pipe_Mantissa_shift_B[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[14]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[12]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[12]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => Mantissa_shift_B10_out(2),
      I2 => p_0_in(5),
      I3 => Mantissa_shift_B10_out(3),
      I4 => \pipe_Mantissa_shift_A_reg[21]\(3),
      I5 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[12]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(4),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[14]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[13]_i_2_n_0\,
      O => D(13)
    );
\pipe_Mantissa_shift_B[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[15]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[13]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[13]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in1_in(2),
      I1 => Mantissa_shift_B10_out(2),
      I2 => p_0_in1_in(3),
      I3 => Mantissa_shift_B10_out(3),
      I4 => \pipe_Mantissa_shift_A_reg[21]\(4),
      I5 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[13]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(5),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[15]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[14]_i_2_n_0\,
      O => D(14)
    );
\pipe_Mantissa_shift_B[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[16]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[14]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[14]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Mantissa_shift_B10_out(2),
      I2 => p_0_in1_in(4),
      I3 => Mantissa_shift_B10_out(3),
      I4 => \pipe_Mantissa_shift_A_reg[21]\(5),
      I5 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[14]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8888888F88"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(6),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[15]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[16]_i_2_n_0\,
      O => D(15)
    );
\pipe_Mantissa_shift_B[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => Mantissa_shift_B10_out(2),
      I2 => p_0_in1_in(2),
      I3 => \pipe_Mantissa_shift_B[23]_i_6_n_0\,
      I4 => Mantissa_shift_B10_out(1),
      I5 => \pipe_Mantissa_shift_B[15]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[15]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000033B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(7),
      I1 => Mantissa_shift_B10_out(2),
      I2 => \pipe_Mantissa_shift_A_reg[21]\(6),
      I3 => Mantissa_shift_B10_out(3),
      I4 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[15]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in1_in(1),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[17]_i_3_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[16]_i_2_n_0\,
      O => D(16)
    );
\pipe_Mantissa_shift_B[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[18]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[16]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[16]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => p_0_in(5),
      I1 => Mantissa_shift_B10_out(2),
      I2 => p_0_in1_in(1),
      I3 => Mantissa_shift_B10_out(3),
      I4 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[16]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in1_in(2),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[18]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[17]_i_3_n_0\,
      O => D(17)
    );
\pipe_Mantissa_shift_B[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Mantissa_shift_B10_out(5),
      I1 => Mantissa_shift_B10_out(6),
      I2 => Mantissa_shift_B10_out(7),
      I3 => \pipe_Mantissa_shift_B_reg[22]\,
      O => \pipe_Mantissa_shift_B[17]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FCBBFC88"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(7),
      I1 => Mantissa_shift_B10_out(1),
      I2 => p_0_in1_in(3),
      I3 => Mantissa_shift_B10_out(2),
      I4 => p_0_in1_in(2),
      I5 => \pipe_Mantissa_shift_B[23]_i_6_n_0\,
      O => \pipe_Mantissa_shift_B[17]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8FFF8888888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in(3),
      I2 => \pipe_Mantissa_shift_B[19]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[18]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[20]_i_4_n_0\,
      O => D(18)
    );
\pipe_Mantissa_shift_B[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => Mantissa_shift_B10_out(3),
      I1 => p_0_in(5),
      I2 => Mantissa_shift_B10_out(4),
      I3 => Mantissa_shift_B10_out(2),
      I4 => Mantissa_shift_B10_out(1),
      I5 => \pipe_Mantissa_shift_B[18]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[18]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => Mantissa_shift_B10_out(2),
      I2 => p_0_in(3),
      I3 => Mantissa_shift_B10_out(3),
      I4 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[18]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888FFF88888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(7),
      I2 => \pipe_Mantissa_shift_B[20]_i_3_n_0\,
      I3 => Mantissa_shift_B10_out(0),
      I4 => \pipe_Mantissa_shift_B[19]_i_2_n_0\,
      I5 => \pipe_Mantissa_shift_B[20]_i_4_n_0\,
      O => D(19)
    );
\pipe_Mantissa_shift_B[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF5FFFFFF03"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => \pipe_Mantissa_shift_A_reg[21]\(7),
      I2 => Mantissa_shift_B10_out(2),
      I3 => Mantissa_shift_B10_out(4),
      I4 => Mantissa_shift_B10_out(3),
      I5 => Mantissa_shift_B10_out(1),
      O => \pipe_Mantissa_shift_B[19]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in(1),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[2]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[1]_i_2_n_0\,
      O => D(1)
    );
\pipe_Mantissa_shift_B[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[3]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[1]_i_3_n_0\,
      I3 => Mantissa_shift_B10_out(2),
      I4 => \pipe_Mantissa_shift_B[1]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[1]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(4),
      I1 => Mantissa_shift_B10_out(3),
      I2 => Mantissa_shift_B10_out(4),
      I3 => p_0_in1_in(3),
      O => \pipe_Mantissa_shift_B[1]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Mantissa_shift_B10_out(3),
      I2 => p_0_in1_in(2),
      I3 => Mantissa_shift_B10_out(4),
      I4 => p_0_in(1),
      O => \pipe_Mantissa_shift_B[1]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888FFF88888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in(5),
      I2 => \pipe_Mantissa_shift_B[20]_i_2_n_0\,
      I3 => Mantissa_shift_B10_out(0),
      I4 => \pipe_Mantissa_shift_B[20]_i_3_n_0\,
      I5 => \pipe_Mantissa_shift_B[20]_i_4_n_0\,
      O => D(20)
    );
\pipe_Mantissa_shift_B[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFCD"
    )
        port map (
      I0 => Mantissa_shift_B10_out(1),
      I1 => Mantissa_shift_B10_out(2),
      I2 => p_0_in1_in(3),
      I3 => Mantissa_shift_B10_out(3),
      I4 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[20]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFFFFFEFF"
    )
        port map (
      I0 => Mantissa_shift_B10_out(4),
      I1 => Mantissa_shift_B10_out(3),
      I2 => Mantissa_shift_B10_out(2),
      I3 => p_0_in(5),
      I4 => Mantissa_shift_B10_out(1),
      I5 => p_0_in1_in(4),
      O => \pipe_Mantissa_shift_B[20]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => Mantissa_shift_B10_out(5),
      I2 => Mantissa_shift_B10_out(6),
      I3 => Mantissa_shift_B10_out(7),
      O => \pipe_Mantissa_shift_B[20]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888D"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in1_in(3),
      I2 => \pipe_Mantissa_shift_B[21]_i_2_n_0\,
      I3 => Mantissa_shift_B10_out(5),
      I4 => Mantissa_shift_B10_out(6),
      I5 => Mantissa_shift_B10_out(7),
      O => D(21)
    );
\pipe_Mantissa_shift_B[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFC4FFC7"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => Mantissa_shift_B10_out(0),
      I2 => Mantissa_shift_B10_out(1),
      I3 => Mantissa_shift_B10_out(2),
      I4 => p_0_in1_in(3),
      I5 => \pipe_Mantissa_shift_B[23]_i_6_n_0\,
      O => \pipe_Mantissa_shift_B[21]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CE"
    )
        port map (
      I0 => Mantissa_shift_B10_out(0),
      I1 => p_0_in1_in(4),
      I2 => \pipe_Mantissa_shift_B_reg[22]\,
      I3 => \pipe_Mantissa_shift_B[23]_i_3_n_0\,
      O => D(22)
    );
\pipe_Mantissa_shift_B[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[23]\,
      I1 => Mantissa_shift_B10_out(0),
      I2 => \pipe_Mantissa_shift_B[23]_i_3_n_0\,
      I3 => \^co\(0),
      O => D(23)
    );
\pipe_Mantissa_shift_B[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Mantissa_shift_B10_out(2),
      I1 => \pipe_Mantissa_shift_B[23]_i_6_n_0\,
      I2 => Mantissa_shift_B10_out(1),
      I3 => Mantissa_shift_B10_out(5),
      I4 => Mantissa_shift_B10_out(6),
      I5 => Mantissa_shift_B10_out(7),
      O => \pipe_Mantissa_shift_B[23]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Mantissa_shift_B10_out(4),
      I1 => Mantissa_shift_B10_out(3),
      O => \pipe_Mantissa_shift_B[23]_i_6_n_0\
    );
\pipe_Mantissa_shift_B[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(0),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[3]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[2]_i_2_n_0\,
      O => D(2)
    );
\pipe_Mantissa_shift_B[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[4]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[2]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[2]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[6]_i_4_n_0\,
      I1 => Mantissa_shift_B10_out(2),
      I2 => \pipe_Mantissa_shift_B[2]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[2]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(1),
      I1 => Mantissa_shift_B10_out(3),
      I2 => p_0_in(3),
      I3 => Mantissa_shift_B10_out(4),
      I4 => \pipe_Mantissa_shift_A_reg[21]\(0),
      O => \pipe_Mantissa_shift_B[2]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8888888F88"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in1_in(3),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[3]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[4]_i_2_n_0\,
      O => D(3)
    );
\pipe_Mantissa_shift_B[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[5]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[3]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[3]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B38FFFF3B380000"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(6),
      I1 => Mantissa_shift_B10_out(3),
      I2 => Mantissa_shift_B10_out(4),
      I3 => p_0_in1_in(3),
      I4 => Mantissa_shift_B10_out(2),
      I5 => \pipe_Mantissa_shift_B[3]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[3]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(2),
      I1 => Mantissa_shift_B10_out(3),
      I2 => \pipe_Mantissa_shift_A_reg[21]\(7),
      I3 => Mantissa_shift_B10_out(4),
      I4 => p_0_in1_in(3),
      O => \pipe_Mantissa_shift_B[3]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in1_in(0),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[5]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[4]_i_2_n_0\,
      O => D(4)
    );
\pipe_Mantissa_shift_B[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[6]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[4]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[4]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => Mantissa_shift_B10_out(3),
      I2 => p_0_in(0),
      I3 => Mantissa_shift_B10_out(4),
      I4 => Mantissa_shift_B10_out(2),
      I5 => \pipe_Mantissa_shift_B[0]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[4]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[6]_i_2_n_0\,
      I1 => Mantissa_shift_B10_out(0),
      I2 => \pipe_Mantissa_shift_B[5]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      O => D(5)
    );
\pipe_Mantissa_shift_B[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[7]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[5]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[5]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3202FFFF32020000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Mantissa_shift_B10_out(4),
      I2 => Mantissa_shift_B10_out(3),
      I3 => p_0_in1_in(2),
      I4 => Mantissa_shift_B10_out(2),
      I5 => \pipe_Mantissa_shift_B[1]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[5]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => \pipe_Mantissa_shift_A_reg[21]\(7),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[7]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[6]_i_2_n_0\,
      O => D(6)
    );
\pipe_Mantissa_shift_B[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[8]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[6]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[6]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Mantissa_shift_B10_out(3),
      I2 => \pipe_Mantissa_shift_A_reg[21]\(1),
      I3 => Mantissa_shift_B10_out(4),
      I4 => Mantissa_shift_B10_out(2),
      I5 => \pipe_Mantissa_shift_B[6]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[6]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(5),
      I1 => Mantissa_shift_B10_out(3),
      I2 => p_0_in1_in(4),
      I3 => Mantissa_shift_B10_out(4),
      I4 => \pipe_Mantissa_shift_A_reg[21]\(7),
      O => \pipe_Mantissa_shift_B[6]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888888"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in1_in(3),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[8]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[7]_i_2_n_0\,
      O => D(7)
    );
\pipe_Mantissa_shift_B[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[9]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[7]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[7]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(7),
      I1 => Mantissa_shift_B10_out(3),
      I2 => \pipe_Mantissa_shift_A_reg[21]\(2),
      I3 => Mantissa_shift_B10_out(4),
      I4 => Mantissa_shift_B10_out(2),
      I5 => \pipe_Mantissa_shift_B[7]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[7]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B38"
    )
        port map (
      I0 => \pipe_Mantissa_shift_A_reg[21]\(6),
      I1 => Mantissa_shift_B10_out(3),
      I2 => Mantissa_shift_B10_out(4),
      I3 => p_0_in1_in(3),
      O => \pipe_Mantissa_shift_B[7]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8888888F88"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in(0),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[8]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[9]_i_2_n_0\,
      O => D(8)
    );
\pipe_Mantissa_shift_B[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[10]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[8]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[8]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in(5),
      I1 => Mantissa_shift_B10_out(3),
      I2 => \pipe_Mantissa_shift_A_reg[21]\(3),
      I3 => Mantissa_shift_B10_out(4),
      I4 => Mantissa_shift_B10_out(2),
      I5 => \pipe_Mantissa_shift_B[8]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[8]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_0_in1_in(1),
      I1 => Mantissa_shift_B10_out(3),
      I2 => p_0_in(0),
      I3 => Mantissa_shift_B10_out(4),
      O => \pipe_Mantissa_shift_B[8]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8888888F88"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B_reg[22]\,
      I1 => p_0_in(3),
      I2 => \pipe_Mantissa_shift_B[17]_i_2_n_0\,
      I3 => \pipe_Mantissa_shift_B[9]_i_2_n_0\,
      I4 => Mantissa_shift_B10_out(0),
      I5 => \pipe_Mantissa_shift_B[10]_i_2_n_0\,
      O => D(9)
    );
\pipe_Mantissa_shift_B[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[11]_i_3_n_0\,
      I1 => Mantissa_shift_B10_out(1),
      I2 => \pipe_Mantissa_shift_B[9]_i_3_n_0\,
      O => \pipe_Mantissa_shift_B[9]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(3),
      I1 => Mantissa_shift_B10_out(3),
      I2 => \pipe_Mantissa_shift_A_reg[21]\(4),
      I3 => Mantissa_shift_B10_out(4),
      I4 => Mantissa_shift_B10_out(2),
      I5 => \pipe_Mantissa_shift_B[9]_i_4_n_0\,
      O => \pipe_Mantissa_shift_B[9]_i_3_n_0\
    );
\pipe_Mantissa_shift_B[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Mantissa_shift_B10_out(4),
      I2 => Mantissa_shift_B10_out(3),
      I3 => p_0_in1_in(2),
      O => \pipe_Mantissa_shift_B[9]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_debounce_module is
  port (
    current_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_debounce_module : entity is "debounce_module";
end Cortex_A9_fpadd_ip_0_0_debounce_module;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_debounce_module is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal counter0 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_2\ : STD_LOGIC;
  signal \counter0_carry__4_n_3\ : STD_LOGIC;
  signal counter0_carry_i_1_n_0 : STD_LOGIC;
  signal counter0_carry_i_2_n_0 : STD_LOGIC;
  signal counter0_carry_i_3_n_0 : STD_LOGIC;
  signal counter0_carry_i_4_n_0 : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \^current_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \NLW_counter0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1\ : label is "soft_lutpair38";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "button_pressed:10,button_detected:01,button_unpressed:00,iSTATE:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "button_pressed:10,button_detected:01,button_unpressed:00,iSTATE:11";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \counter[0]_i_1__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[16]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \counter[17]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \counter[18]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \counter[19]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[1]_i_1__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \counter[20]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[21]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[22]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[23]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[2]_i_1__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \counter[3]_i_1__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \counter[4]_i_1__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair33";
begin
  current_state(1 downto 0) <= \^current_state\(1 downto 0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C1"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => \^current_state\(0),
      I2 => \^current_state\(1),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_3_n_0\,
      I1 => counter(4),
      I2 => counter(11),
      I3 => counter(18),
      I4 => counter(21),
      I5 => \FSM_sequential_current_state[0]_i_4_n_0\,
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(17),
      I1 => counter(19),
      I2 => counter(3),
      I3 => counter(8),
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\FSM_sequential_current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_5_n_0\,
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(2),
      I4 => counter(20),
      I5 => \FSM_sequential_current_state[0]_i_6_n_0\,
      O => \FSM_sequential_current_state[0]_i_4_n_0\
    );
\FSM_sequential_current_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(5),
      I1 => counter(16),
      I2 => counter(7),
      I3 => counter(12),
      O => \FSM_sequential_current_state[0]_i_5_n_0\
    );
\FSM_sequential_current_state[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(15),
      I1 => counter(6),
      I2 => counter(14),
      I3 => counter(13),
      I4 => \FSM_sequential_current_state[0]_i_7_n_0\,
      O => \FSM_sequential_current_state[0]_i_6_n_0\
    );
\FSM_sequential_current_state[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(22),
      I1 => counter(23),
      I2 => counter(9),
      I3 => counter(10),
      O => \FSM_sequential_current_state[0]_i_7_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => Q(0),
      I1 => \^current_state\(0),
      I2 => \^current_state\(1),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => \^current_state\(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => \^current_state\(1)
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => counter(4 downto 1),
      O(3 downto 0) => counter0(4 downto 1),
      S(3) => counter0_carry_i_1_n_0,
      S(2) => counter0_carry_i_2_n_0,
      S(1) => counter0_carry_i_3_n_0,
      S(0) => counter0_carry_i_4_n_0
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter(8 downto 5),
      O(3 downto 0) => counter0(8 downto 5),
      S(3) => \counter0_carry__0_i_1_n_0\,
      S(2) => \counter0_carry__0_i_2_n_0\,
      S(1) => \counter0_carry__0_i_3_n_0\,
      S(0) => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(8),
      O => \counter0_carry__0_i_1_n_0\
    );
\counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(7),
      O => \counter0_carry__0_i_2_n_0\
    );
\counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(6),
      O => \counter0_carry__0_i_3_n_0\
    );
\counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(5),
      O => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter(12 downto 9),
      O(3 downto 0) => counter0(12 downto 9),
      S(3) => \counter0_carry__1_i_1_n_0\,
      S(2) => \counter0_carry__1_i_2_n_0\,
      S(1) => \counter0_carry__1_i_3_n_0\,
      S(0) => \counter0_carry__1_i_4_n_0\
    );
\counter0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(12),
      O => \counter0_carry__1_i_1_n_0\
    );
\counter0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(11),
      O => \counter0_carry__1_i_2_n_0\
    );
\counter0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(10),
      O => \counter0_carry__1_i_3_n_0\
    );
\counter0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(9),
      O => \counter0_carry__1_i_4_n_0\
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter(16 downto 13),
      O(3 downto 0) => counter0(16 downto 13),
      S(3) => \counter0_carry__2_i_1_n_0\,
      S(2) => \counter0_carry__2_i_2_n_0\,
      S(1) => \counter0_carry__2_i_3_n_0\,
      S(0) => \counter0_carry__2_i_4_n_0\
    );
\counter0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(16),
      O => \counter0_carry__2_i_1_n_0\
    );
\counter0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(15),
      O => \counter0_carry__2_i_2_n_0\
    );
\counter0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(14),
      O => \counter0_carry__2_i_3_n_0\
    );
\counter0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(13),
      O => \counter0_carry__2_i_4_n_0\
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \counter0_carry__3_n_0\,
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter(20 downto 17),
      O(3 downto 0) => counter0(20 downto 17),
      S(3) => \counter0_carry__3_i_1_n_0\,
      S(2) => \counter0_carry__3_i_2_n_0\,
      S(1) => \counter0_carry__3_i_3_n_0\,
      S(0) => \counter0_carry__3_i_4_n_0\
    );
\counter0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(20),
      O => \counter0_carry__3_i_1_n_0\
    );
\counter0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(19),
      O => \counter0_carry__3_i_2_n_0\
    );
\counter0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(18),
      O => \counter0_carry__3_i_3_n_0\
    );
\counter0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(17),
      O => \counter0_carry__3_i_4_n_0\
    );
\counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__3_n_0\,
      CO(3 downto 2) => \NLW_counter0_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter0_carry__4_n_2\,
      CO(0) => \counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => counter(22 downto 21),
      O(3) => \NLW_counter0_carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => counter0(23 downto 21),
      S(3) => '0',
      S(2) => \counter0_carry__4_i_1_n_0\,
      S(1) => \counter0_carry__4_i_2_n_0\,
      S(0) => \counter0_carry__4_i_3_n_0\
    );
\counter0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(23),
      O => \counter0_carry__4_i_1_n_0\
    );
\counter0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(22),
      O => \counter0_carry__4_i_2_n_0\
    );
\counter0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(21),
      O => \counter0_carry__4_i_3_n_0\
    );
counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(4),
      O => counter0_carry_i_1_n_0
    );
counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(3),
      O => counter0_carry_i_2_n_0
    );
counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(2),
      O => counter0_carry_i_3_n_0
    );
counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(1),
      O => counter0_carry_i_4_n_0
    );
\counter[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter(0),
      O => p_0_in(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(10),
      O => p_0_in(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(11),
      O => p_0_in(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(12),
      O => p_0_in(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(13),
      O => p_0_in(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(14),
      O => p_0_in(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(15),
      O => p_0_in(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(16),
      O => p_0_in(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(17),
      O => p_0_in(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(18),
      O => p_0_in(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(19),
      O => p_0_in(19)
    );
\counter[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(1),
      O => p_0_in(1)
    );
\counter[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(20),
      O => p_0_in(20)
    );
\counter[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(21),
      O => p_0_in(21)
    );
\counter[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(22),
      O => p_0_in(22)
    );
\counter[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(23),
      O => p_0_in(23)
    );
\counter[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(2),
      O => p_0_in(2)
    );
\counter[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(3),
      O => p_0_in(3)
    );
\counter[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(4),
      O => p_0_in(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(5),
      O => p_0_in(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(6),
      O => p_0_in(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(7),
      O => p_0_in(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(8),
      O => p_0_in(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I2 => counter0(9),
      O => p_0_in(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(10),
      PRE => rst,
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(12),
      PRE => rst,
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(15),
      PRE => rst,
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(16),
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(18),
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(19),
      PRE => rst,
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(1),
      Q => counter(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(20),
      PRE => rst,
      Q => counter(20)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(21),
      Q => counter(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(22),
      Q => counter(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(23),
      PRE => rst,
      Q => counter(23)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(7),
      PRE => rst,
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => p_0_in(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_0_in(9),
      PRE => rst,
      Q => counter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_mantissas_addition_module is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    data0 : out STD_LOGIC_VECTOR ( 22 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    pipe_S_A_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pipe_S_B : in STD_LOGIC;
    pipe_S_A : in STD_LOGIC;
    \out_reg[31]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \out_reg[21]_i_3_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \out_reg[2]\ : in STD_LOGIC;
    \out_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_mantissas_addition_module : entity is "mantissas_addition_module";
end Cortex_A9_fpadd_ip_0_0_mantissas_addition_module;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_mantissas_addition_module is
  signal \S_result1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \S_result1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \S_result1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \S_result1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \S_result1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \S_result1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \S_result1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \S_result1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \S_result1_carry__0_n_0\ : STD_LOGIC;
  signal \S_result1_carry__0_n_1\ : STD_LOGIC;
  signal \S_result1_carry__0_n_2\ : STD_LOGIC;
  signal \S_result1_carry__0_n_3\ : STD_LOGIC;
  signal \S_result1_carry__1_n_0\ : STD_LOGIC;
  signal \S_result1_carry__1_n_1\ : STD_LOGIC;
  signal \S_result1_carry__1_n_2\ : STD_LOGIC;
  signal \S_result1_carry__1_n_3\ : STD_LOGIC;
  signal S_result1_carry_i_1_n_0 : STD_LOGIC;
  signal S_result1_carry_i_2_n_0 : STD_LOGIC;
  signal S_result1_carry_i_3_n_0 : STD_LOGIC;
  signal S_result1_carry_i_4_n_0 : STD_LOGIC;
  signal S_result1_carry_i_5_n_0 : STD_LOGIC;
  signal S_result1_carry_i_6_n_0 : STD_LOGIC;
  signal S_result1_carry_i_7_n_0 : STD_LOGIC;
  signal S_result1_carry_i_8_n_0 : STD_LOGIC;
  signal S_result1_carry_n_0 : STD_LOGIC;
  signal S_result1_carry_n_1 : STD_LOGIC;
  signal S_result1_carry_n_2 : STD_LOGIC;
  signal S_result1_carry_n_3 : STD_LOGIC;
  signal \out[18]_i_10_n_0\ : STD_LOGIC;
  signal \out[18]_i_11_n_0\ : STD_LOGIC;
  signal \out[18]_i_12_n_0\ : STD_LOGIC;
  signal \out[18]_i_9_n_0\ : STD_LOGIC;
  signal \out[21]_i_10_n_0\ : STD_LOGIC;
  signal \out[21]_i_11_n_0\ : STD_LOGIC;
  signal \out[21]_i_12_n_0\ : STD_LOGIC;
  signal \out[21]_i_13_n_0\ : STD_LOGIC;
  signal \out[2]_i_10_n_0\ : STD_LOGIC;
  signal \out[2]_i_11_n_0\ : STD_LOGIC;
  signal \out[2]_i_12_n_0\ : STD_LOGIC;
  signal \out[2]_i_9_n_0\ : STD_LOGIC;
  signal \out[31]_i_11_n_0\ : STD_LOGIC;
  signal \out[31]_i_12_n_0\ : STD_LOGIC;
  signal \out[31]_i_13_n_0\ : STD_LOGIC;
  signal \out[31]_i_14_n_0\ : STD_LOGIC;
  signal \out[6]_i_10_n_0\ : STD_LOGIC;
  signal \out[6]_i_11_n_0\ : STD_LOGIC;
  signal \out[6]_i_12_n_0\ : STD_LOGIC;
  signal \out[6]_i_9_n_0\ : STD_LOGIC;
  signal \out[7]_i_19_n_0\ : STD_LOGIC;
  signal \out[7]_i_20_n_0\ : STD_LOGIC;
  signal \out[7]_i_21_n_0\ : STD_LOGIC;
  signal \out[7]_i_22_n_0\ : STD_LOGIC;
  signal \out_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \out_reg[18]_i_3_n_1\ : STD_LOGIC;
  signal \out_reg[18]_i_3_n_2\ : STD_LOGIC;
  signal \out_reg[18]_i_3_n_3\ : STD_LOGIC;
  signal \out_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \out_reg[21]_i_3_n_1\ : STD_LOGIC;
  signal \out_reg[21]_i_3_n_2\ : STD_LOGIC;
  signal \out_reg[21]_i_3_n_3\ : STD_LOGIC;
  signal \out_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \out_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \out_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \out_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \out_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \out_reg[31]_i_4_n_1\ : STD_LOGIC;
  signal \out_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \out_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \out_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \out_reg[6]_i_3_n_1\ : STD_LOGIC;
  signal \out_reg[6]_i_3_n_2\ : STD_LOGIC;
  signal \out_reg[6]_i_3_n_3\ : STD_LOGIC;
  signal \out_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \out_reg[7]_i_12_n_1\ : STD_LOGIC;
  signal \out_reg[7]_i_12_n_2\ : STD_LOGIC;
  signal \out_reg[7]_i_12_n_3\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_S_result1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_result1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_result1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_reg[6]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_reg[6]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of S_result1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \S_result1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \S_result1_carry__1\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \out_reg[18]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[18]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[21]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[21]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[2]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[2]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[31]_i_4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[31]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[6]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[6]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[6]_i_4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[6]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[7]_i_12\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[7]_i_12\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
S_result1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => S_result1_carry_n_0,
      CO(2) => S_result1_carry_n_1,
      CO(1) => S_result1_carry_n_2,
      CO(0) => S_result1_carry_n_3,
      CYINIT => '0',
      DI(3) => S_result1_carry_i_1_n_0,
      DI(2) => S_result1_carry_i_2_n_0,
      DI(1) => S_result1_carry_i_3_n_0,
      DI(0) => S_result1_carry_i_4_n_0,
      O(3 downto 0) => NLW_S_result1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => S_result1_carry_i_5_n_0,
      S(2) => S_result1_carry_i_6_n_0,
      S(1) => S_result1_carry_i_7_n_0,
      S(0) => S_result1_carry_i_8_n_0
    );
\S_result1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => S_result1_carry_n_0,
      CO(3) => \S_result1_carry__0_n_0\,
      CO(2) => \S_result1_carry__0_n_1\,
      CO(1) => \S_result1_carry__0_n_2\,
      CO(0) => \S_result1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \S_result1_carry__0_i_1_n_0\,
      DI(2) => \S_result1_carry__0_i_2_n_0\,
      DI(1) => \S_result1_carry__0_i_3_n_0\,
      DI(0) => \S_result1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_S_result1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \S_result1_carry__0_i_5_n_0\,
      S(2) => \S_result1_carry__0_i_6_n_0\,
      S(1) => \S_result1_carry__0_i_7_n_0\,
      S(0) => \S_result1_carry__0_i_8_n_0\
    );
\S_result1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(15),
      I1 => Q(15),
      I2 => \out_reg[21]_i_3_0\(14),
      I3 => Q(14),
      O => \S_result1_carry__0_i_1_n_0\
    );
\S_result1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(13),
      I1 => Q(13),
      I2 => \out_reg[21]_i_3_0\(12),
      I3 => Q(12),
      O => \S_result1_carry__0_i_2_n_0\
    );
\S_result1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(11),
      I1 => Q(11),
      I2 => \out_reg[21]_i_3_0\(10),
      I3 => Q(10),
      O => \S_result1_carry__0_i_3_n_0\
    );
\S_result1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(9),
      I1 => Q(9),
      I2 => \out_reg[21]_i_3_0\(8),
      I3 => Q(8),
      O => \S_result1_carry__0_i_4_n_0\
    );
\S_result1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(15),
      I1 => \out_reg[21]_i_3_0\(15),
      I2 => Q(14),
      I3 => \out_reg[21]_i_3_0\(14),
      O => \S_result1_carry__0_i_5_n_0\
    );
\S_result1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(13),
      I1 => \out_reg[21]_i_3_0\(13),
      I2 => Q(12),
      I3 => \out_reg[21]_i_3_0\(12),
      O => \S_result1_carry__0_i_6_n_0\
    );
\S_result1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(11),
      I1 => \out_reg[21]_i_3_0\(11),
      I2 => Q(10),
      I3 => \out_reg[21]_i_3_0\(10),
      O => \S_result1_carry__0_i_7_n_0\
    );
\S_result1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(9),
      I1 => \out_reg[21]_i_3_0\(9),
      I2 => Q(8),
      I3 => \out_reg[21]_i_3_0\(8),
      O => \S_result1_carry__0_i_8_n_0\
    );
\S_result1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_result1_carry__0_n_0\,
      CO(3) => \S_result1_carry__1_n_0\,
      CO(2) => \S_result1_carry__1_n_1\,
      CO(1) => \S_result1_carry__1_n_2\,
      CO(0) => \S_result1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => \NLW_S_result1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
S_result1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(7),
      I1 => Q(7),
      I2 => \out_reg[21]_i_3_0\(6),
      I3 => Q(6),
      O => S_result1_carry_i_1_n_0
    );
S_result1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(5),
      I1 => Q(5),
      I2 => \out_reg[21]_i_3_0\(4),
      I3 => Q(4),
      O => S_result1_carry_i_2_n_0
    );
S_result1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(3),
      I1 => Q(3),
      I2 => \out_reg[21]_i_3_0\(2),
      I3 => Q(2),
      O => S_result1_carry_i_3_n_0
    );
S_result1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(1),
      I1 => Q(1),
      I2 => \out_reg[21]_i_3_0\(0),
      I3 => Q(0),
      O => S_result1_carry_i_4_n_0
    );
S_result1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(7),
      I1 => \out_reg[21]_i_3_0\(7),
      I2 => Q(6),
      I3 => \out_reg[21]_i_3_0\(6),
      O => S_result1_carry_i_5_n_0
    );
S_result1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(5),
      I1 => \out_reg[21]_i_3_0\(5),
      I2 => Q(4),
      I3 => \out_reg[21]_i_3_0\(4),
      O => S_result1_carry_i_6_n_0
    );
S_result1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(3),
      I1 => \out_reg[21]_i_3_0\(3),
      I2 => Q(2),
      I3 => \out_reg[21]_i_3_0\(2),
      O => S_result1_carry_i_7_n_0
    );
S_result1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(1),
      I1 => \out_reg[21]_i_3_0\(1),
      I2 => Q(0),
      I3 => \out_reg[21]_i_3_0\(0),
      O => S_result1_carry_i_8_n_0
    );
\out[18]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(18),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(18),
      O => \out[18]_i_10_n_0\
    );
\out[18]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(17),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(17),
      O => \out[18]_i_11_n_0\
    );
\out[18]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(16),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(16),
      O => \out[18]_i_12_n_0\
    );
\out[18]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(19),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(19),
      O => p_2_in(19)
    );
\out[18]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(18),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(18),
      O => p_2_in(18)
    );
\out[18]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(17),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(17),
      O => p_2_in(17)
    );
\out[18]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(16),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(16),
      O => p_2_in(16)
    );
\out[18]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(19),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(19),
      O => \out[18]_i_9_n_0\
    );
\out[21]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(23),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(23),
      O => \out[21]_i_10_n_0\
    );
\out[21]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(22),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(22),
      O => \out[21]_i_11_n_0\
    );
\out[21]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(21),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(21),
      O => \out[21]_i_12_n_0\
    );
\out[21]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(20),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(20),
      O => \out[21]_i_13_n_0\
    );
\out[21]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(23),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(23),
      O => p_2_in(23)
    );
\out[21]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(22),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(22),
      O => p_2_in(22)
    );
\out[21]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(21),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(21),
      O => p_2_in(21)
    );
\out[21]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(20),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(20),
      O => p_2_in(20)
    );
\out[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(2),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(2),
      O => \out[2]_i_10_n_0\
    );
\out[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(1),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(1),
      O => \out[2]_i_11_n_0\
    );
\out[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(0),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(0),
      O => \out[2]_i_12_n_0\
    );
\out[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(3),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(3),
      O => p_2_in(3)
    );
\out[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(2),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(2),
      O => p_2_in(2)
    );
\out[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(1),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(1),
      O => p_2_in(1)
    );
\out[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(0),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(0),
      O => p_2_in(0)
    );
\out[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(3),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(3),
      O => \out[2]_i_9_n_0\
    );
\out[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => pipe_S_B,
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_A,
      I3 => \out_reg[31]\,
      O => D(0)
    );
\out[31]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(12),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(12),
      O => p_2_in(12)
    );
\out[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(15),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(15),
      O => \out[31]_i_11_n_0\
    );
\out[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(14),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(14),
      O => \out[31]_i_12_n_0\
    );
\out[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(13),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(13),
      O => \out[31]_i_13_n_0\
    );
\out[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(12),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(12),
      O => \out[31]_i_14_n_0\
    );
\out[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(15),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(15),
      O => p_2_in(15)
    );
\out[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(14),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(14),
      O => p_2_in(14)
    );
\out[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(13),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(13),
      O => p_2_in(13)
    );
\out[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(6),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(6),
      O => \out[6]_i_10_n_0\
    );
\out[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(5),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(5),
      O => \out[6]_i_11_n_0\
    );
\out[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(4),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(4),
      O => \out[6]_i_12_n_0\
    );
\out[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(7),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(7),
      O => p_2_in(7)
    );
\out[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(6),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(6),
      O => p_2_in(6)
    );
\out[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(5),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(5),
      O => p_2_in(5)
    );
\out[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(4),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(4),
      O => p_2_in(4)
    );
\out[6]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(7),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(7),
      O => \out[6]_i_9_n_0\
    );
\out[7]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(11),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(11),
      O => p_2_in(11)
    );
\out[7]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(10),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(10),
      O => p_2_in(10)
    );
\out[7]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(9),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(9),
      O => p_2_in(9)
    );
\out[7]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => \out_reg[21]_i_3_0\(8),
      I1 => \S_result1_carry__1_n_0\,
      I2 => pipe_S_B,
      I3 => pipe_S_A,
      I4 => Q(8),
      O => p_2_in(8)
    );
\out[7]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(11),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(11),
      O => \out[7]_i_19_n_0\
    );
\out[7]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(10),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(10),
      O => \out[7]_i_20_n_0\
    );
\out[7]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(9),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(9),
      O => \out[7]_i_21_n_0\
    );
\out[7]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(8),
      I1 => pipe_S_B,
      I2 => pipe_S_A,
      I3 => \out_reg[21]_i_3_0\(8),
      O => \out[7]_i_22_n_0\
    );
\out_reg[18]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[31]_i_4_n_0\,
      CO(3) => \out_reg[18]_i_3_n_0\,
      CO(2) => \out_reg[18]_i_3_n_1\,
      CO(1) => \out_reg[18]_i_3_n_2\,
      CO(0) => \out_reg[18]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(19 downto 16),
      O(3 downto 0) => data0(18 downto 15),
      S(3) => \out[18]_i_9_n_0\,
      S(2) => \out[18]_i_10_n_0\,
      S(1) => \out[18]_i_11_n_0\,
      S(0) => \out[18]_i_12_n_0\
    );
\out_reg[21]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[18]_i_3_n_0\,
      CO(3) => \out_reg[21]_i_3_n_0\,
      CO(2) => \out_reg[21]_i_3_n_1\,
      CO(1) => \out_reg[21]_i_3_n_2\,
      CO(0) => \out_reg[21]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(23 downto 20),
      O(3 downto 0) => data0(22 downto 19),
      S(3) => \out[21]_i_10_n_0\,
      S(2) => \out[21]_i_11_n_0\,
      S(1) => \out[21]_i_12_n_0\,
      S(0) => \out[21]_i_13_n_0\
    );
\out_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_reg[2]_i_2_n_0\,
      CO(2) => \out_reg[2]_i_2_n_1\,
      CO(1) => \out_reg[2]_i_2_n_2\,
      CO(0) => \out_reg[2]_i_2_n_3\,
      CYINIT => \out_reg[2]\,
      DI(3 downto 0) => p_2_in(3 downto 0),
      O(3 downto 1) => data0(2 downto 0),
      O(0) => O(0),
      S(3) => \out[2]_i_9_n_0\,
      S(2) => \out[2]_i_10_n_0\,
      S(1) => \out[2]_i_11_n_0\,
      S(0) => \out[2]_i_12_n_0\
    );
\out_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[7]_i_12_n_0\,
      CO(3) => \out_reg[31]_i_4_n_0\,
      CO(2) => \out_reg[31]_i_4_n_1\,
      CO(1) => \out_reg[31]_i_4_n_2\,
      CO(0) => \out_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(15 downto 12),
      O(3 downto 0) => data0(14 downto 11),
      S(3) => \out[31]_i_11_n_0\,
      S(2) => \out[31]_i_12_n_0\,
      S(1) => \out[31]_i_13_n_0\,
      S(0) => \out[31]_i_14_n_0\
    );
\out_reg[6]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[2]_i_2_n_0\,
      CO(3) => \out_reg[6]_i_3_n_0\,
      CO(2) => \out_reg[6]_i_3_n_1\,
      CO(1) => \out_reg[6]_i_3_n_2\,
      CO(0) => \out_reg[6]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(7 downto 4),
      O(3 downto 0) => data0(6 downto 3),
      S(3) => \out[6]_i_9_n_0\,
      S(2) => \out[6]_i_10_n_0\,
      S(1) => \out[6]_i_11_n_0\,
      S(0) => \out[6]_i_12_n_0\
    );
\out_reg[6]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[21]_i_3_n_0\,
      CO(3 downto 0) => \NLW_out_reg[6]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_out_reg[6]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => pipe_S_A_reg(0),
      S(3 downto 1) => B"000",
      S(0) => \out_reg[0]\(0)
    );
\out_reg[7]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[6]_i_3_n_0\,
      CO(3) => \out_reg[7]_i_12_n_0\,
      CO(2) => \out_reg[7]_i_12_n_1\,
      CO(1) => \out_reg[7]_i_12_n_2\,
      CO(0) => \out_reg[7]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(11 downto 8),
      O(3 downto 0) => data0(10 downto 7),
      S(3) => \out[7]_i_19_n_0\,
      S(2) => \out[7]_i_20_n_0\,
      S(1) => \out[7]_i_21_n_0\,
      S(0) => \out[7]_i_22_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_post_normalization_module is
  port (
    \i__carry_i_13_0\ : out STD_LOGIC;
    \i__carry_i_16_0\ : out STD_LOGIC;
    \out_reg[6]_i_4\ : out STD_LOGIC;
    \out_reg[31]_i_4\ : out STD_LOGIC;
    \out_reg[2]_i_2\ : out STD_LOGIC;
    \out_reg[6]_i_3\ : out STD_LOGIC;
    \i__carry_i_11_0\ : out STD_LOGIC;
    \out_reg[21]_i_3\ : out STD_LOGIC;
    \out_reg[18]_i_3\ : out STD_LOGIC;
    \out_reg[31]_i_4_0\ : out STD_LOGIC;
    \out_reg[18]_i_3_0\ : out STD_LOGIC;
    \out_reg[31]_i_4_1\ : out STD_LOGIC;
    \out_reg[21]_i_3_0\ : out STD_LOGIC;
    \i__carry_i_12_0\ : out STD_LOGIC;
    \out_reg[7]_i_12\ : out STD_LOGIC;
    \out_reg[6]_i_3_0\ : out STD_LOGIC;
    \out_reg[18]_i_3_1\ : out STD_LOGIC;
    \out_reg[21]_i_3_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out_reg[7]_i_12_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \out_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    data0 : in STD_LOGIC_VECTOR ( 22 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out_reg[23]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_post_normalization_module : entity is "post_normalization_module";
end Cortex_A9_fpadd_ip_0_0_post_normalization_module;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_post_normalization_module is
  signal EXP_normal_result0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \^i__carry_i_11_0\ : STD_LOGIC;
  signal \^i__carry_i_12_0\ : STD_LOGIC;
  signal \^i__carry_i_13_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \^i__carry_i_16_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_21_n_0\ : STD_LOGIC;
  signal \i__carry_i_22_n_0\ : STD_LOGIC;
  signal \i__carry_i_23_n_0\ : STD_LOGIC;
  signal \i__carry_i_24_n_0\ : STD_LOGIC;
  signal \i__carry_i_25_n_0\ : STD_LOGIC;
  signal \i__carry_i_26_n_0\ : STD_LOGIC;
  signal \i__carry_i_27_n_0\ : STD_LOGIC;
  signal \i__carry_i_28_n_0\ : STD_LOGIC;
  signal \i__carry_i_29_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \^out_reg[18]_i_3\ : STD_LOGIC;
  signal \^out_reg[18]_i_3_0\ : STD_LOGIC;
  signal \^out_reg[18]_i_3_1\ : STD_LOGIC;
  signal \^out_reg[21]_i_3\ : STD_LOGIC;
  signal \^out_reg[21]_i_3_0\ : STD_LOGIC;
  signal \^out_reg[21]_i_3_1\ : STD_LOGIC;
  signal \^out_reg[2]_i_2\ : STD_LOGIC;
  signal \^out_reg[31]_i_4\ : STD_LOGIC;
  signal \^out_reg[31]_i_4_0\ : STD_LOGIC;
  signal \^out_reg[31]_i_4_1\ : STD_LOGIC;
  signal \^out_reg[6]_i_3\ : STD_LOGIC;
  signal \^out_reg[6]_i_3_0\ : STD_LOGIC;
  signal \^out_reg[6]_i_4\ : STD_LOGIC;
  signal \^out_reg[7]_i_12\ : STD_LOGIC;
  signal \^out_reg[7]_i_12_0\ : STD_LOGIC;
  signal \NLW__inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__1/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i__carry__0_i_11\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \i__carry__0_i_8\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \i__carry__0_i_9\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \i__carry_i_10\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \i__carry_i_11\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \i__carry_i_12\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \i__carry_i_16\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \i__carry_i_20\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \i__carry_i_27\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \i__carry_i_28\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \i__carry_i_29\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \out[23]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \out[24]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \out[25]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \out[26]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \out[27]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \out[28]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \out[29]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \out[30]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \out[31]_i_5\ : label is "soft_lutpair69";
begin
  \i__carry_i_11_0\ <= \^i__carry_i_11_0\;
  \i__carry_i_12_0\ <= \^i__carry_i_12_0\;
  \i__carry_i_13_0\ <= \^i__carry_i_13_0\;
  \i__carry_i_16_0\ <= \^i__carry_i_16_0\;
  \out_reg[18]_i_3\ <= \^out_reg[18]_i_3\;
  \out_reg[18]_i_3_0\ <= \^out_reg[18]_i_3_0\;
  \out_reg[18]_i_3_1\ <= \^out_reg[18]_i_3_1\;
  \out_reg[21]_i_3\ <= \^out_reg[21]_i_3\;
  \out_reg[21]_i_3_0\ <= \^out_reg[21]_i_3_0\;
  \out_reg[21]_i_3_1\ <= \^out_reg[21]_i_3_1\;
  \out_reg[2]_i_2\ <= \^out_reg[2]_i_2\;
  \out_reg[31]_i_4\ <= \^out_reg[31]_i_4\;
  \out_reg[31]_i_4_0\ <= \^out_reg[31]_i_4_0\;
  \out_reg[31]_i_4_1\ <= \^out_reg[31]_i_4_1\;
  \out_reg[6]_i_3\ <= \^out_reg[6]_i_3\;
  \out_reg[6]_i_3_0\ <= \^out_reg[6]_i_3_0\;
  \out_reg[6]_i_4\ <= \^out_reg[6]_i_4\;
  \out_reg[7]_i_12\ <= \^out_reg[7]_i_12\;
  \out_reg[7]_i_12_0\ <= \^out_reg[7]_i_12_0\;
\_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1/i__carry_n_0\,
      CO(2) => \_inferred__1/i__carry_n_1\,
      CO(1) => \_inferred__1/i__carry_n_2\,
      CO(0) => \_inferred__1/i__carry_n_3\,
      CYINIT => Q(0),
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \^i__carry_i_13_0\,
      DI(1) => \^i__carry_i_16_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => EXP_normal_result0(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1/i__carry_n_0\,
      CO(3) => \NLW__inferred__1/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__1/i__carry__0_n_1\,
      CO(1) => \_inferred__1/i__carry__0_n_2\,
      CO(0) => \_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1_n_0\,
      DI(1) => \i__carry__0_i_2_n_0\,
      DI(0) => \i__carry__0_i_3_n_0\,
      O(3 downto 0) => EXP_normal_result0(7 downto 4),
      S(3) => \i__carry__0_i_4_n_0\,
      S(2) => \i__carry__0_i_5_n_0\,
      S(1) => \i__carry__0_i_6_n_0\,
      S(0) => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out_reg[0]\(0),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data0(5),
      I1 => data0(6),
      I2 => data0(3),
      I3 => data0(4),
      O => \^out_reg[6]_i_3\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data0(20),
      I1 => data0(19),
      I2 => data0(22),
      I3 => data0(21),
      I4 => \^out_reg[18]_i_3\,
      O => \^i__carry_i_11_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out_reg[0]\(0),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF5D"
    )
        port map (
      I0 => \^out_reg[31]_i_4\,
      I1 => \^out_reg[2]_i_2\,
      I2 => \^out_reg[6]_i_3\,
      I3 => \^i__carry_i_11_0\,
      I4 => \out_reg[0]\(0),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(6),
      I1 => \out_reg[0]\(0),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \out_reg[0]\(0),
      I1 => Q(4),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \out_reg[0]\(0),
      I1 => Q(5),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A20000FF5D"
    )
        port map (
      I0 => \^out_reg[31]_i_4\,
      I1 => \^out_reg[2]_i_2\,
      I2 => \^out_reg[6]_i_3\,
      I3 => \^i__carry_i_11_0\,
      I4 => \out_reg[0]\(0),
      I5 => Q(4),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^out_reg[7]_i_12_0\,
      I1 => data0(14),
      I2 => data0(13),
      I3 => data0(12),
      I4 => data0(11),
      O => \^out_reg[31]_i_4\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data0(1),
      I1 => data0(2),
      I2 => O(0),
      I3 => data0(0),
      O => \^out_reg[2]_i_2\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^i__carry_i_12_0\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data0(21),
      I1 => data0(22),
      I2 => data0(19),
      I3 => data0(20),
      O => \^out_reg[21]_i_3\
    );
\i__carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data0(17),
      I1 => data0(18),
      I2 => data0(15),
      I3 => data0(16),
      O => \^out_reg[18]_i_3\
    );
\i__carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data0(11),
      I1 => data0(12),
      I2 => data0(13),
      I3 => data0(14),
      O => \^out_reg[31]_i_4_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777777777777775"
    )
        port map (
      I0 => \^out_reg[7]_i_12_0\,
      I1 => \^out_reg[6]_i_3\,
      I2 => data0(1),
      I3 => data0(2),
      I4 => O(0),
      I5 => data0(0),
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FF55FF55FF04"
    )
        port map (
      I0 => \^out_reg[21]_i_3_0\,
      I1 => \i__carry_i_21_n_0\,
      I2 => \i__carry_i_22_n_0\,
      I3 => \i__carry_i_23_n_0\,
      I4 => data0(17),
      I5 => data0(18),
      O => \^out_reg[18]_i_3_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF2"
    )
        port map (
      I0 => \i__carry_i_24_n_0\,
      I1 => \i__carry_i_25_n_0\,
      I2 => data0(12),
      I3 => data0(11),
      I4 => data0(13),
      I5 => data0(14),
      O => \^out_reg[31]_i_4_1\
    );
\i__carry_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data0(20),
      I1 => data0(19),
      O => \^out_reg[21]_i_3_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFF0FFFFFFF4"
    )
        port map (
      I0 => data0(8),
      I1 => data0(7),
      I2 => data0(11),
      I3 => \i__carry_i_26_n_0\,
      I4 => data0(9),
      I5 => data0(10),
      O => \^out_reg[7]_i_12\
    );
\i__carry_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEEEEEEEFEEEF"
    )
        port map (
      I0 => \i__carry_i_27_n_0\,
      I1 => data0(6),
      I2 => \i__carry_i_28_n_0\,
      I3 => data0(5),
      I4 => data0(4),
      I5 => data0(3),
      O => \^out_reg[6]_i_3_0\
    );
\i__carry_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFF0FFFFFFF4"
    )
        port map (
      I0 => data0(13),
      I1 => data0(12),
      I2 => data0(16),
      I3 => \i__carry_i_29_n_0\,
      I4 => data0(14),
      I5 => data0(15),
      O => \^out_reg[18]_i_3_1\
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45444545"
    )
        port map (
      I0 => \out_reg[0]\(0),
      I1 => \^out_reg[21]_i_3\,
      I2 => \^out_reg[18]_i_3\,
      I3 => \^out_reg[31]_i_4_0\,
      I4 => \i__carry_i_13_n_0\,
      O => \^i__carry_i_13_0\
    );
\i__carry_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00F4"
    )
        port map (
      I0 => data0(18),
      I1 => data0(17),
      I2 => data0(19),
      I3 => data0(20),
      I4 => data0(21),
      O => \^out_reg[21]_i_3_1\
    );
\i__carry_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data0(7),
      I1 => data0(8),
      I2 => data0(3),
      I3 => data0(4),
      O => \i__carry_i_21_n_0\
    );
\i__carry_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => O(0),
      I1 => data0(0),
      I2 => data0(12),
      I3 => data0(11),
      I4 => data0(16),
      I5 => data0(15),
      O => \i__carry_i_22_n_0\
    );
\i__carry_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data0(22),
      I1 => data0(21),
      O => \i__carry_i_23_n_0\
    );
\i__carry_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF1"
    )
        port map (
      I0 => data0(1),
      I1 => data0(2),
      I2 => data0(4),
      I3 => data0(3),
      I4 => data0(8),
      I5 => data0(7),
      O => \i__carry_i_24_n_0\
    );
\i__carry_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEFFFE"
    )
        port map (
      I0 => data0(9),
      I1 => data0(10),
      I2 => data0(6),
      I3 => data0(5),
      I4 => data0(8),
      I5 => data0(7),
      O => \i__carry_i_25_n_0\
    );
\i__carry_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data0(15),
      I1 => data0(13),
      O => \i__carry_i_26_n_0\
    );
\i__carry_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data0(10),
      I1 => data0(8),
      O => \i__carry_i_27_n_0\
    );
\i__carry_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11110010"
    )
        port map (
      I0 => data0(2),
      I1 => data0(4),
      I2 => O(0),
      I3 => data0(0),
      I4 => data0(1),
      O => \i__carry_i_28_n_0\
    );
\i__carry_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data0(20),
      I1 => data0(18),
      O => \i__carry_i_29_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444445"
    )
        port map (
      I0 => \out_reg[0]\(0),
      I1 => \^out_reg[18]_i_3_0\,
      I2 => \^out_reg[31]_i_4_1\,
      I3 => data0(16),
      I4 => data0(15),
      I5 => \^out_reg[21]_i_3_0\,
      O => \^i__carry_i_16_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00F4"
    )
        port map (
      I0 => \^out_reg[7]_i_12\,
      I1 => \^out_reg[6]_i_3_0\,
      I2 => \^out_reg[18]_i_3_1\,
      I3 => \^out_reg[21]_i_3_1\,
      I4 => data0(22),
      I5 => \out_reg[0]\(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^i__carry_i_12_0\,
      I1 => Q(3),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i__carry_i_13_0\,
      I1 => Q(2),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i__carry_i_16_0\,
      I1 => Q(1),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \out_reg[0]\(0),
      I1 => \^out_reg[6]_i_4\,
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABABAAAB"
    )
        port map (
      I0 => \out_reg[0]\(0),
      I1 => \^out_reg[21]_i_3\,
      I2 => \^out_reg[18]_i_3\,
      I3 => \^out_reg[7]_i_12_0\,
      I4 => \^out_reg[31]_i_4_0\,
      O => \^i__carry_i_12_0\
    );
\out[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EXP_normal_result0(0),
      I1 => \out_reg[23]\,
      O => D(0)
    );
\out[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EXP_normal_result0(1),
      I1 => \out_reg[23]\,
      O => D(1)
    );
\out[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EXP_normal_result0(2),
      I1 => \out_reg[23]\,
      O => D(2)
    );
\out[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EXP_normal_result0(3),
      I1 => \out_reg[23]\,
      O => D(3)
    );
\out[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EXP_normal_result0(4),
      I1 => \out_reg[23]\,
      O => D(4)
    );
\out[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EXP_normal_result0(5),
      I1 => \out_reg[23]\,
      O => D(5)
    );
\out[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EXP_normal_result0(6),
      I1 => \out_reg[23]\,
      O => D(6)
    );
\out[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => EXP_normal_result0(7),
      I1 => \out_reg[23]\,
      O => D(7)
    );
\out[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data0(7),
      I1 => data0(8),
      I2 => data0(9),
      I3 => data0(10),
      O => \^out_reg[7]_i_12_0\
    );
\out[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00F4"
    )
        port map (
      I0 => \^out_reg[7]_i_12\,
      I1 => \^out_reg[6]_i_3_0\,
      I2 => \^out_reg[18]_i_3_1\,
      I3 => \^out_reg[21]_i_3_1\,
      I4 => data0(22),
      I5 => \out_reg[0]\(0),
      O => \^out_reg[6]_i_4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_SSDisplays_module is
  port (
    digit_sel_reg_0 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_SSDisplays_module : entity is "SSDisplays_module";
end Cortex_A9_fpadd_ip_0_0_SSDisplays_module;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_SSDisplays_module is
  signal SSD_clock_inst_n_0 : STD_LOGIC;
  signal \^digit_sel_reg_0\ : STD_LOGIC;
begin
  digit_sel_reg_0 <= \^digit_sel_reg_0\;
SSD_clock_inst: entity work.Cortex_A9_fpadd_ip_0_0_SSD_clock_module_1
     port map (
      \counter_reg[4]_0\ => SSD_clock_inst_n_0,
      digit_sel_reg => \^digit_sel_reg_0\,
      rst => rst,
      s00_axi_aclk => s00_axi_aclk
    );
digit_sel_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => SSD_clock_inst_n_0,
      Q => \^digit_sel_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_SSDisplays_module_0 is
  port (
    digit_sel_reg_0 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_SSDisplays_module_0 : entity is "SSDisplays_module";
end Cortex_A9_fpadd_ip_0_0_SSDisplays_module_0;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_SSDisplays_module_0 is
  signal SSD_clock_inst_n_0 : STD_LOGIC;
  signal \^digit_sel_reg_0\ : STD_LOGIC;
begin
  digit_sel_reg_0 <= \^digit_sel_reg_0\;
SSD_clock_inst: entity work.Cortex_A9_fpadd_ip_0_0_SSD_clock_module
     port map (
      \counter_reg[4]_0\ => SSD_clock_inst_n_0,
      digit_sel_reg => \^digit_sel_reg_0\,
      rst => rst,
      s00_axi_aclk => s00_axi_aclk
    );
digit_sel_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => SSD_clock_inst_n_0,
      Q => \^digit_sel_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_fpadd_pipelined is
  port (
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    e0 : out STD_LOGIC;
    c0 : out STD_LOGIC;
    d0 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    numA : in STD_LOGIC_VECTOR ( 19 downto 0 );
    numB : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \A_reg[17]_0\ : in STD_LOGIC;
    \B_reg[22]_0\ : in STD_LOGIC;
    \A_reg[20]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \A_reg[14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    a0_0 : in STD_LOGIC;
    a1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_fpadd_pipelined : entity is "fpadd_pipelined";
end Cortex_A9_fpadd_ip_0_0_fpadd_pipelined;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_fpadd_pipelined is
  signal \B[31]_i_1_n_0\ : STD_LOGIC;
  signal EXP_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal EXP_B : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal EXP_normal_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal EXP_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Mantissa_normal_result : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal Mantissa_shift_A : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal Mantissa_shift_A1_carry_i_1_n_0 : STD_LOGIC;
  signal Mantissa_shift_A1_carry_i_2_n_0 : STD_LOGIC;
  signal Mantissa_shift_A1_carry_i_3_n_0 : STD_LOGIC;
  signal Mantissa_shift_A1_carry_i_4_n_0 : STD_LOGIC;
  signal Mantissa_shift_A1_carry_i_5_n_0 : STD_LOGIC;
  signal Mantissa_shift_A1_carry_i_6_n_0 : STD_LOGIC;
  signal Mantissa_shift_A1_carry_i_7_n_0 : STD_LOGIC;
  signal Mantissa_shift_A1_carry_i_8_n_0 : STD_LOGIC;
  signal Mantissa_shift_B : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \Mantissa_shift_B1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \Mantissa_shift_B1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \Mantissa_shift_B1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \Mantissa_shift_B1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SSDisplays_inst0/digit_value__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \SSDisplays_inst1/digit_value__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_A : STD_LOGIC;
  signal S_B : STD_LOGIC;
  signal \S_result1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \S_result1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \S_result1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \S_result1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \S_result1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \S_result1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \S_result1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \S_result1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal compare_shift_inst_n_0 : STD_LOGIC;
  signal compare_shift_inst_n_1 : STD_LOGIC;
  signal compare_shift_inst_n_25 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal fp_out : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal mantissas_addition_inst_n_24 : STD_LOGIC;
  signal mantissas_addition_inst_n_25 : STD_LOGIC;
  signal \out[16]_i_2_n_0\ : STD_LOGIC;
  signal \out[16]_i_3_n_0\ : STD_LOGIC;
  signal \out[17]_i_2_n_0\ : STD_LOGIC;
  signal \out[17]_i_3_n_0\ : STD_LOGIC;
  signal \out[18]_i_2_n_0\ : STD_LOGIC;
  signal \out[18]_i_4_n_0\ : STD_LOGIC;
  signal \out[19]_i_2_n_0\ : STD_LOGIC;
  signal \out[19]_i_3_n_0\ : STD_LOGIC;
  signal \out[1]_i_2_n_0\ : STD_LOGIC;
  signal \out[1]_i_3_n_0\ : STD_LOGIC;
  signal \out[20]_i_2_n_0\ : STD_LOGIC;
  signal \out[20]_i_3_n_0\ : STD_LOGIC;
  signal \out[21]_i_2_n_0\ : STD_LOGIC;
  signal \out[21]_i_4_n_0\ : STD_LOGIC;
  signal \out[21]_i_5_n_0\ : STD_LOGIC;
  signal \out[22]_i_10_n_0\ : STD_LOGIC;
  signal \out[22]_i_11_n_0\ : STD_LOGIC;
  signal \out[22]_i_12_n_0\ : STD_LOGIC;
  signal \out[22]_i_13_n_0\ : STD_LOGIC;
  signal \out[22]_i_14_n_0\ : STD_LOGIC;
  signal \out[22]_i_2_n_0\ : STD_LOGIC;
  signal \out[22]_i_3_n_0\ : STD_LOGIC;
  signal \out[22]_i_4_n_0\ : STD_LOGIC;
  signal \out[22]_i_5_n_0\ : STD_LOGIC;
  signal \out[22]_i_6_n_0\ : STD_LOGIC;
  signal \out[22]_i_7_n_0\ : STD_LOGIC;
  signal \out[22]_i_8_n_0\ : STD_LOGIC;
  signal \out[22]_i_9_n_0\ : STD_LOGIC;
  signal \out[2]_i_3_n_0\ : STD_LOGIC;
  signal \out[2]_i_4_n_0\ : STD_LOGIC;
  signal \out[31]_i_15_n_0\ : STD_LOGIC;
  signal \out[31]_i_16_n_0\ : STD_LOGIC;
  signal \out[31]_i_2_n_0\ : STD_LOGIC;
  signal \out[31]_i_3_n_0\ : STD_LOGIC;
  signal \out[31]_i_6_n_0\ : STD_LOGIC;
  signal \out[3]_i_2_n_0\ : STD_LOGIC;
  signal \out[4]_i_2_n_0\ : STD_LOGIC;
  signal \out[5]_i_2_n_0\ : STD_LOGIC;
  signal \out[6]_i_13_n_0\ : STD_LOGIC;
  signal \out[6]_i_2_n_0\ : STD_LOGIC;
  signal \out[7]_i_10_n_0\ : STD_LOGIC;
  signal \out[7]_i_11_n_0\ : STD_LOGIC;
  signal \out[7]_i_13_n_0\ : STD_LOGIC;
  signal \out[7]_i_14_n_0\ : STD_LOGIC;
  signal \out[7]_i_2_n_0\ : STD_LOGIC;
  signal \out[7]_i_3_n_0\ : STD_LOGIC;
  signal \out[7]_i_4_n_0\ : STD_LOGIC;
  signal \out[7]_i_5_n_0\ : STD_LOGIC;
  signal \out[7]_i_7_n_0\ : STD_LOGIC;
  signal \out[7]_i_8_n_0\ : STD_LOGIC;
  signal \out[7]_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 22 downto 2 );
  signal pipe_EXP_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pipe_Mantissa_shift_A : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \pipe_Mantissa_shift_A[22]_i_2_n_0\ : STD_LOGIC;
  signal pipe_Mantissa_shift_B : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \pipe_Mantissa_shift_B[22]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[23]_i_2_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[23]_i_4_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[23]_i_5_n_0\ : STD_LOGIC;
  signal \pipe_Mantissa_shift_B[23]_i_7_n_0\ : STD_LOGIC;
  signal pipe_S_A : STD_LOGIC;
  signal pipe_S_B : STD_LOGIC;
  signal post_normalization_inst_n_0 : STD_LOGIC;
  signal post_normalization_inst_n_1 : STD_LOGIC;
  signal post_normalization_inst_n_10 : STD_LOGIC;
  signal post_normalization_inst_n_11 : STD_LOGIC;
  signal post_normalization_inst_n_12 : STD_LOGIC;
  signal post_normalization_inst_n_13 : STD_LOGIC;
  signal post_normalization_inst_n_14 : STD_LOGIC;
  signal post_normalization_inst_n_15 : STD_LOGIC;
  signal post_normalization_inst_n_16 : STD_LOGIC;
  signal post_normalization_inst_n_17 : STD_LOGIC;
  signal post_normalization_inst_n_2 : STD_LOGIC;
  signal post_normalization_inst_n_26 : STD_LOGIC;
  signal post_normalization_inst_n_3 : STD_LOGIC;
  signal post_normalization_inst_n_4 : STD_LOGIC;
  signal post_normalization_inst_n_5 : STD_LOGIC;
  signal post_normalization_inst_n_6 : STD_LOGIC;
  signal post_normalization_inst_n_7 : STD_LOGIC;
  signal post_normalization_inst_n_8 : STD_LOGIC;
  signal post_normalization_inst_n_9 : STD_LOGIC;
  signal result : STD_LOGIC_VECTOR ( 31 to 31 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of a0_INST_0_i_1 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of a0_INST_0_i_2 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of a0_INST_0_i_3 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of a1_INST_0_i_1 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of a1_INST_0_i_2 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of a1_INST_0_i_3 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of c0_INST_0_i_1 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of c1_INST_0_i_1 : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \out[1]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \out[1]_i_3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \out[22]_i_6\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \out[2]_i_3\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \out[31]_i_3\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \out[3]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \out[4]_i_2\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \out[7]_i_10\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \out[7]_i_3\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \out[7]_i_8\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \pipe_EXP_result[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \pipe_EXP_result[2]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \pipe_EXP_result[3]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \pipe_EXP_result[4]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \pipe_EXP_result[5]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \pipe_EXP_result[7]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_A[22]_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[22]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[23]_i_4\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \pipe_Mantissa_shift_B[23]_i_7\ : label is "soft_lutpair86";
begin
\A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(0),
      Q => p_0_in(0),
      R => '0'
    );
\A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(4),
      Q => p_0_in(11),
      R => '0'
    );
\A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(5),
      Q => p_0_in(12),
      R => '0'
    );
\A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(6),
      Q => p_0_in(13),
      R => '0'
    );
\A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => \A_reg[14]_0\(0),
      Q => p_0_in(14),
      R => '0'
    );
\A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(7),
      Q => p_0_in(15),
      R => '0'
    );
\A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(8),
      Q => p_0_in(16),
      R => '0'
    );
\A_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => \A_reg[17]_0\,
      Q => p_0_in(17),
      S => \A_reg[20]_0\
    );
\A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(9),
      Q => p_0_in(18),
      R => '0'
    );
\A_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(7),
      Q => p_0_in(19),
      S => \A_reg[20]_0\
    );
\A_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(13),
      Q => p_0_in(20),
      S => \A_reg[20]_0\
    );
\A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(10),
      Q => p_0_in(21),
      R => '0'
    );
\A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(11),
      Q => p_0_in(22),
      R => '0'
    );
\A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(12),
      Q => EXP_A(0),
      R => '0'
    );
\A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(13),
      Q => EXP_A(1),
      R => '0'
    );
\A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(14),
      Q => EXP_A(2),
      R => '0'
    );
\A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(15),
      Q => EXP_A(3),
      R => '0'
    );
\A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(16),
      Q => EXP_A(4),
      R => '0'
    );
\A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(17),
      Q => EXP_A(5),
      R => '0'
    );
\A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(18),
      Q => EXP_A(7),
      R => '0'
    );
\A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(19),
      Q => S_A,
      R => '0'
    );
\A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(1),
      Q => p_0_in(4),
      R => '0'
    );
\A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(2),
      Q => p_0_in(5),
      R => '0'
    );
\A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numA(3),
      Q => p_0_in(8),
      R => '0'
    );
\B[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \B[31]_i_1_n_0\
    );
\B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(1),
      Q => p_0_in1_in(10),
      R => '0'
    );
\B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(2),
      Q => p_0_in1_in(11),
      R => '0'
    );
\B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(3),
      Q => p_0_in1_in(12),
      R => '0'
    );
\B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(4),
      Q => p_0_in1_in(13),
      R => '0'
    );
\B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(5),
      Q => p_0_in1_in(14),
      R => '0'
    );
\B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(6),
      Q => p_0_in1_in(15),
      R => '0'
    );
\B_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(4),
      Q => p_0_in1_in(16),
      S => \A_reg[20]_0\
    );
\B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => \A_reg[17]_0\,
      Q => p_0_in1_in(17),
      R => '0'
    );
\B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(7),
      Q => p_0_in1_in(19),
      R => '0'
    );
\B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(8),
      Q => p_0_in1_in(21),
      R => '0'
    );
\B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => \B_reg[22]_0\,
      Q => p_0_in1_in(22),
      R => '0'
    );
\B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(9),
      Q => EXP_B(1),
      R => '0'
    );
\B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(10),
      Q => EXP_B(3),
      R => '0'
    );
\B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(11),
      Q => EXP_B(4),
      R => '0'
    );
\B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(12),
      Q => EXP_B(5),
      R => '0'
    );
\B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => D(0),
      Q => p_0_in1_in(2),
      R => '0'
    );
\B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => D(1),
      Q => EXP_B(7),
      R => '0'
    );
\B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(13),
      Q => S_B,
      R => '0'
    );
\B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \B[31]_i_1_n_0\,
      D => numB(0),
      Q => p_0_in1_in(4),
      R => '0'
    );
Mantissa_shift_A1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => EXP_A(7),
      I1 => EXP_B(7),
      I2 => EXP_A(4),
      I3 => EXP_B(4),
      O => Mantissa_shift_A1_carry_i_1_n_0
    );
Mantissa_shift_A1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => EXP_A(4),
      I1 => EXP_B(4),
      I2 => EXP_A(5),
      I3 => EXP_B(5),
      O => Mantissa_shift_A1_carry_i_2_n_0
    );
Mantissa_shift_A1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => EXP_A(3),
      I1 => EXP_B(3),
      I2 => EXP_A(2),
      I3 => EXP_B(4),
      O => Mantissa_shift_A1_carry_i_3_n_0
    );
Mantissa_shift_A1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => EXP_A(1),
      I1 => EXP_B(1),
      I2 => EXP_A(0),
      I3 => EXP_B(4),
      O => Mantissa_shift_A1_carry_i_4_n_0
    );
Mantissa_shift_A1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => EXP_A(4),
      I1 => EXP_B(4),
      I2 => EXP_A(7),
      I3 => EXP_B(7),
      O => Mantissa_shift_A1_carry_i_5_n_0
    );
Mantissa_shift_A1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => EXP_A(5),
      I1 => EXP_B(5),
      I2 => EXP_B(4),
      I3 => EXP_A(4),
      O => Mantissa_shift_A1_carry_i_6_n_0
    );
Mantissa_shift_A1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => EXP_A(2),
      I1 => EXP_B(4),
      I2 => EXP_A(3),
      I3 => EXP_B(3),
      O => Mantissa_shift_A1_carry_i_7_n_0
    );
Mantissa_shift_A1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => EXP_B(1),
      I1 => EXP_A(1),
      I2 => EXP_B(4),
      I3 => EXP_A(0),
      O => Mantissa_shift_A1_carry_i_8_n_0
    );
\Mantissa_shift_B1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => EXP_B(7),
      I1 => EXP_A(7),
      O => \Mantissa_shift_B1_carry__0_i_1_n_0\
    );
\Mantissa_shift_B1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => EXP_B(4),
      I1 => EXP_A(4),
      O => \Mantissa_shift_B1_carry__0_i_2_n_0\
    );
\Mantissa_shift_B1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => EXP_A(5),
      I1 => EXP_B(5),
      O => \Mantissa_shift_B1_carry__0_i_3_n_0\
    );
\Mantissa_shift_B1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => EXP_B(4),
      I1 => EXP_A(4),
      O => \Mantissa_shift_B1_carry__0_i_4_n_0\
    );
\S_result1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pipe_Mantissa_shift_A(23),
      I1 => pipe_Mantissa_shift_B(23),
      I2 => pipe_Mantissa_shift_A(22),
      I3 => pipe_Mantissa_shift_B(22),
      O => \S_result1_carry__1_i_1_n_0\
    );
\S_result1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pipe_Mantissa_shift_A(21),
      I1 => pipe_Mantissa_shift_B(21),
      I2 => pipe_Mantissa_shift_A(20),
      I3 => pipe_Mantissa_shift_B(20),
      O => \S_result1_carry__1_i_2_n_0\
    );
\S_result1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pipe_Mantissa_shift_A(19),
      I1 => pipe_Mantissa_shift_B(19),
      I2 => pipe_Mantissa_shift_A(18),
      I3 => pipe_Mantissa_shift_B(18),
      O => \S_result1_carry__1_i_3_n_0\
    );
\S_result1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pipe_Mantissa_shift_A(17),
      I1 => pipe_Mantissa_shift_B(17),
      I2 => pipe_Mantissa_shift_A(16),
      I3 => pipe_Mantissa_shift_B(16),
      O => \S_result1_carry__1_i_4_n_0\
    );
\S_result1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pipe_Mantissa_shift_B(23),
      I1 => pipe_Mantissa_shift_A(23),
      I2 => pipe_Mantissa_shift_B(22),
      I3 => pipe_Mantissa_shift_A(22),
      O => \S_result1_carry__1_i_5_n_0\
    );
\S_result1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pipe_Mantissa_shift_B(21),
      I1 => pipe_Mantissa_shift_A(21),
      I2 => pipe_Mantissa_shift_B(20),
      I3 => pipe_Mantissa_shift_A(20),
      O => \S_result1_carry__1_i_6_n_0\
    );
\S_result1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pipe_Mantissa_shift_B(19),
      I1 => pipe_Mantissa_shift_A(19),
      I2 => pipe_Mantissa_shift_B(18),
      I3 => pipe_Mantissa_shift_A(18),
      O => \S_result1_carry__1_i_7_n_0\
    );
\S_result1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pipe_Mantissa_shift_B(17),
      I1 => pipe_Mantissa_shift_A(17),
      I2 => pipe_Mantissa_shift_B(16),
      I3 => pipe_Mantissa_shift_A(16),
      O => \S_result1_carry__1_i_8_n_0\
    );
a0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD666D6FFFBBBFB"
    )
        port map (
      I0 => \SSDisplays_inst0/digit_value__3\(3),
      I1 => \SSDisplays_inst0/digit_value__3\(2),
      I2 => fp_out(25),
      I3 => a0_0,
      I4 => fp_out(29),
      I5 => \SSDisplays_inst0/digit_value__3\(0),
      O => a0
    );
a0_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(31),
      I1 => a0_0,
      I2 => fp_out(27),
      O => \SSDisplays_inst0/digit_value__3\(3)
    );
a0_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(30),
      I1 => a0_0,
      I2 => fp_out(26),
      O => \SSDisplays_inst0/digit_value__3\(2)
    );
a0_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(28),
      I1 => a0_0,
      I2 => fp_out(24),
      O => \SSDisplays_inst0/digit_value__3\(0)
    );
a1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD666D6FFFBBBFB"
    )
        port map (
      I0 => \SSDisplays_inst1/digit_value__3\(3),
      I1 => \SSDisplays_inst1/digit_value__3\(2),
      I2 => fp_out(17),
      I3 => a1_0,
      I4 => fp_out(21),
      I5 => \SSDisplays_inst1/digit_value__3\(0),
      O => a1
    );
a1_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(23),
      I1 => a1_0,
      I2 => fp_out(19),
      O => \SSDisplays_inst1/digit_value__3\(3)
    );
a1_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(22),
      I1 => a1_0,
      I2 => fp_out(18),
      O => \SSDisplays_inst1/digit_value__3\(2)
    );
a1_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(20),
      I1 => a1_0,
      I2 => fp_out(16),
      O => \SSDisplays_inst1/digit_value__3\(0)
    );
b0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"494449997F777FFF"
    )
        port map (
      I0 => \SSDisplays_inst0/digit_value__3\(3),
      I1 => \SSDisplays_inst0/digit_value__3\(0),
      I2 => fp_out(29),
      I3 => a0_0,
      I4 => fp_out(25),
      I5 => \SSDisplays_inst0/digit_value__3\(2),
      O => b0
    );
b1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"494449997F777FFF"
    )
        port map (
      I0 => \SSDisplays_inst1/digit_value__3\(3),
      I1 => \SSDisplays_inst1/digit_value__3\(0),
      I2 => fp_out(21),
      I3 => a1_0,
      I4 => fp_out(17),
      I5 => \SSDisplays_inst1/digit_value__3\(2),
      O => b1
    );
c0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F677F7F7F676767"
    )
        port map (
      I0 => \SSDisplays_inst0/digit_value__3\(3),
      I1 => \SSDisplays_inst0/digit_value__3\(2),
      I2 => \SSDisplays_inst0/digit_value__3\(1),
      I3 => fp_out(28),
      I4 => a0_0,
      I5 => fp_out(24),
      O => c0
    );
c0_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(29),
      I1 => a0_0,
      I2 => fp_out(25),
      O => \SSDisplays_inst0/digit_value__3\(1)
    );
c1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F677F7F7F676767"
    )
        port map (
      I0 => \SSDisplays_inst1/digit_value__3\(3),
      I1 => \SSDisplays_inst1/digit_value__3\(2),
      I2 => \SSDisplays_inst1/digit_value__3\(1),
      I3 => fp_out(20),
      I4 => a1_0,
      I5 => fp_out(16),
      O => c1
    );
c1_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(21),
      I1 => a1_0,
      I2 => fp_out(17),
      O => \SSDisplays_inst1/digit_value__3\(1)
    );
compare_shift_inst: entity work.Cortex_A9_fpadd_ip_0_0_compare_shift_module
     port map (
      \B_reg[24]\(23) => compare_shift_inst_n_25,
      \B_reg[24]\(22 downto 0) => Mantissa_shift_A(22 downto 0),
      CO(0) => compare_shift_inst_n_0,
      D(23) => compare_shift_inst_n_1,
      D(22 downto 0) => Mantissa_shift_B(22 downto 0),
      DI(3) => Mantissa_shift_A1_carry_i_1_n_0,
      DI(2) => Mantissa_shift_A1_carry_i_2_n_0,
      DI(1) => Mantissa_shift_A1_carry_i_3_n_0,
      DI(0) => Mantissa_shift_A1_carry_i_4_n_0,
      Q(15 downto 10) => EXP_A(5 downto 0),
      Q(9 downto 8) => p_0_in(22 downto 21),
      Q(7 downto 3) => p_0_in(15 downto 11),
      Q(2 downto 1) => p_0_in(5 downto 4),
      Q(0) => p_0_in(0),
      S(3) => Mantissa_shift_A1_carry_i_5_n_0,
      S(2) => Mantissa_shift_A1_carry_i_6_n_0,
      S(1) => Mantissa_shift_A1_carry_i_7_n_0,
      S(0) => Mantissa_shift_A1_carry_i_8_n_0,
      p_0_in(5 downto 1) => p_0_in(20 downto 16),
      p_0_in(0) => p_0_in(8),
      p_0_in1_in(4 downto 3) => p_0_in1_in(22 downto 21),
      p_0_in1_in(2 downto 1) => p_0_in1_in(17 downto 16),
      p_0_in1_in(0) => p_0_in1_in(4),
      \pipe_Mantissa_shift_A_reg[21]\(11 downto 9) => EXP_B(5 downto 3),
      \pipe_Mantissa_shift_A_reg[21]\(8) => EXP_B(1),
      \pipe_Mantissa_shift_A_reg[21]\(7) => p_0_in1_in(19),
      \pipe_Mantissa_shift_A_reg[21]\(6 downto 1) => p_0_in1_in(15 downto 10),
      \pipe_Mantissa_shift_A_reg[21]\(0) => p_0_in1_in(2),
      \pipe_Mantissa_shift_A_reg[21]_0\(3) => \i__carry__0_i_1__0_n_0\,
      \pipe_Mantissa_shift_A_reg[21]_0\(2) => \i__carry__0_i_2__0_n_0\,
      \pipe_Mantissa_shift_A_reg[21]_0\(1) => \i__carry__0_i_3__0_n_0\,
      \pipe_Mantissa_shift_A_reg[21]_0\(0) => \i__carry__0_i_4__0_n_0\,
      \pipe_Mantissa_shift_A_reg[22]\ => \pipe_Mantissa_shift_A[22]_i_2_n_0\,
      \pipe_Mantissa_shift_B_reg[21]\(3) => \Mantissa_shift_B1_carry__0_i_1_n_0\,
      \pipe_Mantissa_shift_B_reg[21]\(2) => \Mantissa_shift_B1_carry__0_i_2_n_0\,
      \pipe_Mantissa_shift_B_reg[21]\(1) => \Mantissa_shift_B1_carry__0_i_3_n_0\,
      \pipe_Mantissa_shift_B_reg[21]\(0) => \Mantissa_shift_B1_carry__0_i_4_n_0\,
      \pipe_Mantissa_shift_B_reg[22]\ => \pipe_Mantissa_shift_B[22]_i_2_n_0\,
      \pipe_Mantissa_shift_B_reg[23]\ => \pipe_Mantissa_shift_B[23]_i_2_n_0\
    );
d0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333EEE3EDDDBBBDB"
    )
        port map (
      I0 => \SSDisplays_inst0/digit_value__3\(3),
      I1 => \SSDisplays_inst0/digit_value__3\(2),
      I2 => fp_out(25),
      I3 => a0_0,
      I4 => fp_out(29),
      I5 => \SSDisplays_inst0/digit_value__3\(0),
      O => d0
    );
d1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333EEE3EDDDBBBDB"
    )
        port map (
      I0 => \SSDisplays_inst1/digit_value__3\(3),
      I1 => \SSDisplays_inst1/digit_value__3\(2),
      I2 => fp_out(17),
      I3 => a1_0,
      I4 => fp_out(21),
      I5 => \SSDisplays_inst1/digit_value__3\(0),
      O => d1
    );
e0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A80EFEAFFFF"
    )
        port map (
      I0 => \SSDisplays_inst0/digit_value__3\(3),
      I1 => fp_out(29),
      I2 => a0_0,
      I3 => fp_out(25),
      I4 => \SSDisplays_inst0/digit_value__3\(2),
      I5 => \SSDisplays_inst0/digit_value__3\(0),
      O => e0
    );
e1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A80EFEAFFFF"
    )
        port map (
      I0 => \SSDisplays_inst1/digit_value__3\(3),
      I1 => fp_out(21),
      I2 => a1_0,
      I3 => fp_out(17),
      I4 => \SSDisplays_inst1/digit_value__3\(2),
      I5 => \SSDisplays_inst1/digit_value__3\(0),
      O => e1
    );
f0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE6FAEAEAE6F6F6F"
    )
        port map (
      I0 => \SSDisplays_inst0/digit_value__3\(3),
      I1 => \SSDisplays_inst0/digit_value__3\(2),
      I2 => \SSDisplays_inst0/digit_value__3\(0),
      I3 => fp_out(29),
      I4 => a0_0,
      I5 => fp_out(25),
      O => f0
    );
f1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE6FAEAEAE6F6F6F"
    )
        port map (
      I0 => \SSDisplays_inst1/digit_value__3\(3),
      I1 => \SSDisplays_inst1/digit_value__3\(2),
      I2 => \SSDisplays_inst1/digit_value__3\(0),
      I3 => fp_out(21),
      I4 => a1_0,
      I5 => fp_out(17),
      O => f1
    );
g0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFFD5DAAAA"
    )
        port map (
      I0 => \SSDisplays_inst0/digit_value__3\(3),
      I1 => fp_out(24),
      I2 => a0_0,
      I3 => fp_out(28),
      I4 => \SSDisplays_inst0/digit_value__3\(2),
      I5 => \SSDisplays_inst0/digit_value__3\(1),
      O => g0
    );
g1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFFD5DAAAA"
    )
        port map (
      I0 => \SSDisplays_inst1/digit_value__3\(3),
      I1 => fp_out(16),
      I2 => a1_0,
      I3 => fp_out(20),
      I4 => \SSDisplays_inst1/digit_value__3\(2),
      I5 => \SSDisplays_inst1/digit_value__3\(1),
      O => g1
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => EXP_B(7),
      I1 => EXP_A(7),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => EXP_B(4),
      I1 => EXP_A(4),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => EXP_B(5),
      I1 => EXP_A(5),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => EXP_B(4),
      I1 => EXP_A(4),
      O => \i__carry__0_i_4__0_n_0\
    );
mantissas_addition_inst: entity work.Cortex_A9_fpadd_ip_0_0_mantissas_addition_module
     port map (
      D(0) => result(31),
      DI(3) => \S_result1_carry__1_i_1_n_0\,
      DI(2) => \S_result1_carry__1_i_2_n_0\,
      DI(1) => \S_result1_carry__1_i_3_n_0\,
      DI(0) => \S_result1_carry__1_i_4_n_0\,
      O(0) => mantissas_addition_inst_n_24,
      Q(23 downto 0) => pipe_Mantissa_shift_B(23 downto 0),
      S(3) => \S_result1_carry__1_i_5_n_0\,
      S(2) => \S_result1_carry__1_i_6_n_0\,
      S(1) => \S_result1_carry__1_i_7_n_0\,
      S(0) => \S_result1_carry__1_i_8_n_0\,
      data0(22 downto 0) => data0(22 downto 0),
      \out_reg[0]\(0) => \out[6]_i_13_n_0\,
      \out_reg[21]_i_3_0\(23 downto 0) => pipe_Mantissa_shift_A(23 downto 0),
      \out_reg[2]\ => \out[2]_i_4_n_0\,
      \out_reg[31]\ => \out[31]_i_2_n_0\,
      pipe_S_A => pipe_S_A,
      pipe_S_A_reg(0) => mantissas_addition_inst_n_25,
      pipe_S_B => pipe_S_B
    );
\out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF202020"
    )
        port map (
      I0 => post_normalization_inst_n_1,
      I1 => \out[1]_i_2_n_0\,
      I2 => \out[7]_i_2_n_0\,
      I3 => mantissas_addition_inst_n_25,
      I4 => data0(0),
      O => Mantissa_normal_result(0)
    );
\out[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BBB8B"
    )
        port map (
      I0 => data0(16),
      I1 => mantissas_addition_inst_n_25,
      I2 => \out[16]_i_2_n_0\,
      I3 => \out[7]_i_2_n_0\,
      I4 => \out[17]_i_2_n_0\,
      O => Mantissa_normal_result(16)
    );
\out[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \out[22]_i_12_n_0\,
      I1 => \out[18]_i_4_n_0\,
      I2 => post_normalization_inst_n_1,
      I3 => \out[20]_i_3_n_0\,
      I4 => post_normalization_inst_n_0,
      I5 => \out[16]_i_3_n_0\,
      O => \out[16]_i_2_n_0\
    );
\out[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCDFFFDCFCDFFFD"
    )
        port map (
      I0 => data0(0),
      I1 => mantissas_addition_inst_n_25,
      I2 => post_normalization_inst_n_6,
      I3 => post_normalization_inst_n_3,
      I4 => data0(8),
      I5 => \out[22]_i_14_n_0\,
      O => \out[16]_i_3_n_0\
    );
\out[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => \out[17]_i_2_n_0\,
      I1 => post_normalization_inst_n_2,
      I2 => \out[7]_i_2_n_0\,
      I3 => \out[18]_i_2_n_0\,
      I4 => mantissas_addition_inst_n_25,
      I5 => data0(17),
      O => Mantissa_normal_result(17)
    );
\out[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0CFC0AFAFCFC0"
    )
        port map (
      I0 => \out[22]_i_7_n_0\,
      I1 => \out[19]_i_3_n_0\,
      I2 => post_normalization_inst_n_1,
      I3 => \out[17]_i_3_n_0\,
      I4 => post_normalization_inst_n_0,
      I5 => \out[21]_i_5_n_0\,
      O => \out[17]_i_2_n_0\
    );
\out[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F7F5F0F5F7F5FF"
    )
        port map (
      I0 => data0(9),
      I1 => \out[22]_i_14_n_0\,
      I2 => mantissas_addition_inst_n_25,
      I3 => post_normalization_inst_n_6,
      I4 => post_normalization_inst_n_3,
      I5 => data0(1),
      O => \out[17]_i_3_n_0\
    );
\out[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD0DDD00000DDD0"
    )
        port map (
      I0 => \out[7]_i_2_n_0\,
      I1 => \out[19]_i_2_n_0\,
      I2 => post_normalization_inst_n_2,
      I3 => \out[18]_i_2_n_0\,
      I4 => mantissas_addition_inst_n_25,
      I5 => data0(18),
      O => Mantissa_normal_result(18)
    );
\out[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CF5050C0CF5F5F"
    )
        port map (
      I0 => \out[20]_i_3_n_0\,
      I1 => \out[22]_i_10_n_0\,
      I2 => post_normalization_inst_n_1,
      I3 => \out[22]_i_12_n_0\,
      I4 => post_normalization_inst_n_0,
      I5 => \out[18]_i_4_n_0\,
      O => \out[18]_i_2_n_0\
    );
\out[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCDFFFDCFCDFFFD"
    )
        port map (
      I0 => data0(2),
      I1 => mantissas_addition_inst_n_25,
      I2 => post_normalization_inst_n_6,
      I3 => post_normalization_inst_n_3,
      I4 => data0(10),
      I5 => \out[22]_i_14_n_0\,
      O => \out[18]_i_4_n_0\
    );
\out[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE0EEE0E0000EE0E"
    )
        port map (
      I0 => \out[19]_i_2_n_0\,
      I1 => post_normalization_inst_n_2,
      I2 => \out[7]_i_2_n_0\,
      I3 => \out[20]_i_2_n_0\,
      I4 => mantissas_addition_inst_n_25,
      I5 => data0(19),
      O => Mantissa_normal_result(19)
    );
\out[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACC0F000FFF"
    )
        port map (
      I0 => \out[21]_i_4_n_0\,
      I1 => \out[21]_i_5_n_0\,
      I2 => \out[22]_i_7_n_0\,
      I3 => post_normalization_inst_n_0,
      I4 => \out[19]_i_3_n_0\,
      I5 => post_normalization_inst_n_1,
      O => \out[19]_i_2_n_0\
    );
\out[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F7F5F0F5F7F5FF"
    )
        port map (
      I0 => data0(11),
      I1 => \out[22]_i_14_n_0\,
      I2 => mantissas_addition_inst_n_25,
      I3 => post_normalization_inst_n_6,
      I4 => post_normalization_inst_n_3,
      I5 => data0(3),
      O => \out[19]_i_3_n_0\
    );
\out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF04C404C404C4"
    )
        port map (
      I0 => \out[1]_i_2_n_0\,
      I1 => post_normalization_inst_n_1,
      I2 => \out[7]_i_2_n_0\,
      I3 => \out[1]_i_3_n_0\,
      I4 => data0(1),
      I5 => mantissas_addition_inst_n_25,
      O => Mantissa_normal_result(1)
    );
\out[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => post_normalization_inst_n_0,
      I1 => mantissas_addition_inst_n_24,
      I2 => \out[7]_i_8_n_0\,
      O => \out[1]_i_2_n_0\
    );
\out[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => post_normalization_inst_n_0,
      I1 => data0(0),
      I2 => \out[7]_i_8_n_0\,
      O => \out[1]_i_3_n_0\
    );
\out[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE0EEE0E0000EE0E"
    )
        port map (
      I0 => \out[20]_i_2_n_0\,
      I1 => post_normalization_inst_n_2,
      I2 => \out[7]_i_2_n_0\,
      I3 => \out[21]_i_2_n_0\,
      I4 => mantissas_addition_inst_n_25,
      I5 => data0(20),
      O => Mantissa_normal_result(20)
    );
\out[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAF303FA0A0303F"
    )
        port map (
      I0 => \out[22]_i_11_n_0\,
      I1 => \out[22]_i_12_n_0\,
      I2 => post_normalization_inst_n_1,
      I3 => \out[20]_i_3_n_0\,
      I4 => post_normalization_inst_n_0,
      I5 => \out[22]_i_10_n_0\,
      O => \out[20]_i_2_n_0\
    );
\out[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCDFFFDCFCDFFFD"
    )
        port map (
      I0 => data0(4),
      I1 => mantissas_addition_inst_n_25,
      I2 => post_normalization_inst_n_6,
      I3 => post_normalization_inst_n_3,
      I4 => data0(12),
      I5 => \out[22]_i_14_n_0\,
      O => \out[20]_i_3_n_0\
    );
\out[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE0EEE0E0000EE0E"
    )
        port map (
      I0 => \out[21]_i_2_n_0\,
      I1 => post_normalization_inst_n_2,
      I2 => \out[7]_i_2_n_0\,
      I3 => \out[22]_i_5_n_0\,
      I4 => mantissas_addition_inst_n_25,
      I5 => data0(21),
      O => Mantissa_normal_result(21)
    );
\out[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC05F5FCFC05050"
    )
        port map (
      I0 => \out[22]_i_7_n_0\,
      I1 => \out[22]_i_8_n_0\,
      I2 => post_normalization_inst_n_1,
      I3 => \out[21]_i_4_n_0\,
      I4 => post_normalization_inst_n_0,
      I5 => \out[21]_i_5_n_0\,
      O => \out[21]_i_2_n_0\
    );
\out[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333B8000000B8"
    )
        port map (
      I0 => data0(9),
      I1 => post_normalization_inst_n_13,
      I2 => data0(17),
      I3 => \out[7]_i_14_n_0\,
      I4 => mantissas_addition_inst_n_25,
      I5 => data0(1),
      O => \out[21]_i_4_n_0\
    );
\out[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3332000230320002"
    )
        port map (
      I0 => data0(5),
      I1 => mantissas_addition_inst_n_25,
      I2 => post_normalization_inst_n_6,
      I3 => post_normalization_inst_n_3,
      I4 => data0(13),
      I5 => \out[22]_i_14_n_0\,
      O => \out[21]_i_5_n_0\
    );
\out[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFE00"
    )
        port map (
      I0 => \out[22]_i_2_n_0\,
      I1 => \out[22]_i_3_n_0\,
      I2 => \out[22]_i_4_n_0\,
      I3 => \out[22]_i_5_n_0\,
      I4 => post_normalization_inst_n_2,
      I5 => \out[22]_i_6_n_0\,
      O => Mantissa_normal_result(22)
    );
\out[22]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303030BB30303088"
    )
        port map (
      I0 => data0(8),
      I1 => post_normalization_inst_n_13,
      I2 => data0(0),
      I3 => mantissas_addition_inst_n_25,
      I4 => \out[7]_i_14_n_0\,
      I5 => data0(16),
      O => \out[22]_i_10_n_0\
    );
\out[22]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333B8000000B8"
    )
        port map (
      I0 => data0(10),
      I1 => post_normalization_inst_n_13,
      I2 => data0(18),
      I3 => \out[7]_i_14_n_0\,
      I4 => mantissas_addition_inst_n_25,
      I5 => data0(2),
      O => \out[22]_i_11_n_0\
    );
\out[22]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCDFFFDCFCDFFFD"
    )
        port map (
      I0 => data0(6),
      I1 => mantissas_addition_inst_n_25,
      I2 => post_normalization_inst_n_6,
      I3 => post_normalization_inst_n_3,
      I4 => data0(14),
      I5 => \out[22]_i_14_n_0\,
      O => \out[22]_i_12_n_0\
    );
\out[22]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000B"
    )
        port map (
      I0 => post_normalization_inst_n_9,
      I1 => post_normalization_inst_n_26,
      I2 => post_normalization_inst_n_8,
      I3 => data0(21),
      I4 => data0(22),
      I5 => post_normalization_inst_n_12,
      O => \out[22]_i_13_n_0\
    );
\out[22]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => data0(0),
      I1 => mantissas_addition_inst_n_24,
      I2 => data0(2),
      I3 => data0(1),
      I4 => post_normalization_inst_n_5,
      O => \out[22]_i_14_n_0\
    );
\out[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5101FFFF"
    )
        port map (
      I0 => post_normalization_inst_n_1,
      I1 => \out[22]_i_7_n_0\,
      I2 => post_normalization_inst_n_0,
      I3 => \out[22]_i_8_n_0\,
      I4 => \out[7]_i_2_n_0\,
      O => \out[22]_i_2_n_0\
    );
\out[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33B800B8"
    )
        port map (
      I0 => data0(13),
      I1 => post_normalization_inst_n_13,
      I2 => data0(21),
      I3 => \out[7]_i_10_n_0\,
      I4 => data0(5),
      O => \out[22]_i_3_n_0\
    );
\out[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033B800B8"
    )
        port map (
      I0 => data0(1),
      I1 => \out[7]_i_10_n_0\,
      I2 => data0(17),
      I3 => post_normalization_inst_n_13,
      I4 => data0(9),
      I5 => post_normalization_inst_n_0,
      O => \out[22]_i_4_n_0\
    );
\out[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0C0C0AFA0CFCF"
    )
        port map (
      I0 => \out[22]_i_9_n_0\,
      I1 => \out[22]_i_10_n_0\,
      I2 => post_normalization_inst_n_1,
      I3 => \out[22]_i_11_n_0\,
      I4 => post_normalization_inst_n_0,
      I5 => \out[22]_i_12_n_0\,
      O => \out[22]_i_5_n_0\
    );
\out[22]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mantissas_addition_inst_n_25,
      I1 => data0(22),
      O => \out[22]_i_6_n_0\
    );
\out[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF1DFFFFFF1D"
    )
        port map (
      I0 => data0(15),
      I1 => \out[7]_i_14_n_0\,
      I2 => mantissas_addition_inst_n_24,
      I3 => mantissas_addition_inst_n_25,
      I4 => \out[22]_i_13_n_0\,
      I5 => data0(7),
      O => \out[22]_i_7_n_0\
    );
\out[22]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333B8000000B8"
    )
        port map (
      I0 => data0(11),
      I1 => post_normalization_inst_n_13,
      I2 => data0(19),
      I3 => \out[7]_i_14_n_0\,
      I4 => mantissas_addition_inst_n_25,
      I5 => data0(3),
      O => \out[22]_i_8_n_0\
    );
\out[22]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0C0F0C00"
    )
        port map (
      I0 => data0(12),
      I1 => data0(4),
      I2 => mantissas_addition_inst_n_25,
      I3 => \out[7]_i_14_n_0\,
      I4 => data0(20),
      I5 => \out[22]_i_13_n_0\,
      O => \out[22]_i_9_n_0\
    );
\out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F444FFFFF444"
    )
        port map (
      I0 => \out[3]_i_2_n_0\,
      I1 => \out[7]_i_2_n_0\,
      I2 => mantissas_addition_inst_n_25,
      I3 => data0(2),
      I4 => \out[2]_i_3_n_0\,
      I5 => post_normalization_inst_n_2,
      O => Mantissa_normal_result(2)
    );
\out[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => post_normalization_inst_n_1,
      I1 => \out[7]_i_8_n_0\,
      I2 => data0(0),
      I3 => post_normalization_inst_n_0,
      O => \out[2]_i_3_n_0\
    );
\out[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pipe_S_A,
      I1 => pipe_S_B,
      O => \out[2]_i_4_n_0\
    );
\out[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => data0(13),
      I1 => data0(15),
      I2 => data0(6),
      I3 => data0(5),
      I4 => data0(20),
      I5 => data0(19),
      O => \out[31]_i_15_n_0\
    );
\out[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data0(1),
      I1 => data0(0),
      I2 => data0(2),
      I3 => data0(4),
      O => \out[31]_i_16_n_0\
    );
\out[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \out[31]_i_3_n_0\,
      I1 => data0(12),
      I2 => mantissas_addition_inst_n_24,
      I3 => data0(3),
      I4 => post_normalization_inst_n_26,
      I5 => \out[31]_i_6_n_0\,
      O => \out[31]_i_2_n_0\
    );
\out[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data0(21),
      I1 => data0(22),
      I2 => data0(17),
      I3 => data0(18),
      O => \out[31]_i_3_n_0\
    );
\out[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \out[31]_i_15_n_0\,
      I1 => \out[31]_i_16_n_0\,
      I2 => data0(11),
      I3 => data0(14),
      I4 => data0(16),
      I5 => mantissas_addition_inst_n_25,
      O => \out[31]_i_6_n_0\
    );
\out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF11F111F111F1"
    )
        port map (
      I0 => post_normalization_inst_n_2,
      I1 => \out[3]_i_2_n_0\,
      I2 => \out[7]_i_2_n_0\,
      I3 => \out[4]_i_2_n_0\,
      I4 => data0(3),
      I5 => mantissas_addition_inst_n_25,
      O => Mantissa_normal_result(3)
    );
\out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4F7F"
    )
        port map (
      I0 => data0(1),
      I1 => post_normalization_inst_n_1,
      I2 => post_normalization_inst_n_0,
      I3 => mantissas_addition_inst_n_24,
      I4 => \out[7]_i_8_n_0\,
      O => \out[3]_i_2_n_0\
    );
\out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444F444F444FFFF"
    )
        port map (
      I0 => \out[5]_i_2_n_0\,
      I1 => \out[7]_i_2_n_0\,
      I2 => data0(4),
      I3 => mantissas_addition_inst_n_25,
      I4 => post_normalization_inst_n_2,
      I5 => \out[4]_i_2_n_0\,
      O => Mantissa_normal_result(4)
    );
\out[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4F7F"
    )
        port map (
      I0 => data0(2),
      I1 => post_normalization_inst_n_1,
      I2 => post_normalization_inst_n_0,
      I3 => data0(0),
      I4 => \out[7]_i_8_n_0\,
      O => \out[4]_i_2_n_0\
    );
\out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5C0D5FF"
    )
        port map (
      I0 => \out[6]_i_2_n_0\,
      I1 => mantissas_addition_inst_n_25,
      I2 => data0(5),
      I3 => \out[7]_i_2_n_0\,
      I4 => \out[5]_i_2_n_0\,
      O => Mantissa_normal_result(5)
    );
\out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF503F5F3F"
    )
        port map (
      I0 => data0(3),
      I1 => mantissas_addition_inst_n_24,
      I2 => post_normalization_inst_n_1,
      I3 => post_normalization_inst_n_0,
      I4 => data0(1),
      I5 => \out[7]_i_8_n_0\,
      O => \out[5]_i_2_n_0\
    );
\out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1B1B1B"
    )
        port map (
      I0 => \out[7]_i_2_n_0\,
      I1 => \out[6]_i_2_n_0\,
      I2 => \out[7]_i_5_n_0\,
      I3 => data0(6),
      I4 => mantissas_addition_inst_n_25,
      O => Mantissa_normal_result(6)
    );
\out[6]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pipe_S_A,
      I1 => pipe_S_B,
      O => \out[6]_i_13_n_0\
    );
\out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF503FFFFF5F3F"
    )
        port map (
      I0 => data0(4),
      I1 => data0(0),
      I2 => post_normalization_inst_n_1,
      I3 => post_normalization_inst_n_0,
      I4 => \out[7]_i_8_n_0\,
      I5 => data0(2),
      O => \out[6]_i_2_n_0\
    );
\out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005D5D005D"
    )
        port map (
      I0 => \out[7]_i_2_n_0\,
      I1 => \out[7]_i_3_n_0\,
      I2 => \out[7]_i_4_n_0\,
      I3 => \out[7]_i_5_n_0\,
      I4 => post_normalization_inst_n_2,
      I5 => \out[7]_i_7_n_0\,
      O => Mantissa_normal_result(7)
    );
\out[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBAAAA"
    )
        port map (
      I0 => mantissas_addition_inst_n_25,
      I1 => post_normalization_inst_n_6,
      I2 => post_normalization_inst_n_5,
      I3 => post_normalization_inst_n_4,
      I4 => post_normalization_inst_n_3,
      O => \out[7]_i_10_n_0\
    );
\out[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFCDFFFFFFFD"
    )
        port map (
      I0 => data0(3),
      I1 => mantissas_addition_inst_n_25,
      I2 => \out[7]_i_13_n_0\,
      I3 => post_normalization_inst_n_13,
      I4 => \out[7]_i_14_n_0\,
      I5 => mantissas_addition_inst_n_24,
      O => \out[7]_i_11_n_0\
    );
\out[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF001F"
    )
        port map (
      I0 => post_normalization_inst_n_4,
      I1 => post_normalization_inst_n_5,
      I2 => post_normalization_inst_n_26,
      I3 => post_normalization_inst_n_9,
      I4 => post_normalization_inst_n_8,
      I5 => post_normalization_inst_n_7,
      O => \out[7]_i_13_n_0\
    );
\out[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004404"
    )
        port map (
      I0 => post_normalization_inst_n_9,
      I1 => post_normalization_inst_n_26,
      I2 => post_normalization_inst_n_4,
      I3 => post_normalization_inst_n_5,
      I4 => post_normalization_inst_n_7,
      I5 => post_normalization_inst_n_8,
      O => \out[7]_i_14_n_0\
    );
\out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4544454445454544"
    )
        port map (
      I0 => mantissas_addition_inst_n_25,
      I1 => data0(22),
      I2 => post_normalization_inst_n_17,
      I3 => post_normalization_inst_n_16,
      I4 => post_normalization_inst_n_15,
      I5 => post_normalization_inst_n_14,
      O => \out[7]_i_2_n_0\
    );
\out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFEAABA"
    )
        port map (
      I0 => post_normalization_inst_n_1,
      I1 => post_normalization_inst_n_0,
      I2 => data0(0),
      I3 => \out[7]_i_8_n_0\,
      I4 => data0(4),
      O => \out[7]_i_3_n_0\
    );
\out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545555555455"
    )
        port map (
      I0 => \out[7]_i_9_n_0\,
      I1 => \out[7]_i_10_n_0\,
      I2 => post_normalization_inst_n_13,
      I3 => data0(2),
      I4 => post_normalization_inst_n_0,
      I5 => data0(6),
      O => \out[7]_i_4_n_0\
    );
\out[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FDFFFFF1FD0000"
    )
        port map (
      I0 => data0(1),
      I1 => post_normalization_inst_n_0,
      I2 => \out[7]_i_8_n_0\,
      I3 => data0(5),
      I4 => post_normalization_inst_n_1,
      I5 => \out[7]_i_11_n_0\,
      O => \out[7]_i_5_n_0\
    );
\out[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mantissas_addition_inst_n_25,
      I1 => data0(7),
      O => \out[7]_i_7_n_0\
    );
\out[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00DF"
    )
        port map (
      I0 => post_normalization_inst_n_4,
      I1 => post_normalization_inst_n_5,
      I2 => post_normalization_inst_n_3,
      I3 => post_normalization_inst_n_6,
      I4 => mantissas_addition_inst_n_25,
      O => \out[7]_i_8_n_0\
    );
\out[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => data0(19),
      I1 => data0(20),
      I2 => data0(15),
      I3 => data0(16),
      I4 => post_normalization_inst_n_11,
      I5 => post_normalization_inst_n_10,
      O => \out[7]_i_9_n_0\
    );
\out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(0),
      Q => leds(0)
    );
\out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(16),
      Q => fp_out(16)
    );
\out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(17),
      Q => fp_out(17)
    );
\out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(18),
      Q => fp_out(18)
    );
\out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(19),
      Q => fp_out(19)
    );
\out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(1),
      Q => leds(1)
    );
\out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(20),
      Q => fp_out(20)
    );
\out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(21),
      Q => fp_out(21)
    );
\out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(22),
      Q => fp_out(22)
    );
\out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_normal_result(0),
      Q => fp_out(23)
    );
\out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_normal_result(1),
      Q => fp_out(24)
    );
\out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_normal_result(2),
      Q => fp_out(25)
    );
\out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_normal_result(3),
      Q => fp_out(26)
    );
\out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_normal_result(4),
      Q => fp_out(27)
    );
\out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_normal_result(5),
      Q => fp_out(28)
    );
\out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_normal_result(6),
      Q => fp_out(29)
    );
\out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(2),
      Q => leds(2)
    );
\out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_normal_result(7),
      Q => fp_out(30)
    );
\out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => result(31),
      Q => fp_out(31)
    );
\out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(3),
      Q => leds(3)
    );
\out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(4),
      Q => leds(4)
    );
\out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(5),
      Q => leds(5)
    );
\out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(6),
      Q => leds(6)
    );
\out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_normal_result(7),
      Q => leds(7)
    );
\pipe_EXP_result[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => EXP_A(0),
      I1 => compare_shift_inst_n_0,
      I2 => EXP_B(4),
      O => EXP_result(0)
    );
\pipe_EXP_result[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => EXP_A(1),
      I1 => compare_shift_inst_n_0,
      I2 => EXP_B(1),
      O => EXP_result(1)
    );
\pipe_EXP_result[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => EXP_A(2),
      I1 => compare_shift_inst_n_0,
      I2 => EXP_B(4),
      O => EXP_result(2)
    );
\pipe_EXP_result[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => EXP_A(3),
      I1 => compare_shift_inst_n_0,
      I2 => EXP_B(3),
      O => EXP_result(3)
    );
\pipe_EXP_result[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => EXP_A(4),
      I1 => compare_shift_inst_n_0,
      I2 => EXP_B(4),
      O => EXP_result(4)
    );
\pipe_EXP_result[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => EXP_A(5),
      I1 => compare_shift_inst_n_0,
      I2 => EXP_B(5),
      O => EXP_result(5)
    );
\pipe_EXP_result[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => EXP_A(7),
      I1 => compare_shift_inst_n_0,
      I2 => EXP_B(7),
      O => EXP_result(7)
    );
\pipe_EXP_result_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_result(0),
      Q => pipe_EXP_result(0)
    );
\pipe_EXP_result_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_result(1),
      Q => pipe_EXP_result(1)
    );
\pipe_EXP_result_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_result(2),
      Q => pipe_EXP_result(2)
    );
\pipe_EXP_result_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_result(3),
      Q => pipe_EXP_result(3)
    );
\pipe_EXP_result_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_result(4),
      Q => pipe_EXP_result(4)
    );
\pipe_EXP_result_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_result(5),
      Q => pipe_EXP_result(5)
    );
\pipe_EXP_result_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => EXP_result(7),
      Q => pipe_EXP_result(7)
    );
\pipe_Mantissa_shift_A[22]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => compare_shift_inst_n_0,
      I1 => \pipe_Mantissa_shift_B[23]_i_2_n_0\,
      O => \pipe_Mantissa_shift_A[22]_i_2_n_0\
    );
\pipe_Mantissa_shift_A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(0),
      Q => pipe_Mantissa_shift_A(0)
    );
\pipe_Mantissa_shift_A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(10),
      Q => pipe_Mantissa_shift_A(10)
    );
\pipe_Mantissa_shift_A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(11),
      Q => pipe_Mantissa_shift_A(11)
    );
\pipe_Mantissa_shift_A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(12),
      Q => pipe_Mantissa_shift_A(12)
    );
\pipe_Mantissa_shift_A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(13),
      Q => pipe_Mantissa_shift_A(13)
    );
\pipe_Mantissa_shift_A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(14),
      Q => pipe_Mantissa_shift_A(14)
    );
\pipe_Mantissa_shift_A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(15),
      Q => pipe_Mantissa_shift_A(15)
    );
\pipe_Mantissa_shift_A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(16),
      Q => pipe_Mantissa_shift_A(16)
    );
\pipe_Mantissa_shift_A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(17),
      Q => pipe_Mantissa_shift_A(17)
    );
\pipe_Mantissa_shift_A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(18),
      Q => pipe_Mantissa_shift_A(18)
    );
\pipe_Mantissa_shift_A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(19),
      Q => pipe_Mantissa_shift_A(19)
    );
\pipe_Mantissa_shift_A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(1),
      Q => pipe_Mantissa_shift_A(1)
    );
\pipe_Mantissa_shift_A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(20),
      Q => pipe_Mantissa_shift_A(20)
    );
\pipe_Mantissa_shift_A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(21),
      Q => pipe_Mantissa_shift_A(21)
    );
\pipe_Mantissa_shift_A_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(22),
      Q => pipe_Mantissa_shift_A(22)
    );
\pipe_Mantissa_shift_A_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => compare_shift_inst_n_25,
      Q => pipe_Mantissa_shift_A(23)
    );
\pipe_Mantissa_shift_A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(2),
      Q => pipe_Mantissa_shift_A(2)
    );
\pipe_Mantissa_shift_A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(3),
      Q => pipe_Mantissa_shift_A(3)
    );
\pipe_Mantissa_shift_A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(4),
      Q => pipe_Mantissa_shift_A(4)
    );
\pipe_Mantissa_shift_A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(5),
      Q => pipe_Mantissa_shift_A(5)
    );
\pipe_Mantissa_shift_A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(6),
      Q => pipe_Mantissa_shift_A(6)
    );
\pipe_Mantissa_shift_A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(7),
      Q => pipe_Mantissa_shift_A(7)
    );
\pipe_Mantissa_shift_A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(8),
      Q => pipe_Mantissa_shift_A(8)
    );
\pipe_Mantissa_shift_A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_A(9),
      Q => pipe_Mantissa_shift_A(9)
    );
\pipe_Mantissa_shift_B[22]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[23]_i_2_n_0\,
      I1 => compare_shift_inst_n_0,
      O => \pipe_Mantissa_shift_B[22]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000041"
    )
        port map (
      I0 => \pipe_Mantissa_shift_B[23]_i_4_n_0\,
      I1 => EXP_B(1),
      I2 => EXP_A(1),
      I3 => EXP_B(4),
      I4 => EXP_A(0),
      I5 => \pipe_Mantissa_shift_B[23]_i_5_n_0\,
      O => \pipe_Mantissa_shift_B[23]_i_2_n_0\
    );
\pipe_Mantissa_shift_B[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => EXP_B(7),
      I1 => EXP_A(7),
      I2 => EXP_B(4),
      I3 => EXP_A(4),
      O => \pipe_Mantissa_shift_B[23]_i_4_n_0\
    );
\pipe_Mantissa_shift_B[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFDFFFFDFFDEFFE"
    )
        port map (
      I0 => EXP_A(2),
      I1 => \pipe_Mantissa_shift_B[23]_i_7_n_0\,
      I2 => EXP_B(5),
      I3 => EXP_A(5),
      I4 => EXP_B(4),
      I5 => EXP_A(4),
      O => \pipe_Mantissa_shift_B[23]_i_5_n_0\
    );
\pipe_Mantissa_shift_B[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => EXP_A(3),
      I1 => EXP_B(3),
      O => \pipe_Mantissa_shift_B[23]_i_7_n_0\
    );
\pipe_Mantissa_shift_B_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(0),
      Q => pipe_Mantissa_shift_B(0)
    );
\pipe_Mantissa_shift_B_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(10),
      Q => pipe_Mantissa_shift_B(10)
    );
\pipe_Mantissa_shift_B_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(11),
      Q => pipe_Mantissa_shift_B(11)
    );
\pipe_Mantissa_shift_B_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(12),
      Q => pipe_Mantissa_shift_B(12)
    );
\pipe_Mantissa_shift_B_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(13),
      Q => pipe_Mantissa_shift_B(13)
    );
\pipe_Mantissa_shift_B_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(14),
      Q => pipe_Mantissa_shift_B(14)
    );
\pipe_Mantissa_shift_B_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(15),
      Q => pipe_Mantissa_shift_B(15)
    );
\pipe_Mantissa_shift_B_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(16),
      Q => pipe_Mantissa_shift_B(16)
    );
\pipe_Mantissa_shift_B_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(17),
      Q => pipe_Mantissa_shift_B(17)
    );
\pipe_Mantissa_shift_B_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(18),
      Q => pipe_Mantissa_shift_B(18)
    );
\pipe_Mantissa_shift_B_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(19),
      Q => pipe_Mantissa_shift_B(19)
    );
\pipe_Mantissa_shift_B_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(1),
      Q => pipe_Mantissa_shift_B(1)
    );
\pipe_Mantissa_shift_B_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(20),
      Q => pipe_Mantissa_shift_B(20)
    );
\pipe_Mantissa_shift_B_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(21),
      Q => pipe_Mantissa_shift_B(21)
    );
\pipe_Mantissa_shift_B_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(22),
      Q => pipe_Mantissa_shift_B(22)
    );
\pipe_Mantissa_shift_B_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => compare_shift_inst_n_1,
      Q => pipe_Mantissa_shift_B(23)
    );
\pipe_Mantissa_shift_B_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(2),
      Q => pipe_Mantissa_shift_B(2)
    );
\pipe_Mantissa_shift_B_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(3),
      Q => pipe_Mantissa_shift_B(3)
    );
\pipe_Mantissa_shift_B_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(4),
      Q => pipe_Mantissa_shift_B(4)
    );
\pipe_Mantissa_shift_B_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(5),
      Q => pipe_Mantissa_shift_B(5)
    );
\pipe_Mantissa_shift_B_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(6),
      Q => pipe_Mantissa_shift_B(6)
    );
\pipe_Mantissa_shift_B_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(7),
      Q => pipe_Mantissa_shift_B(7)
    );
\pipe_Mantissa_shift_B_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(8),
      Q => pipe_Mantissa_shift_B(8)
    );
\pipe_Mantissa_shift_B_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => Mantissa_shift_B(9),
      Q => pipe_Mantissa_shift_B(9)
    );
pipe_S_A_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => S_A,
      Q => pipe_S_A
    );
pipe_S_B_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => rst,
      D => S_B,
      Q => pipe_S_B
    );
post_normalization_inst: entity work.Cortex_A9_fpadd_ip_0_0_post_normalization_module
     port map (
      D(7 downto 0) => EXP_normal_result(7 downto 0),
      O(0) => mantissas_addition_inst_n_24,
      Q(6) => pipe_EXP_result(7),
      Q(5 downto 0) => pipe_EXP_result(5 downto 0),
      data0(22 downto 0) => data0(22 downto 0),
      \i__carry_i_11_0\ => post_normalization_inst_n_6,
      \i__carry_i_12_0\ => post_normalization_inst_n_13,
      \i__carry_i_13_0\ => post_normalization_inst_n_0,
      \i__carry_i_16_0\ => post_normalization_inst_n_1,
      \out_reg[0]\(0) => mantissas_addition_inst_n_25,
      \out_reg[18]_i_3\ => post_normalization_inst_n_8,
      \out_reg[18]_i_3_0\ => post_normalization_inst_n_10,
      \out_reg[18]_i_3_1\ => post_normalization_inst_n_16,
      \out_reg[21]_i_3\ => post_normalization_inst_n_7,
      \out_reg[21]_i_3_0\ => post_normalization_inst_n_12,
      \out_reg[21]_i_3_1\ => post_normalization_inst_n_17,
      \out_reg[23]\ => \out[31]_i_2_n_0\,
      \out_reg[2]_i_2\ => post_normalization_inst_n_4,
      \out_reg[31]_i_4\ => post_normalization_inst_n_3,
      \out_reg[31]_i_4_0\ => post_normalization_inst_n_9,
      \out_reg[31]_i_4_1\ => post_normalization_inst_n_11,
      \out_reg[6]_i_3\ => post_normalization_inst_n_5,
      \out_reg[6]_i_3_0\ => post_normalization_inst_n_15,
      \out_reg[6]_i_4\ => post_normalization_inst_n_2,
      \out_reg[7]_i_12\ => post_normalization_inst_n_14,
      \out_reg[7]_i_12_0\ => post_normalization_inst_n_26
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_fpadd_system is
  port (
    digit_sel_reg : out STD_LOGIC;
    digit_sel_reg_0 : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    e0 : out STD_LOGIC;
    c0 : out STD_LOGIC;
    d0 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_fpadd_system : entity is "fpadd_system";
end Cortex_A9_fpadd_ip_0_0_fpadd_system;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_fpadd_system is
  signal DataMemory_inst_n_1 : STD_LOGIC;
  signal DataMemory_inst_n_13 : STD_LOGIC;
  signal DataMemory_inst_n_14 : STD_LOGIC;
  signal DataMemory_inst_n_15 : STD_LOGIC;
  signal DataMemory_inst_n_16 : STD_LOGIC;
  signal DataMemory_inst_n_28 : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^digit_sel_reg\ : STD_LOGIC;
  signal \^digit_sel_reg_0\ : STD_LOGIC;
  signal numA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal numB : STD_LOGIC_VECTOR ( 31 downto 4 );
begin
  digit_sel_reg <= \^digit_sel_reg\;
  digit_sel_reg_0 <= \^digit_sel_reg_0\;
DataMemory_inst: entity work.Cortex_A9_fpadd_ip_0_0_DataMemory
     port map (
      D(13) => numB(31),
      D(12) => DataMemory_inst_n_1,
      D(11 downto 9) => numB(28 downto 26),
      D(8) => numB(24),
      D(7) => numB(19),
      D(6 downto 1) => numB(15 downto 10),
      D(0) => DataMemory_inst_n_13,
      current_state(1 downto 0) => current_state(1 downto 0),
      numA(2) => numA(18),
      numA(1) => numA(16),
      numA(0) => numA(8),
      numB(1) => numB(21),
      numB(0) => numB(4),
      \pointer_reg[0]_0\(17 downto 16) => numA(31 downto 30),
      \pointer_reg[0]_0\(15 downto 8) => numA(28 downto 21),
      \pointer_reg[0]_0\(7) => numA(15),
      \pointer_reg[0]_0\(6) => DataMemory_inst_n_28,
      \pointer_reg[0]_0\(5 downto 3) => numA(13 downto 11),
      \pointer_reg[0]_0\(2 downto 1) => numA(5 downto 4),
      \pointer_reg[0]_0\(0) => numA(0),
      \pointer_reg[2]_0\ => DataMemory_inst_n_14,
      \pointer_reg[2]_1\ => DataMemory_inst_n_15,
      \pointer_reg[3]_0\ => DataMemory_inst_n_16,
      rst => rst,
      s00_axi_aclk => s00_axi_aclk
    );
SSDisplays_inst0: entity work.Cortex_A9_fpadd_ip_0_0_SSDisplays_module
     port map (
      digit_sel_reg_0 => \^digit_sel_reg\,
      rst => rst,
      s00_axi_aclk => s00_axi_aclk
    );
SSDisplays_inst1: entity work.Cortex_A9_fpadd_ip_0_0_SSDisplays_module_0
     port map (
      digit_sel_reg_0 => \^digit_sel_reg_0\,
      rst => rst,
      s00_axi_aclk => s00_axi_aclk
    );
debounce_inst: entity work.Cortex_A9_fpadd_ip_0_0_debounce_module
     port map (
      Q(0) => Q(0),
      current_state(1 downto 0) => current_state(1 downto 0),
      rst => rst,
      s00_axi_aclk => s00_axi_aclk
    );
fpadd_pipelined_inst: entity work.Cortex_A9_fpadd_ip_0_0_fpadd_pipelined
     port map (
      \A_reg[14]_0\(0) => DataMemory_inst_n_28,
      \A_reg[17]_0\ => DataMemory_inst_n_16,
      \A_reg[20]_0\ => DataMemory_inst_n_14,
      \B_reg[22]_0\ => DataMemory_inst_n_15,
      D(1) => DataMemory_inst_n_1,
      D(0) => DataMemory_inst_n_13,
      a0 => a0,
      a0_0 => \^digit_sel_reg\,
      a1 => a1,
      a1_0 => \^digit_sel_reg_0\,
      b0 => b0,
      b1 => b1,
      c0 => c0,
      c1 => c1,
      d0 => d0,
      d1 => d1,
      e0 => e0,
      e1 => e1,
      f0 => f0,
      f1 => f1,
      g0 => g0,
      g1 => g1,
      leds(7 downto 0) => leds(7 downto 0),
      numA(19 downto 18) => numA(31 downto 30),
      numA(17 downto 10) => numA(28 downto 21),
      numA(9) => numA(18),
      numA(8 downto 7) => numA(16 downto 15),
      numA(6 downto 4) => numA(13 downto 11),
      numA(3) => numA(8),
      numA(2 downto 1) => numA(5 downto 4),
      numA(0) => numA(0),
      numB(13) => numB(31),
      numB(12 downto 10) => numB(28 downto 26),
      numB(9) => numB(24),
      numB(8) => numB(21),
      numB(7) => numB(19),
      numB(6 downto 1) => numB(15 downto 10),
      numB(0) => numB(4),
      rst => rst,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0_S00_AXI is
  port (
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    e0 : out STD_LOGIC;
    digit_sel_reg : out STD_LOGIC;
    c0 : out STD_LOGIC;
    d0 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    digit_sel_reg_0 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0_S00_AXI : entity is "fpadd_ip_v1_0_S00_AXI";
end Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0_S00_AXI;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair89";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg1(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[10]\,
      I1 => slv_reg1(10),
      I2 => slv_reg2(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[11]\,
      I1 => slv_reg1(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[12]\,
      I1 => slv_reg1(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[13]\,
      I1 => slv_reg1(13),
      I2 => slv_reg2(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[14]\,
      I1 => slv_reg1(14),
      I2 => slv_reg2(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg3(15),
      I2 => \slv_reg0_reg_n_0_[15]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg2(16),
      I2 => \slv_reg0_reg_n_0_[16]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[17]\,
      I1 => slv_reg1(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[18]\,
      I1 => slv_reg1(18),
      I2 => slv_reg2(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
      I1 => slv_reg1(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[1]\,
      I1 => slv_reg1(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => slv_reg1(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[21]\,
      I1 => slv_reg1(21),
      I2 => slv_reg2(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => slv_reg1(22),
      I2 => slv_reg2(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg3(23),
      I2 => \slv_reg0_reg_n_0_[23]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg2(24),
      I2 => \slv_reg0_reg_n_0_[24]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => slv_reg1(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[26]\,
      I1 => slv_reg1(26),
      I2 => slv_reg2(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => slv_reg1(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => slv_reg1(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
      I1 => slv_reg1(29),
      I2 => slv_reg2(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[2]\,
      I1 => slv_reg1(2),
      I2 => slv_reg2(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => slv_reg1(30),
      I2 => slv_reg2(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg2(31),
      I2 => \slv_reg0_reg_n_0_[31]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[3]\,
      I1 => slv_reg1(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[4]\,
      I1 => slv_reg1(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[5]\,
      I1 => slv_reg1(5),
      I2 => slv_reg2(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[6]\,
      I1 => slv_reg1(6),
      I2 => slv_reg2(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg3(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg3(7),
      I2 => \slv_reg0_reg_n_0_[7]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg2(8),
      I2 => \slv_reg0_reg_n_0_[8]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg3(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[9]\,
      I1 => slv_reg1(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
pls_work: entity work.Cortex_A9_fpadd_ip_0_0_fpadd_system
     port map (
      Q(0) => slv_reg0(0),
      a0 => a0,
      a1 => a1,
      b0 => b0,
      b1 => b1,
      c0 => c0,
      c1 => c1,
      d0 => d0,
      d1 => d1,
      digit_sel_reg => digit_sel_reg,
      digit_sel_reg_0 => digit_sel_reg_0,
      e0 => e0,
      e1 => e1,
      f0 => f0,
      f1 => f1,
      g0 => g0,
      g1 => g1,
      leds(7 downto 0) => leds(7 downto 0),
      rst => rst,
      s00_axi_aclk => s00_axi_aclk
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(31)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0 is
  port (
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    e0 : out STD_LOGIC;
    digit_sel_reg : out STD_LOGIC;
    c0 : out STD_LOGIC;
    d0 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    digit_sel_reg_0 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0 : entity is "fpadd_ip_v1_0";
end Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0 is
begin
fpadd_ip_v1_0_S00_AXI_inst: entity work.Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      a0 => a0,
      a1 => a1,
      b0 => b0,
      b1 => b1,
      c0 => c0,
      c1 => c1,
      d0 => d0,
      d1 => d1,
      digit_sel_reg => digit_sel_reg,
      digit_sel_reg_0 => digit_sel_reg_0,
      e0 => e0,
      e1 => e1,
      f0 => f0,
      f1 => f1,
      g0 => g0,
      g1 => g1,
      leds(7 downto 0) => leds(7 downto 0),
      rst => rst,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Cortex_A9_fpadd_ip_0_0 is
  port (
    rst : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    an0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    c0 : out STD_LOGIC;
    d0 : out STD_LOGIC;
    e0 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    an1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Cortex_A9_fpadd_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Cortex_A9_fpadd_ip_0_0 : entity is "Cortex_A9_fpadd_ip_0_0,fpadd_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Cortex_A9_fpadd_ip_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Cortex_A9_fpadd_ip_0_0 : entity is "fpadd_ip_v1_0,Vivado 2020.2";
end Cortex_A9_fpadd_ip_0_0;

architecture STRUCTURE of Cortex_A9_fpadd_ip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn:rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Cortex_A9_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Cortex_A9_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      a0 => a0,
      a1 => a1,
      b0 => b0,
      b1 => b1,
      c0 => c0,
      c1 => c1,
      d0 => d0,
      d1 => d1,
      digit_sel_reg => an0,
      digit_sel_reg_0 => an1,
      e0 => e0,
      e1 => e1,
      f0 => f0,
      f1 => f1,
      g0 => g0,
      g1 => g1,
      leds(7 downto 0) => leds(7 downto 0),
      rst => rst,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
