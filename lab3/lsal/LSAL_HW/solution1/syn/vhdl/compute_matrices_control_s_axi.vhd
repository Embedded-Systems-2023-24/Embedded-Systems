-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity compute_matrices_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 9;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    string1_mem           :out  STD_LOGIC_VECTOR(63 downto 0);
    string2_mem           :out  STD_LOGIC_VECTOR(63 downto 0);
    max_index             :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_0    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_1    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_2    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_3    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_4    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_5    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_6    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_7    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_8    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_9    :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_10   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_11   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_12   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_13   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_14   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_15   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_16   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_17   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_18   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_19   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_20   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_21   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_22   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_23   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_24   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_25   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_26   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_27   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_28   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_29   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_30   :out  STD_LOGIC_VECTOR(63 downto 0);
    direction_matrix_31   :out  STD_LOGIC_VECTOR(63 downto 0);
    n                     :out  STD_LOGIC_VECTOR(31 downto 0);
    m                     :out  STD_LOGIC_VECTOR(31 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_continue           :out  STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity compute_matrices_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : Control signals
--         bit 0  - ap_start (Read/Write/COH)
--         bit 1  - ap_done (Read)
--         bit 2  - ap_idle (Read)
--         bit 3  - ap_ready (Read)
--         bit 4  - ap_continue (Read/Write/SC)
--         bit 7  - auto_restart (Read/Write)
--         others - reserved
-- 0x004 : Global Interrupt Enable Register
--         bit 0  - Global Interrupt Enable (Read/Write)
--         others - reserved
-- 0x008 : IP Interrupt Enable Register (Read/Write)
--         bit 0  - enable ap_done interrupt (Read/Write)
--         bit 1  - enable ap_ready interrupt (Read/Write)
--         others - reserved
-- 0x00c : IP Interrupt Status Register (Read/TOW)
--         bit 0  - ap_done (COR/TOW)
--         bit 1  - ap_ready (COR/TOW)
--         others - reserved
-- 0x010 : Data signal of string1_mem
--         bit 31~0 - string1_mem[31:0] (Read/Write)
-- 0x014 : Data signal of string1_mem
--         bit 31~0 - string1_mem[63:32] (Read/Write)
-- 0x018 : reserved
-- 0x01c : Data signal of string2_mem
--         bit 31~0 - string2_mem[31:0] (Read/Write)
-- 0x020 : Data signal of string2_mem
--         bit 31~0 - string2_mem[63:32] (Read/Write)
-- 0x024 : reserved
-- 0x028 : Data signal of max_index
--         bit 31~0 - max_index[31:0] (Read/Write)
-- 0x02c : Data signal of max_index
--         bit 31~0 - max_index[63:32] (Read/Write)
-- 0x030 : reserved
-- 0x034 : Data signal of direction_matrix_0
--         bit 31~0 - direction_matrix_0[31:0] (Read/Write)
-- 0x038 : Data signal of direction_matrix_0
--         bit 31~0 - direction_matrix_0[63:32] (Read/Write)
-- 0x03c : reserved
-- 0x040 : Data signal of direction_matrix_1
--         bit 31~0 - direction_matrix_1[31:0] (Read/Write)
-- 0x044 : Data signal of direction_matrix_1
--         bit 31~0 - direction_matrix_1[63:32] (Read/Write)
-- 0x048 : reserved
-- 0x04c : Data signal of direction_matrix_2
--         bit 31~0 - direction_matrix_2[31:0] (Read/Write)
-- 0x050 : Data signal of direction_matrix_2
--         bit 31~0 - direction_matrix_2[63:32] (Read/Write)
-- 0x054 : reserved
-- 0x058 : Data signal of direction_matrix_3
--         bit 31~0 - direction_matrix_3[31:0] (Read/Write)
-- 0x05c : Data signal of direction_matrix_3
--         bit 31~0 - direction_matrix_3[63:32] (Read/Write)
-- 0x060 : reserved
-- 0x064 : Data signal of direction_matrix_4
--         bit 31~0 - direction_matrix_4[31:0] (Read/Write)
-- 0x068 : Data signal of direction_matrix_4
--         bit 31~0 - direction_matrix_4[63:32] (Read/Write)
-- 0x06c : reserved
-- 0x070 : Data signal of direction_matrix_5
--         bit 31~0 - direction_matrix_5[31:0] (Read/Write)
-- 0x074 : Data signal of direction_matrix_5
--         bit 31~0 - direction_matrix_5[63:32] (Read/Write)
-- 0x078 : reserved
-- 0x07c : Data signal of direction_matrix_6
--         bit 31~0 - direction_matrix_6[31:0] (Read/Write)
-- 0x080 : Data signal of direction_matrix_6
--         bit 31~0 - direction_matrix_6[63:32] (Read/Write)
-- 0x084 : reserved
-- 0x088 : Data signal of direction_matrix_7
--         bit 31~0 - direction_matrix_7[31:0] (Read/Write)
-- 0x08c : Data signal of direction_matrix_7
--         bit 31~0 - direction_matrix_7[63:32] (Read/Write)
-- 0x090 : reserved
-- 0x094 : Data signal of direction_matrix_8
--         bit 31~0 - direction_matrix_8[31:0] (Read/Write)
-- 0x098 : Data signal of direction_matrix_8
--         bit 31~0 - direction_matrix_8[63:32] (Read/Write)
-- 0x09c : reserved
-- 0x0a0 : Data signal of direction_matrix_9
--         bit 31~0 - direction_matrix_9[31:0] (Read/Write)
-- 0x0a4 : Data signal of direction_matrix_9
--         bit 31~0 - direction_matrix_9[63:32] (Read/Write)
-- 0x0a8 : reserved
-- 0x0ac : Data signal of direction_matrix_10
--         bit 31~0 - direction_matrix_10[31:0] (Read/Write)
-- 0x0b0 : Data signal of direction_matrix_10
--         bit 31~0 - direction_matrix_10[63:32] (Read/Write)
-- 0x0b4 : reserved
-- 0x0b8 : Data signal of direction_matrix_11
--         bit 31~0 - direction_matrix_11[31:0] (Read/Write)
-- 0x0bc : Data signal of direction_matrix_11
--         bit 31~0 - direction_matrix_11[63:32] (Read/Write)
-- 0x0c0 : reserved
-- 0x0c4 : Data signal of direction_matrix_12
--         bit 31~0 - direction_matrix_12[31:0] (Read/Write)
-- 0x0c8 : Data signal of direction_matrix_12
--         bit 31~0 - direction_matrix_12[63:32] (Read/Write)
-- 0x0cc : reserved
-- 0x0d0 : Data signal of direction_matrix_13
--         bit 31~0 - direction_matrix_13[31:0] (Read/Write)
-- 0x0d4 : Data signal of direction_matrix_13
--         bit 31~0 - direction_matrix_13[63:32] (Read/Write)
-- 0x0d8 : reserved
-- 0x0dc : Data signal of direction_matrix_14
--         bit 31~0 - direction_matrix_14[31:0] (Read/Write)
-- 0x0e0 : Data signal of direction_matrix_14
--         bit 31~0 - direction_matrix_14[63:32] (Read/Write)
-- 0x0e4 : reserved
-- 0x0e8 : Data signal of direction_matrix_15
--         bit 31~0 - direction_matrix_15[31:0] (Read/Write)
-- 0x0ec : Data signal of direction_matrix_15
--         bit 31~0 - direction_matrix_15[63:32] (Read/Write)
-- 0x0f0 : reserved
-- 0x0f4 : Data signal of direction_matrix_16
--         bit 31~0 - direction_matrix_16[31:0] (Read/Write)
-- 0x0f8 : Data signal of direction_matrix_16
--         bit 31~0 - direction_matrix_16[63:32] (Read/Write)
-- 0x0fc : reserved
-- 0x100 : Data signal of direction_matrix_17
--         bit 31~0 - direction_matrix_17[31:0] (Read/Write)
-- 0x104 : Data signal of direction_matrix_17
--         bit 31~0 - direction_matrix_17[63:32] (Read/Write)
-- 0x108 : reserved
-- 0x10c : Data signal of direction_matrix_18
--         bit 31~0 - direction_matrix_18[31:0] (Read/Write)
-- 0x110 : Data signal of direction_matrix_18
--         bit 31~0 - direction_matrix_18[63:32] (Read/Write)
-- 0x114 : reserved
-- 0x118 : Data signal of direction_matrix_19
--         bit 31~0 - direction_matrix_19[31:0] (Read/Write)
-- 0x11c : Data signal of direction_matrix_19
--         bit 31~0 - direction_matrix_19[63:32] (Read/Write)
-- 0x120 : reserved
-- 0x124 : Data signal of direction_matrix_20
--         bit 31~0 - direction_matrix_20[31:0] (Read/Write)
-- 0x128 : Data signal of direction_matrix_20
--         bit 31~0 - direction_matrix_20[63:32] (Read/Write)
-- 0x12c : reserved
-- 0x130 : Data signal of direction_matrix_21
--         bit 31~0 - direction_matrix_21[31:0] (Read/Write)
-- 0x134 : Data signal of direction_matrix_21
--         bit 31~0 - direction_matrix_21[63:32] (Read/Write)
-- 0x138 : reserved
-- 0x13c : Data signal of direction_matrix_22
--         bit 31~0 - direction_matrix_22[31:0] (Read/Write)
-- 0x140 : Data signal of direction_matrix_22
--         bit 31~0 - direction_matrix_22[63:32] (Read/Write)
-- 0x144 : reserved
-- 0x148 : Data signal of direction_matrix_23
--         bit 31~0 - direction_matrix_23[31:0] (Read/Write)
-- 0x14c : Data signal of direction_matrix_23
--         bit 31~0 - direction_matrix_23[63:32] (Read/Write)
-- 0x150 : reserved
-- 0x154 : Data signal of direction_matrix_24
--         bit 31~0 - direction_matrix_24[31:0] (Read/Write)
-- 0x158 : Data signal of direction_matrix_24
--         bit 31~0 - direction_matrix_24[63:32] (Read/Write)
-- 0x15c : reserved
-- 0x160 : Data signal of direction_matrix_25
--         bit 31~0 - direction_matrix_25[31:0] (Read/Write)
-- 0x164 : Data signal of direction_matrix_25
--         bit 31~0 - direction_matrix_25[63:32] (Read/Write)
-- 0x168 : reserved
-- 0x16c : Data signal of direction_matrix_26
--         bit 31~0 - direction_matrix_26[31:0] (Read/Write)
-- 0x170 : Data signal of direction_matrix_26
--         bit 31~0 - direction_matrix_26[63:32] (Read/Write)
-- 0x174 : reserved
-- 0x178 : Data signal of direction_matrix_27
--         bit 31~0 - direction_matrix_27[31:0] (Read/Write)
-- 0x17c : Data signal of direction_matrix_27
--         bit 31~0 - direction_matrix_27[63:32] (Read/Write)
-- 0x180 : reserved
-- 0x184 : Data signal of direction_matrix_28
--         bit 31~0 - direction_matrix_28[31:0] (Read/Write)
-- 0x188 : Data signal of direction_matrix_28
--         bit 31~0 - direction_matrix_28[63:32] (Read/Write)
-- 0x18c : reserved
-- 0x190 : Data signal of direction_matrix_29
--         bit 31~0 - direction_matrix_29[31:0] (Read/Write)
-- 0x194 : Data signal of direction_matrix_29
--         bit 31~0 - direction_matrix_29[63:32] (Read/Write)
-- 0x198 : reserved
-- 0x19c : Data signal of direction_matrix_30
--         bit 31~0 - direction_matrix_30[31:0] (Read/Write)
-- 0x1a0 : Data signal of direction_matrix_30
--         bit 31~0 - direction_matrix_30[63:32] (Read/Write)
-- 0x1a4 : reserved
-- 0x1a8 : Data signal of direction_matrix_31
--         bit 31~0 - direction_matrix_31[31:0] (Read/Write)
-- 0x1ac : Data signal of direction_matrix_31
--         bit 31~0 - direction_matrix_31[63:32] (Read/Write)
-- 0x1b0 : reserved
-- 0x1b4 : Data signal of n
--         bit 31~0 - n[31:0] (Read/Write)
-- 0x1b8 : reserved
-- 0x1bc : Data signal of m
--         bit 31~0 - m[31:0] (Read/Write)
-- 0x1c0 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of compute_matrices_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL                    : INTEGER := 16#000#;
    constant ADDR_GIE                        : INTEGER := 16#004#;
    constant ADDR_IER                        : INTEGER := 16#008#;
    constant ADDR_ISR                        : INTEGER := 16#00c#;
    constant ADDR_STRING1_MEM_DATA_0         : INTEGER := 16#010#;
    constant ADDR_STRING1_MEM_DATA_1         : INTEGER := 16#014#;
    constant ADDR_STRING1_MEM_CTRL           : INTEGER := 16#018#;
    constant ADDR_STRING2_MEM_DATA_0         : INTEGER := 16#01c#;
    constant ADDR_STRING2_MEM_DATA_1         : INTEGER := 16#020#;
    constant ADDR_STRING2_MEM_CTRL           : INTEGER := 16#024#;
    constant ADDR_MAX_INDEX_DATA_0           : INTEGER := 16#028#;
    constant ADDR_MAX_INDEX_DATA_1           : INTEGER := 16#02c#;
    constant ADDR_MAX_INDEX_CTRL             : INTEGER := 16#030#;
    constant ADDR_DIRECTION_MATRIX_0_DATA_0  : INTEGER := 16#034#;
    constant ADDR_DIRECTION_MATRIX_0_DATA_1  : INTEGER := 16#038#;
    constant ADDR_DIRECTION_MATRIX_0_CTRL    : INTEGER := 16#03c#;
    constant ADDR_DIRECTION_MATRIX_1_DATA_0  : INTEGER := 16#040#;
    constant ADDR_DIRECTION_MATRIX_1_DATA_1  : INTEGER := 16#044#;
    constant ADDR_DIRECTION_MATRIX_1_CTRL    : INTEGER := 16#048#;
    constant ADDR_DIRECTION_MATRIX_2_DATA_0  : INTEGER := 16#04c#;
    constant ADDR_DIRECTION_MATRIX_2_DATA_1  : INTEGER := 16#050#;
    constant ADDR_DIRECTION_MATRIX_2_CTRL    : INTEGER := 16#054#;
    constant ADDR_DIRECTION_MATRIX_3_DATA_0  : INTEGER := 16#058#;
    constant ADDR_DIRECTION_MATRIX_3_DATA_1  : INTEGER := 16#05c#;
    constant ADDR_DIRECTION_MATRIX_3_CTRL    : INTEGER := 16#060#;
    constant ADDR_DIRECTION_MATRIX_4_DATA_0  : INTEGER := 16#064#;
    constant ADDR_DIRECTION_MATRIX_4_DATA_1  : INTEGER := 16#068#;
    constant ADDR_DIRECTION_MATRIX_4_CTRL    : INTEGER := 16#06c#;
    constant ADDR_DIRECTION_MATRIX_5_DATA_0  : INTEGER := 16#070#;
    constant ADDR_DIRECTION_MATRIX_5_DATA_1  : INTEGER := 16#074#;
    constant ADDR_DIRECTION_MATRIX_5_CTRL    : INTEGER := 16#078#;
    constant ADDR_DIRECTION_MATRIX_6_DATA_0  : INTEGER := 16#07c#;
    constant ADDR_DIRECTION_MATRIX_6_DATA_1  : INTEGER := 16#080#;
    constant ADDR_DIRECTION_MATRIX_6_CTRL    : INTEGER := 16#084#;
    constant ADDR_DIRECTION_MATRIX_7_DATA_0  : INTEGER := 16#088#;
    constant ADDR_DIRECTION_MATRIX_7_DATA_1  : INTEGER := 16#08c#;
    constant ADDR_DIRECTION_MATRIX_7_CTRL    : INTEGER := 16#090#;
    constant ADDR_DIRECTION_MATRIX_8_DATA_0  : INTEGER := 16#094#;
    constant ADDR_DIRECTION_MATRIX_8_DATA_1  : INTEGER := 16#098#;
    constant ADDR_DIRECTION_MATRIX_8_CTRL    : INTEGER := 16#09c#;
    constant ADDR_DIRECTION_MATRIX_9_DATA_0  : INTEGER := 16#0a0#;
    constant ADDR_DIRECTION_MATRIX_9_DATA_1  : INTEGER := 16#0a4#;
    constant ADDR_DIRECTION_MATRIX_9_CTRL    : INTEGER := 16#0a8#;
    constant ADDR_DIRECTION_MATRIX_10_DATA_0 : INTEGER := 16#0ac#;
    constant ADDR_DIRECTION_MATRIX_10_DATA_1 : INTEGER := 16#0b0#;
    constant ADDR_DIRECTION_MATRIX_10_CTRL   : INTEGER := 16#0b4#;
    constant ADDR_DIRECTION_MATRIX_11_DATA_0 : INTEGER := 16#0b8#;
    constant ADDR_DIRECTION_MATRIX_11_DATA_1 : INTEGER := 16#0bc#;
    constant ADDR_DIRECTION_MATRIX_11_CTRL   : INTEGER := 16#0c0#;
    constant ADDR_DIRECTION_MATRIX_12_DATA_0 : INTEGER := 16#0c4#;
    constant ADDR_DIRECTION_MATRIX_12_DATA_1 : INTEGER := 16#0c8#;
    constant ADDR_DIRECTION_MATRIX_12_CTRL   : INTEGER := 16#0cc#;
    constant ADDR_DIRECTION_MATRIX_13_DATA_0 : INTEGER := 16#0d0#;
    constant ADDR_DIRECTION_MATRIX_13_DATA_1 : INTEGER := 16#0d4#;
    constant ADDR_DIRECTION_MATRIX_13_CTRL   : INTEGER := 16#0d8#;
    constant ADDR_DIRECTION_MATRIX_14_DATA_0 : INTEGER := 16#0dc#;
    constant ADDR_DIRECTION_MATRIX_14_DATA_1 : INTEGER := 16#0e0#;
    constant ADDR_DIRECTION_MATRIX_14_CTRL   : INTEGER := 16#0e4#;
    constant ADDR_DIRECTION_MATRIX_15_DATA_0 : INTEGER := 16#0e8#;
    constant ADDR_DIRECTION_MATRIX_15_DATA_1 : INTEGER := 16#0ec#;
    constant ADDR_DIRECTION_MATRIX_15_CTRL   : INTEGER := 16#0f0#;
    constant ADDR_DIRECTION_MATRIX_16_DATA_0 : INTEGER := 16#0f4#;
    constant ADDR_DIRECTION_MATRIX_16_DATA_1 : INTEGER := 16#0f8#;
    constant ADDR_DIRECTION_MATRIX_16_CTRL   : INTEGER := 16#0fc#;
    constant ADDR_DIRECTION_MATRIX_17_DATA_0 : INTEGER := 16#100#;
    constant ADDR_DIRECTION_MATRIX_17_DATA_1 : INTEGER := 16#104#;
    constant ADDR_DIRECTION_MATRIX_17_CTRL   : INTEGER := 16#108#;
    constant ADDR_DIRECTION_MATRIX_18_DATA_0 : INTEGER := 16#10c#;
    constant ADDR_DIRECTION_MATRIX_18_DATA_1 : INTEGER := 16#110#;
    constant ADDR_DIRECTION_MATRIX_18_CTRL   : INTEGER := 16#114#;
    constant ADDR_DIRECTION_MATRIX_19_DATA_0 : INTEGER := 16#118#;
    constant ADDR_DIRECTION_MATRIX_19_DATA_1 : INTEGER := 16#11c#;
    constant ADDR_DIRECTION_MATRIX_19_CTRL   : INTEGER := 16#120#;
    constant ADDR_DIRECTION_MATRIX_20_DATA_0 : INTEGER := 16#124#;
    constant ADDR_DIRECTION_MATRIX_20_DATA_1 : INTEGER := 16#128#;
    constant ADDR_DIRECTION_MATRIX_20_CTRL   : INTEGER := 16#12c#;
    constant ADDR_DIRECTION_MATRIX_21_DATA_0 : INTEGER := 16#130#;
    constant ADDR_DIRECTION_MATRIX_21_DATA_1 : INTEGER := 16#134#;
    constant ADDR_DIRECTION_MATRIX_21_CTRL   : INTEGER := 16#138#;
    constant ADDR_DIRECTION_MATRIX_22_DATA_0 : INTEGER := 16#13c#;
    constant ADDR_DIRECTION_MATRIX_22_DATA_1 : INTEGER := 16#140#;
    constant ADDR_DIRECTION_MATRIX_22_CTRL   : INTEGER := 16#144#;
    constant ADDR_DIRECTION_MATRIX_23_DATA_0 : INTEGER := 16#148#;
    constant ADDR_DIRECTION_MATRIX_23_DATA_1 : INTEGER := 16#14c#;
    constant ADDR_DIRECTION_MATRIX_23_CTRL   : INTEGER := 16#150#;
    constant ADDR_DIRECTION_MATRIX_24_DATA_0 : INTEGER := 16#154#;
    constant ADDR_DIRECTION_MATRIX_24_DATA_1 : INTEGER := 16#158#;
    constant ADDR_DIRECTION_MATRIX_24_CTRL   : INTEGER := 16#15c#;
    constant ADDR_DIRECTION_MATRIX_25_DATA_0 : INTEGER := 16#160#;
    constant ADDR_DIRECTION_MATRIX_25_DATA_1 : INTEGER := 16#164#;
    constant ADDR_DIRECTION_MATRIX_25_CTRL   : INTEGER := 16#168#;
    constant ADDR_DIRECTION_MATRIX_26_DATA_0 : INTEGER := 16#16c#;
    constant ADDR_DIRECTION_MATRIX_26_DATA_1 : INTEGER := 16#170#;
    constant ADDR_DIRECTION_MATRIX_26_CTRL   : INTEGER := 16#174#;
    constant ADDR_DIRECTION_MATRIX_27_DATA_0 : INTEGER := 16#178#;
    constant ADDR_DIRECTION_MATRIX_27_DATA_1 : INTEGER := 16#17c#;
    constant ADDR_DIRECTION_MATRIX_27_CTRL   : INTEGER := 16#180#;
    constant ADDR_DIRECTION_MATRIX_28_DATA_0 : INTEGER := 16#184#;
    constant ADDR_DIRECTION_MATRIX_28_DATA_1 : INTEGER := 16#188#;
    constant ADDR_DIRECTION_MATRIX_28_CTRL   : INTEGER := 16#18c#;
    constant ADDR_DIRECTION_MATRIX_29_DATA_0 : INTEGER := 16#190#;
    constant ADDR_DIRECTION_MATRIX_29_DATA_1 : INTEGER := 16#194#;
    constant ADDR_DIRECTION_MATRIX_29_CTRL   : INTEGER := 16#198#;
    constant ADDR_DIRECTION_MATRIX_30_DATA_0 : INTEGER := 16#19c#;
    constant ADDR_DIRECTION_MATRIX_30_DATA_1 : INTEGER := 16#1a0#;
    constant ADDR_DIRECTION_MATRIX_30_CTRL   : INTEGER := 16#1a4#;
    constant ADDR_DIRECTION_MATRIX_31_DATA_0 : INTEGER := 16#1a8#;
    constant ADDR_DIRECTION_MATRIX_31_DATA_1 : INTEGER := 16#1ac#;
    constant ADDR_DIRECTION_MATRIX_31_CTRL   : INTEGER := 16#1b0#;
    constant ADDR_N_DATA_0                   : INTEGER := 16#1b4#;
    constant ADDR_N_CTRL                     : INTEGER := 16#1b8#;
    constant ADDR_M_DATA_0                   : INTEGER := 16#1bc#;
    constant ADDR_M_CTRL                     : INTEGER := 16#1c0#;
    constant ADDR_BITS         : INTEGER := 9;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_continue     : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC;
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_string1_mem     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_string2_mem     : UNSIGNED(63 downto 0) := (others => '0');
    signal int_max_index       : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_0 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_1 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_2 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_3 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_4 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_5 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_6 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_7 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_8 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_9 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_10 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_11 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_12 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_13 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_14 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_15 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_16 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_17 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_18 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_19 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_20 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_21 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_22 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_23 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_24 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_25 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_26 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_27 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_28 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_29 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_30 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_direction_matrix_31 : UNSIGNED(63 downto 0) := (others => '0');
    signal int_n               : UNSIGNED(31 downto 0) := (others => '0');
    signal int_m               : UNSIGNED(31 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(4) <= int_ap_continue;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_STRING1_MEM_DATA_0 =>
                        rdata_data <= RESIZE(int_string1_mem(31 downto 0), 32);
                    when ADDR_STRING1_MEM_DATA_1 =>
                        rdata_data <= RESIZE(int_string1_mem(63 downto 32), 32);
                    when ADDR_STRING2_MEM_DATA_0 =>
                        rdata_data <= RESIZE(int_string2_mem(31 downto 0), 32);
                    when ADDR_STRING2_MEM_DATA_1 =>
                        rdata_data <= RESIZE(int_string2_mem(63 downto 32), 32);
                    when ADDR_MAX_INDEX_DATA_0 =>
                        rdata_data <= RESIZE(int_max_index(31 downto 0), 32);
                    when ADDR_MAX_INDEX_DATA_1 =>
                        rdata_data <= RESIZE(int_max_index(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_0_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_0(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_0_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_0(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_1_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_1(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_1_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_1(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_2_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_2(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_2_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_2(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_3_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_3(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_3_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_3(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_4_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_4(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_4_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_4(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_5_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_5(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_5_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_5(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_6_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_6(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_6_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_6(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_7_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_7(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_7_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_7(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_8_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_8(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_8_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_8(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_9_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_9(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_9_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_9(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_10_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_10(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_10_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_10(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_11_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_11(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_11_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_11(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_12_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_12(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_12_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_12(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_13_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_13(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_13_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_13(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_14_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_14(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_14_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_14(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_15_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_15(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_15_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_15(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_16_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_16(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_16_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_16(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_17_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_17(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_17_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_17(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_18_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_18(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_18_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_18(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_19_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_19(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_19_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_19(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_20_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_20(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_20_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_20(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_21_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_21(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_21_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_21(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_22_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_22(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_22_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_22(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_23_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_23(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_23_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_23(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_24_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_24(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_24_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_24(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_25_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_25(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_25_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_25(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_26_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_26(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_26_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_26(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_27_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_27(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_27_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_27(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_28_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_28(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_28_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_28(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_29_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_29(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_29_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_29(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_30_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_30(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_30_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_30(63 downto 32), 32);
                    when ADDR_DIRECTION_MATRIX_31_DATA_0 =>
                        rdata_data <= RESIZE(int_direction_matrix_31(31 downto 0), 32);
                    when ADDR_DIRECTION_MATRIX_31_DATA_1 =>
                        rdata_data <= RESIZE(int_direction_matrix_31(63 downto 32), 32);
                    when ADDR_N_DATA_0 =>
                        rdata_data <= RESIZE(int_n(31 downto 0), 32);
                    when ADDR_M_DATA_0 =>
                        rdata_data <= RESIZE(int_m(31 downto 0), 32);
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    int_ap_done          <= ap_done;
    ap_continue          <= int_ap_continue;
    string1_mem          <= STD_LOGIC_VECTOR(int_string1_mem);
    string2_mem          <= STD_LOGIC_VECTOR(int_string2_mem);
    max_index            <= STD_LOGIC_VECTOR(int_max_index);
    direction_matrix_0   <= STD_LOGIC_VECTOR(int_direction_matrix_0);
    direction_matrix_1   <= STD_LOGIC_VECTOR(int_direction_matrix_1);
    direction_matrix_2   <= STD_LOGIC_VECTOR(int_direction_matrix_2);
    direction_matrix_3   <= STD_LOGIC_VECTOR(int_direction_matrix_3);
    direction_matrix_4   <= STD_LOGIC_VECTOR(int_direction_matrix_4);
    direction_matrix_5   <= STD_LOGIC_VECTOR(int_direction_matrix_5);
    direction_matrix_6   <= STD_LOGIC_VECTOR(int_direction_matrix_6);
    direction_matrix_7   <= STD_LOGIC_VECTOR(int_direction_matrix_7);
    direction_matrix_8   <= STD_LOGIC_VECTOR(int_direction_matrix_8);
    direction_matrix_9   <= STD_LOGIC_VECTOR(int_direction_matrix_9);
    direction_matrix_10  <= STD_LOGIC_VECTOR(int_direction_matrix_10);
    direction_matrix_11  <= STD_LOGIC_VECTOR(int_direction_matrix_11);
    direction_matrix_12  <= STD_LOGIC_VECTOR(int_direction_matrix_12);
    direction_matrix_13  <= STD_LOGIC_VECTOR(int_direction_matrix_13);
    direction_matrix_14  <= STD_LOGIC_VECTOR(int_direction_matrix_14);
    direction_matrix_15  <= STD_LOGIC_VECTOR(int_direction_matrix_15);
    direction_matrix_16  <= STD_LOGIC_VECTOR(int_direction_matrix_16);
    direction_matrix_17  <= STD_LOGIC_VECTOR(int_direction_matrix_17);
    direction_matrix_18  <= STD_LOGIC_VECTOR(int_direction_matrix_18);
    direction_matrix_19  <= STD_LOGIC_VECTOR(int_direction_matrix_19);
    direction_matrix_20  <= STD_LOGIC_VECTOR(int_direction_matrix_20);
    direction_matrix_21  <= STD_LOGIC_VECTOR(int_direction_matrix_21);
    direction_matrix_22  <= STD_LOGIC_VECTOR(int_direction_matrix_22);
    direction_matrix_23  <= STD_LOGIC_VECTOR(int_direction_matrix_23);
    direction_matrix_24  <= STD_LOGIC_VECTOR(int_direction_matrix_24);
    direction_matrix_25  <= STD_LOGIC_VECTOR(int_direction_matrix_25);
    direction_matrix_26  <= STD_LOGIC_VECTOR(int_direction_matrix_26);
    direction_matrix_27  <= STD_LOGIC_VECTOR(int_direction_matrix_27);
    direction_matrix_28  <= STD_LOGIC_VECTOR(int_direction_matrix_28);
    direction_matrix_29  <= STD_LOGIC_VECTOR(int_direction_matrix_29);
    direction_matrix_30  <= STD_LOGIC_VECTOR(int_direction_matrix_30);
    direction_matrix_31  <= STD_LOGIC_VECTOR(int_direction_matrix_31);
    n                    <= STD_LOGIC_VECTOR(int_n);
    m                    <= STD_LOGIC_VECTOR(int_m);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_ready <= ap_ready;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_continue <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(4) = '1') then
                    int_ap_continue <= '1';
                elsif (ap_done = '1' and int_ap_continue = '0' and int_auto_restart = '1') then
                    int_ap_continue <= '1'; -- auto restart
                else
                    int_ap_continue <= '0'; -- self clear
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_STRING1_MEM_DATA_0) then
                    int_string1_mem(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_string1_mem(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_STRING1_MEM_DATA_1) then
                    int_string1_mem(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_string1_mem(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_STRING2_MEM_DATA_0) then
                    int_string2_mem(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_string2_mem(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_STRING2_MEM_DATA_1) then
                    int_string2_mem(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_string2_mem(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_MAX_INDEX_DATA_0) then
                    int_max_index(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_max_index(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_MAX_INDEX_DATA_1) then
                    int_max_index(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_max_index(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_0_DATA_0) then
                    int_direction_matrix_0(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_0(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_0_DATA_1) then
                    int_direction_matrix_0(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_0(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_1_DATA_0) then
                    int_direction_matrix_1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_1_DATA_1) then
                    int_direction_matrix_1(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_1(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_2_DATA_0) then
                    int_direction_matrix_2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_2_DATA_1) then
                    int_direction_matrix_2(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_2(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_3_DATA_0) then
                    int_direction_matrix_3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_3_DATA_1) then
                    int_direction_matrix_3(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_3(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_4_DATA_0) then
                    int_direction_matrix_4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_4_DATA_1) then
                    int_direction_matrix_4(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_4(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_5_DATA_0) then
                    int_direction_matrix_5(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_5(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_5_DATA_1) then
                    int_direction_matrix_5(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_5(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_6_DATA_0) then
                    int_direction_matrix_6(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_6(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_6_DATA_1) then
                    int_direction_matrix_6(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_6(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_7_DATA_0) then
                    int_direction_matrix_7(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_7(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_7_DATA_1) then
                    int_direction_matrix_7(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_7(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_8_DATA_0) then
                    int_direction_matrix_8(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_8(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_8_DATA_1) then
                    int_direction_matrix_8(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_8(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_9_DATA_0) then
                    int_direction_matrix_9(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_9(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_9_DATA_1) then
                    int_direction_matrix_9(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_9(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_10_DATA_0) then
                    int_direction_matrix_10(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_10(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_10_DATA_1) then
                    int_direction_matrix_10(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_10(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_11_DATA_0) then
                    int_direction_matrix_11(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_11(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_11_DATA_1) then
                    int_direction_matrix_11(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_11(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_12_DATA_0) then
                    int_direction_matrix_12(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_12(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_12_DATA_1) then
                    int_direction_matrix_12(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_12(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_13_DATA_0) then
                    int_direction_matrix_13(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_13(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_13_DATA_1) then
                    int_direction_matrix_13(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_13(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_14_DATA_0) then
                    int_direction_matrix_14(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_14(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_14_DATA_1) then
                    int_direction_matrix_14(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_14(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_15_DATA_0) then
                    int_direction_matrix_15(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_15(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_15_DATA_1) then
                    int_direction_matrix_15(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_15(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_16_DATA_0) then
                    int_direction_matrix_16(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_16(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_16_DATA_1) then
                    int_direction_matrix_16(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_16(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_17_DATA_0) then
                    int_direction_matrix_17(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_17(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_17_DATA_1) then
                    int_direction_matrix_17(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_17(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_18_DATA_0) then
                    int_direction_matrix_18(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_18(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_18_DATA_1) then
                    int_direction_matrix_18(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_18(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_19_DATA_0) then
                    int_direction_matrix_19(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_19(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_19_DATA_1) then
                    int_direction_matrix_19(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_19(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_20_DATA_0) then
                    int_direction_matrix_20(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_20(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_20_DATA_1) then
                    int_direction_matrix_20(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_20(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_21_DATA_0) then
                    int_direction_matrix_21(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_21(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_21_DATA_1) then
                    int_direction_matrix_21(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_21(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_22_DATA_0) then
                    int_direction_matrix_22(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_22(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_22_DATA_1) then
                    int_direction_matrix_22(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_22(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_23_DATA_0) then
                    int_direction_matrix_23(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_23(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_23_DATA_1) then
                    int_direction_matrix_23(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_23(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_24_DATA_0) then
                    int_direction_matrix_24(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_24(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_24_DATA_1) then
                    int_direction_matrix_24(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_24(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_25_DATA_0) then
                    int_direction_matrix_25(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_25(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_25_DATA_1) then
                    int_direction_matrix_25(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_25(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_26_DATA_0) then
                    int_direction_matrix_26(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_26(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_26_DATA_1) then
                    int_direction_matrix_26(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_26(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_27_DATA_0) then
                    int_direction_matrix_27(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_27(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_27_DATA_1) then
                    int_direction_matrix_27(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_27(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_28_DATA_0) then
                    int_direction_matrix_28(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_28(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_28_DATA_1) then
                    int_direction_matrix_28(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_28(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_29_DATA_0) then
                    int_direction_matrix_29(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_29(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_29_DATA_1) then
                    int_direction_matrix_29(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_29(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_30_DATA_0) then
                    int_direction_matrix_30(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_30(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_30_DATA_1) then
                    int_direction_matrix_30(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_30(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_31_DATA_0) then
                    int_direction_matrix_31(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_31(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_DIRECTION_MATRIX_31_DATA_1) then
                    int_direction_matrix_31(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_direction_matrix_31(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_N_DATA_0) then
                    int_n(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_n(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_M_DATA_0) then
                    int_m(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_m(31 downto 0));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
