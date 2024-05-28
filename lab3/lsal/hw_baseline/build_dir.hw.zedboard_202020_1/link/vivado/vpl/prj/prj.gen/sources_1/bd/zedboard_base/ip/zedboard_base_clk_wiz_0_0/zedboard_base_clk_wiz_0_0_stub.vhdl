-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Feb  9 12:15:11 2022
-- Host        : linux-e4n3 running 64-bit openSUSE Leap 42.2
-- Command     : write_vhdl -force -mode synth_stub -rename_top zedboard_base_clk_wiz_0_0 -prefix
--               zedboard_base_clk_wiz_0_0_ zedboard_base_clk_wiz_0_0_stub.vhdl
-- Design      : zedboard_base_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zedboard_base_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end zedboard_base_clk_wiz_0_0;

architecture stub of zedboard_base_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,resetn,locked,clk_in1";
begin
end;
