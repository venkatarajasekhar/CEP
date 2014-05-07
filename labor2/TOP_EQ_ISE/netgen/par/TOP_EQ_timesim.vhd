--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: TOP_EQ_timesim.vhd
-- /___/   /\     Timestamp: Wed May 07 16:25:41 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf TOP_EQ.pcf -rpw 100 -tpw 0 -ar Structure -tm TOP_EQ -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim TOP_EQ.ncd TOP_EQ_timesim.vhd 
-- Device	: xa6slx16csg324-3 (PRELIMINARY 1.15 2010-12-02)
-- Input file	: TOP_EQ.ncd
-- Output file	: C:\Documents and Settings\TEMP\Desktop\CEP_ISE\netgen\par\TOP_EQ_timesim.vhd
-- # of Entities	: 1
-- Design Name	: TOP_EQ
-- Xilinx	: C:\Xilinx\12.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity TOP_EQ is
  port (
    NEX : in STD_LOGIC := 'X'; 
    NOE : in STD_LOGIC := 'X'; 
    NWE : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    RDY : out STD_LOGIC; 
    LOCKED : out STD_LOGIC; 
    OUT_CLK_PE : out STD_LOGIC; 
    OUT_CLK_SYN : out STD_LOGIC; 
    DATA : inout STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end TOP_EQ;

architecture Structure of TOP_EQ is
  signal INT_CLK_SYN : STD_LOGIC; 
  signal INT_TRISTATE : STD_LOGIC; 
  signal INT_NWE2_1704 : STD_LOGIC; 
  signal INT_NWE3_1705 : STD_LOGIC; 
  signal INT_NEX2_1706 : STD_LOGIC; 
  signal INT_NOE2_1707 : STD_LOGIC; 
  signal INT_EN_PULSE_0 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0 : STD_LOGIC; 
  signal INT_START_INT_LOCKED_OR_38_o : STD_LOGIC; 
  signal RESET_IBUF_0 : STD_LOGIC; 
  signal LOCKED_OBUF_1713 : STD_LOGIC; 
  signal INT_START_1714 : STD_LOGIC; 
  signal Result_0_0 : STD_LOGIC; 
  signal Result_1_0 : STD_LOGIC; 
  signal Result_2_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_Q_1721 : STD_LOGIC; 
  signal Result_3_0 : STD_LOGIC; 
  signal Result_4_0 : STD_LOGIC; 
  signal Result_5_0 : STD_LOGIC; 
  signal Result_6_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_Q_1730 : STD_LOGIC; 
  signal Result_7_0 : STD_LOGIC; 
  signal Result_8_0 : STD_LOGIC; 
  signal Result_9_0 : STD_LOGIC; 
  signal Result_10_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_Q_1739 : STD_LOGIC; 
  signal Result_11_0 : STD_LOGIC; 
  signal Result_12_0 : STD_LOGIC; 
  signal Result_13_0 : STD_LOGIC; 
  signal Result_14_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_Q_1748 : STD_LOGIC; 
  signal Result_15_0 : STD_LOGIC; 
  signal Result_16_0 : STD_LOGIC; 
  signal Result_17_0 : STD_LOGIC; 
  signal Result_18_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_Q_1757 : STD_LOGIC; 
  signal Result_19_0 : STD_LOGIC; 
  signal Result_20_0 : STD_LOGIC; 
  signal Result_21_0 : STD_LOGIC; 
  signal Result_22_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_Q_1766 : STD_LOGIC; 
  signal Result_23_0 : STD_LOGIC; 
  signal Result_24_0 : STD_LOGIC; 
  signal Result_25_0 : STD_LOGIC; 
  signal Result_26_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_Q_1775 : STD_LOGIC; 
  signal Result_27_0 : STD_LOGIC; 
  signal Result_28_0 : STD_LOGIC; 
  signal Result_29_0 : STD_LOGIC; 
  signal Result_30_0 : STD_LOGIC; 
  signal Result_31_0 : STD_LOGIC; 
  signal Result_0_1_0 : STD_LOGIC; 
  signal Result_1_1_0 : STD_LOGIC; 
  signal Result_2_1_0 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_Q_1792 : STD_LOGIC; 
  signal Result_3_1_0 : STD_LOGIC; 
  signal Result_4_1_0 : STD_LOGIC; 
  signal Result_5_1_0 : STD_LOGIC; 
  signal Result_6_1_0 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_Q_1801 : STD_LOGIC; 
  signal Result_7_1_0 : STD_LOGIC; 
  signal Result_8_1_0 : STD_LOGIC; 
  signal Result_9_1_0 : STD_LOGIC; 
  signal Result_10_1_0 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_Q_1810 : STD_LOGIC; 
  signal Result_11_1_0 : STD_LOGIC; 
  signal Result_12_1_0 : STD_LOGIC; 
  signal Result_13_1_0 : STD_LOGIC; 
  signal Result_14_1_0 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_Q_1819 : STD_LOGIC; 
  signal Result_15_1_0 : STD_LOGIC; 
  signal Result_16_1_0 : STD_LOGIC; 
  signal Result_17_1_0 : STD_LOGIC; 
  signal Result_18_1_0 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_Q_1828 : STD_LOGIC; 
  signal Result_19_1_0 : STD_LOGIC; 
  signal Result_20_1_0 : STD_LOGIC; 
  signal Result_21_1_0 : STD_LOGIC; 
  signal Result_22_1_0 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_Q_1837 : STD_LOGIC; 
  signal Result_23_1_0 : STD_LOGIC; 
  signal Result_24_1_0 : STD_LOGIC; 
  signal Result_25_1_0 : STD_LOGIC; 
  signal Result_26_1_0 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_Q_1846 : STD_LOGIC; 
  signal Result_27_1_0 : STD_LOGIC; 
  signal Result_28_1_0 : STD_LOGIC; 
  signal Result_29_1_0 : STD_LOGIC; 
  signal Result_30_1_0 : STD_LOGIC; 
  signal Result_31_1_0 : STD_LOGIC; 
  signal EQUAL_Result_0_0 : STD_LOGIC; 
  signal EQUAL_Result_1_0 : STD_LOGIC; 
  signal EQUAL_Result_2_0 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_cy_3_Q_1863 : STD_LOGIC; 
  signal EQUAL_Result_3_0 : STD_LOGIC; 
  signal EQUAL_Result_4_0 : STD_LOGIC; 
  signal EQUAL_Result_5_0 : STD_LOGIC; 
  signal EQUAL_Result_6_0 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_cy_7_Q_1872 : STD_LOGIC; 
  signal EQUAL_Result_7_0 : STD_LOGIC; 
  signal EQUAL_Result_8_0 : STD_LOGIC; 
  signal EQUAL_Result_9_0 : STD_LOGIC; 
  signal EQUAL_Result_10_0 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_cy_11_Q_1881 : STD_LOGIC; 
  signal EQUAL_Result_11_0 : STD_LOGIC; 
  signal EQUAL_Result_12_0 : STD_LOGIC; 
  signal EQUAL_Result_13_0 : STD_LOGIC; 
  signal EQUAL_Result_14_0 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_cy_15_Q_1890 : STD_LOGIC; 
  signal EQUAL_Result_15_0 : STD_LOGIC; 
  signal EQUAL_Result_16_0 : STD_LOGIC; 
  signal EQUAL_Result_17_0 : STD_LOGIC; 
  signal EQUAL_Result_18_0 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_cy_19_Q_1899 : STD_LOGIC; 
  signal EQUAL_Result_19_0 : STD_LOGIC; 
  signal EQUAL_Result_20_0 : STD_LOGIC; 
  signal EQUAL_Result_21_0 : STD_LOGIC; 
  signal EQUAL_Result_22_0 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_cy_23_Q_1908 : STD_LOGIC; 
  signal EQUAL_Result_23_0 : STD_LOGIC; 
  signal EQUAL_Result_24_0 : STD_LOGIC; 
  signal EQUAL_Result_25_0 : STD_LOGIC; 
  signal EQUAL_Result_26_0 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_cy_27_Q_1917 : STD_LOGIC; 
  signal EQUAL_Result_27_0 : STD_LOGIC; 
  signal EQUAL_Result_28_0 : STD_LOGIC; 
  signal EQUAL_Result_29_0 : STD_LOGIC; 
  signal EQUAL_Result_30_0 : STD_LOGIC; 
  signal EQUAL_Result_31_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_0_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_1_0 : STD_LOGIC; 
  signal INT_CLK_PE : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_2_0 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_Q_1940 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_3_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_4_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_5_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_6_0 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_Q_1957 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_7_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_8_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_9_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_10_0 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_Q_1974 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_11_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_12_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_13_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_14_0 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_15_0 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal N7_0 : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal N5_0 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal CLKWIZ_clkin1_0 : STD_LOGIC; 
  signal NEX_IBUF_0 : STD_LOGIC; 
  signal NOE_IBUF_0 : STD_LOGIC; 
  signal EQUAL_RDY_2005 : STD_LOGIC; 
  signal NWE_IBUF_0 : STD_LOGIC; 
  signal N19_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal N13_0 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal N10_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_OUTPUT_FREQ_2017 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_OUTPUT_FREQ_2018 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_ML_NEW_DIVCLK : STD_LOGIC; 
  signal CLKWIZ_clkfbout_buf : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_ML_NEW_O : STD_LOGIC; 
  signal CLKWIZ_clkout1 : STD_LOGIC; 
  signal CLKWIZ_clkout0 : STD_LOGIC; 
  signal CLKWIZ_clkfbout : STD_LOGIC; 
  signal EQUAL_N4 : STD_LOGIC; 
  signal EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o : STD_LOGIC; 
  signal FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_5_2029 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_4_2030 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_3_2031 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_2_2032 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_1_2033 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_Q : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o : STD_LOGIC; 
  signal EQUAL_RDY_PWR_7_o_MUX_2_o_31_161 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_5_2039 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_4_2040 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_3_2041 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_2_2042 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_1_2043 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_Q : STD_LOGIC; 
  signal INT_PE_PULSE_2045 : STD_LOGIC; 
  signal EQUAL_RDY_PWR_7_o_MUX_2_o_31_1 : STD_LOGIC; 
  signal EQUAL_RDY_PWR_7_o_MUX_2_o_31_11_2047 : STD_LOGIC; 
  signal EQUAL_RDY_PWR_7_o_MUX_2_o_31_12_2048 : STD_LOGIC; 
  signal EQUAL_RDY_PWR_7_o_MUX_2_o_31_13_2049 : STD_LOGIC; 
  signal EQUAL_RDY_PWR_7_o_MUX_2_o_31_14_2050 : STD_LOGIC; 
  signal INT_DATA_3_10_0 : STD_LOGIC; 
  signal INT_DATA_3_11_0 : STD_LOGIC; 
  signal INT_DATA_3_12_0 : STD_LOGIC; 
  signal INT_DATA_3_13_0 : STD_LOGIC; 
  signal INT_DATA_3_14_0 : STD_LOGIC; 
  signal INT_DATA_3_15_0 : STD_LOGIC; 
  signal INT_DATA_3_0_0 : STD_LOGIC; 
  signal INT_DATA_3_1_0 : STD_LOGIC; 
  signal INT_DATA_3_2_0 : STD_LOGIC; 
  signal INT_DATA_3_3_0 : STD_LOGIC; 
  signal INT_DATA_3_4_0 : STD_LOGIC; 
  signal INT_DATA_3_5_0 : STD_LOGIC; 
  signal INT_DATA_3_6_0 : STD_LOGIC; 
  signal INT_DATA_3_7_0 : STD_LOGIC; 
  signal INT_DATA_3_8_0 : STD_LOGIC; 
  signal INT_DATA_3_9_0 : STD_LOGIC; 
  signal INT_NWE1_2067 : STD_LOGIC; 
  signal INT_NOE1_2068 : STD_LOGIC; 
  signal INT_NEX1_2069 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_3_rt_17 : STD_LOGIC; 
  signal ProtoComp2_CYINITGND_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_2_rt_8 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_1_rt_5 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_6_rt_31 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_5_rt_28 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_7_rt_25 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_4_rt_23 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_10_rt_53 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_9_rt_50 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_11_rt_47 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_8_rt_45 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_14_rt_75 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_13_rt_72 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_15_rt_69 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_12_rt_67 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_18_rt_97 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_17_rt_94 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_19_rt_91 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_16_rt_89 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_22_rt_119 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_21_rt_116 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_23_rt_113 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_20_rt_111 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_26_rt_141 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_25_rt_138 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_27_rt_135 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_24_rt_133 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_30_rt_167 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_29_rt_166 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_28_rt_163 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER_31_rt_156 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_3_rt_190 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_ProtoComp2_CYINITGND_0 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_2_rt_181 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_1_rt_178 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_6_rt_204 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_5_rt_201 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_7_rt_198 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_4_rt_196 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_10_rt_226 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_9_rt_223 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_11_rt_220 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_8_rt_218 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_14_rt_248 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_13_rt_245 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_15_rt_242 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_12_rt_240 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_18_rt_270 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_17_rt_267 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_19_rt_264 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_16_rt_262 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_22_rt_292 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_21_rt_289 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_23_rt_286 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_20_rt_284 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_26_rt_314 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_25_rt_311 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_27_rt_308 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_24_rt_306 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_30_rt_340 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_29_rt_339 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_28_rt_336 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_p1_COUNTER_31_rt_329 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_3_rt_363 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_cy_3_ProtoComp2_CYINITGND_0 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_2_rt_354 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_1_rt_351 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_6_rt_377 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_5_rt_374 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_7_rt_371 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_4_rt_369 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_10_rt_399 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_9_rt_396 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_11_rt_393 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_8_rt_391 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_14_rt_421 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_13_rt_418 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_15_rt_415 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_12_rt_413 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_18_rt_443 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_17_rt_440 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_19_rt_437 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_16_rt_435 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_22_rt_465 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_21_rt_462 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_23_rt_459 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_20_rt_457 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_26_rt_487 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_25_rt_484 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_27_rt_481 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_24_rt_479 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_30_rt_513 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_29_rt_512 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_28_rt_509 : STD_LOGIC; 
  signal EQUAL_Akku_STEPS_31_rt_502 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_3_Q_545 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_2_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_3_Q : STD_LOGIC; 
  signal ProtoComp5_CYINITGND_0 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_1_Q_529 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_2_Q_524 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_0_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_1_Q : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_0_Q_520 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_5_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_6_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_4_Q : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_6_Q_572 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_5_Q_565 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_4_Q_562 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_7_Q_556 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_7_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_9_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_10_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_8_Q : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_10_Q_601 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_9_Q_594 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_8_Q_591 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_11_Q_585 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_11_Q : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_13_Q_627 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_12_Q_623 : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_15_Q_620 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_15_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_14_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_12_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_13_Q : STD_LOGIC; 
  signal EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_14_Q_609 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal RESET_IBUF_665 : STD_LOGIC; 
  signal CLKWIZ_clkin1 : STD_LOGIC; 
  signal NEX_IBUF_671 : STD_LOGIC; 
  signal NOE_IBUF_674 : STD_LOGIC; 
  signal NWE_IBUF_679 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO0 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO1 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO2 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO3 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO4 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO5 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO6 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO7 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO8 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO9 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO10 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO11 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO12 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO13 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO14 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DO15 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM0 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUT2 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUT4 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKFBDCM : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM5 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM1 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DRDY : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM2 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUT5 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM4 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM3 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKOUT3 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI0 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI1 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI2 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI3 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI4 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI5 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI6 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI7 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI8 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI9 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI10 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI11 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI12 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI13 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI14 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DI15 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DADDR0 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DADDR1 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DADDR2 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DADDR3 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DADDR4 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DWE : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_RST_INT : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKIN2 : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DEN : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_DCLK : STD_LOGIC; 
  signal CLKWIZ_pll_base_inst_PLL_ADV_CLKFBIN_INT : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_4 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_2 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_1 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_3 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_12 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_10 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_9 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_11 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_14 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_15 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_13 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_17 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_16 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_18 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_22 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_20 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_19 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_21 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_30 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_28 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_27 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_29 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_8 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_6 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_5 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_7 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_0 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_26 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_24 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_23 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_25 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_31 : STD_LOGIC; 
  signal FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o : STD_LOGIC; 
  signal EQUAL_RDY_rstpot_963 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_0 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_1 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_2 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_3 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_4 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_5 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_6 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_7 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_0_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_1_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_2_Q : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_8 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_9 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_10 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_16 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_17 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_15 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_18 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_19 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_20 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_28 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_27 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_26 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_25 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_4 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_2 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_1 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_3 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_8 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_6 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_5 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_7 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_12 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_10 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_9 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_11 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_14 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_15 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_13 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_17 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_16 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_18 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_22 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_20 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_19 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_21 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_26 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_24 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_23 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_25 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_30 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_28 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_27 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_29 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_14 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_13 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_12 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_11_1301 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_24 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_23 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_22 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_21_1331 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_30 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_31_1370 : STD_LOGIC; 
  signal EQUAL_Mcount_Akku_STEPS_eqn_29 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_0 : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_31 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_6_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_5_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_4_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_3_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_10_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_9_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_8_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_7_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_14_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_13_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_12_Q : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_11_Q : STD_LOGIC; 
  signal INT_EN_0 : STD_LOGIC; 
  signal INT_EN_PULSE_1544 : STD_LOGIC; 
  signal INT_DATA_2_12_rt_1578 : STD_LOGIC; 
  signal INT_DATA_2_13_rt_1573 : STD_LOGIC; 
  signal INT_DATA_2_14_rt_1568 : STD_LOGIC; 
  signal INT_DATA_2_15_rt_1562 : STD_LOGIC; 
  signal INT_DATA_2_0_rt_1622 : STD_LOGIC; 
  signal INT_DATA_2_1_rt_1617 : STD_LOGIC; 
  signal INT_DATA_2_2_rt_1612 : STD_LOGIC; 
  signal INT_DATA_2_3_rt_1606 : STD_LOGIC; 
  signal EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_15_Q : STD_LOGIC; 
  signal INT_DATA_2_8_rt_1652 : STD_LOGIC; 
  signal INT_DATA_2_9_rt_1647 : STD_LOGIC; 
  signal INT_DATA_2_10_rt_1642 : STD_LOGIC; 
  signal INT_DATA_2_11_rt_1636 : STD_LOGIC; 
  signal INT_DATA_2_4_rt_1674 : STD_LOGIC; 
  signal INT_DATA_2_5_rt_1669 : STD_LOGIC; 
  signal INT_DATA_2_6_rt_1664 : STD_LOGIC; 
  signal INT_DATA_2_7_rt_1658 : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_W_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_DATA_10_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_11_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_12_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_13_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_14_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_15_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_RDY_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_0_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_1_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_2_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_3_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_4_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_5_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_6_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_7_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_8_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_DATA_9_IOBUF_OBUFT_I : STD_LOGIC; 
  signal NlwBufferSignal_LOCKED_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT_CLK_SYN_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT_CLK_PE_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_I : STD_LOGIC; 
  signal NlwBufferSignal_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1_I : STD_LOGIC; 
  signal NlwBufferSignal_CLKWIZ_pll_base_inst_PLL_ADV_CLKIN1 : STD_LOGIC; 
  signal NlwBufferSignal_CLKWIZ_clkout1_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_CLKWIZ_clkout2_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_CLKWIZ_clkf_buf_IN : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_OUTPUT_FREQ_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_RDY_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_PE_PULSE_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_STEPS_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_START_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_START_IN : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_OUTPUT_FREQ_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_NWE3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_NWE3_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_NWE2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_NWE2_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_NWE1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_NWE1_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_EN_PULSE_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_NOE2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_NOE2_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_NOE1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_NOE1_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_NEX2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_NEX2_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_NEX1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_NEX1_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_Y_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_EQUAL_Akku_RES_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_2_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_INT_DATA_3_4_CLK : STD_LOGIC; 
  signal NLW_N1_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_17_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_21_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_20_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_19_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_18_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_25_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_24_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_23_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_22_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_29_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_28_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_27_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_26_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_32_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_31_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_30_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_37_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_36_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_35_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_41_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_40_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_39_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_38_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_45_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_44_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_43_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_42_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_49_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_48_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_47_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_46_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_53_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_52_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_51_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_50_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_57_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_56_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_55_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_54_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_61_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_60_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_59_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_58_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_64_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_63_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_62_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_94_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_95_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_96_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_90_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_91_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_92_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_93_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_86_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_87_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_88_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_89_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_82_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_83_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_84_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_85_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_78_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_79_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_80_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_81_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_74_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_75_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_76_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_77_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_70_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_71_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_72_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_73_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Mcount_Akku_STEPS_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_67_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_68_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_69_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_IOCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_CLKWIZ_pll_base_inst_PLL_ADV_REL_UNCONNECTED : STD_LOGIC; 
  signal FREQ_DIV_I_SYN_p1_COUNTER : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal FREQ_DIV_I_PE_p1_COUNTER : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal EQUAL_Akku_STEPS : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal EQUAL_Akku_RES : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal INT_Y : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal EQUAL_W : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal INT_DATA_2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal FREQ_DIV_I_SYN_Mcount_p1_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal FREQ_DIV_I_PE_Mcount_p1_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal EQUAL_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal EQUAL_Mcount_Akku_STEPS_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal INT_DATA_3 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(3),
      O => Result_3_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(2),
      O => Result_2_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(1),
      O => Result_1_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(0),
      O => Result_0_0
    );
  FREQ_DIV_I_SYN_p1_COUNTER_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(3),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_3_rt_17
    );
  N1_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp2_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X30Y54"
    )
    port map (
      O => ProtoComp2_CYINITGND_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y54"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp2_CYINITGND_0,
      CO(3) => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_Q_1721,
      CO(2) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => FREQ_DIV_I_SYN_p1_COUNTER_3_rt_17,
      S(2) => FREQ_DIV_I_SYN_p1_COUNTER_2_rt_8,
      S(1) => FREQ_DIV_I_SYN_p1_COUNTER_1_rt_5,
      S(0) => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_lut(0)
    );
  FREQ_DIV_I_SYN_p1_COUNTER_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(2),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_2_rt_8
    );
  N1_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_4_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(1),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_1_rt_5
    );
  N1_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_3_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(0),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_lut(0)
    );
  N0_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_2_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(7),
      O => Result_7_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(6),
      O => Result_6_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(5),
      O => Result_5_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(4),
      O => Result_4_0
    );
  FREQ_DIV_I_SYN_p1_COUNTER_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(7),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_7_rt_25
    );
  N1_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_9_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y55"
    )
    port map (
      CI => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_3_Q_1721,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_Q_1730,
      CO(2) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => FREQ_DIV_I_SYN_p1_COUNTER_7_rt_25,
      S(2) => FREQ_DIV_I_SYN_p1_COUNTER_6_rt_31,
      S(1) => FREQ_DIV_I_SYN_p1_COUNTER_5_rt_28,
      S(0) => FREQ_DIV_I_SYN_p1_COUNTER_4_rt_23
    );
  FREQ_DIV_I_SYN_p1_COUNTER_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(6),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_6_rt_31
    );
  N1_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_8_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(5),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_5_rt_28
    );
  N1_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_7_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(4),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_4_rt_23
    );
  N1_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_6_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(11),
      O => Result_11_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(10),
      O => Result_10_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(9),
      O => Result_9_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(8),
      O => Result_8_0
    );
  FREQ_DIV_I_SYN_p1_COUNTER_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y56",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(11),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_11_rt_47
    );
  N1_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_13_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y56"
    )
    port map (
      CI => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_7_Q_1730,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_Q_1739,
      CO(2) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => FREQ_DIV_I_SYN_p1_COUNTER_11_rt_47,
      S(2) => FREQ_DIV_I_SYN_p1_COUNTER_10_rt_53,
      S(1) => FREQ_DIV_I_SYN_p1_COUNTER_9_rt_50,
      S(0) => FREQ_DIV_I_SYN_p1_COUNTER_8_rt_45
    );
  FREQ_DIV_I_SYN_p1_COUNTER_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y56",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(10),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_10_rt_53
    );
  N1_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_12_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y56",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(9),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_9_rt_50
    );
  N1_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_11_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y56",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(8),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_8_rt_45
    );
  N1_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y56",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_10_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(15),
      O => Result_15_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(14),
      O => Result_14_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(13),
      O => Result_13_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(12),
      O => Result_12_0
    );
  FREQ_DIV_I_SYN_p1_COUNTER_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y57",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_I_SYN_p1_COUNTER(15),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_15_rt_69
    );
  N1_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_17_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y57"
    )
    port map (
      CI => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_11_Q_1739,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_Q_1748,
      CO(2) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(15),
      O(2) => Result(14),
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => FREQ_DIV_I_SYN_p1_COUNTER_15_rt_69,
      S(2) => FREQ_DIV_I_SYN_p1_COUNTER_14_rt_75,
      S(1) => FREQ_DIV_I_SYN_p1_COUNTER_13_rt_72,
      S(0) => FREQ_DIV_I_SYN_p1_COUNTER_12_rt_67
    );
  FREQ_DIV_I_SYN_p1_COUNTER_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y57",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(14),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_14_rt_75
    );
  N1_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_16_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y57",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(13),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_13_rt_72
    );
  N1_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_15_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y57",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(12),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_12_rt_67
    );
  N1_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_14_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(19),
      O => Result_19_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(18),
      O => Result_18_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(17),
      O => Result_17_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(16),
      O => Result_16_0
    );
  FREQ_DIV_I_SYN_p1_COUNTER_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y58",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(19),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_19_rt_91
    );
  N1_21_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_21_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y58"
    )
    port map (
      CI => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_15_Q_1748,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_Q_1757,
      CO(2) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(19),
      O(2) => Result(18),
      O(1) => Result(17),
      O(0) => Result(16),
      S(3) => FREQ_DIV_I_SYN_p1_COUNTER_19_rt_91,
      S(2) => FREQ_DIV_I_SYN_p1_COUNTER_18_rt_97,
      S(1) => FREQ_DIV_I_SYN_p1_COUNTER_17_rt_94,
      S(0) => FREQ_DIV_I_SYN_p1_COUNTER_16_rt_89
    );
  FREQ_DIV_I_SYN_p1_COUNTER_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y58",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(18),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_18_rt_97
    );
  N1_20_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_20_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y58",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(17),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_17_rt_94
    );
  N1_19_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_19_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y58",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(16),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_16_rt_89
    );
  N1_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_18_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(23),
      O => Result_23_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(22),
      O => Result_22_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(21),
      O => Result_21_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(20),
      O => Result_20_0
    );
  FREQ_DIV_I_SYN_p1_COUNTER_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y59",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(23),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_23_rt_113
    );
  N1_25_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_25_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y59"
    )
    port map (
      CI => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_19_Q_1757,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_Q_1766,
      CO(2) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(23),
      O(2) => Result(22),
      O(1) => Result(21),
      O(0) => Result(20),
      S(3) => FREQ_DIV_I_SYN_p1_COUNTER_23_rt_113,
      S(2) => FREQ_DIV_I_SYN_p1_COUNTER_22_rt_119,
      S(1) => FREQ_DIV_I_SYN_p1_COUNTER_21_rt_116,
      S(0) => FREQ_DIV_I_SYN_p1_COUNTER_20_rt_111
    );
  FREQ_DIV_I_SYN_p1_COUNTER_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y59",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(22),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_22_rt_119
    );
  N1_24_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_24_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y59",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(21),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_21_rt_116
    );
  N1_23_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_23_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y59",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(20),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_20_rt_111
    );
  N1_22_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_22_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(27),
      O => Result_27_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(26),
      O => Result_26_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(25),
      O => Result_25_0
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(24),
      O => Result_24_0
    );
  FREQ_DIV_I_SYN_p1_COUNTER_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(27),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_27_rt_135
    );
  N1_29_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_29_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y60"
    )
    port map (
      CI => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_23_Q_1766,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_Q_1775,
      CO(2) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(27),
      O(2) => Result(26),
      O(1) => Result(25),
      O(0) => Result(24),
      S(3) => FREQ_DIV_I_SYN_p1_COUNTER_27_rt_135,
      S(2) => FREQ_DIV_I_SYN_p1_COUNTER_26_rt_141,
      S(1) => FREQ_DIV_I_SYN_p1_COUNTER_25_rt_138,
      S(0) => FREQ_DIV_I_SYN_p1_COUNTER_24_rt_133
    );
  FREQ_DIV_I_SYN_p1_COUNTER_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(26),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_26_rt_141
    );
  N1_28_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_28_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(25),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_25_rt_138
    );
  N1_27_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_27_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(24),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_24_rt_133
    );
  N1_26_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_26_A5LUT_O_UNCONNECTED
    );
  Result_31_Result_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(31),
      O => Result_31_0
    );
  Result_31_Result_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(30),
      O => Result_30_0
    );
  Result_31_Result_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(29),
      O => Result_29_0
    );
  Result_31_Result_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(28),
      O => Result_28_0
    );
  FREQ_DIV_I_SYN_p1_COUNTER_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(31),
      O => FREQ_DIV_I_SYN_p1_COUNTER_31_rt_156
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y61"
    )
    port map (
      CI => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_cy_27_Q_1775,
      CYINIT => '0',
      CO(3) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_FREQ_DIV_I_SYN_Mcount_p1_COUNTER_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(31),
      O(2) => Result(30),
      O(1) => Result(29),
      O(0) => Result(28),
      S(3) => FREQ_DIV_I_SYN_p1_COUNTER_31_rt_156,
      S(2) => FREQ_DIV_I_SYN_p1_COUNTER_30_rt_167,
      S(1) => FREQ_DIV_I_SYN_p1_COUNTER_29_rt_166,
      S(0) => FREQ_DIV_I_SYN_p1_COUNTER_28_rt_163
    );
  FREQ_DIV_I_SYN_p1_COUNTER_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(30),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_30_rt_167
    );
  N1_32_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_32_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(29),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_29_rt_166
    );
  N1_31_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_31_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_SYN_p1_COUNTER_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(28),
      ADR5 => '1',
      O => FREQ_DIV_I_SYN_p1_COUNTER_28_rt_163
    );
  N1_30_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_30_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_3_1,
      O => Result_3_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_2_1,
      O => Result_2_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_1_1,
      O => Result_1_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_0_1,
      O => Result_0_1_0
    );
  FREQ_DIV_I_PE_p1_COUNTER_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(3),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_3_rt_190
    );
  N1_37_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_37_D5LUT_O_UNCONNECTED
    );
  ProtoComp2_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X16Y46"
    )
    port map (
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_ProtoComp2_CYINITGND_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y46"
    )
    port map (
      CI => '0',
      CYINIT => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_ProtoComp2_CYINITGND_0,
      CO(3) => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_Q_1792,
      CO(2) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result_3_1,
      O(2) => Result_2_1,
      O(1) => Result_1_1,
      O(0) => Result_0_1,
      S(3) => FREQ_DIV_I_PE_p1_COUNTER_3_rt_190,
      S(2) => FREQ_DIV_I_PE_p1_COUNTER_2_rt_181,
      S(1) => FREQ_DIV_I_PE_p1_COUNTER_1_rt_178,
      S(0) => FREQ_DIV_I_PE_Mcount_p1_COUNTER_lut(0)
    );
  FREQ_DIV_I_PE_p1_COUNTER_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(2),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_2_rt_181
    );
  N1_36_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_36_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(1),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_1_rt_178
    );
  N1_35_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_35_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(0),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_lut(0)
    );
  N0_3_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y46",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_7_1,
      O => Result_7_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_6_1,
      O => Result_6_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_5_1,
      O => Result_5_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_4_1,
      O => Result_4_1_0
    );
  FREQ_DIV_I_PE_p1_COUNTER_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y47",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(7),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_7_rt_198
    );
  N1_41_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y47",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_41_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y47"
    )
    port map (
      CI => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_3_Q_1792,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_Q_1801,
      CO(2) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_7_1,
      O(2) => Result_6_1,
      O(1) => Result_5_1,
      O(0) => Result_4_1,
      S(3) => FREQ_DIV_I_PE_p1_COUNTER_7_rt_198,
      S(2) => FREQ_DIV_I_PE_p1_COUNTER_6_rt_204,
      S(1) => FREQ_DIV_I_PE_p1_COUNTER_5_rt_201,
      S(0) => FREQ_DIV_I_PE_p1_COUNTER_4_rt_196
    );
  FREQ_DIV_I_PE_p1_COUNTER_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y47",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(6),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_6_rt_204
    );
  N1_40_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y47",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_40_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y47",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(5),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_5_rt_201
    );
  N1_39_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y47",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_39_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y47",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(4),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_4_rt_196
    );
  N1_38_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y47",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_38_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_11_1,
      O => Result_11_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_10_1,
      O => Result_10_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_9_1,
      O => Result_9_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_8_1,
      O => Result_8_1_0
    );
  FREQ_DIV_I_PE_p1_COUNTER_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y48",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(11),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_11_rt_220
    );
  N1_45_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y48",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_45_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y48"
    )
    port map (
      CI => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_7_Q_1801,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_Q_1810,
      CO(2) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_11_1,
      O(2) => Result_10_1,
      O(1) => Result_9_1,
      O(0) => Result_8_1,
      S(3) => FREQ_DIV_I_PE_p1_COUNTER_11_rt_220,
      S(2) => FREQ_DIV_I_PE_p1_COUNTER_10_rt_226,
      S(1) => FREQ_DIV_I_PE_p1_COUNTER_9_rt_223,
      S(0) => FREQ_DIV_I_PE_p1_COUNTER_8_rt_218
    );
  FREQ_DIV_I_PE_p1_COUNTER_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y48",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(10),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_10_rt_226
    );
  N1_44_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y48",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_44_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y48",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(9),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_9_rt_223
    );
  N1_43_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y48",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_43_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y48",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(8),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_8_rt_218
    );
  N1_42_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y48",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_42_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_15_1,
      O => Result_15_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_14_1,
      O => Result_14_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_13_1,
      O => Result_13_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_12_1,
      O => Result_12_1_0
    );
  FREQ_DIV_I_PE_p1_COUNTER_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y49",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(15),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_15_rt_242
    );
  N1_49_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_49_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y49"
    )
    port map (
      CI => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_11_Q_1810,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_Q_1819,
      CO(2) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_15_1,
      O(2) => Result_14_1,
      O(1) => Result_13_1,
      O(0) => Result_12_1,
      S(3) => FREQ_DIV_I_PE_p1_COUNTER_15_rt_242,
      S(2) => FREQ_DIV_I_PE_p1_COUNTER_14_rt_248,
      S(1) => FREQ_DIV_I_PE_p1_COUNTER_13_rt_245,
      S(0) => FREQ_DIV_I_PE_p1_COUNTER_12_rt_240
    );
  FREQ_DIV_I_PE_p1_COUNTER_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y49",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(14),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_14_rt_248
    );
  N1_48_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_48_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y49",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(13),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_13_rt_245
    );
  N1_47_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_47_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y49",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(12),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_12_rt_240
    );
  N1_46_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y49",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_46_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_19_1,
      O => Result_19_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_18_1,
      O => Result_18_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_17_1,
      O => Result_17_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_16_1,
      O => Result_16_1_0
    );
  FREQ_DIV_I_PE_p1_COUNTER_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y50",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(19),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_19_rt_264
    );
  N1_53_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_53_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y50"
    )
    port map (
      CI => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_15_Q_1819,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_Q_1828,
      CO(2) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_19_1,
      O(2) => Result_18_1,
      O(1) => Result_17_1,
      O(0) => Result_16_1,
      S(3) => FREQ_DIV_I_PE_p1_COUNTER_19_rt_264,
      S(2) => FREQ_DIV_I_PE_p1_COUNTER_18_rt_270,
      S(1) => FREQ_DIV_I_PE_p1_COUNTER_17_rt_267,
      S(0) => FREQ_DIV_I_PE_p1_COUNTER_16_rt_262
    );
  FREQ_DIV_I_PE_p1_COUNTER_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y50",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(18),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_18_rt_270
    );
  N1_52_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_52_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y50",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(17),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_17_rt_267
    );
  N1_51_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_51_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y50",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(16),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_16_rt_262
    );
  N1_50_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y50",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_50_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_23_1,
      O => Result_23_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_22_1,
      O => Result_22_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_21_1,
      O => Result_21_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_20_1,
      O => Result_20_1_0
    );
  FREQ_DIV_I_PE_p1_COUNTER_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y51",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(23),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_23_rt_286
    );
  N1_57_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_57_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y51"
    )
    port map (
      CI => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_19_Q_1828,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_Q_1837,
      CO(2) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_23_1,
      O(2) => Result_22_1,
      O(1) => Result_21_1,
      O(0) => Result_20_1,
      S(3) => FREQ_DIV_I_PE_p1_COUNTER_23_rt_286,
      S(2) => FREQ_DIV_I_PE_p1_COUNTER_22_rt_292,
      S(1) => FREQ_DIV_I_PE_p1_COUNTER_21_rt_289,
      S(0) => FREQ_DIV_I_PE_p1_COUNTER_20_rt_284
    );
  FREQ_DIV_I_PE_p1_COUNTER_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y51",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(22),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_22_rt_292
    );
  N1_56_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_56_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y51",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(21),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_21_rt_289
    );
  N1_55_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_55_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y51",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(20),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_20_rt_284
    );
  N1_54_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y51",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_54_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_27_1,
      O => Result_27_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_26_1,
      O => Result_26_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_25_1,
      O => Result_25_1_0
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_24_1,
      O => Result_24_1_0
    );
  FREQ_DIV_I_PE_p1_COUNTER_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(27),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_27_rt_308
    );
  N1_61_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_61_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y52"
    )
    port map (
      CI => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_23_Q_1837,
      CYINIT => '0',
      CO(3) => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_Q_1846,
      CO(2) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_27_1,
      O(2) => Result_26_1,
      O(1) => Result_25_1,
      O(0) => Result_24_1,
      S(3) => FREQ_DIV_I_PE_p1_COUNTER_27_rt_308,
      S(2) => FREQ_DIV_I_PE_p1_COUNTER_26_rt_314,
      S(1) => FREQ_DIV_I_PE_p1_COUNTER_25_rt_311,
      S(0) => FREQ_DIV_I_PE_p1_COUNTER_24_rt_306
    );
  FREQ_DIV_I_PE_p1_COUNTER_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(26),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_26_rt_314
    );
  N1_60_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_60_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(25),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_25_rt_311
    );
  N1_59_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_59_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(24),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_24_rt_306
    );
  N1_58_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y52",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_58_A5LUT_O_UNCONNECTED
    );
  Result_31_1_Result_31_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_31_1,
      O => Result_31_1_0
    );
  Result_31_1_Result_31_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_30_1,
      O => Result_30_1_0
    );
  Result_31_1_Result_31_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_29_1,
      O => Result_29_1_0
    );
  Result_31_1_Result_31_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_28_1,
      O => Result_28_1_0
    );
  FREQ_DIV_I_PE_p1_COUNTER_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y53",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(31),
      O => FREQ_DIV_I_PE_p1_COUNTER_31_rt_329
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y53"
    )
    port map (
      CI => FREQ_DIV_I_PE_Mcount_p1_COUNTER_cy_27_Q_1846,
      CYINIT => '0',
      CO(3) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_FREQ_DIV_I_PE_Mcount_p1_COUNTER_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_31_1,
      O(2) => Result_30_1,
      O(1) => Result_29_1,
      O(0) => Result_28_1,
      S(3) => FREQ_DIV_I_PE_p1_COUNTER_31_rt_329,
      S(2) => FREQ_DIV_I_PE_p1_COUNTER_30_rt_340,
      S(1) => FREQ_DIV_I_PE_p1_COUNTER_29_rt_339,
      S(0) => FREQ_DIV_I_PE_p1_COUNTER_28_rt_336
    );
  FREQ_DIV_I_PE_p1_COUNTER_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y53",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(30),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_30_rt_340
    );
  N1_64_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_64_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y53",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(29),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_29_rt_339
    );
  N1_63_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_63_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_I_PE_p1_COUNTER_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y53",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(28),
      ADR5 => '1',
      O => FREQ_DIV_I_PE_p1_COUNTER_28_rt_336
    );
  N1_62_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y53",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_62_A5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_3_EQUAL_Mcount_Akku_STEPS_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(3),
      O => EQUAL_Result_3_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_3_EQUAL_Mcount_Akku_STEPS_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(2),
      O => EQUAL_Result_2_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_3_EQUAL_Mcount_Akku_STEPS_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(1),
      O => EQUAL_Result_1_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_3_EQUAL_Mcount_Akku_STEPS_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(0),
      O => EQUAL_Result_0_0
    );
  EQUAL_Akku_STEPS_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => EQUAL_Akku_STEPS(3),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_3_rt_363
    );
  N1_94_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_94_D5LUT_O_UNCONNECTED
    );
  ProtoComp2_CYINITGND_2 : X_ZERO
    generic map(
      LOC => "SLICE_X30Y33"
    )
    port map (
      O => EQUAL_Mcount_Akku_STEPS_cy_3_ProtoComp2_CYINITGND_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y33"
    )
    port map (
      CI => '0',
      CYINIT => EQUAL_Mcount_Akku_STEPS_cy_3_ProtoComp2_CYINITGND_0,
      CO(3) => EQUAL_Mcount_Akku_STEPS_cy_3_Q_1863,
      CO(2) => NLW_EQUAL_Mcount_Akku_STEPS_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Mcount_Akku_STEPS_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Mcount_Akku_STEPS_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => EQUAL_Result(3),
      O(2) => EQUAL_Result(2),
      O(1) => EQUAL_Result(1),
      O(0) => EQUAL_Result(0),
      S(3) => EQUAL_Akku_STEPS_3_rt_363,
      S(2) => EQUAL_Akku_STEPS_2_rt_354,
      S(1) => EQUAL_Akku_STEPS_1_rt_351,
      S(0) => EQUAL_Mcount_Akku_STEPS_lut(0)
    );
  EQUAL_Akku_STEPS_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => EQUAL_Akku_STEPS(2),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_2_rt_354
    );
  N1_95_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_95_C5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_STEPS(1),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_1_rt_351
    );
  N1_96_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_96_B5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => EQUAL_Akku_STEPS(0),
      ADR5 => '1',
      O => EQUAL_Mcount_Akku_STEPS_lut(0)
    );
  N0_4_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_A5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_7_EQUAL_Mcount_Akku_STEPS_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(7),
      O => EQUAL_Result_7_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_7_EQUAL_Mcount_Akku_STEPS_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(6),
      O => EQUAL_Result_6_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_7_EQUAL_Mcount_Akku_STEPS_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(5),
      O => EQUAL_Result_5_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_7_EQUAL_Mcount_Akku_STEPS_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(4),
      O => EQUAL_Result_4_0
    );
  EQUAL_Akku_STEPS_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y34",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_7_rt_371
    );
  N1_90_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_90_D5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y34"
    )
    port map (
      CI => EQUAL_Mcount_Akku_STEPS_cy_3_Q_1863,
      CYINIT => '0',
      CO(3) => EQUAL_Mcount_Akku_STEPS_cy_7_Q_1872,
      CO(2) => NLW_EQUAL_Mcount_Akku_STEPS_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Mcount_Akku_STEPS_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Mcount_Akku_STEPS_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => EQUAL_Result(7),
      O(2) => EQUAL_Result(6),
      O(1) => EQUAL_Result(5),
      O(0) => EQUAL_Result(4),
      S(3) => EQUAL_Akku_STEPS_7_rt_371,
      S(2) => EQUAL_Akku_STEPS_6_rt_377,
      S(1) => EQUAL_Akku_STEPS_5_rt_374,
      S(0) => EQUAL_Akku_STEPS_4_rt_369
    );
  EQUAL_Akku_STEPS_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y34",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => EQUAL_Akku_STEPS(6),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_6_rt_377
    );
  N1_91_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_91_C5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y34",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_STEPS(5),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_5_rt_374
    );
  N1_92_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_92_B5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y34",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => EQUAL_Akku_STEPS(4),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_4_rt_369
    );
  N1_93_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_93_A5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_11_EQUAL_Mcount_Akku_STEPS_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(11),
      O => EQUAL_Result_11_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_11_EQUAL_Mcount_Akku_STEPS_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(10),
      O => EQUAL_Result_10_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_11_EQUAL_Mcount_Akku_STEPS_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(9),
      O => EQUAL_Result_9_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_11_EQUAL_Mcount_Akku_STEPS_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(8),
      O => EQUAL_Result_8_0
    );
  EQUAL_Akku_STEPS_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_STEPS(11),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_11_rt_393
    );
  N1_86_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_86_D5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y35"
    )
    port map (
      CI => EQUAL_Mcount_Akku_STEPS_cy_7_Q_1872,
      CYINIT => '0',
      CO(3) => EQUAL_Mcount_Akku_STEPS_cy_11_Q_1881,
      CO(2) => NLW_EQUAL_Mcount_Akku_STEPS_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Mcount_Akku_STEPS_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Mcount_Akku_STEPS_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => EQUAL_Result(11),
      O(2) => EQUAL_Result(10),
      O(1) => EQUAL_Result(9),
      O(0) => EQUAL_Result(8),
      S(3) => EQUAL_Akku_STEPS_11_rt_393,
      S(2) => EQUAL_Akku_STEPS_10_rt_399,
      S(1) => EQUAL_Akku_STEPS_9_rt_396,
      S(0) => EQUAL_Akku_STEPS_8_rt_391
    );
  EQUAL_Akku_STEPS_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => EQUAL_Akku_STEPS(10),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_10_rt_399
    );
  N1_87_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_87_C5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_STEPS(9),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_9_rt_396
    );
  N1_88_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_88_B5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_STEPS(8),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_8_rt_391
    );
  N1_89_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_89_A5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_15_EQUAL_Mcount_Akku_STEPS_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(15),
      O => EQUAL_Result_15_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_15_EQUAL_Mcount_Akku_STEPS_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(14),
      O => EQUAL_Result_14_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_15_EQUAL_Mcount_Akku_STEPS_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(13),
      O => EQUAL_Result_13_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_15_EQUAL_Mcount_Akku_STEPS_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(12),
      O => EQUAL_Result_12_0
    );
  EQUAL_Akku_STEPS_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_STEPS(15),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_15_rt_415
    );
  N1_82_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_82_D5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y36"
    )
    port map (
      CI => EQUAL_Mcount_Akku_STEPS_cy_11_Q_1881,
      CYINIT => '0',
      CO(3) => EQUAL_Mcount_Akku_STEPS_cy_15_Q_1890,
      CO(2) => NLW_EQUAL_Mcount_Akku_STEPS_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Mcount_Akku_STEPS_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Mcount_Akku_STEPS_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => EQUAL_Result(15),
      O(2) => EQUAL_Result(14),
      O(1) => EQUAL_Result(13),
      O(0) => EQUAL_Result(12),
      S(3) => EQUAL_Akku_STEPS_15_rt_415,
      S(2) => EQUAL_Akku_STEPS_14_rt_421,
      S(1) => EQUAL_Akku_STEPS_13_rt_418,
      S(0) => EQUAL_Akku_STEPS_12_rt_413
    );
  EQUAL_Akku_STEPS_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => EQUAL_Akku_STEPS(14),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_14_rt_421
    );
  N1_83_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_83_C5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => EQUAL_Akku_STEPS(13),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_13_rt_418
    );
  N1_84_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_84_B5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_STEPS(12),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_12_rt_413
    );
  N1_85_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_85_A5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_19_EQUAL_Mcount_Akku_STEPS_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(19),
      O => EQUAL_Result_19_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_19_EQUAL_Mcount_Akku_STEPS_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(18),
      O => EQUAL_Result_18_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_19_EQUAL_Mcount_Akku_STEPS_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(17),
      O => EQUAL_Result_17_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_19_EQUAL_Mcount_Akku_STEPS_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(16),
      O => EQUAL_Result_16_0
    );
  EQUAL_Akku_STEPS_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y37",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => EQUAL_Akku_STEPS(19),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_19_rt_437
    );
  N1_78_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_78_D5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y37"
    )
    port map (
      CI => EQUAL_Mcount_Akku_STEPS_cy_15_Q_1890,
      CYINIT => '0',
      CO(3) => EQUAL_Mcount_Akku_STEPS_cy_19_Q_1899,
      CO(2) => NLW_EQUAL_Mcount_Akku_STEPS_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Mcount_Akku_STEPS_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Mcount_Akku_STEPS_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => EQUAL_Result(19),
      O(2) => EQUAL_Result(18),
      O(1) => EQUAL_Result(17),
      O(0) => EQUAL_Result(16),
      S(3) => EQUAL_Akku_STEPS_19_rt_437,
      S(2) => EQUAL_Akku_STEPS_18_rt_443,
      S(1) => EQUAL_Akku_STEPS_17_rt_440,
      S(0) => EQUAL_Akku_STEPS_16_rt_435
    );
  EQUAL_Akku_STEPS_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y37",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_STEPS(18),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_18_rt_443
    );
  N1_79_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_79_C5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y37",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => EQUAL_Akku_STEPS(17),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_17_rt_440
    );
  N1_80_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_80_B5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_STEPS(16),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_16_rt_435
    );
  N1_81_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y37",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_81_A5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_23_EQUAL_Mcount_Akku_STEPS_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(23),
      O => EQUAL_Result_23_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_23_EQUAL_Mcount_Akku_STEPS_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(22),
      O => EQUAL_Result_22_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_23_EQUAL_Mcount_Akku_STEPS_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(21),
      O => EQUAL_Result_21_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_23_EQUAL_Mcount_Akku_STEPS_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(20),
      O => EQUAL_Result_20_0
    );
  EQUAL_Akku_STEPS_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y38",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_STEPS(23),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_23_rt_459
    );
  N1_74_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_74_D5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y38"
    )
    port map (
      CI => EQUAL_Mcount_Akku_STEPS_cy_19_Q_1899,
      CYINIT => '0',
      CO(3) => EQUAL_Mcount_Akku_STEPS_cy_23_Q_1908,
      CO(2) => NLW_EQUAL_Mcount_Akku_STEPS_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Mcount_Akku_STEPS_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Mcount_Akku_STEPS_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => EQUAL_Result(23),
      O(2) => EQUAL_Result(22),
      O(1) => EQUAL_Result(21),
      O(0) => EQUAL_Result(20),
      S(3) => EQUAL_Akku_STEPS_23_rt_459,
      S(2) => EQUAL_Akku_STEPS_22_rt_465,
      S(1) => EQUAL_Akku_STEPS_21_rt_462,
      S(0) => EQUAL_Akku_STEPS_20_rt_457
    );
  EQUAL_Akku_STEPS_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y38",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_STEPS(22),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_22_rt_465
    );
  N1_75_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_75_C5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y38",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_STEPS(21),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_21_rt_462
    );
  N1_76_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_76_B5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y38",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_STEPS(20),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_20_rt_457
    );
  N1_77_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y38",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_77_A5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_27_EQUAL_Mcount_Akku_STEPS_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(27),
      O => EQUAL_Result_27_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_27_EQUAL_Mcount_Akku_STEPS_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(26),
      O => EQUAL_Result_26_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_27_EQUAL_Mcount_Akku_STEPS_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(25),
      O => EQUAL_Result_25_0
    );
  EQUAL_Mcount_Akku_STEPS_cy_27_EQUAL_Mcount_Akku_STEPS_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(24),
      O => EQUAL_Result_24_0
    );
  EQUAL_Akku_STEPS_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y39",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => EQUAL_Akku_STEPS(27),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_27_rt_481
    );
  N1_70_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_70_D5LUT_O_UNCONNECTED
    );
  EQUAL_Mcount_Akku_STEPS_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y39"
    )
    port map (
      CI => EQUAL_Mcount_Akku_STEPS_cy_23_Q_1908,
      CYINIT => '0',
      CO(3) => EQUAL_Mcount_Akku_STEPS_cy_27_Q_1917,
      CO(2) => NLW_EQUAL_Mcount_Akku_STEPS_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Mcount_Akku_STEPS_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Mcount_Akku_STEPS_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => EQUAL_Result(27),
      O(2) => EQUAL_Result(26),
      O(1) => EQUAL_Result(25),
      O(0) => EQUAL_Result(24),
      S(3) => EQUAL_Akku_STEPS_27_rt_481,
      S(2) => EQUAL_Akku_STEPS_26_rt_487,
      S(1) => EQUAL_Akku_STEPS_25_rt_484,
      S(0) => EQUAL_Akku_STEPS_24_rt_479
    );
  EQUAL_Akku_STEPS_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y39",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_STEPS(26),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_26_rt_487
    );
  N1_71_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_71_C5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y39",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_STEPS(25),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_25_rt_484
    );
  N1_72_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_72_B5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y39",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_STEPS(24),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_24_rt_479
    );
  N1_73_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y39",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_73_A5LUT_O_UNCONNECTED
    );
  EQUAL_Result_31_EQUAL_Result_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(31),
      O => EQUAL_Result_31_0
    );
  EQUAL_Result_31_EQUAL_Result_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(30),
      O => EQUAL_Result_30_0
    );
  EQUAL_Result_31_EQUAL_Result_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(29),
      O => EQUAL_Result_29_0
    );
  EQUAL_Result_31_EQUAL_Result_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Result(28),
      O => EQUAL_Result_28_0
    );
  EQUAL_Akku_STEPS_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y40",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => EQUAL_Akku_STEPS(31),
      O => EQUAL_Akku_STEPS_31_rt_502
    );
  EQUAL_Mcount_Akku_STEPS_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y40"
    )
    port map (
      CI => EQUAL_Mcount_Akku_STEPS_cy_27_Q_1917,
      CYINIT => '0',
      CO(3) => NLW_EQUAL_Mcount_Akku_STEPS_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_EQUAL_Mcount_Akku_STEPS_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Mcount_Akku_STEPS_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Mcount_Akku_STEPS_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_EQUAL_Mcount_Akku_STEPS_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => EQUAL_Result(31),
      O(2) => EQUAL_Result(30),
      O(1) => EQUAL_Result(29),
      O(0) => EQUAL_Result(28),
      S(3) => EQUAL_Akku_STEPS_31_rt_502,
      S(2) => EQUAL_Akku_STEPS_30_rt_513,
      S(1) => EQUAL_Akku_STEPS_29_rt_512,
      S(0) => EQUAL_Akku_STEPS_28_rt_509
    );
  EQUAL_Akku_STEPS_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y40",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => EQUAL_Akku_STEPS(30),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_30_rt_513
    );
  N1_67_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y40",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_67_C5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y40",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_STEPS(29),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_29_rt_512
    );
  N1_68_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y40",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_68_B5LUT_O_UNCONNECTED
    );
  EQUAL_Akku_STEPS_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y40",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_STEPS(28),
      ADR5 => '1',
      O => EQUAL_Akku_STEPS_28_rt_509
    );
  N1_69_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y40",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_69_A5LUT_O_UNCONNECTED
    );
  EQUAL_W_3_EQUAL_W_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_3_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_3_0
    );
  EQUAL_W_3_EQUAL_W_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_2_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_2_0
    );
  EQUAL_W_3_EQUAL_W_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_1_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_1_0
    );
  EQUAL_W_3_EQUAL_W_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_0_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_0_0
    );
  EQUAL_W_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_3_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_3_Q,
      O => EQUAL_W(3),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_RES(3),
      ADR1 => INT_Y(3),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_3_Q_545
    );
  ProtoComp5_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X34Y34"
    )
    port map (
      O => ProtoComp5_CYINITGND_0
    );
  EQUAL_W_2 : X_FF
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_2_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_2_Q,
      O => EQUAL_W(2),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y34"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp5_CYINITGND_0,
      CO(3) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_Q_1940,
      CO(2) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_0_Q,
      O(3) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_3_Q,
      O(2) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_2_Q,
      O(1) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_1_Q,
      O(0) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_0_Q,
      S(3) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_3_Q_545,
      S(2) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_2_Q_524,
      S(1) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_1_Q_529,
      S(0) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_0_Q_520
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_RES(2),
      ADR0 => INT_Y(2),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_2_Q_524
    );
  EQUAL_W_1 : X_FF
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_1_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_1_Q,
      O => EQUAL_W(1),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_RES(1),
      ADR0 => INT_Y(1),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_1_Q_529
    );
  EQUAL_W_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_0_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_0_Q,
      O => EQUAL_W(0),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => X"0F0F0F0FF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => EQUAL_Akku_RES(0),
      ADR2 => INT_Y(0),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_0_Q_520
    );
  EQUAL_W_7_EQUAL_W_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_7_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_7_0
    );
  EQUAL_W_7_EQUAL_W_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_6_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_6_0
    );
  EQUAL_W_7_EQUAL_W_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_5_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_5_0
    );
  EQUAL_W_7_EQUAL_W_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_4_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_4_0
    );
  EQUAL_W_7 : X_FF
    generic map(
      LOC => "SLICE_X34Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_7_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_7_Q,
      O => EQUAL_W(7),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y35",
      INIT => X"3C3C3C3C3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => EQUAL_Akku_RES(7),
      ADR2 => INT_Y(7),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_7_Q_556
    );
  EQUAL_W_6 : X_FF
    generic map(
      LOC => "SLICE_X34Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_6_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_6_Q,
      O => EQUAL_W(6),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y35"
    )
    port map (
      CI => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_Q_1940,
      CYINIT => '0',
      CO(3) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_Q_1957,
      CO(2) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_3_Q,
      DI(2) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_2_Q,
      DI(1) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_1_Q,
      DI(0) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_0_Q,
      O(3) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_7_Q,
      O(2) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_6_Q,
      O(1) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_5_Q,
      O(0) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_4_Q,
      S(3) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_7_Q_556,
      S(2) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_6_Q_572,
      S(1) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_5_Q_565,
      S(0) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_4_Q_562
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y35",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => EQUAL_Akku_RES(6),
      ADR4 => INT_Y(6),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_6_Q_572
    );
  EQUAL_W_5 : X_FF
    generic map(
      LOC => "SLICE_X34Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_5_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_5_Q,
      O => EQUAL_W(5),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y35",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => EQUAL_Akku_RES(5),
      ADR4 => INT_Y(5),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_5_Q_565
    );
  EQUAL_W_4 : X_FF
    generic map(
      LOC => "SLICE_X34Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_4_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_4_Q,
      O => EQUAL_W(4),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y35",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_RES(4),
      ADR1 => INT_Y(4),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_4_Q_562
    );
  EQUAL_W_11_EQUAL_W_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_11_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_11_0
    );
  EQUAL_W_11_EQUAL_W_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_10_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_10_0
    );
  EQUAL_W_11_EQUAL_W_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_9_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_9_0
    );
  EQUAL_W_11_EQUAL_W_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_8_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_8_0
    );
  EQUAL_W_11 : X_FF
    generic map(
      LOC => "SLICE_X34Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_11_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_11_Q,
      O => EQUAL_W(11),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y36",
      INIT => X"33333333CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => EQUAL_Akku_RES(11),
      ADR5 => INT_Y(11),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_11_Q_585
    );
  EQUAL_W_10 : X_FF
    generic map(
      LOC => "SLICE_X34Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_10_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_10_Q,
      O => EQUAL_W(10),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y36"
    )
    port map (
      CI => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_Q_1957,
      CYINIT => '0',
      CO(3) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_Q_1974,
      CO(2) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_3_Q,
      DI(2) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_2_Q,
      DI(1) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_1_Q,
      DI(0) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_0_Q,
      O(3) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_11_Q,
      O(2) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_10_Q,
      O(1) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_9_Q,
      O(0) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_8_Q,
      S(3) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_11_Q_585,
      S(2) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_10_Q_601,
      S(1) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_9_Q_594,
      S(0) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_8_Q_591
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y36",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => EQUAL_Akku_RES(10),
      ADR3 => INT_Y(10),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_10_Q_601
    );
  EQUAL_W_9 : X_FF
    generic map(
      LOC => "SLICE_X34Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_9_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_9_Q,
      O => EQUAL_W(9),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y36",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_RES(9),
      ADR5 => INT_Y(9),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_9_Q_594
    );
  EQUAL_W_8 : X_FF
    generic map(
      LOC => "SLICE_X34Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_8_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_8_Q,
      O => EQUAL_W(8),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y36",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_RES(8),
      ADR2 => INT_Y(8),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_8_Q_591
    );
  EQUAL_W_15_EQUAL_W_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_15_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_15_0
    );
  EQUAL_W_15_EQUAL_W_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_14_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_14_0
    );
  EQUAL_W_15_EQUAL_W_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_13_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_13_0
    );
  EQUAL_W_15_EQUAL_W_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_12_Q,
      O => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_12_0
    );
  EQUAL_W_15 : X_FF
    generic map(
      LOC => "SLICE_X34Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_15_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_15_Q,
      O => EQUAL_W(15),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y37",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_RES(15),
      ADR2 => INT_Y(15),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_15_Q_620
    );
  EQUAL_W_14 : X_FF
    generic map(
      LOC => "SLICE_X34Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_14_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_14_Q,
      O => EQUAL_W(14),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y37"
    )
    port map (
      CI => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_Q_1974,
      CYINIT => '0',
      CO(3) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_2_Q,
      DI(1) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_1_Q,
      DI(0) => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_0_Q,
      O(3) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_15_Q,
      O(2) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_14_Q,
      O(1) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_13_Q,
      O(0) => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_12_Q,
      S(3) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_15_Q_620,
      S(2) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_14_Q_609,
      S(1) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_13_Q_627,
      S(0) => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_12_Q_623
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y37",
      INIT => X"33333333CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => EQUAL_Akku_RES(14),
      ADR1 => INT_Y(14),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_14_Q_609
    );
  EQUAL_W_13 : X_FF
    generic map(
      LOC => "SLICE_X34Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_13_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_13_Q,
      O => EQUAL_W(13),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y37",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => EQUAL_Akku_RES(13),
      ADR4 => INT_Y(13),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_13_Q_627
    );
  EQUAL_W_12 : X_FF
    generic map(
      LOC => "SLICE_X34Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_W_12_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_12_Q,
      O => EQUAL_W(12),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y37",
      INIT => X"0FF00FF00FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_RES(12),
      ADR2 => INT_Y(12),
      O => EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_lut_12_Q_623
    );
  DATA_10_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => NlwBufferSignal_DATA_10_IOBUF_OBUFT_I,
      O => DATA(10),
      CTL => INT_TRISTATE
    );
  DATA_10_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 202 ps
    )
    port map (
      O => N9,
      I => DATA(10)
    );
  ProtoComp8_IMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 202 ps
    )
    port map (
      I => N9,
      O => N9_0
    );
  DATA_11_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD99"
    )
    port map (
      I => NlwBufferSignal_DATA_11_IOBUF_OBUFT_I,
      O => DATA(11),
      CTL => INT_TRISTATE
    );
  DATA_11_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 202 ps
    )
    port map (
      O => N8,
      I => DATA(11)
    );
  ProtoComp8_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 202 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  DATA_12_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD100"
    )
    port map (
      I => NlwBufferSignal_DATA_12_IOBUF_OBUFT_I,
      O => DATA(12),
      CTL => INT_TRISTATE
    );
  DATA_12_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 202 ps
    )
    port map (
      O => N7,
      I => DATA(12)
    );
  ProtoComp8_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 202 ps
    )
    port map (
      I => N7,
      O => N7_0
    );
  DATA_13_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD104"
    )
    port map (
      I => NlwBufferSignal_DATA_13_IOBUF_OBUFT_I,
      O => DATA(13),
      CTL => INT_TRISTATE
    );
  DATA_13_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 202 ps
    )
    port map (
      O => N6,
      I => DATA(13)
    );
  ProtoComp8_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 202 ps
    )
    port map (
      I => N6,
      O => N6_0
    );
  DATA_14_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => NlwBufferSignal_DATA_14_IOBUF_OBUFT_I,
      O => DATA(14),
      CTL => INT_TRISTATE
    );
  DATA_14_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 202 ps
    )
    port map (
      O => N5,
      I => DATA(14)
    );
  ProtoComp8_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 202 ps
    )
    port map (
      I => N5,
      O => N5_0
    );
  DATA_15_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD108"
    )
    port map (
      I => NlwBufferSignal_DATA_15_IOBUF_OBUFT_I,
      O => DATA(15),
      CTL => INT_TRISTATE
    );
  DATA_15_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 202 ps
    )
    port map (
      O => N4,
      I => DATA(15)
    );
  ProtoComp8_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 202 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 202 ps
    )
    port map (
      O => RESET_IBUF_665,
      I => RESET
    );
  ProtoComp9_IMUX : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 202 ps
    )
    port map (
      I => RESET_IBUF_665,
      O => RESET_IBUF_0
    );
  CLKWIZ_clkin1_buf : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLKWIZ_clkin1,
      I => CLK
    );
  ProtoComp9_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLKWIZ_clkin1,
      O => CLKWIZ_clkin1_0
    );
  NEX_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 202 ps
    )
    port map (
      O => NEX_IBUF_671,
      I => NEX
    );
  ProtoComp9_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 202 ps
    )
    port map (
      I => NEX_IBUF_671,
      O => NEX_IBUF_0
    );
  NOE_IBUF : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 202 ps
    )
    port map (
      O => NOE_IBUF_674,
      I => NOE
    );
  ProtoComp9_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 202 ps
    )
    port map (
      I => NOE_IBUF_674,
      O => NOE_IBUF_0
    );
  RDY_OBUF : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => NlwBufferSignal_RDY_OBUF_I,
      O => RDY
    );
  NWE_IBUF : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      O => NWE_IBUF_679,
      I => NWE
    );
  ProtoComp9_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      I => NWE_IBUF_679,
      O => NWE_IBUF_0
    );
  DATA_0_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I,
      O => DATA(0),
      CTL => INT_TRISTATE
    );
  DATA_0_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 202 ps
    )
    port map (
      O => N19,
      I => DATA(0)
    );
  ProtoComp8_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 202 ps
    )
    port map (
      I => N19,
      O => N19_0
    );
  DATA_1_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I,
      O => DATA(1),
      CTL => INT_TRISTATE
    );
  DATA_1_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 202 ps
    )
    port map (
      O => N18,
      I => DATA(1)
    );
  ProtoComp8_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 202 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  DATA_2_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD95"
    )
    port map (
      I => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I,
      O => DATA(2),
      CTL => INT_TRISTATE
    );
  DATA_2_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 202 ps
    )
    port map (
      O => N17,
      I => DATA(2)
    );
  ProtoComp8_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 202 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  DATA_3_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD80"
    )
    port map (
      I => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I,
      O => DATA(3),
      CTL => INT_TRISTATE
    );
  DATA_3_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 202 ps
    )
    port map (
      O => N16,
      I => DATA(3)
    );
  ProtoComp8_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 202 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  DATA_4_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I,
      O => DATA(4),
      CTL => INT_TRISTATE
    );
  DATA_4_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 202 ps
    )
    port map (
      O => N15,
      I => DATA(4)
    );
  ProtoComp8_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 202 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  DATA_5_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I,
      O => DATA(5),
      CTL => INT_TRISTATE
    );
  DATA_5_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 202 ps
    )
    port map (
      O => N14,
      I => DATA(5)
    );
  ProtoComp8_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 202 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  DATA_6_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD68"
    )
    port map (
      I => NlwBufferSignal_DATA_6_IOBUF_OBUFT_I,
      O => DATA(6),
      CTL => INT_TRISTATE
    );
  DATA_6_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 202 ps
    )
    port map (
      O => N13,
      I => DATA(6)
    );
  ProtoComp8_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 202 ps
    )
    port map (
      I => N13,
      O => N13_0
    );
  DATA_7_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD88"
    )
    port map (
      I => NlwBufferSignal_DATA_7_IOBUF_OBUFT_I,
      O => DATA(7),
      CTL => INT_TRISTATE
    );
  DATA_7_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 202 ps
    )
    port map (
      O => N12,
      I => DATA(7)
    );
  ProtoComp8_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 202 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  DATA_8_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD67"
    )
    port map (
      I => NlwBufferSignal_DATA_8_IOBUF_OBUFT_I,
      O => DATA(8),
      CTL => INT_TRISTATE
    );
  DATA_8_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 202 ps
    )
    port map (
      O => N11,
      I => DATA(8)
    );
  ProtoComp8_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 202 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  DATA_9_IOBUF_OBUFT : X_OBUFT
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => NlwBufferSignal_DATA_9_IOBUF_OBUFT_I,
      O => DATA(9),
      CTL => INT_TRISTATE
    );
  DATA_9_IOBUF_IBUF : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 202 ps
    )
    port map (
      O => N10,
      I => DATA(9)
    );
  ProtoComp8_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 202 ps
    )
    port map (
      I => N10,
      O => N10_0
    );
  LOCKED_OBUF : X_OBUF
    generic map(
      LOC => "PAD73"
    )
    port map (
      I => NlwBufferSignal_LOCKED_OBUF_I,
      O => LOCKED
    );
  OUT_CLK_SYN_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => NlwBufferSignal_OUT_CLK_SYN_OBUF_I,
      O => OUT_CLK_SYN
    );
  OUT_CLK_PE_OBUF : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => NlwBufferSignal_OUT_CLK_PE_OBUF_I,
      O => OUT_CLK_PE
    );
  SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0 : X_BUFIO2
    generic map(
      DIVIDE => 1,
      DIVIDE_BYPASS => TRUE,
      I_INVERT => FALSE,
      USE_DOUBLER => FALSE,
      LOC => "BUFIO2_X3Y7"
    )
    port map (
      DIVCLK => CLKWIZ_pll_base_inst_PLL_ADV_ML_NEW_DIVCLK,
      I => NlwBufferSignal_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_I,
      IOCLK => NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_IOCLK_UNCONNECTED,
      SERDESSTROBE => NLW_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_SERDESSTROBE_UNCONNECTED
    );
  SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1 : X_BUFIO2FB
    generic map(
      DIVIDE_BYPASS => TRUE,
      LOC => "BUFIO2FB_X3Y7"
    )
    port map (
      I => NlwBufferSignal_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1_I,
      O => CLKWIZ_pll_base_inst_PLL_ADV_ML_NEW_O
    );
  CLKWIZ_pll_base_inst_PLL_ADV_RSTINV : X_BUF
    generic map(
      LOC => "PLL_ADV_X0Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => CLKWIZ_pll_base_inst_PLL_ADV_RST_INT
    );
  CLKWIZ_pll_base_inst_PLL_ADV_CLKFBIN : X_BUF
    generic map(
      LOC => "PLL_ADV_X0Y0",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLKWIZ_pll_base_inst_PLL_ADV_ML_NEW_O,
      O => CLKWIZ_pll_base_inst_PLL_ADV_CLKFBIN_INT
    );
  CLKWIZ_pll_base_inst_PLL_ADV : X_PLL_ADV
    generic map(
      COMPENSATION => "SYSTEM_SYNCHRONOUS",
      BANDWIDTH => "OPTIMIZED",
      CLK_FEEDBACK => "CLKFBOUT",
      SIM_DEVICE => "SPARTAN6",
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKFBOUT_PHASE => 0.000000,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT5_PHASE => 0.000000,
      REF_JITTER => 0.010000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT0_DIVIDE => 7,
      CLKOUT1_DIVIDE => 2,
      CLKOUT3_DIVIDE => 1,
      DIVCLK_DIVIDE => 1,
      CLKFBOUT_MULT => 28,
      CLKOUT5_DIVIDE => 1,
      CLKOUT2_DIVIDE => 1,
      CLKIN2_PERIOD => 40.000000,
      CLKIN1_PERIOD => 40.000000,
      LOC => "PLL_ADV_X0Y0",
      VCOCLK_FREQ_MAX => 1080.000000,
      VCOCLK_FREQ_MIN => 400.000000,
      CLKIN_FREQ_MAX => 540.000000,
      CLKIN_FREQ_MIN => 19.000000,
      CLKPFD_FREQ_MAX => 500.000000,
      CLKPFD_FREQ_MIN => 19.000000
    )
    port map (
      CLKFBIN => CLKWIZ_pll_base_inst_PLL_ADV_CLKFBIN_INT,
      DCLK => CLKWIZ_pll_base_inst_PLL_ADV_DCLK,
      DEN => CLKWIZ_pll_base_inst_PLL_ADV_DEN,
      CLKINSEL => VCC,
      CLKIN2 => CLKWIZ_pll_base_inst_PLL_ADV_CLKIN2,
      RST => CLKWIZ_pll_base_inst_PLL_ADV_RST_INT,
      DWE => CLKWIZ_pll_base_inst_PLL_ADV_DWE,
      REL => NLW_CLKWIZ_pll_base_inst_PLL_ADV_REL_UNCONNECTED,
      CLKIN1 => NlwBufferSignal_CLKWIZ_pll_base_inst_PLL_ADV_CLKIN1,
      CLKOUT3 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUT3,
      CLKOUTDCM3 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM3,
      CLKFBOUT => CLKWIZ_clkfbout,
      CLKOUTDCM4 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM4,
      CLKOUT1 => CLKWIZ_clkout1,
      CLKOUT5 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUT5,
      CLKOUTDCM2 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM2,
      DRDY => CLKWIZ_pll_base_inst_PLL_ADV_DRDY,
      CLKOUTDCM1 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM1,
      CLKOUTDCM5 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM5,
      CLKFBDCM => CLKWIZ_pll_base_inst_PLL_ADV_CLKFBDCM,
      CLKOUT0 => CLKWIZ_clkout0,
      CLKOUT4 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUT4,
      CLKOUT2 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUT2,
      CLKOUTDCM0 => CLKWIZ_pll_base_inst_PLL_ADV_CLKOUTDCM0,
      LOCKED => LOCKED_OBUF_1713,
      DADDR(4) => CLKWIZ_pll_base_inst_PLL_ADV_DADDR4,
      DADDR(3) => CLKWIZ_pll_base_inst_PLL_ADV_DADDR3,
      DADDR(2) => CLKWIZ_pll_base_inst_PLL_ADV_DADDR2,
      DADDR(1) => CLKWIZ_pll_base_inst_PLL_ADV_DADDR1,
      DADDR(0) => CLKWIZ_pll_base_inst_PLL_ADV_DADDR0,
      DI(15) => CLKWIZ_pll_base_inst_PLL_ADV_DI15,
      DI(14) => CLKWIZ_pll_base_inst_PLL_ADV_DI14,
      DI(13) => CLKWIZ_pll_base_inst_PLL_ADV_DI13,
      DI(12) => CLKWIZ_pll_base_inst_PLL_ADV_DI12,
      DI(11) => CLKWIZ_pll_base_inst_PLL_ADV_DI11,
      DI(10) => CLKWIZ_pll_base_inst_PLL_ADV_DI10,
      DI(9) => CLKWIZ_pll_base_inst_PLL_ADV_DI9,
      DI(8) => CLKWIZ_pll_base_inst_PLL_ADV_DI8,
      DI(7) => CLKWIZ_pll_base_inst_PLL_ADV_DI7,
      DI(6) => CLKWIZ_pll_base_inst_PLL_ADV_DI6,
      DI(5) => CLKWIZ_pll_base_inst_PLL_ADV_DI5,
      DI(4) => CLKWIZ_pll_base_inst_PLL_ADV_DI4,
      DI(3) => CLKWIZ_pll_base_inst_PLL_ADV_DI3,
      DI(2) => CLKWIZ_pll_base_inst_PLL_ADV_DI2,
      DI(1) => CLKWIZ_pll_base_inst_PLL_ADV_DI1,
      DI(0) => CLKWIZ_pll_base_inst_PLL_ADV_DI0,
      DO(15) => CLKWIZ_pll_base_inst_PLL_ADV_DO15,
      DO(14) => CLKWIZ_pll_base_inst_PLL_ADV_DO14,
      DO(13) => CLKWIZ_pll_base_inst_PLL_ADV_DO13,
      DO(12) => CLKWIZ_pll_base_inst_PLL_ADV_DO12,
      DO(11) => CLKWIZ_pll_base_inst_PLL_ADV_DO11,
      DO(10) => CLKWIZ_pll_base_inst_PLL_ADV_DO10,
      DO(9) => CLKWIZ_pll_base_inst_PLL_ADV_DO9,
      DO(8) => CLKWIZ_pll_base_inst_PLL_ADV_DO8,
      DO(7) => CLKWIZ_pll_base_inst_PLL_ADV_DO7,
      DO(6) => CLKWIZ_pll_base_inst_PLL_ADV_DO6,
      DO(5) => CLKWIZ_pll_base_inst_PLL_ADV_DO5,
      DO(4) => CLKWIZ_pll_base_inst_PLL_ADV_DO4,
      DO(3) => CLKWIZ_pll_base_inst_PLL_ADV_DO3,
      DO(2) => CLKWIZ_pll_base_inst_PLL_ADV_DO2,
      DO(1) => CLKWIZ_pll_base_inst_PLL_ADV_DO1,
      DO(0) => CLKWIZ_pll_base_inst_PLL_ADV_DO0
    );
  CLKWIZ_clkout1_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y2",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLKWIZ_clkout1_buf_IN,
      O => INT_CLK_PE
    );
  CLKWIZ_clkout2_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLKWIZ_clkout2_buf_IN,
      O => INT_CLK_SYN
    );
  CLKWIZ_clkf_buf : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X2Y3",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLKWIZ_clkf_buf_IN,
      O => CLKWIZ_clkfbout_buf
    );
  FREQ_DIV_I_PE_p1_COUNTER_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_4_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_4,
      O => FREQ_DIV_I_PE_p1_COUNTER(4),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y47",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Result_4_1_0,
      ADR3 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_4
    );
  FREQ_DIV_I_PE_p1_COUNTER_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_3_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_3,
      O => FREQ_DIV_I_PE_p1_COUNTER(3),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_32 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y47",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => Result_3_1_0,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_3
    );
  FREQ_DIV_I_PE_p1_COUNTER_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_2_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_2,
      O => FREQ_DIV_I_PE_p1_COUNTER(2),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_210 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y47",
      INIT => X"00000000CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Result_2_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_2
    );
  FREQ_DIV_I_PE_p1_COUNTER_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_1_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_1,
      O => FREQ_DIV_I_PE_p1_COUNTER(1),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_110 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y47",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Result_1_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_1
    );
  FREQ_DIV_I_PE_p1_COUNTER_12 : X_FF
    generic map(
      LOC => "SLICE_X14Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_12_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_12,
      O => FREQ_DIV_I_PE_p1_COUNTER(12),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y48",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_12_1_0,
      ADR4 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_12
    );
  FREQ_DIV_I_PE_p1_COUNTER_11 : X_FF
    generic map(
      LOC => "SLICE_X14Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_11_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_11,
      O => FREQ_DIV_I_PE_p1_COUNTER(11),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y48",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => Result_11_1_0,
      ADR3 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_11
    );
  FREQ_DIV_I_PE_p1_COUNTER_10 : X_FF
    generic map(
      LOC => "SLICE_X14Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_10_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_10,
      O => FREQ_DIV_I_PE_p1_COUNTER(10),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y48",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => Result_10_1_0,
      ADR3 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_10
    );
  FREQ_DIV_I_PE_p1_COUNTER_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y48",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_9_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_9,
      O => FREQ_DIV_I_PE_p1_COUNTER(9),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y48",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => Result_9_1_0,
      ADR4 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_9
    );
  FREQ_DIV_I_PE_p1_COUNTER_15 : X_FF
    generic map(
      LOC => "SLICE_X14Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_15_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_15,
      O => FREQ_DIV_I_PE_p1_COUNTER(15),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y49",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => Result_15_1_0,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_15
    );
  FREQ_DIV_I_PE_p1_COUNTER_14 : X_FF
    generic map(
      LOC => "SLICE_X14Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_14_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_14,
      O => FREQ_DIV_I_PE_p1_COUNTER(14),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y49",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_14_1_0,
      ADR1 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_14
    );
  FREQ_DIV_I_PE_p1_COUNTER_13 : X_FF
    generic map(
      LOC => "SLICE_X14Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_13_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_13,
      O => FREQ_DIV_I_PE_p1_COUNTER(13),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y49",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Result_13_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_13
    );
  FREQ_DIV_I_PE_p1_COUNTER_18 : X_FF
    generic map(
      LOC => "SLICE_X14Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_18_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_18,
      O => FREQ_DIV_I_PE_p1_COUNTER(18),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y50",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => Result_18_1_0,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_18
    );
  FREQ_DIV_I_PE_p1_COUNTER_17 : X_FF
    generic map(
      LOC => "SLICE_X14Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_17_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_17,
      O => FREQ_DIV_I_PE_p1_COUNTER(17),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y50",
      INIT => X"5050505050505050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_17_1_0,
      ADR0 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_17
    );
  FREQ_DIV_I_PE_p1_COUNTER_16 : X_FF
    generic map(
      LOC => "SLICE_X14Y50",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_16_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_16,
      O => FREQ_DIV_I_PE_p1_COUNTER(16),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y50",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_16_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_16
    );
  FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y50",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_5_2029,
      ADR1 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_4_2030,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_3_2031,
      ADR4 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_2_2032,
      ADR0 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_1_2033,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_Q,
      O => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037
    );
  FREQ_DIV_I_PE_p1_COUNTER_22 : X_FF
    generic map(
      LOC => "SLICE_X14Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_22_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_22,
      O => FREQ_DIV_I_PE_p1_COUNTER(22),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_221 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y51",
      INIT => X"0F000F000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => Result_22_1_0,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_22
    );
  FREQ_DIV_I_PE_p1_COUNTER_21 : X_FF
    generic map(
      LOC => "SLICE_X14Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_21_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_21,
      O => FREQ_DIV_I_PE_p1_COUNTER(21),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_211 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y51",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => Result_21_1_0,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_21
    );
  FREQ_DIV_I_PE_p1_COUNTER_20 : X_FF
    generic map(
      LOC => "SLICE_X14Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_20_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_20,
      O => FREQ_DIV_I_PE_p1_COUNTER(20),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_201 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y51",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_20_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_20
    );
  FREQ_DIV_I_PE_p1_COUNTER_19 : X_FF
    generic map(
      LOC => "SLICE_X14Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_19_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_19,
      O => FREQ_DIV_I_PE_p1_COUNTER(19),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y51",
      INIT => X"00000000CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Result_19_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_19
    );
  FREQ_DIV_I_PE_p1_COUNTER_30 : X_FF
    generic map(
      LOC => "SLICE_X14Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_30_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_30,
      O => FREQ_DIV_I_PE_p1_COUNTER(30),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_301 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y52",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => Result_30_1_0,
      ADR4 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_30
    );
  FREQ_DIV_I_PE_p1_COUNTER_29 : X_FF
    generic map(
      LOC => "SLICE_X14Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_29_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_29,
      O => FREQ_DIV_I_PE_p1_COUNTER(29),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_291 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y52",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_29_1_0,
      ADR4 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_29
    );
  FREQ_DIV_I_PE_p1_COUNTER_28 : X_FF
    generic map(
      LOC => "SLICE_X14Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_28_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_28,
      O => FREQ_DIV_I_PE_p1_COUNTER(28),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_281 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y52",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => Result_28_1_0,
      ADR3 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_28
    );
  FREQ_DIV_I_PE_p1_COUNTER_27 : X_FF
    generic map(
      LOC => "SLICE_X14Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_27_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_27,
      O => FREQ_DIV_I_PE_p1_COUNTER(27),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_271 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y52",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Result_27_1_0,
      ADR4 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_27
    );
  FREQ_DIV_I_PE_p1_COUNTER_8 : X_FF
    generic map(
      LOC => "SLICE_X15Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_8_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_8,
      O => FREQ_DIV_I_PE_p1_COUNTER(8),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y47",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => Result_8_1_0,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_8
    );
  FREQ_DIV_I_PE_p1_COUNTER_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_7_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_7,
      O => FREQ_DIV_I_PE_p1_COUNTER(7),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y47",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => Result_7_1_0,
      ADR3 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_7
    );
  FREQ_DIV_I_PE_p1_COUNTER_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_6_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_6,
      O => FREQ_DIV_I_PE_p1_COUNTER(6),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y47",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_6_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_6
    );
  FREQ_DIV_I_PE_p1_COUNTER_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_5_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_5,
      O => FREQ_DIV_I_PE_p1_COUNTER(5),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y47",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Result_5_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_5
    );
  FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y49",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(13),
      ADR5 => FREQ_DIV_I_PE_p1_COUNTER(12),
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(14),
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(15),
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(16),
      ADR0 => FREQ_DIV_I_PE_p1_COUNTER(17),
      O => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_2_2032
    );
  FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y49",
      INIT => X"0000000000000020"
    )
    port map (
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(1),
      ADR0 => FREQ_DIV_I_PE_p1_COUNTER(0),
      ADR5 => FREQ_DIV_I_PE_p1_COUNTER(8),
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(9),
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(10),
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(11),
      O => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_1_2033
    );
  FREQ_DIV_I_PE_p1_COUNTER_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_0_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_0,
      O => FREQ_DIV_I_PE_p1_COUNTER(0),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y49",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_0_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_0
    );
  FREQ_DIV_I_PE_OUTPUT_FREQ : X_FF
    generic map(
      LOC => "SLICE_X15Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_OUTPUT_FREQ_CLK,
      I => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_PE_OUTPUT_FREQ_2018,
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y49",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_5_2029,
      ADR3 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_4_2030,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_3_2031,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_2_2032,
      ADR1 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_1_2033,
      ADR0 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_Q,
      O => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o
    );
  FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y50",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(19),
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(18),
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(20),
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(21),
      ADR0 => FREQ_DIV_I_PE_p1_COUNTER(22),
      ADR5 => FREQ_DIV_I_PE_p1_COUNTER(23),
      O => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_3_2031
    );
  FREQ_DIV_I_PE_p1_COUNTER_26 : X_FF
    generic map(
      LOC => "SLICE_X15Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_26_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_26,
      O => FREQ_DIV_I_PE_p1_COUNTER(26),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_261 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y51",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => Result_26_1_0,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_26
    );
  FREQ_DIV_I_PE_p1_COUNTER_25 : X_FF
    generic map(
      LOC => "SLICE_X15Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_25_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_25,
      O => FREQ_DIV_I_PE_p1_COUNTER(25),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_251 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y51",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => Result_25_1_0,
      ADR2 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_25
    );
  FREQ_DIV_I_PE_p1_COUNTER_24 : X_FF
    generic map(
      LOC => "SLICE_X15Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_24_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_24,
      O => FREQ_DIV_I_PE_p1_COUNTER(24),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_241 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y51",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Result_24_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_24
    );
  FREQ_DIV_I_PE_p1_COUNTER_23 : X_FF
    generic map(
      LOC => "SLICE_X15Y51",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_23_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_23,
      O => FREQ_DIV_I_PE_p1_COUNTER(23),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_231 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y51",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Result_23_1_0,
      ADR5 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_23
    );
  FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_5 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y52",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(25),
      ADR0 => FREQ_DIV_I_PE_p1_COUNTER(24),
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(26),
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(27),
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(28),
      ADR5 => FREQ_DIV_I_PE_p1_COUNTER(29),
      O => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_4_2030
    );
  FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_6 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y53",
      INIT => X"0505050505050505"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_I_PE_p1_COUNTER(31),
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(30),
      O => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_5_2029
    );
  FREQ_DIV_I_PE_p1_COUNTER_31 : X_FF
    generic map(
      LOC => "SLICE_X15Y53",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_31_CLK,
      I => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_31,
      O => FREQ_DIV_I_PE_p1_COUNTER(31),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_311 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y53",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => Result_31_1_0,
      ADR3 => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2037,
      O => FREQ_DIV_I_PE_Mcount_p1_COUNTER_eqn_31
    );
  FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y47",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => FREQ_DIV_I_PE_p1_COUNTER(3),
      ADR1 => FREQ_DIV_I_PE_p1_COUNTER(2),
      ADR0 => FREQ_DIV_I_PE_p1_COUNTER(5),
      ADR5 => FREQ_DIV_I_PE_p1_COUNTER(4),
      ADR4 => FREQ_DIV_I_PE_p1_COUNTER(7),
      ADR3 => FREQ_DIV_I_PE_p1_COUNTER(6),
      O => FREQ_DIV_I_PE_GND_11_o_p1_COUNTER_31_equal_1_o_31_Q
    );
  INT_START_INT_LOCKED_OR_38_o_INT_START_INT_LOCKED_OR_38_o_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o,
      O => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0
    );
  INT_START_INT_LOCKED_OR_38_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y44",
      INIT => X"F0F0FFFFF0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => LOCKED_OBUF_1713,
      ADR2 => INT_START_1714,
      ADR5 => '1',
      O => INT_START_INT_LOCKED_OR_38_o
    );
  FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y44",
      INIT => X"00FFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => RESET_IBUF_0,
      ADR4 => LOCKED_OBUF_1713,
      ADR2 => '1',
      O => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o
    );
  EQUAL_RDY : X_FF
    generic map(
      LOC => "SLICE_X29Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_EQUAL_RDY_CLK,
      I => EQUAL_RDY_rstpot_963,
      O => EQUAL_RDY_2005,
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_RDY_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X29Y61",
      INIT => X"AAFFFFFFAA000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_2005,
      ADR3 => INT_START_1714,
      ADR4 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_RDY_rstpot_963
    );
  EQUAL_Akku_STEPS_3 : X_FF
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_3_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_3,
      O => EQUAL_Akku_STEPS(3),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_31 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => X"00FFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => EQUAL_Result_3_0,
      ADR3 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_N4,
      O => EQUAL_Mcount_Akku_STEPS_eqn_3
    );
  EQUAL_Akku_STEPS_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_2_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_2,
      O => EQUAL_Akku_STEPS(2),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_21 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => X"0FFF0FFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => EQUAL_Result_2_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR3 => EQUAL_N4,
      O => EQUAL_Mcount_Akku_STEPS_eqn_2
    );
  EQUAL_Akku_STEPS_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_1_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_1,
      O => EQUAL_Akku_STEPS(1),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => X"3333FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => EQUAL_Result_1_0,
      ADR1 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_N4,
      O => EQUAL_Mcount_Akku_STEPS_eqn_1
    );
  EQUAL_Akku_STEPS_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_0_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_0,
      O => EQUAL_Akku_STEPS(0),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => X"FFFFCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => EQUAL_Result_0_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_N4,
      O => EQUAL_Mcount_Akku_STEPS_eqn_0
    );
  EQUAL_Akku_STEPS_7 : X_FF
    generic map(
      LOC => "SLICE_X32Y34",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_7_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_7,
      O => EQUAL_Akku_STEPS(7),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y34",
      INIT => X"0000CCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => EQUAL_Akku_STEPS(7),
      ADR1 => EQUAL_Result_7_0,
      ADR5 => EQUAL_N4,
      O => EQUAL_Mcount_Akku_STEPS_eqn_7
    );
  EQUAL_Akku_STEPS_6 : X_FF
    generic map(
      LOC => "SLICE_X32Y34",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_6_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_6,
      O => EQUAL_Akku_STEPS(6),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y34",
      INIT => X"3300FF003300FF00"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => EQUAL_Result_6_0,
      ADR1 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_N4,
      O => EQUAL_Mcount_Akku_STEPS_eqn_6
    );
  EQUAL_Akku_STEPS_5 : X_FF
    generic map(
      LOC => "SLICE_X32Y34",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_5_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_5,
      O => EQUAL_Akku_STEPS(5),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y34",
      INIT => X"0F0FFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => EQUAL_Result_5_0,
      ADR4 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_N4,
      O => EQUAL_Mcount_Akku_STEPS_eqn_5
    );
  EQUAL_Akku_STEPS_4 : X_FF
    generic map(
      LOC => "SLICE_X32Y34",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_4_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_4,
      O => EQUAL_Akku_STEPS(4),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y34",
      INIT => X"30F030F030F030F0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => EQUAL_Result_4_0,
      ADR1 => EQUAL_Akku_STEPS(7),
      ADR3 => EQUAL_N4,
      O => EQUAL_Mcount_Akku_STEPS_eqn_4
    );
  EQUAL_Akku_RES_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_2_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_2_Q,
      O => EQUAL_Akku_RES(2),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT231 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y35",
      INIT => X"55005500FF00FF00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_2_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR0 => EQUAL_N4,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_2_Q
    );
  EQUAL_Akku_RES_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_1_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_1_Q,
      O => EQUAL_Akku_RES(1),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y35",
      INIT => X"00AA00AAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_1_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR3 => EQUAL_N4,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_1_Q
    );
  EQUAL_RDY_PWR_7_o_MUX_2_o_31_16 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y35",
      INIT => X"0080000000000000"
    )
    port map (
      ADR3 => EQUAL_Akku_STEPS(30),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_14_2050,
      ADR1 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_13_2049,
      ADR4 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_12_2048,
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_11_2047,
      ADR0 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_1,
      O => EQUAL_N4
    );
  EQUAL_Akku_RES_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_0_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_0_Q,
      O => EQUAL_Akku_RES(0),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y35",
      INIT => X"0A0AAAAA0A0AAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_0_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_N4,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_0_Q
    );
  EQUAL_Akku_STEPS_10 : X_FF
    generic map(
      LOC => "SLICE_X32Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_10_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_10,
      O => EQUAL_Akku_STEPS(10),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y36",
      INIT => X"0000F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => EQUAL_Result_10_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_10
    );
  EQUAL_Akku_STEPS_9 : X_FF
    generic map(
      LOC => "SLICE_X32Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_9_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_9,
      O => EQUAL_Akku_STEPS(9),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y36",
      INIT => X"44444444CCCCCCCC"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => EQUAL_Result_9_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR0 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_9
    );
  EQUAL_Akku_STEPS_8 : X_FF
    generic map(
      LOC => "SLICE_X32Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_8_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_8,
      O => EQUAL_Akku_STEPS(8),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y36",
      INIT => X"0F000F00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Result_8_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_8
    );
  EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y36",
      INIT => X"2000000000000000"
    )
    port map (
      ADR1 => EQUAL_Akku_STEPS(30),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_14_2050,
      ADR3 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_13_2049,
      ADR4 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_12_2048,
      ADR0 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_11_2047,
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_1,
      O => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027
    );
  EQUAL_RDY_PWR_7_o_MUX_2_o_31_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y37",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => EQUAL_Akku_STEPS(12),
      ADR1 => EQUAL_Akku_STEPS(13),
      ADR0 => EQUAL_Akku_STEPS(14),
      ADR4 => EQUAL_Akku_STEPS(15),
      ADR3 => EQUAL_Akku_STEPS(16),
      ADR5 => EQUAL_Akku_STEPS(18),
      O => EQUAL_RDY_PWR_7_o_MUX_2_o_31_1
    );
  EQUAL_Akku_STEPS_17 : X_FF
    generic map(
      LOC => "SLICE_X32Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_17_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_17,
      O => EQUAL_Akku_STEPS(17),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y37",
      INIT => X"0F0F0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Result_17_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_17
    );
  EQUAL_Akku_STEPS_16 : X_FF
    generic map(
      LOC => "SLICE_X32Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_16_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_16,
      O => EQUAL_Akku_STEPS(16),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y37",
      INIT => X"0A0A0A0AAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => EQUAL_Result_16_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_16
    );
  EQUAL_Akku_STEPS_15 : X_FF
    generic map(
      LOC => "SLICE_X32Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_15_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_15,
      O => EQUAL_Akku_STEPS(15),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y37",
      INIT => X"0C0C0C0CCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => EQUAL_Result_15_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_15
    );
  EQUAL_Akku_STEPS_20 : X_FF
    generic map(
      LOC => "SLICE_X32Y38",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_20_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_20,
      O => EQUAL_Akku_STEPS(20),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_201 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y38",
      INIT => X"0F000F00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Result_20_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_20
    );
  EQUAL_Akku_STEPS_19 : X_FF
    generic map(
      LOC => "SLICE_X32Y38",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_19_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_19,
      O => EQUAL_Akku_STEPS(19),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y38",
      INIT => X"55005500FF00FF00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => EQUAL_Result_19_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR0 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_19
    );
  EQUAL_Akku_STEPS_18 : X_FF
    generic map(
      LOC => "SLICE_X32Y38",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_18_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_18,
      O => EQUAL_Akku_STEPS(18),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y38",
      INIT => X"0C0C0C0CCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => EQUAL_Result_18_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_18
    );
  EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y38",
      INIT => X"4000000000000000"
    )
    port map (
      ADR0 => EQUAL_Akku_STEPS(30),
      ADR1 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_14_2050,
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_13_2049,
      ADR4 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_12_2048,
      ADR3 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_11_2047,
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_1,
      O => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161
    );
  EQUAL_Akku_STEPS_28 : X_FF
    generic map(
      LOC => "SLICE_X32Y39",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_28_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_28,
      O => EQUAL_Akku_STEPS(28),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_281 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y39",
      INIT => X"0F0F0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Result_28_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_28
    );
  EQUAL_Akku_STEPS_27 : X_FF
    generic map(
      LOC => "SLICE_X32Y39",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_27_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_27,
      O => EQUAL_Akku_STEPS(27),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_271 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y39",
      INIT => X"0F0F0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Result_27_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_27
    );
  EQUAL_Akku_STEPS_26 : X_FF
    generic map(
      LOC => "SLICE_X32Y39",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_26_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_26,
      O => EQUAL_Akku_STEPS(26),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_261 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y39",
      INIT => X"0F0F0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Result_26_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_26
    );
  EQUAL_Akku_STEPS_25 : X_FF
    generic map(
      LOC => "SLICE_X32Y39",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_25_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_25,
      O => EQUAL_Akku_STEPS(25),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_251 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y39",
      INIT => X"0C0C0C0CCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => EQUAL_Result_25_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_25
    );
  INT_PE_PULSE : X_FF
    generic map(
      LOC => "SLICE_X32Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_PE_PULSE_CLK,
      I => '1',
      O => INT_PE_PULSE_2045,
      RST => INT_START_INT_LOCKED_OR_38_o,
      SET => GND
    );
  FREQ_DIV_I_SYN_p1_COUNTER_4 : X_FF
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_4_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_4,
      O => FREQ_DIV_I_SYN_p1_COUNTER(4),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_4_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_4
    );
  FREQ_DIV_I_SYN_p1_COUNTER_3 : X_FF
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_3_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_3,
      O => FREQ_DIV_I_SYN_p1_COUNTER(3),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_32 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_3_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_3
    );
  FREQ_DIV_I_SYN_p1_COUNTER_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_2_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_2,
      O => FREQ_DIV_I_SYN_p1_COUNTER(2),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_210 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_2_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_2
    );
  FREQ_DIV_I_SYN_p1_COUNTER_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_1_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_1,
      O => FREQ_DIV_I_SYN_p1_COUNTER(1),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_110 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_1_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_1
    );
  FREQ_DIV_I_SYN_p1_COUNTER_8 : X_FF
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_8_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_8,
      O => FREQ_DIV_I_SYN_p1_COUNTER(8),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => Result_8_0,
      ADR3 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_8
    );
  FREQ_DIV_I_SYN_p1_COUNTER_7 : X_FF
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_7_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_7,
      O => FREQ_DIV_I_SYN_p1_COUNTER(7),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_7_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_7
    );
  FREQ_DIV_I_SYN_p1_COUNTER_6 : X_FF
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_6_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_6,
      O => FREQ_DIV_I_SYN_p1_COUNTER(6),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_6_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_6
    );
  FREQ_DIV_I_SYN_p1_COUNTER_5 : X_FF
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_5_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_5,
      O => FREQ_DIV_I_SYN_p1_COUNTER(5),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y55",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_5_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_5
    );
  FREQ_DIV_I_SYN_p1_COUNTER_12 : X_FF
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_12_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_12,
      O => FREQ_DIV_I_SYN_p1_COUNTER(12),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_12_0,
      ADR4 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_12
    );
  FREQ_DIV_I_SYN_p1_COUNTER_11 : X_FF
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_11_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_11,
      O => FREQ_DIV_I_SYN_p1_COUNTER(11),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_11_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_11
    );
  FREQ_DIV_I_SYN_p1_COUNTER_10 : X_FF
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_10_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_10,
      O => FREQ_DIV_I_SYN_p1_COUNTER(10),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_10_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_10
    );
  FREQ_DIV_I_SYN_p1_COUNTER_9 : X_FF
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_9_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_9,
      O => FREQ_DIV_I_SYN_p1_COUNTER(9),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y56",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_9_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_9
    );
  FREQ_DIV_I_SYN_p1_COUNTER_15 : X_FF
    generic map(
      LOC => "SLICE_X32Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_15_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_15,
      O => FREQ_DIV_I_SYN_p1_COUNTER(15),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y57",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => Result_15_0,
      ADR2 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_15
    );
  FREQ_DIV_I_SYN_p1_COUNTER_14 : X_FF
    generic map(
      LOC => "SLICE_X32Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_14_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_14,
      O => FREQ_DIV_I_SYN_p1_COUNTER(14),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y57",
      INIT => X"3333000033330000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_14_0,
      ADR1 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_14
    );
  FREQ_DIV_I_SYN_p1_COUNTER_13 : X_FF
    generic map(
      LOC => "SLICE_X32Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_13_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_13,
      O => FREQ_DIV_I_SYN_p1_COUNTER(13),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y57",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_13_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_13
    );
  FREQ_DIV_I_SYN_p1_COUNTER_18 : X_FF
    generic map(
      LOC => "SLICE_X32Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_18_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_18,
      O => FREQ_DIV_I_SYN_p1_COUNTER(18),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y58",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => Result_18_0,
      ADR2 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_18
    );
  FREQ_DIV_I_SYN_p1_COUNTER_17 : X_FF
    generic map(
      LOC => "SLICE_X32Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_17_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_17,
      O => FREQ_DIV_I_SYN_p1_COUNTER(17),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y58",
      INIT => X"5555000055550000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_17_0,
      ADR0 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_17
    );
  FREQ_DIV_I_SYN_p1_COUNTER_16 : X_FF
    generic map(
      LOC => "SLICE_X32Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_16_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_16,
      O => FREQ_DIV_I_SYN_p1_COUNTER(16),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y58",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_16_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_16
    );
  FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y58",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_5_2039,
      ADR1 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_4_2040,
      ADR3 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_3_2041,
      ADR4 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_2_2042,
      ADR0 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_1_2043,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_Q,
      O => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038
    );
  FREQ_DIV_I_SYN_p1_COUNTER_22 : X_FF
    generic map(
      LOC => "SLICE_X32Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_22_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_22,
      O => FREQ_DIV_I_SYN_p1_COUNTER(22),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_221 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y59",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_22_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_22
    );
  FREQ_DIV_I_SYN_p1_COUNTER_21 : X_FF
    generic map(
      LOC => "SLICE_X32Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_21_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_21,
      O => FREQ_DIV_I_SYN_p1_COUNTER(21),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_211 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y59",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_21_0,
      ADR4 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_21
    );
  FREQ_DIV_I_SYN_p1_COUNTER_20 : X_FF
    generic map(
      LOC => "SLICE_X32Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_20_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_20,
      O => FREQ_DIV_I_SYN_p1_COUNTER(20),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_201 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y59",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_20_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_20
    );
  FREQ_DIV_I_SYN_p1_COUNTER_19 : X_FF
    generic map(
      LOC => "SLICE_X32Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_19_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_19,
      O => FREQ_DIV_I_SYN_p1_COUNTER(19),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y59",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Result_19_0,
      ADR3 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_19
    );
  FREQ_DIV_I_SYN_p1_COUNTER_26 : X_FF
    generic map(
      LOC => "SLICE_X32Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_26_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_26,
      O => FREQ_DIV_I_SYN_p1_COUNTER(26),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_261 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y60",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_26_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_26
    );
  FREQ_DIV_I_SYN_p1_COUNTER_25 : X_FF
    generic map(
      LOC => "SLICE_X32Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_25_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_25,
      O => FREQ_DIV_I_SYN_p1_COUNTER(25),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_251 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y60",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_25_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_25
    );
  FREQ_DIV_I_SYN_p1_COUNTER_24 : X_FF
    generic map(
      LOC => "SLICE_X32Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_24_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_24,
      O => FREQ_DIV_I_SYN_p1_COUNTER(24),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_241 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y60",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_24_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_24
    );
  FREQ_DIV_I_SYN_p1_COUNTER_23 : X_FF
    generic map(
      LOC => "SLICE_X32Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_23_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_23,
      O => FREQ_DIV_I_SYN_p1_COUNTER(23),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_231 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y60",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_23_0,
      ADR4 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_23
    );
  FREQ_DIV_I_SYN_p1_COUNTER_30 : X_FF
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_30_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_30,
      O => FREQ_DIV_I_SYN_p1_COUNTER(30),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_301 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_30_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_30
    );
  FREQ_DIV_I_SYN_p1_COUNTER_29 : X_FF
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_29_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_29,
      O => FREQ_DIV_I_SYN_p1_COUNTER(29),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_291 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_29_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_29
    );
  FREQ_DIV_I_SYN_p1_COUNTER_28 : X_FF
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_28_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_28,
      O => FREQ_DIV_I_SYN_p1_COUNTER(28),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_281 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_28_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_28
    );
  FREQ_DIV_I_SYN_p1_COUNTER_27 : X_FF
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_27_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_27,
      O => FREQ_DIV_I_SYN_p1_COUNTER(27),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_271 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Result_27_0,
      ADR3 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_27
    );
  EQUAL_RDY_PWR_7_o_MUX_2_o_31_13 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y35",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => EQUAL_Akku_STEPS(31),
      ADR0 => EQUAL_Akku_STEPS(0),
      ADR4 => EQUAL_Akku_STEPS(2),
      ADR3 => EQUAL_Akku_STEPS(1),
      ADR1 => EQUAL_Akku_STEPS(3),
      ADR2 => EQUAL_Akku_STEPS(4),
      O => EQUAL_RDY_PWR_7_o_MUX_2_o_31_12_2048
    );
  EQUAL_RDY_PWR_7_o_MUX_2_o_31_14 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y35",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => EQUAL_Akku_STEPS(6),
      ADR5 => EQUAL_Akku_STEPS(5),
      ADR2 => EQUAL_Akku_STEPS(8),
      ADR4 => EQUAL_Akku_STEPS(10),
      ADR1 => EQUAL_Akku_STEPS(9),
      ADR0 => EQUAL_Akku_STEPS(11),
      O => EQUAL_RDY_PWR_7_o_MUX_2_o_31_13_2049
    );
  EQUAL_Akku_STEPS_14 : X_FF
    generic map(
      LOC => "SLICE_X33Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_14_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_14,
      O => EQUAL_Akku_STEPS(14),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y36",
      INIT => X"55005500FF00FF00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => EQUAL_Result_14_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR0 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_14
    );
  EQUAL_Akku_STEPS_13 : X_FF
    generic map(
      LOC => "SLICE_X33Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_13_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_13,
      O => EQUAL_Akku_STEPS(13),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y36",
      INIT => X"0F000F00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Result_13_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_13
    );
  EQUAL_Akku_STEPS_12 : X_FF
    generic map(
      LOC => "SLICE_X33Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_12_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_12,
      O => EQUAL_Akku_STEPS(12),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y36",
      INIT => X"50F050F050F050F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => EQUAL_Result_12_0,
      ADR3 => EQUAL_Akku_STEPS(7),
      ADR0 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_12
    );
  EQUAL_Akku_STEPS_11 : X_FF
    generic map(
      LOC => "SLICE_X33Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_11_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_11_1301,
      O => EQUAL_Akku_STEPS(11),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y36",
      INIT => X"0F0F0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Result_11_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Mcount_Akku_STEPS_eqn_11_1301
    );
  EQUAL_RDY_PWR_7_o_MUX_2_o_31_12 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y37",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => EQUAL_Akku_STEPS(19),
      ADR1 => EQUAL_Akku_STEPS(17),
      ADR2 => EQUAL_Akku_STEPS(20),
      ADR0 => EQUAL_Akku_STEPS(21),
      ADR3 => EQUAL_Akku_STEPS(23),
      ADR4 => EQUAL_Akku_STEPS(22),
      O => EQUAL_RDY_PWR_7_o_MUX_2_o_31_11_2047
    );
  EQUAL_Akku_STEPS_24 : X_FF
    generic map(
      LOC => "SLICE_X33Y38",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_24_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_24,
      O => EQUAL_Akku_STEPS(24),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_241 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y38",
      INIT => X"55550000FFFF0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => EQUAL_Result_24_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR0 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_24
    );
  EQUAL_Akku_STEPS_23 : X_FF
    generic map(
      LOC => "SLICE_X33Y38",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_23_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_23,
      O => EQUAL_Akku_STEPS(23),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_231 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y38",
      INIT => X"0C0C0C0CCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => EQUAL_Result_23_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_23
    );
  EQUAL_Akku_STEPS_22 : X_FF
    generic map(
      LOC => "SLICE_X33Y38",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_22_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_22,
      O => EQUAL_Akku_STEPS(22),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_221 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y38",
      INIT => X"55FF000055FF0000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => EQUAL_Result_22_0,
      ADR3 => EQUAL_Akku_STEPS(7),
      ADR0 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_22
    );
  EQUAL_Akku_STEPS_21 : X_FF
    generic map(
      LOC => "SLICE_X33Y38",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_21_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_21_1331,
      O => EQUAL_Akku_STEPS(21),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_211 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y38",
      INIT => X"0F000F00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Result_21_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_21_1331
    );
  EQUAL_RDY_PWR_7_o_MUX_2_o_31_15 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y39",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => EQUAL_Akku_STEPS(25),
      ADR0 => EQUAL_Akku_STEPS(24),
      ADR3 => EQUAL_Akku_STEPS(26),
      ADR1 => EQUAL_Akku_STEPS(28),
      ADR4 => EQUAL_Akku_STEPS(27),
      ADR5 => EQUAL_Akku_STEPS(29),
      O => EQUAL_RDY_PWR_7_o_MUX_2_o_31_14_2050
    );
  EQUAL_Akku_STEPS_31 : X_FF
    generic map(
      LOC => "SLICE_X33Y39",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_31_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_31_1370,
      O => EQUAL_Akku_STEPS(31),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_311 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y39",
      INIT => X"0A0A0A0AAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => EQUAL_Result_31_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_31_1370
    );
  EQUAL_Akku_STEPS_30 : X_FF
    generic map(
      LOC => "SLICE_X33Y39",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_30_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_30,
      O => EQUAL_Akku_STEPS(30),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_301 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y39",
      INIT => X"0A0A0A0AAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => EQUAL_Result_30_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_30
    );
  EQUAL_Akku_STEPS_29 : X_FF
    generic map(
      LOC => "SLICE_X33Y39",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_STEPS_29_CLK,
      I => EQUAL_Mcount_Akku_STEPS_eqn_29,
      O => EQUAL_Akku_STEPS(29),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mcount_Akku_STEPS_eqn_291 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y39",
      INIT => X"0F000F00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Result_29_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_161,
      O => EQUAL_Mcount_Akku_STEPS_eqn_29
    );
  INT_START : X_FF
    generic map(
      LOC => "SLICE_X33Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_START_CLK,
      I => NlwBufferSignal_INT_START_IN,
      O => INT_START_1714,
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(3),
      ADR0 => FREQ_DIV_I_SYN_p1_COUNTER(2),
      ADR5 => FREQ_DIV_I_SYN_p1_COUNTER(5),
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(4),
      ADR1 => FREQ_DIV_I_SYN_p1_COUNTER(7),
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(6),
      O => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_Q
    );
  FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y57",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(13),
      ADR0 => FREQ_DIV_I_SYN_p1_COUNTER(12),
      ADR1 => FREQ_DIV_I_SYN_p1_COUNTER(14),
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(15),
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(16),
      ADR5 => FREQ_DIV_I_SYN_p1_COUNTER(17),
      O => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_2_2042
    );
  FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y57",
      INIT => X"0000000200000000"
    )
    port map (
      ADR5 => FREQ_DIV_I_SYN_p1_COUNTER(1),
      ADR0 => FREQ_DIV_I_SYN_p1_COUNTER(0),
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(8),
      ADR1 => FREQ_DIV_I_SYN_p1_COUNTER(9),
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(10),
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(11),
      O => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_1_2043
    );
  FREQ_DIV_I_SYN_p1_COUNTER_0 : X_FF
    generic map(
      LOC => "SLICE_X33Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_0_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_0,
      O => FREQ_DIV_I_SYN_p1_COUNTER(0),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y57",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_0_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_0
    );
  FREQ_DIV_I_SYN_OUTPUT_FREQ : X_FF
    generic map(
      LOC => "SLICE_X33Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_OUTPUT_FREQ_CLK,
      I => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_I_SYN_OUTPUT_FREQ_2017,
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y57",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_5_2039,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_4_2040,
      ADR0 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_3_2041,
      ADR2 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_2_2042,
      ADR1 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_1_2043,
      ADR3 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_Q,
      O => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o
    );
  FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y58",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => FREQ_DIV_I_SYN_p1_COUNTER(19),
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(18),
      ADR1 => FREQ_DIV_I_SYN_p1_COUNTER(20),
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(21),
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(22),
      ADR5 => FREQ_DIV_I_SYN_p1_COUNTER(23),
      O => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_3_2041
    );
  FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_5 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y60",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => FREQ_DIV_I_SYN_p1_COUNTER(25),
      ADR4 => FREQ_DIV_I_SYN_p1_COUNTER(24),
      ADR2 => FREQ_DIV_I_SYN_p1_COUNTER(26),
      ADR0 => FREQ_DIV_I_SYN_p1_COUNTER(27),
      ADR5 => FREQ_DIV_I_SYN_p1_COUNTER(28),
      ADR3 => FREQ_DIV_I_SYN_p1_COUNTER(29),
      O => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_4_2040
    );
  FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_6 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y61",
      INIT => X"1111111111111111"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_I_SYN_p1_COUNTER(31),
      ADR1 => FREQ_DIV_I_SYN_p1_COUNTER(30),
      O => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_5_2039
    );
  FREQ_DIV_I_SYN_p1_COUNTER_31 : X_FF
    generic map(
      LOC => "SLICE_X33Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_31_CLK,
      I => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_31,
      O => FREQ_DIV_I_SYN_p1_COUNTER(31),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_311 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y61",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Result_31_0,
      ADR5 => FREQ_DIV_I_SYN_GND_11_o_p1_COUNTER_31_equal_1_o_31_7_2038,
      O => FREQ_DIV_I_SYN_Mcount_p1_COUNTER_eqn_31
    );
  INT_NWE3 : X_FF
    generic map(
      LOC => "SLICE_X34Y45",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_NWE3_CLK,
      I => NlwBufferSignal_INT_NWE3_IN,
      O => INT_NWE3_1705,
      SET => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      RST => GND
    );
  INT_NWE2 : X_FF
    generic map(
      LOC => "SLICE_X34Y45",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_NWE2_CLK,
      I => NlwBufferSignal_INT_NWE2_IN,
      O => INT_NWE2_1704,
      SET => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      RST => GND
    );
  INT_NWE1 : X_FF
    generic map(
      LOC => "SLICE_X34Y45",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_NWE1_CLK,
      I => NlwBufferSignal_INT_NWE1_IN,
      O => INT_NWE1_2067,
      SET => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      RST => GND
    );
  INT_Y_3 : X_FF
    generic map(
      LOC => "SLICE_X35Y34",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_3_CLK,
      I => NlwBufferSignal_INT_Y_3_IN,
      O => INT_Y(3),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_2 : X_FF
    generic map(
      LOC => "SLICE_X35Y34",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_2_CLK,
      I => NlwBufferSignal_INT_Y_2_IN,
      O => INT_Y(2),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_1 : X_FF
    generic map(
      LOC => "SLICE_X35Y34",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_1_CLK,
      I => NlwBufferSignal_INT_Y_1_IN,
      O => INT_Y(1),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_0 : X_FF
    generic map(
      LOC => "SLICE_X35Y34",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_0_CLK,
      I => NlwBufferSignal_INT_Y_0_IN,
      O => INT_Y(0),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Akku_RES_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_6_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_6_Q,
      O => EQUAL_Akku_RES(6),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT291 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y35",
      INIT => X"00CCCCCC00CCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_6_0,
      ADR4 => EQUAL_Akku_STEPS(7),
      ADR3 => EQUAL_N4,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_6_Q
    );
  EQUAL_Akku_RES_5 : X_FF
    generic map(
      LOC => "SLICE_X35Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_5_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_5_Q,
      O => EQUAL_Akku_RES(5),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT281 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y35",
      INIT => X"00AAAAAA00AAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_5_0,
      ADR4 => EQUAL_Akku_STEPS(7),
      ADR3 => EQUAL_N4,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_5_Q
    );
  EQUAL_Akku_RES_4 : X_FF
    generic map(
      LOC => "SLICE_X35Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_4_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_4_Q,
      O => EQUAL_Akku_RES(4),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT271 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y35",
      INIT => X"0A0AAAAA0A0AAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_4_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_N4,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_4_Q
    );
  EQUAL_Akku_RES_3 : X_FF
    generic map(
      LOC => "SLICE_X35Y35",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_3_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_3_Q,
      O => EQUAL_Akku_RES(3),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT261 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y35",
      INIT => X"00AAAAAA00AAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_3_0,
      ADR3 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_N4,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_3_Q
    );
  EQUAL_Akku_RES_10 : X_FF
    generic map(
      LOC => "SLICE_X35Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_10_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_10_Q,
      O => EQUAL_Akku_RES(10),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y36",
      INIT => X"0C0C0C0CCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_10_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_10_Q
    );
  EQUAL_Akku_RES_9 : X_FF
    generic map(
      LOC => "SLICE_X35Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_9_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_9_Q,
      O => EQUAL_Akku_RES(9),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT321 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y36",
      INIT => X"0A0A0A0AAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_9_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_9_Q
    );
  EQUAL_Akku_RES_8 : X_FF
    generic map(
      LOC => "SLICE_X35Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_8_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_8_Q,
      O => EQUAL_Akku_RES(8),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT311 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y36",
      INIT => X"0A0AAAAA0A0AAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_8_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_N4,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_8_Q
    );
  EQUAL_Akku_RES_7 : X_FF
    generic map(
      LOC => "SLICE_X35Y36",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_7_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_7_Q,
      O => EQUAL_Akku_RES(7),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT301 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y36",
      INIT => X"0F0FFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_7_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR4 => EQUAL_N4,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_7_Q
    );
  EQUAL_Akku_RES_14 : X_FF
    generic map(
      LOC => "SLICE_X35Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_14_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_14_Q,
      O => EQUAL_Akku_RES(14),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y37",
      INIT => X"0C0C0C0CCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_14_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_14_Q
    );
  EQUAL_Akku_RES_13 : X_FF
    generic map(
      LOC => "SLICE_X35Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_13_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_13_Q,
      O => EQUAL_Akku_RES(13),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y37",
      INIT => X"0A0A0A0AAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_13_0,
      ADR5 => EQUAL_Akku_STEPS(7),
      ADR2 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_13_Q
    );
  EQUAL_Akku_RES_12 : X_FF
    generic map(
      LOC => "SLICE_X35Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_12_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_12_Q,
      O => EQUAL_Akku_RES(12),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y37",
      INIT => X"0A0A0A0AAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_12_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_12_Q
    );
  EQUAL_Akku_RES_11 : X_FF
    generic map(
      LOC => "SLICE_X35Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_11_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_11_Q,
      O => EQUAL_Akku_RES(11),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT33 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y37",
      INIT => X"0F0F0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_11_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_11_Q
    );
  INT_Y_7 : X_FF
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_7_CLK,
      I => NlwBufferSignal_INT_Y_7_IN,
      O => INT_Y(7),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_6_CLK,
      I => NlwBufferSignal_INT_Y_6_IN,
      O => INT_Y(6),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_5 : X_FF
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_5_CLK,
      I => NlwBufferSignal_INT_Y_5_IN,
      O => INT_Y(5),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_4 : X_FF
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_4_CLK,
      I => NlwBufferSignal_INT_Y_4_IN,
      O => INT_Y(4),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_TRISTATE_INT_TRISTATE_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_EN_PULSE_1544,
      O => INT_EN_PULSE_0
    );
  INT_TRISTATE1 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y45",
      INIT => X"FFAAFFAAFFAAFFAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => INT_NEX2_1706,
      ADR0 => INT_NOE2_1707,
      ADR5 => '1',
      O => INT_TRISTATE
    );
  INT_EN_01 : X_LUT5
    generic map(
      LOC => "SLICE_X35Y45",
      INIT => X"00330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => INT_NWE2_1704,
      ADR4 => INT_NWE3_1705,
      ADR3 => INT_NEX2_1706,
      ADR2 => '1',
      O => INT_EN_0
    );
  INT_EN_PULSE : X_FF
    generic map(
      LOC => "SLICE_X35Y45",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_EN_PULSE_CLK,
      I => INT_EN_0,
      O => INT_EN_PULSE_1544,
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_NOE2 : X_FF
    generic map(
      LOC => "SLICE_X35Y52",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_NOE2_CLK,
      I => NlwBufferSignal_INT_NOE2_IN,
      O => INT_NOE2_1707,
      SET => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      RST => GND
    );
  INT_NOE1 : X_FF
    generic map(
      LOC => "SLICE_X35Y52",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_NOE1_CLK,
      I => NlwBufferSignal_INT_NOE1_IN,
      O => INT_NOE1_2068,
      SET => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      RST => GND
    );
  INT_NEX2 : X_FF
    generic map(
      LOC => "SLICE_X35Y53",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_NEX2_CLK,
      I => NlwBufferSignal_INT_NEX2_IN,
      O => INT_NEX2_1706,
      SET => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      RST => GND
    );
  INT_NEX1 : X_FF
    generic map(
      LOC => "SLICE_X35Y53",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_NEX1_CLK,
      I => NlwBufferSignal_INT_NEX1_IN,
      O => INT_NEX1_2069,
      SET => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      RST => GND
    );
  INT_DATA_2_15_INT_DATA_2_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(15),
      O => INT_DATA_3_15_0
    );
  INT_DATA_2_15_INT_DATA_2_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(14),
      O => INT_DATA_3_14_0
    );
  INT_DATA_2_15_INT_DATA_2_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(13),
      O => INT_DATA_3_13_0
    );
  INT_DATA_2_15_INT_DATA_2_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(12),
      O => INT_DATA_3_12_0
    );
  INT_DATA_2_15 : X_FF
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_15_CLK,
      I => NlwBufferSignal_INT_DATA_2_15_IN,
      O => INT_DATA_2(15),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_15_rt : X_LUT5
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(15),
      ADR3 => '1',
      O => INT_DATA_2_15_rt_1562
    );
  INT_DATA_3_15 : X_FF
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_15_CLK,
      I => INT_DATA_2_15_rt_1562,
      O => INT_DATA_3(15),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_14 : X_FF
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_14_CLK,
      I => NlwBufferSignal_INT_DATA_2_14_IN,
      O => INT_DATA_2(14),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_14_rt : X_LUT5
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(14),
      ADR3 => '1',
      O => INT_DATA_2_14_rt_1568
    );
  INT_DATA_3_14 : X_FF
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_14_CLK,
      I => INT_DATA_2_14_rt_1568,
      O => INT_DATA_3(14),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_13 : X_FF
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_13_CLK,
      I => NlwBufferSignal_INT_DATA_2_13_IN,
      O => INT_DATA_2(13),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_13_rt : X_LUT5
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(13),
      ADR3 => '1',
      O => INT_DATA_2_13_rt_1573
    );
  INT_DATA_3_13 : X_FF
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_13_CLK,
      I => INT_DATA_2_13_rt_1573,
      O => INT_DATA_3(13),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_12 : X_FF
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_12_CLK,
      I => NlwBufferSignal_INT_DATA_2_12_IN,
      O => INT_DATA_2(12),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_12_rt : X_LUT5
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(12),
      ADR3 => '1',
      O => INT_DATA_2_12_rt_1578
    );
  INT_DATA_3_12 : X_FF
    generic map(
      LOC => "SLICE_X36Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_12_CLK,
      I => INT_DATA_2_12_rt_1578,
      O => INT_DATA_3(12),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_15 : X_FF
    generic map(
      LOC => "SLICE_X36Y35",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_15_CLK,
      I => NlwBufferSignal_INT_Y_15_IN,
      O => INT_Y(15),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_14 : X_FF
    generic map(
      LOC => "SLICE_X36Y35",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_14_CLK,
      I => NlwBufferSignal_INT_Y_14_IN,
      O => INT_Y(14),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_13 : X_FF
    generic map(
      LOC => "SLICE_X36Y35",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_13_CLK,
      I => NlwBufferSignal_INT_Y_13_IN,
      O => INT_Y(13),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_12 : X_FF
    generic map(
      LOC => "SLICE_X36Y35",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_12_CLK,
      I => NlwBufferSignal_INT_Y_12_IN,
      O => INT_Y(12),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_11 : X_FF
    generic map(
      LOC => "SLICE_X36Y38",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_11_CLK,
      I => NlwBufferSignal_INT_Y_11_IN,
      O => INT_Y(11),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_10 : X_FF
    generic map(
      LOC => "SLICE_X36Y38",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_10_CLK,
      I => NlwBufferSignal_INT_Y_10_IN,
      O => INT_Y(10),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_9 : X_FF
    generic map(
      LOC => "SLICE_X36Y38",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_9_CLK,
      I => NlwBufferSignal_INT_Y_9_IN,
      O => INT_Y(9),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_Y_8 : X_FF
    generic map(
      LOC => "SLICE_X36Y38",
      INIT => '0'
    )
    port map (
      CE => INT_EN_PULSE_0,
      CLK => NlwBufferSignal_INT_Y_8_CLK,
      I => NlwBufferSignal_INT_Y_8_IN,
      O => INT_Y(8),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_3_INT_DATA_2_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(3),
      O => INT_DATA_3_3_0
    );
  INT_DATA_2_3_INT_DATA_2_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(2),
      O => INT_DATA_3_2_0
    );
  INT_DATA_2_3_INT_DATA_2_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(1),
      O => INT_DATA_3_1_0
    );
  INT_DATA_2_3_INT_DATA_2_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(0),
      O => INT_DATA_3_0_0
    );
  INT_DATA_2_3 : X_FF
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_3_CLK,
      I => NlwBufferSignal_INT_DATA_2_3_IN,
      O => INT_DATA_2(3),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(3),
      ADR3 => '1',
      O => INT_DATA_2_3_rt_1606
    );
  INT_DATA_3_3 : X_FF
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_3_CLK,
      I => INT_DATA_2_3_rt_1606,
      O => INT_DATA_3(3),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_2 : X_FF
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_2_CLK,
      I => NlwBufferSignal_INT_DATA_2_2_IN,
      O => INT_DATA_2(2),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(2),
      ADR3 => '1',
      O => INT_DATA_2_2_rt_1612
    );
  INT_DATA_3_2 : X_FF
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_2_CLK,
      I => INT_DATA_2_2_rt_1612,
      O => INT_DATA_3(2),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_1 : X_FF
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_1_CLK,
      I => NlwBufferSignal_INT_DATA_2_1_IN,
      O => INT_DATA_2(1),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(1),
      ADR3 => '1',
      O => INT_DATA_2_1_rt_1617
    );
  INT_DATA_3_1 : X_FF
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_1_CLK,
      I => INT_DATA_2_1_rt_1617,
      O => INT_DATA_3(1),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_0 : X_FF
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_0_CLK,
      I => NlwBufferSignal_INT_DATA_2_0_IN,
      O => INT_DATA_2(0),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(0),
      ADR3 => '1',
      O => INT_DATA_2_0_rt_1622
    );
  INT_DATA_3_0 : X_FF
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_0_CLK,
      I => INT_DATA_2_0_rt_1622,
      O => INT_DATA_3(0),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Akku_RES_15 : X_FF
    generic map(
      LOC => "SLICE_X37Y37",
      INIT => '0'
    )
    port map (
      CE => INT_START_1714,
      CLK => NlwBufferSignal_EQUAL_Akku_RES_15_CLK,
      I => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_15_Q,
      O => EQUAL_Akku_RES(15),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  EQUAL_Mmux_Akku_RES_31_GND_7_o_mux_3_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y37",
      INIT => X"0F000F00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => EQUAL_Akku_RES_31_GND_7_o_add_1_OUT_15_0,
      ADR2 => EQUAL_Akku_STEPS(7),
      ADR5 => EQUAL_RDY_PWR_7_o_MUX_2_o_31_16_2027,
      O => EQUAL_Akku_RES_31_GND_7_o_mux_3_OUT_15_Q
    );
  INT_DATA_2_11_INT_DATA_2_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(11),
      O => INT_DATA_3_11_0
    );
  INT_DATA_2_11_INT_DATA_2_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(10),
      O => INT_DATA_3_10_0
    );
  INT_DATA_2_11_INT_DATA_2_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(9),
      O => INT_DATA_3_9_0
    );
  INT_DATA_2_11_INT_DATA_2_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(8),
      O => INT_DATA_3_8_0
    );
  INT_DATA_2_11 : X_FF
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_11_CLK,
      I => NlwBufferSignal_INT_DATA_2_11_IN,
      O => INT_DATA_2(11),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_11_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(11),
      ADR3 => '1',
      O => INT_DATA_2_11_rt_1636
    );
  INT_DATA_3_11 : X_FF
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_11_CLK,
      I => INT_DATA_2_11_rt_1636,
      O => INT_DATA_3(11),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_10 : X_FF
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_10_CLK,
      I => NlwBufferSignal_INT_DATA_2_10_IN,
      O => INT_DATA_2(10),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_10_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(10),
      ADR3 => '1',
      O => INT_DATA_2_10_rt_1642
    );
  INT_DATA_3_10 : X_FF
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_10_CLK,
      I => INT_DATA_2_10_rt_1642,
      O => INT_DATA_3(10),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_9 : X_FF
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_9_CLK,
      I => NlwBufferSignal_INT_DATA_2_9_IN,
      O => INT_DATA_2(9),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_9_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(9),
      ADR3 => '1',
      O => INT_DATA_2_9_rt_1647
    );
  INT_DATA_3_9 : X_FF
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_9_CLK,
      I => INT_DATA_2_9_rt_1647,
      O => INT_DATA_3(9),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_8 : X_FF
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_8_CLK,
      I => NlwBufferSignal_INT_DATA_2_8_IN,
      O => INT_DATA_2(8),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_8_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(8),
      ADR3 => '1',
      O => INT_DATA_2_8_rt_1652
    );
  INT_DATA_3_8 : X_FF
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_8_CLK,
      I => INT_DATA_2_8_rt_1652,
      O => INT_DATA_3(8),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_7_INT_DATA_2_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(7),
      O => INT_DATA_3_7_0
    );
  INT_DATA_2_7_INT_DATA_2_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(6),
      O => INT_DATA_3_6_0
    );
  INT_DATA_2_7_INT_DATA_2_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(5),
      O => INT_DATA_3_5_0
    );
  INT_DATA_2_7_INT_DATA_2_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3(4),
      O => INT_DATA_3_4_0
    );
  INT_DATA_2_7 : X_FF
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_7_CLK,
      I => NlwBufferSignal_INT_DATA_2_7_IN,
      O => INT_DATA_2(7),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(7),
      ADR3 => '1',
      O => INT_DATA_2_7_rt_1658
    );
  INT_DATA_3_7 : X_FF
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_7_CLK,
      I => INT_DATA_2_7_rt_1658,
      O => INT_DATA_3(7),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_6 : X_FF
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_6_CLK,
      I => NlwBufferSignal_INT_DATA_2_6_IN,
      O => INT_DATA_2(6),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(6),
      ADR3 => '1',
      O => INT_DATA_2_6_rt_1664
    );
  INT_DATA_3_6 : X_FF
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_6_CLK,
      I => INT_DATA_2_6_rt_1664,
      O => INT_DATA_3(6),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_5 : X_FF
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_5_CLK,
      I => NlwBufferSignal_INT_DATA_2_5_IN,
      O => INT_DATA_2(5),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(5),
      ADR3 => '1',
      O => INT_DATA_2_5_rt_1669
    );
  INT_DATA_3_5 : X_FF
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_5_CLK,
      I => INT_DATA_2_5_rt_1669,
      O => INT_DATA_3(5),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_4 : X_FF
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_2_4_CLK,
      I => NlwBufferSignal_INT_DATA_2_4_IN,
      O => INT_DATA_2(4),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  INT_DATA_2_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => INT_DATA_2(4),
      ADR3 => '1',
      O => INT_DATA_2_4_rt_1674
    );
  INT_DATA_3_4 : X_FF
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_INT_DATA_3_4_CLK,
      I => INT_DATA_2_4_rt_1674,
      O => INT_DATA_3(4),
      RST => FREQ_DIV_I_PE_RESET_FREQ_LOCKED_FREQ_OR_33_o_0,
      SET => GND
    );
  NlwBufferBlock_EQUAL_W_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_3_CLK
    );
  NlwBufferBlock_EQUAL_W_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_2_CLK
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(0),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_0_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(1),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_1_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(2),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_2_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(3),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_3_DI_3_Q
    );
  NlwBufferBlock_EQUAL_W_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_1_CLK
    );
  NlwBufferBlock_EQUAL_W_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_0_CLK
    );
  NlwBufferBlock_EQUAL_W_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_7_CLK
    );
  NlwBufferBlock_EQUAL_W_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_6_CLK
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(4),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_0_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(5),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_1_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(6),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_2_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(7),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_7_DI_3_Q
    );
  NlwBufferBlock_EQUAL_W_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_5_CLK
    );
  NlwBufferBlock_EQUAL_W_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_4_CLK
    );
  NlwBufferBlock_EQUAL_W_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_11_CLK
    );
  NlwBufferBlock_EQUAL_W_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_10_CLK
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(8),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_0_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(9),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_1_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(10),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_2_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(11),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_cy_11_DI_3_Q
    );
  NlwBufferBlock_EQUAL_W_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_9_CLK
    );
  NlwBufferBlock_EQUAL_W_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_8_CLK
    );
  NlwBufferBlock_EQUAL_W_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_15_CLK
    );
  NlwBufferBlock_EQUAL_W_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_14_CLK
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(12),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_0_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(13),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_1_Q
    );
  NlwBufferBlock_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_Akku_RES(14),
      O => NlwBufferSignal_EQUAL_Madd_Akku_RES_31_GND_7_o_add_1_OUT_xor_15_DI_2_Q
    );
  NlwBufferBlock_EQUAL_W_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_13_CLK
    );
  NlwBufferBlock_EQUAL_W_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_W_12_CLK
    );
  NlwBufferBlock_DATA_10_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(10),
      O => NlwBufferSignal_DATA_10_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_11_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(11),
      O => NlwBufferSignal_DATA_11_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_12_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(12),
      O => NlwBufferSignal_DATA_12_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_13_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(13),
      O => NlwBufferSignal_DATA_13_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_14_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(14),
      O => NlwBufferSignal_DATA_14_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_15_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(15),
      O => NlwBufferSignal_DATA_15_IOBUF_OBUFT_I
    );
  NlwBufferBlock_RDY_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_RDY_2005,
      O => NlwBufferSignal_RDY_OBUF_I
    );
  NlwBufferBlock_DATA_0_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(0),
      O => NlwBufferSignal_DATA_0_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_1_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(1),
      O => NlwBufferSignal_DATA_1_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_2_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(2),
      O => NlwBufferSignal_DATA_2_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_3_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(3),
      O => NlwBufferSignal_DATA_3_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_4_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(4),
      O => NlwBufferSignal_DATA_4_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_5_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(5),
      O => NlwBufferSignal_DATA_5_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_6_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(6),
      O => NlwBufferSignal_DATA_6_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_7_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(7),
      O => NlwBufferSignal_DATA_7_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_8_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(8),
      O => NlwBufferSignal_DATA_8_IOBUF_OBUFT_I
    );
  NlwBufferBlock_DATA_9_IOBUF_OBUFT_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => EQUAL_W(9),
      O => NlwBufferSignal_DATA_9_IOBUF_OBUFT_I
    );
  NlwBufferBlock_LOCKED_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => LOCKED_OBUF_1713,
      O => NlwBufferSignal_LOCKED_OBUF_I
    );
  NlwBufferBlock_OUT_CLK_SYN_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_I_SYN_OUTPUT_FREQ_2017,
      O => NlwBufferSignal_OUT_CLK_SYN_OBUF_I
    );
  NlwBufferBlock_OUT_CLK_PE_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_I_PE_OUTPUT_FREQ_2018,
      O => NlwBufferSignal_OUT_CLK_PE_OBUF_I
    );
  NlwBufferBlock_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLKWIZ_clkin1_0,
      O => NlwBufferSignal_SP6_BUFIO2_INSERT_PLL1_ML_BUFIO2_0_I
    );
  NlwBufferBlock_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLKWIZ_clkfbout_buf,
      O => NlwBufferSignal_SP6_INS_BUFIO2FB_PLL_ML_BUFIO2FB_1_I
    );
  NlwBufferBlock_CLKWIZ_pll_base_inst_PLL_ADV_CLKIN1 : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLKWIZ_pll_base_inst_PLL_ADV_ML_NEW_DIVCLK,
      O => NlwBufferSignal_CLKWIZ_pll_base_inst_PLL_ADV_CLKIN1
    );
  NlwBufferBlock_CLKWIZ_clkout1_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLKWIZ_clkout0,
      O => NlwBufferSignal_CLKWIZ_clkout1_buf_IN
    );
  NlwBufferBlock_CLKWIZ_clkout2_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLKWIZ_clkout1,
      O => NlwBufferSignal_CLKWIZ_clkout2_buf_IN
    );
  NlwBufferBlock_CLKWIZ_clkf_buf_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLKWIZ_clkfbout,
      O => NlwBufferSignal_CLKWIZ_clkf_buf_IN
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_4_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_3_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_2_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_1_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_12_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_11_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_10_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_9_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_15_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_14_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_13_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_18_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_17_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_16_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_22_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_21_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_20_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_19_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_30_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_29_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_28_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_27_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_8_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_7_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_6_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_5_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_OUTPUT_FREQ_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_OUTPUT_FREQ_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_26_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_25_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_24_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_23_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_PE_p1_COUNTER_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_FREQ_DIV_I_PE_p1_COUNTER_31_CLK
    );
  NlwBufferBlock_EQUAL_RDY_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_RDY_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_3_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_2_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_1_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_0_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_7_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_6_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_5_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_4_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_2_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_1_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_0_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_10_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_9_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_8_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_17_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_16_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_15_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_20_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_19_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_18_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_28_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_27_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_26_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_25_CLK
    );
  NlwBufferBlock_INT_PE_PULSE_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_EN_PULSE_0,
      O => NlwBufferSignal_INT_PE_PULSE_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_4_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_3_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_2_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_1_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_8_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_7_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_6_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_5_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_12_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_11_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_10_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_9_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_15_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_14_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_13_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_18_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_17_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_16_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_22_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_21_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_20_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_19_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_26_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_25_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_24_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_23_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_30_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_29_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_28_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_27_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_14_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_13_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_12_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_11_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_24_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_23_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_22_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_21_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_31_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_30_CLK
    );
  NlwBufferBlock_EQUAL_Akku_STEPS_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_STEPS_29_CLK
    );
  NlwBufferBlock_INT_START_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_INT_START_CLK
    );
  NlwBufferBlock_INT_START_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_PE_PULSE_2045,
      O => NlwBufferSignal_INT_START_IN
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_OUTPUT_FREQ_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_OUTPUT_FREQ_CLK
    );
  NlwBufferBlock_FREQ_DIV_I_SYN_p1_COUNTER_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_FREQ_DIV_I_SYN_p1_COUNTER_31_CLK
    );
  NlwBufferBlock_INT_NWE3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_NWE3_CLK
    );
  NlwBufferBlock_INT_NWE3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_NWE2_1704,
      O => NlwBufferSignal_INT_NWE3_IN
    );
  NlwBufferBlock_INT_NWE2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_NWE2_CLK
    );
  NlwBufferBlock_INT_NWE2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_NWE1_2067,
      O => NlwBufferSignal_INT_NWE2_IN
    );
  NlwBufferBlock_INT_NWE1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_NWE1_CLK
    );
  NlwBufferBlock_INT_NWE1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NWE_IBUF_0,
      O => NlwBufferSignal_INT_NWE1_IN
    );
  NlwBufferBlock_INT_Y_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_3_CLK
    );
  NlwBufferBlock_INT_Y_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_3_0,
      O => NlwBufferSignal_INT_Y_3_IN
    );
  NlwBufferBlock_INT_Y_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_2_CLK
    );
  NlwBufferBlock_INT_Y_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_2_0,
      O => NlwBufferSignal_INT_Y_2_IN
    );
  NlwBufferBlock_INT_Y_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_1_CLK
    );
  NlwBufferBlock_INT_Y_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_1_0,
      O => NlwBufferSignal_INT_Y_1_IN
    );
  NlwBufferBlock_INT_Y_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_0_CLK
    );
  NlwBufferBlock_INT_Y_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_0_0,
      O => NlwBufferSignal_INT_Y_0_IN
    );
  NlwBufferBlock_EQUAL_Akku_RES_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_6_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_5_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_4_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_3_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_10_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_9_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_8_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_7_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_14_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_13_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_12_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_11_CLK
    );
  NlwBufferBlock_INT_Y_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_7_CLK
    );
  NlwBufferBlock_INT_Y_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_7_0,
      O => NlwBufferSignal_INT_Y_7_IN
    );
  NlwBufferBlock_INT_Y_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_6_CLK
    );
  NlwBufferBlock_INT_Y_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_6_0,
      O => NlwBufferSignal_INT_Y_6_IN
    );
  NlwBufferBlock_INT_Y_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_5_CLK
    );
  NlwBufferBlock_INT_Y_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_5_0,
      O => NlwBufferSignal_INT_Y_5_IN
    );
  NlwBufferBlock_INT_Y_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_4_CLK
    );
  NlwBufferBlock_INT_Y_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_4_0,
      O => NlwBufferSignal_INT_Y_4_IN
    );
  NlwBufferBlock_INT_EN_PULSE_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_EN_PULSE_CLK
    );
  NlwBufferBlock_INT_NOE2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_NOE2_CLK
    );
  NlwBufferBlock_INT_NOE2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_NOE1_2068,
      O => NlwBufferSignal_INT_NOE2_IN
    );
  NlwBufferBlock_INT_NOE1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_NOE1_CLK
    );
  NlwBufferBlock_INT_NOE1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NOE_IBUF_0,
      O => NlwBufferSignal_INT_NOE1_IN
    );
  NlwBufferBlock_INT_NEX2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_NEX2_CLK
    );
  NlwBufferBlock_INT_NEX2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_NEX1_2069,
      O => NlwBufferSignal_INT_NEX2_IN
    );
  NlwBufferBlock_INT_NEX1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_NEX1_CLK
    );
  NlwBufferBlock_INT_NEX1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NEX_IBUF_0,
      O => NlwBufferSignal_INT_NEX1_IN
    );
  NlwBufferBlock_INT_DATA_2_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_15_CLK
    );
  NlwBufferBlock_INT_DATA_2_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N4_0,
      O => NlwBufferSignal_INT_DATA_2_15_IN
    );
  NlwBufferBlock_INT_DATA_3_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_15_CLK
    );
  NlwBufferBlock_INT_DATA_2_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_14_CLK
    );
  NlwBufferBlock_INT_DATA_2_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N5_0,
      O => NlwBufferSignal_INT_DATA_2_14_IN
    );
  NlwBufferBlock_INT_DATA_3_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_14_CLK
    );
  NlwBufferBlock_INT_DATA_2_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_13_CLK
    );
  NlwBufferBlock_INT_DATA_2_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N6_0,
      O => NlwBufferSignal_INT_DATA_2_13_IN
    );
  NlwBufferBlock_INT_DATA_3_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_13_CLK
    );
  NlwBufferBlock_INT_DATA_2_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_12_CLK
    );
  NlwBufferBlock_INT_DATA_2_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N7_0,
      O => NlwBufferSignal_INT_DATA_2_12_IN
    );
  NlwBufferBlock_INT_DATA_3_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_12_CLK
    );
  NlwBufferBlock_INT_Y_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_15_CLK
    );
  NlwBufferBlock_INT_Y_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_15_0,
      O => NlwBufferSignal_INT_Y_15_IN
    );
  NlwBufferBlock_INT_Y_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_14_CLK
    );
  NlwBufferBlock_INT_Y_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_14_0,
      O => NlwBufferSignal_INT_Y_14_IN
    );
  NlwBufferBlock_INT_Y_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_13_CLK
    );
  NlwBufferBlock_INT_Y_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_13_0,
      O => NlwBufferSignal_INT_Y_13_IN
    );
  NlwBufferBlock_INT_Y_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_12_CLK
    );
  NlwBufferBlock_INT_Y_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_12_0,
      O => NlwBufferSignal_INT_Y_12_IN
    );
  NlwBufferBlock_INT_Y_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_11_CLK
    );
  NlwBufferBlock_INT_Y_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_11_0,
      O => NlwBufferSignal_INT_Y_11_IN
    );
  NlwBufferBlock_INT_Y_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_10_CLK
    );
  NlwBufferBlock_INT_Y_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_10_0,
      O => NlwBufferSignal_INT_Y_10_IN
    );
  NlwBufferBlock_INT_Y_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_9_CLK
    );
  NlwBufferBlock_INT_Y_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_9_0,
      O => NlwBufferSignal_INT_Y_9_IN
    );
  NlwBufferBlock_INT_Y_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_Y_8_CLK
    );
  NlwBufferBlock_INT_Y_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_DATA_3_8_0,
      O => NlwBufferSignal_INT_Y_8_IN
    );
  NlwBufferBlock_INT_DATA_2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_3_CLK
    );
  NlwBufferBlock_INT_DATA_2_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N16_0,
      O => NlwBufferSignal_INT_DATA_2_3_IN
    );
  NlwBufferBlock_INT_DATA_3_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_3_CLK
    );
  NlwBufferBlock_INT_DATA_2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_2_CLK
    );
  NlwBufferBlock_INT_DATA_2_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N17_0,
      O => NlwBufferSignal_INT_DATA_2_2_IN
    );
  NlwBufferBlock_INT_DATA_3_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_2_CLK
    );
  NlwBufferBlock_INT_DATA_2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_1_CLK
    );
  NlwBufferBlock_INT_DATA_2_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N18_0,
      O => NlwBufferSignal_INT_DATA_2_1_IN
    );
  NlwBufferBlock_INT_DATA_3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_1_CLK
    );
  NlwBufferBlock_INT_DATA_2_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_0_CLK
    );
  NlwBufferBlock_INT_DATA_2_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N19_0,
      O => NlwBufferSignal_INT_DATA_2_0_IN
    );
  NlwBufferBlock_INT_DATA_3_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_0_CLK
    );
  NlwBufferBlock_EQUAL_Akku_RES_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_PE,
      O => NlwBufferSignal_EQUAL_Akku_RES_15_CLK
    );
  NlwBufferBlock_INT_DATA_2_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_11_CLK
    );
  NlwBufferBlock_INT_DATA_2_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N8_0,
      O => NlwBufferSignal_INT_DATA_2_11_IN
    );
  NlwBufferBlock_INT_DATA_3_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_11_CLK
    );
  NlwBufferBlock_INT_DATA_2_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_10_CLK
    );
  NlwBufferBlock_INT_DATA_2_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N9_0,
      O => NlwBufferSignal_INT_DATA_2_10_IN
    );
  NlwBufferBlock_INT_DATA_3_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_10_CLK
    );
  NlwBufferBlock_INT_DATA_2_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_9_CLK
    );
  NlwBufferBlock_INT_DATA_2_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N10_0,
      O => NlwBufferSignal_INT_DATA_2_9_IN
    );
  NlwBufferBlock_INT_DATA_3_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_9_CLK
    );
  NlwBufferBlock_INT_DATA_2_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_8_CLK
    );
  NlwBufferBlock_INT_DATA_2_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N11_0,
      O => NlwBufferSignal_INT_DATA_2_8_IN
    );
  NlwBufferBlock_INT_DATA_3_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_8_CLK
    );
  NlwBufferBlock_INT_DATA_2_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_7_CLK
    );
  NlwBufferBlock_INT_DATA_2_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N12_0,
      O => NlwBufferSignal_INT_DATA_2_7_IN
    );
  NlwBufferBlock_INT_DATA_3_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_7_CLK
    );
  NlwBufferBlock_INT_DATA_2_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_6_CLK
    );
  NlwBufferBlock_INT_DATA_2_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N13_0,
      O => NlwBufferSignal_INT_DATA_2_6_IN
    );
  NlwBufferBlock_INT_DATA_3_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_6_CLK
    );
  NlwBufferBlock_INT_DATA_2_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_5_CLK
    );
  NlwBufferBlock_INT_DATA_2_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N14_0,
      O => NlwBufferSignal_INT_DATA_2_5_IN
    );
  NlwBufferBlock_INT_DATA_3_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_5_CLK
    );
  NlwBufferBlock_INT_DATA_2_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_2_4_CLK
    );
  NlwBufferBlock_INT_DATA_2_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N15_0,
      O => NlwBufferSignal_INT_DATA_2_4_IN
    );
  NlwBufferBlock_INT_DATA_3_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INT_CLK_SYN,
      O => NlwBufferSignal_INT_DATA_3_4_CLK
    );
  NlwBlock_TOP_EQ_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_TOP_EQ_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

