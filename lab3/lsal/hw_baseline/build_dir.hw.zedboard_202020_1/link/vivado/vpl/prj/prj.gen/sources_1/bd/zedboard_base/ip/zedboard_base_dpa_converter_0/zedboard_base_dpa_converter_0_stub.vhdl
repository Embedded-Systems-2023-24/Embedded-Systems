-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue May 28 10:09:40 2024
-- Host        : localhost.localdomain running 64-bit openSUSE Leap 15.4
-- Command     : write_vhdl -force -mode synth_stub
--               /home/inf2021/iathanasi/embedded/Embedded-Systems/lab3/lsal/hw_baseline/build_dir.hw.zedboard_202020_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/zedboard_base/ip/zedboard_base_dpa_converter_0/zedboard_base_dpa_converter_0_stub.vhdl
-- Design      : zedboard_base_dpa_converter_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zedboard_base_dpa_converter_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end zedboard_base_dpa_converter_0;

architecture stub of zedboard_base_dpa_converter_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[63:0],m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis_dwidth_converter_v1_1_21_axis_dwidth_converter,Vivado 2020.2";
begin
end;
