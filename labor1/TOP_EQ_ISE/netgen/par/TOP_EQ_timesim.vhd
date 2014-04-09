--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: TOP_EQ_timesim.vhd
-- /___/   /\     Timestamp: Wed Apr 09 11:31:11 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf TOP_EQ.pcf -rpw 100 -tpw 0 -ar Structure -tm TOP_EQ -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim TOP_EQ.ncd TOP_EQ_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.15 2010-12-02)
-- Input file	: TOP_EQ.ncd
-- Output file	: C:\Documents and Settings\aba271\Desktop\cep\labor1\TOP_EQ_ISE\netgen\par\TOP_EQ_timesim.vhd
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
    TEST1 : out STD_LOGIC; 
    TEST2 : out STD_LOGIC; 
    TEST3 : out STD_LOGIC; 
    ANODE : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    CATHODE : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end TOP_EQ;

architecture Structure of TOP_EQ is
  signal FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_5 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_5 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_0 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1107 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_0 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1109 : STD_LOGIC; 
  signal FREQ_DIV_1_OUTPUT_FREQ_1110 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_state_STATE_FSM_FFd3_1112 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_state_STATE_FSM_FFd4_1113 : STD_LOGIC; 
  signal TEST1_OBUF_1114 : STD_LOGIC; 
  signal NEX_IBUF_0 : STD_LOGIC; 
  signal TEST3_OBUF_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_0 : STD_LOGIC; 
  signal RESET_IBUF_0 : STD_LOGIC; 
  signal FREQ_DIV_2_OUTPUT_FREQ_1124 : STD_LOGIC; 
  signal CATHODE_6_OBUF_1128 : STD_LOGIC; 
  signal CATHODE_1_OBUF_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_INPUT_SRG_2_1135 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_INPUT_SRG_1_1144 : STD_LOGIC; 
  signal CATHODE_0_OBUF_1145 : STD_LOGIC; 
  signal CATHODE_3_OBUF_0 : STD_LOGIC; 
  signal CATHODE_2_OBUF_1147 : STD_LOGIC; 
  signal CATHODE_5_OBUF_0 : STD_LOGIC; 
  signal Result_0_0 : STD_LOGIC; 
  signal Result_1_0 : STD_LOGIC; 
  signal Result_2_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_Q_1157 : STD_LOGIC; 
  signal Result_3_0 : STD_LOGIC; 
  signal Result_4_0 : STD_LOGIC; 
  signal Result_5_0 : STD_LOGIC; 
  signal Result_6_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_Q_1166 : STD_LOGIC; 
  signal Result_7_0 : STD_LOGIC; 
  signal Result_8_0 : STD_LOGIC; 
  signal Result_9_0 : STD_LOGIC; 
  signal Result_10_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_Q_1175 : STD_LOGIC; 
  signal Result_11_0 : STD_LOGIC; 
  signal Result_12_0 : STD_LOGIC; 
  signal Result_13_0 : STD_LOGIC; 
  signal Result_14_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_Q_1184 : STD_LOGIC; 
  signal Result_15_0 : STD_LOGIC; 
  signal Result_16_0 : STD_LOGIC; 
  signal Result_17_0 : STD_LOGIC; 
  signal Result_18_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_Q_1193 : STD_LOGIC; 
  signal Result_19_0 : STD_LOGIC; 
  signal Result_20_0 : STD_LOGIC; 
  signal Result_21_0 : STD_LOGIC; 
  signal Result_22_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_Q_1202 : STD_LOGIC; 
  signal Result_23_0 : STD_LOGIC; 
  signal Result_24_0 : STD_LOGIC; 
  signal Result_25_0 : STD_LOGIC; 
  signal Result_26_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_Q_1209 : STD_LOGIC; 
  signal Result_27_0 : STD_LOGIC; 
  signal Result_28_0 : STD_LOGIC; 
  signal Result_29_0 : STD_LOGIC; 
  signal Result_30_0 : STD_LOGIC; 
  signal Result_31_0 : STD_LOGIC; 
  signal Result_0_1_0 : STD_LOGIC; 
  signal Result_1_1_0 : STD_LOGIC; 
  signal Result_2_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_Q_1222 : STD_LOGIC; 
  signal Result_3_1_0 : STD_LOGIC; 
  signal Result_4_1_0 : STD_LOGIC; 
  signal Result_5_1_0 : STD_LOGIC; 
  signal Result_6_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_Q_1231 : STD_LOGIC; 
  signal Result_7_1_0 : STD_LOGIC; 
  signal Result_8_1_0 : STD_LOGIC; 
  signal Result_9_1_0 : STD_LOGIC; 
  signal Result_10_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_Q_1240 : STD_LOGIC; 
  signal Result_11_1_0 : STD_LOGIC; 
  signal Result_12_1_0 : STD_LOGIC; 
  signal Result_13_1_0 : STD_LOGIC; 
  signal Result_14_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_Q_1249 : STD_LOGIC; 
  signal Result_15_1_0 : STD_LOGIC; 
  signal Result_16_1_0 : STD_LOGIC; 
  signal Result_17_1_0 : STD_LOGIC; 
  signal Result_18_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_Q_1258 : STD_LOGIC; 
  signal Result_19_1_0 : STD_LOGIC; 
  signal Result_20_1_0 : STD_LOGIC; 
  signal Result_21_1_0 : STD_LOGIC; 
  signal Result_22_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_Q_1267 : STD_LOGIC; 
  signal Result_23_1_0 : STD_LOGIC; 
  signal Result_24_1_0 : STD_LOGIC; 
  signal Result_25_1_0 : STD_LOGIC; 
  signal Result_26_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_Q_1274 : STD_LOGIC; 
  signal Result_27_1_0 : STD_LOGIC; 
  signal Result_28_1_0 : STD_LOGIC; 
  signal Result_29_1_0 : STD_LOGIC; 
  signal Result_30_1_0 : STD_LOGIC; 
  signal Result_31_1_0 : STD_LOGIC; 
  signal TEST2_OBUF_0 : STD_LOGIC; 
  signal CATHODE_4_OBUF_1286 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_0 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o : STD_LOGIC; 
  signal FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_Q : STD_LOGIC; 
  signal FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_1_1299 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_Q : STD_LOGIC; 
  signal FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_2_1301 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_3_1302 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_1_1305 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_Q : STD_LOGIC; 
  signal FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_2_1307 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_3_1308 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_0 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal ProtoComp8_CYINITGND_0 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_3_rt_7 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_1_rt_2 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_2_rt_1 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_7_rt_39 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_6_rt_30 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_5_rt_28 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_4_rt_25 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_11_rt_61 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_10_rt_52 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_9_rt_50 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_8_rt_47 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_15_rt_83 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_14_rt_74 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_13_rt_72 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_12_rt_69 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_19_rt_105 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_18_rt_96 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_17_rt_94 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_16_rt_91 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_23_rt_127 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_22_rt_118 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_21_rt_116 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_20_rt_113 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_27_rt_149 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_26_rt_140 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_25_rt_138 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_24_rt_135 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_31_rt_169 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_30_rt_162 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_28_rt_157 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_29_rt_154 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_ProtoComp8_CYINITGND_0 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_3_rt_180 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_1_rt_175 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_2_rt_174 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_7_rt_212 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_6_rt_203 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_5_rt_201 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_4_rt_198 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_11_rt_234 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_10_rt_225 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_9_rt_223 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_8_rt_220 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_15_rt_256 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_14_rt_247 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_13_rt_245 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_12_rt_242 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_19_rt_278 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_18_rt_269 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_17_rt_267 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_16_rt_264 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_23_rt_300 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_22_rt_291 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_21_rt_289 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_20_rt_286 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_27_rt_322 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_26_rt_313 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_25_rt_311 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_24_rt_308 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_31_rt_342 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_30_rt_335 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_28_rt_330 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_29_rt_327 : STD_LOGIC; 
  signal NEX_IBUF_361 : STD_LOGIC; 
  signal TEST3_OBUF_364 : STD_LOGIC; 
  signal TEST2_OBUF_367 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_386 : STD_LOGIC; 
  signal RESET_IBUF_389 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_3_rstpot_407 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_4_rstpot_403 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_5_rstpot_399 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_6_rstpot_394 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_7_rstpot_424 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_8_rstpot_420 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_9_rstpot_416 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_10_rstpot_411 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_11_rstpot_441 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_12_rstpot_437 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_13_rstpot_433 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_14_rstpot_428 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_18_rstpot_458 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_19_rstpot_454 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_20_rstpot_450 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_21_rstpot_445 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_22_rstpot_475 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_23_rstpot_471 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_24_rstpot_467 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_25_rstpot_462 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_26_rstpot_492 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_27_rstpot_488 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_28_rstpot_484 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_29_rstpot_479 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_0_rstpot_524 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_1_rstpot_517 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_2_rstpot_513 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_15_rstpot_546 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_16_rstpot_537 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_17_rstpot_532 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_30_rstpot_566 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_31_rstpot_562 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_3_rstpot_619 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_4_rstpot_615 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_5_rstpot_611 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_6_rstpot_606 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_11_rstpot_650 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_12_rstpot_646 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_13_rstpot_642 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_14_rstpot_637 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_18_rstpot_667 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_19_rstpot_663 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_20_rstpot_659 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_21_rstpot_654 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_22_rstpot_684 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_23_rstpot_680 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_24_rstpot_676 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_25_rstpot_671 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_30_rstpot_704 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_31_rstpot_700 : STD_LOGIC; 
  signal CATHODE_5_OBUF_708 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_2_Q : STD_LOGIC; 
  signal SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_3_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_784 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_783 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_774 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_773 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_764 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_763 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_752 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_751 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_rt_814 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_rt_810 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_rt_808 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_rt_805 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_glue_set_854 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_pack_10 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_glue_set_851 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_glue_set_845 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_pack_12 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_glue_set_842 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_glue_set_832 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_glue_set_831 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_pack_16 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_glue_set_822 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_glue_set_821 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_pack_14 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_0_rstpot_876 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_1_rstpot_869 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_2_rstpot_865 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_15_rstpot_898 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_16_rstpot_889 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_17_rstpot_884 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_26_rstpot_915 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_27_rstpot_911 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_28_rstpot_907 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_29_rstpot_902 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_0_Q : STD_LOGIC; 
  signal SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_1_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_pack_2 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt_965 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_TMP_9_OUTPUT_TMP_15_XOR_40_o : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_TMP_7_OUTPUT_TMP_1_XOR_37_o : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt_954 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_pack_1 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_glue_set_1008 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_pack_10 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_glue_set_1005 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_glue_set_999 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_pack_12 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_glue_set_996 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_glue_set_986 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_glue_set_985 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_pack_16 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_glue_set_976 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_glue_set_975 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_pack_14 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_7_rstpot_1028 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_8_rstpot_1024 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_9_rstpot_1020 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_10_rstpot_1015 : STD_LOGIC; 
  signal CATHODE_1_OBUF_1052 : STD_LOGIC; 
  signal CATHODE_3_OBUF_1044 : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TEST1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TEST2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TEST3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CLK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_OUTPUT_FREQ_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd4_IN : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd3_IN : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_IN : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_IN : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_D : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_D : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_D : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_D : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_D : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_D : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_D : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_D : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_OUTPUT_FREQ_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_7_CLK : STD_LOGIC; 
  signal NLW_N0_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CATHODE_7_OBUF_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_17_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_16_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_21_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_20_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_19_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_18_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_25_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_24_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_23_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_22_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_29_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_28_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_27_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_26_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_32_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_31_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_30_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_37_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_36_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_35_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CATHODE_7_OBUF_1_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_41_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_40_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_39_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_38_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_45_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_44_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_43_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_42_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_49_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_48_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_47_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_46_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_53_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_52_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_51_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_50_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_57_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_56_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_55_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_54_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_61_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_60_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_59_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_58_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_64_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_63_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_62_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_Q15_UNCONNECTED : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal FREQ_DIV_1_p1_COUNTER : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal SVN_SEG_DISP_1_INT_DIGIT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal SVN_SEG_DISP_1_SVN_SEG_ANODE : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SVN_SEG_DISP_1_GND_8_o_PWR_8_o_select_5_OUT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(3),
      O => Result_3_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(2),
      O => Result_2_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(1),
      O => Result_1_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(0),
      O => Result_0_0
    );
  FREQ_DIV_1_p1_COUNTER_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(3),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_3_rt_7
    );
  N0_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp8_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X20Y16"
    )
    port map (
      O => ProtoComp8_CYINITGND_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y16"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp8_CYINITGND_0,
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_Q_1157,
      CO(2) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => FREQ_DIV_1_p1_COUNTER_3_rt_7,
      S(2) => FREQ_DIV_1_p1_COUNTER_2_rt_1,
      S(1) => FREQ_DIV_1_p1_COUNTER_1_rt_2,
      S(0) => FREQ_DIV_1_Mcount_p1_COUNTER_lut(0)
    );
  FREQ_DIV_1_p1_COUNTER_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(2),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_2_rt_1
    );
  N0_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(1),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_1_rt_2
    );
  N0_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(0),
      ADR5 => '1',
      O => FREQ_DIV_1_Mcount_p1_COUNTER_lut(0)
    );
  CATHODE_7_OBUF_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y16",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_CATHODE_7_OBUF_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(7),
      O => Result_7_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(6),
      O => Result_6_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(5),
      O => Result_5_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(4),
      O => Result_4_0
    );
  FREQ_DIV_1_p1_COUNTER_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(7),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_7_rt_39
    );
  N0_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y17"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_Q_1157,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_Q_1166,
      CO(2) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => FREQ_DIV_1_p1_COUNTER_7_rt_39,
      S(2) => FREQ_DIV_1_p1_COUNTER_6_rt_30,
      S(1) => FREQ_DIV_1_p1_COUNTER_5_rt_28,
      S(0) => FREQ_DIV_1_p1_COUNTER_4_rt_25
    );
  FREQ_DIV_1_p1_COUNTER_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(6),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_6_rt_30
    );
  N0_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(5),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_5_rt_28
    );
  N0_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(4),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_4_rt_25
    );
  N0_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(11),
      O => Result_11_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(10),
      O => Result_10_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(9),
      O => Result_9_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(8),
      O => Result_8_0
    );
  FREQ_DIV_1_p1_COUNTER_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(11),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_11_rt_61
    );
  N0_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y18"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_Q_1166,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_Q_1175,
      CO(2) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => FREQ_DIV_1_p1_COUNTER_11_rt_61,
      S(2) => FREQ_DIV_1_p1_COUNTER_10_rt_52,
      S(1) => FREQ_DIV_1_p1_COUNTER_9_rt_50,
      S(0) => FREQ_DIV_1_p1_COUNTER_8_rt_47
    );
  FREQ_DIV_1_p1_COUNTER_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(10),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_10_rt_52
    );
  N0_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(9),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_9_rt_50
    );
  N0_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(8),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_8_rt_47
    );
  N0_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(15),
      O => Result_15_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(14),
      O => Result_14_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(13),
      O => Result_13_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(12),
      O => Result_12_0
    );
  FREQ_DIV_1_p1_COUNTER_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(15),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_15_rt_83
    );
  N0_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_17_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y19"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_Q_1175,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_Q_1184,
      CO(2) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(15),
      O(2) => Result(14),
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => FREQ_DIV_1_p1_COUNTER_15_rt_83,
      S(2) => FREQ_DIV_1_p1_COUNTER_14_rt_74,
      S(1) => FREQ_DIV_1_p1_COUNTER_13_rt_72,
      S(0) => FREQ_DIV_1_p1_COUNTER_12_rt_69
    );
  FREQ_DIV_1_p1_COUNTER_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(14),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_14_rt_74
    );
  N0_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_16_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(13),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_13_rt_72
    );
  N0_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_15_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(12),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_12_rt_69
    );
  N0_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(19),
      O => Result_19_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(18),
      O => Result_18_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(17),
      O => Result_17_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(16),
      O => Result_16_0
    );
  FREQ_DIV_1_p1_COUNTER_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(19),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_19_rt_105
    );
  N0_21_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_21_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y20"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_Q_1184,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_Q_1193,
      CO(2) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(19),
      O(2) => Result(18),
      O(1) => Result(17),
      O(0) => Result(16),
      S(3) => FREQ_DIV_1_p1_COUNTER_19_rt_105,
      S(2) => FREQ_DIV_1_p1_COUNTER_18_rt_96,
      S(1) => FREQ_DIV_1_p1_COUNTER_17_rt_94,
      S(0) => FREQ_DIV_1_p1_COUNTER_16_rt_91
    );
  FREQ_DIV_1_p1_COUNTER_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(18),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_18_rt_96
    );
  N0_20_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_20_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_1_p1_COUNTER(17),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_17_rt_94
    );
  N0_19_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_19_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(16),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_16_rt_91
    );
  N0_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_18_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(23),
      O => Result_23_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(22),
      O => Result_22_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(21),
      O => Result_21_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(20),
      O => Result_20_0
    );
  FREQ_DIV_1_p1_COUNTER_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(23),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_23_rt_127
    );
  N0_25_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_25_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y21"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_Q_1193,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_Q_1202,
      CO(2) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(23),
      O(2) => Result(22),
      O(1) => Result(21),
      O(0) => Result(20),
      S(3) => FREQ_DIV_1_p1_COUNTER_23_rt_127,
      S(2) => FREQ_DIV_1_p1_COUNTER_22_rt_118,
      S(1) => FREQ_DIV_1_p1_COUNTER_21_rt_116,
      S(0) => FREQ_DIV_1_p1_COUNTER_20_rt_113
    );
  FREQ_DIV_1_p1_COUNTER_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(22),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_22_rt_118
    );
  N0_24_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_24_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_1_p1_COUNTER(21),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_21_rt_116
    );
  N0_23_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_23_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(20),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_20_rt_113
    );
  N0_22_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_22_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(27),
      O => Result_27_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(26),
      O => Result_26_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(25),
      O => Result_25_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result(24),
      O => Result_24_0
    );
  FREQ_DIV_1_p1_COUNTER_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(27),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_27_rt_149
    );
  N0_29_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_29_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y22"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_Q_1202,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_Q_1209,
      CO(2) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(27),
      O(2) => Result(26),
      O(1) => Result(25),
      O(0) => Result(24),
      S(3) => FREQ_DIV_1_p1_COUNTER_27_rt_149,
      S(2) => FREQ_DIV_1_p1_COUNTER_26_rt_140,
      S(1) => FREQ_DIV_1_p1_COUNTER_25_rt_138,
      S(0) => FREQ_DIV_1_p1_COUNTER_24_rt_135
    );
  FREQ_DIV_1_p1_COUNTER_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(26),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_26_rt_140
    );
  N0_28_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_28_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_1_p1_COUNTER(25),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_25_rt_138
    );
  N0_27_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_27_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(24),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_24_rt_135
    );
  N0_26_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_26_A5LUT_O_UNCONNECTED
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
  FREQ_DIV_1_p1_COUNTER_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(31),
      O => FREQ_DIV_1_p1_COUNTER_31_rt_169
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y23"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_Q_1209,
      CYINIT => '0',
      CO(3) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(31),
      O(2) => Result(30),
      O(1) => Result(29),
      O(0) => Result(28),
      S(3) => FREQ_DIV_1_p1_COUNTER_31_rt_169,
      S(2) => FREQ_DIV_1_p1_COUNTER_30_rt_162,
      S(1) => FREQ_DIV_1_p1_COUNTER_29_rt_154,
      S(0) => FREQ_DIV_1_p1_COUNTER_28_rt_157
    );
  FREQ_DIV_1_p1_COUNTER_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(30),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_30_rt_162
    );
  N0_32_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_32_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_1_p1_COUNTER(29),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_29_rt_154
    );
  N0_31_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_31_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_1_p1_COUNTER_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(28),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_28_rt_157
    );
  N0_30_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_30_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_3_1,
      O => Result_3_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_2_1,
      O => Result_2_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_1_1,
      O => Result_1_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_0_1,
      O => Result_0_1_0
    );
  FREQ_DIV_2_p1_COUNTER_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(3),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_3_rt_180
    );
  N0_37_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_37_D5LUT_O_UNCONNECTED
    );
  ProtoComp8_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X24Y27"
    )
    port map (
      O => FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_ProtoComp8_CYINITGND_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y27"
    )
    port map (
      CI => '0',
      CYINIT => FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_ProtoComp8_CYINITGND_0,
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_Q_1222,
      CO(2) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result_3_1,
      O(2) => Result_2_1,
      O(1) => Result_1_1,
      O(0) => Result_0_1,
      S(3) => FREQ_DIV_2_p1_COUNTER_3_rt_180,
      S(2) => FREQ_DIV_2_p1_COUNTER_2_rt_174,
      S(1) => FREQ_DIV_2_p1_COUNTER_1_rt_175,
      S(0) => FREQ_DIV_2_Mcount_p1_COUNTER_lut(0)
    );
  FREQ_DIV_2_p1_COUNTER_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(2),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_2_rt_174
    );
  N0_36_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_36_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(1),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_1_rt_175
    );
  N0_35_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_35_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(0),
      ADR5 => '1',
      O => FREQ_DIV_2_Mcount_p1_COUNTER_lut(0)
    );
  CATHODE_7_OBUF_1_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y27",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_CATHODE_7_OBUF_1_2_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_7_1,
      O => Result_7_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_6_1,
      O => Result_6_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_5_1,
      O => Result_5_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_4_1,
      O => Result_4_1_0
    );
  FREQ_DIV_2_p1_COUNTER_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(7),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_7_rt_212
    );
  N0_41_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_41_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y28"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_Q_1222,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_Q_1231,
      CO(2) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_7_1,
      O(2) => Result_6_1,
      O(1) => Result_5_1,
      O(0) => Result_4_1,
      S(3) => FREQ_DIV_2_p1_COUNTER_7_rt_212,
      S(2) => FREQ_DIV_2_p1_COUNTER_6_rt_203,
      S(1) => FREQ_DIV_2_p1_COUNTER_5_rt_201,
      S(0) => FREQ_DIV_2_p1_COUNTER_4_rt_198
    );
  FREQ_DIV_2_p1_COUNTER_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(6),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_6_rt_203
    );
  N0_40_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_40_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(5),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_5_rt_201
    );
  N0_39_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_39_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(4),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_4_rt_198
    );
  N0_38_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y28",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_38_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_11_1,
      O => Result_11_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_10_1,
      O => Result_10_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_9_1,
      O => Result_9_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_8_1,
      O => Result_8_1_0
    );
  FREQ_DIV_2_p1_COUNTER_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(11),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_11_rt_234
    );
  N0_45_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_45_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y29"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_Q_1231,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_Q_1240,
      CO(2) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_11_1,
      O(2) => Result_10_1,
      O(1) => Result_9_1,
      O(0) => Result_8_1,
      S(3) => FREQ_DIV_2_p1_COUNTER_11_rt_234,
      S(2) => FREQ_DIV_2_p1_COUNTER_10_rt_225,
      S(1) => FREQ_DIV_2_p1_COUNTER_9_rt_223,
      S(0) => FREQ_DIV_2_p1_COUNTER_8_rt_220
    );
  FREQ_DIV_2_p1_COUNTER_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(10),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_10_rt_225
    );
  N0_44_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_44_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(9),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_9_rt_223
    );
  N0_43_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_43_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(8),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_8_rt_220
    );
  N0_42_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_42_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_15_1,
      O => Result_15_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_14_1,
      O => Result_14_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_13_1,
      O => Result_13_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_12_1,
      O => Result_12_1_0
    );
  FREQ_DIV_2_p1_COUNTER_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(15),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_15_rt_256
    );
  N0_49_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_49_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y30"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_Q_1240,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_Q_1249,
      CO(2) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_15_1,
      O(2) => Result_14_1,
      O(1) => Result_13_1,
      O(0) => Result_12_1,
      S(3) => FREQ_DIV_2_p1_COUNTER_15_rt_256,
      S(2) => FREQ_DIV_2_p1_COUNTER_14_rt_247,
      S(1) => FREQ_DIV_2_p1_COUNTER_13_rt_245,
      S(0) => FREQ_DIV_2_p1_COUNTER_12_rt_242
    );
  FREQ_DIV_2_p1_COUNTER_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(14),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_14_rt_247
    );
  N0_48_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_48_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(13),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_13_rt_245
    );
  N0_47_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_47_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(12),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_12_rt_242
    );
  N0_46_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_46_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_19_1,
      O => Result_19_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_18_1,
      O => Result_18_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_17_1,
      O => Result_17_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_16_1,
      O => Result_16_1_0
    );
  FREQ_DIV_2_p1_COUNTER_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_2_p1_COUNTER(19),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_19_rt_278
    );
  N0_53_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_53_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y31"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_Q_1249,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_Q_1258,
      CO(2) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_19_1,
      O(2) => Result_18_1,
      O(1) => Result_17_1,
      O(0) => Result_16_1,
      S(3) => FREQ_DIV_2_p1_COUNTER_19_rt_278,
      S(2) => FREQ_DIV_2_p1_COUNTER_18_rt_269,
      S(1) => FREQ_DIV_2_p1_COUNTER_17_rt_267,
      S(0) => FREQ_DIV_2_p1_COUNTER_16_rt_264
    );
  FREQ_DIV_2_p1_COUNTER_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_2_p1_COUNTER(18),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_18_rt_269
    );
  N0_52_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_52_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(17),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_17_rt_267
    );
  N0_51_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_51_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(16),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_16_rt_264
    );
  N0_50_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_50_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_23_1,
      O => Result_23_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_22_1,
      O => Result_22_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_21_1,
      O => Result_21_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_20_1,
      O => Result_20_1_0
    );
  FREQ_DIV_2_p1_COUNTER_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_2_p1_COUNTER(23),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_23_rt_300
    );
  N0_57_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_57_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y32"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_Q_1258,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_Q_1267,
      CO(2) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_23_1,
      O(2) => Result_22_1,
      O(1) => Result_21_1,
      O(0) => Result_20_1,
      S(3) => FREQ_DIV_2_p1_COUNTER_23_rt_300,
      S(2) => FREQ_DIV_2_p1_COUNTER_22_rt_291,
      S(1) => FREQ_DIV_2_p1_COUNTER_21_rt_289,
      S(0) => FREQ_DIV_2_p1_COUNTER_20_rt_286
    );
  FREQ_DIV_2_p1_COUNTER_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_2_p1_COUNTER(22),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_22_rt_291
    );
  N0_56_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_56_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(21),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_21_rt_289
    );
  N0_55_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_55_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(20),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_20_rt_286
    );
  N0_54_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_54_A5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_27_1,
      O => Result_27_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_26_1,
      O => Result_26_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_25_1,
      O => Result_25_1_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Result_24_1,
      O => Result_24_1_0
    );
  FREQ_DIV_2_p1_COUNTER_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(27),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_27_rt_322
    );
  N0_61_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_61_D5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y33"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_Q_1267,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_Q_1274,
      CO(2) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_27_1,
      O(2) => Result_26_1,
      O(1) => Result_25_1,
      O(0) => Result_24_1,
      S(3) => FREQ_DIV_2_p1_COUNTER_27_rt_322,
      S(2) => FREQ_DIV_2_p1_COUNTER_26_rt_313,
      S(1) => FREQ_DIV_2_p1_COUNTER_25_rt_311,
      S(0) => FREQ_DIV_2_p1_COUNTER_24_rt_308
    );
  FREQ_DIV_2_p1_COUNTER_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(26),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_26_rt_313
    );
  N0_60_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_60_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_2_p1_COUNTER(25),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_25_rt_311
    );
  N0_59_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_59_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(24),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_24_rt_308
    );
  N0_58_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_58_A5LUT_O_UNCONNECTED
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
  FREQ_DIV_2_p1_COUNTER_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y34",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(31),
      O => FREQ_DIV_2_p1_COUNTER_31_rt_342
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X24Y34"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_Q_1274,
      CYINIT => '0',
      CO(3) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_31_1,
      O(2) => Result_30_1,
      O(1) => Result_29_1,
      O(0) => Result_28_1,
      S(3) => FREQ_DIV_2_p1_COUNTER_31_rt_342,
      S(2) => FREQ_DIV_2_p1_COUNTER_30_rt_335,
      S(1) => FREQ_DIV_2_p1_COUNTER_29_rt_327,
      S(0) => FREQ_DIV_2_p1_COUNTER_28_rt_330
    );
  FREQ_DIV_2_p1_COUNTER_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y34",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(30),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_30_rt_335
    );
  N0_64_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_64_C5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y34",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(29),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_29_rt_327
    );
  N0_63_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_63_B5LUT_O_UNCONNECTED
    );
  FREQ_DIV_2_p1_COUNTER_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X24Y34",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(28),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_28_rt_330
    );
  N0_62_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_62_A5LUT_O_UNCONNECTED
    );
  ANODE_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD153"
    )
    port map (
      I => NlwBufferSignal_ANODE_0_OBUF_I,
      O => ANODE(0)
    );
  ANODE_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD154"
    )
    port map (
      I => NlwBufferSignal_ANODE_1_OBUF_I,
      O => ANODE(1)
    );
  ANODE_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD159"
    )
    port map (
      I => NlwBufferSignal_ANODE_2_OBUF_I,
      O => ANODE(2)
    );
  ANODE_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD160"
    )
    port map (
      I => NlwBufferSignal_ANODE_3_OBUF_I,
      O => ANODE(3)
    );
  TEST1_OBUF : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => NlwBufferSignal_TEST1_OBUF_I,
      O => TEST1
    );
  TEST2_OBUF : X_OBUF
    generic map(
      LOC => "PAD60"
    )
    port map (
      I => NlwBufferSignal_TEST2_OBUF_I,
      O => TEST2
    );
  TEST3_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => NlwBufferSignal_TEST3_OBUF_I,
      O => TEST3
    );
  NEX_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 202 ps
    )
    port map (
      O => NEX_IBUF_361,
      I => NEX
    );
  ProtoComp12_IMUX : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 202 ps
    )
    port map (
      I => NEX_IBUF_361,
      O => NEX_IBUF_0
    );
  NOE_IBUF : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 202 ps
    )
    port map (
      O => TEST3_OBUF_364,
      I => NOE
    );
  ProtoComp12_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST3_OBUF_364,
      O => TEST3_OBUF_0
    );
  NWE_IBUF : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      O => TEST2_OBUF_367,
      I => NWE
    );
  ProtoComp12_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST2_OBUF_367,
      O => TEST2_OBUF_0
    );
  CATHODE_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => NlwBufferSignal_CATHODE_0_OBUF_I,
      O => CATHODE(0)
    );
  CATHODE_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => NlwBufferSignal_CATHODE_1_OBUF_I,
      O => CATHODE(1)
    );
  CATHODE_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => NlwBufferSignal_CATHODE_2_OBUF_I,
      O => CATHODE(2)
    );
  CATHODE_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD138"
    )
    port map (
      I => NlwBufferSignal_CATHODE_3_OBUF_I,
      O => CATHODE(3)
    );
  CATHODE_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD151"
    )
    port map (
      I => NlwBufferSignal_CATHODE_4_OBUF_I,
      O => CATHODE(4)
    );
  CATHODE_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD152"
    )
    port map (
      I => NlwBufferSignal_CATHODE_5_OBUF_I,
      O => CATHODE(5)
    );
  CATHODE_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_CATHODE_6_OBUF_I,
      O => CATHODE(6)
    );
  CATHODE_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => '1',
      O => CATHODE(7)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_386,
      I => CLK
    );
  ProtoComp12_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_386,
      O => CLK_BUFGP_IBUFG_0
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 202 ps
    )
    port map (
      O => RESET_IBUF_389,
      I => RESET
    );
  ProtoComp12_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 202 ps
    )
    port map (
      I => RESET_IBUF_389,
      O => RESET_IBUF_0
    );
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLK_BUFGP_BUFG_IN,
      O => CLK_BUFGP
    );
  FREQ_DIV_1_p1_COUNTER_6 : X_FF
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_6_CLK,
      I => FREQ_DIV_1_p1_COUNTER_6_rstpot_394,
      O => FREQ_DIV_1_p1_COUNTER(6),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_6_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_6_rstpot_394
    );
  FREQ_DIV_1_p1_COUNTER_5 : X_FF
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_5_CLK,
      I => FREQ_DIV_1_p1_COUNTER_5_rstpot_399,
      O => FREQ_DIV_1_p1_COUNTER(5),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Result_5_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_5_rstpot_399
    );
  FREQ_DIV_1_p1_COUNTER_4 : X_FF
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_4_CLK,
      I => FREQ_DIV_1_p1_COUNTER_4_rstpot_403,
      O => FREQ_DIV_1_p1_COUNTER(4),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_4_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_4_rstpot_403
    );
  FREQ_DIV_1_p1_COUNTER_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_3_CLK,
      I => FREQ_DIV_1_p1_COUNTER_3_rstpot_407,
      O => FREQ_DIV_1_p1_COUNTER(3),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y17",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_3_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_3_rstpot_407
    );
  FREQ_DIV_1_p1_COUNTER_10 : X_FF
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_10_CLK,
      I => FREQ_DIV_1_p1_COUNTER_10_rstpot_411,
      O => FREQ_DIV_1_p1_COUNTER(10),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_10_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_10_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_10_rstpot_411
    );
  FREQ_DIV_1_p1_COUNTER_9 : X_FF
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_9_CLK,
      I => FREQ_DIV_1_p1_COUNTER_9_rstpot_416,
      O => FREQ_DIV_1_p1_COUNTER(9),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => X"00000000AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Result_9_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_9_rstpot_416
    );
  FREQ_DIV_1_p1_COUNTER_8 : X_FF
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_8_CLK,
      I => FREQ_DIV_1_p1_COUNTER_8_rstpot_420,
      O => FREQ_DIV_1_p1_COUNTER(8),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_8_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_8_rstpot_420
    );
  FREQ_DIV_1_p1_COUNTER_7 : X_FF
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_7_CLK,
      I => FREQ_DIV_1_p1_COUNTER_7_rstpot_424,
      O => FREQ_DIV_1_p1_COUNTER(7),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_7_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_7_rstpot_424
    );
  FREQ_DIV_1_p1_COUNTER_14 : X_FF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_14_CLK,
      I => FREQ_DIV_1_p1_COUNTER_14_rstpot_428,
      O => FREQ_DIV_1_p1_COUNTER(14),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_14_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_14_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_14_rstpot_428
    );
  FREQ_DIV_1_p1_COUNTER_13 : X_FF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_13_CLK,
      I => FREQ_DIV_1_p1_COUNTER_13_rstpot_433,
      O => FREQ_DIV_1_p1_COUNTER(13),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_13_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Result_13_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_13_rstpot_433
    );
  FREQ_DIV_1_p1_COUNTER_12 : X_FF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_12_CLK,
      I => FREQ_DIV_1_p1_COUNTER_12_rstpot_437,
      O => FREQ_DIV_1_p1_COUNTER(12),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_12_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_12_rstpot_437
    );
  FREQ_DIV_1_p1_COUNTER_11 : X_FF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_11_CLK,
      I => FREQ_DIV_1_p1_COUNTER_11_rstpot_441,
      O => FREQ_DIV_1_p1_COUNTER(11),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_11_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_11_rstpot_441
    );
  FREQ_DIV_1_p1_COUNTER_21 : X_FF
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_21_CLK,
      I => FREQ_DIV_1_p1_COUNTER_21_rstpot_445,
      O => FREQ_DIV_1_p1_COUNTER(21),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_21_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_21_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_21_rstpot_445
    );
  FREQ_DIV_1_p1_COUNTER_20 : X_FF
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_20_CLK,
      I => FREQ_DIV_1_p1_COUNTER_20_rstpot_450,
      O => FREQ_DIV_1_p1_COUNTER(20),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_20_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_20_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_20_rstpot_450
    );
  FREQ_DIV_1_p1_COUNTER_19 : X_FF
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_19_CLK,
      I => FREQ_DIV_1_p1_COUNTER_19_rstpot_454,
      O => FREQ_DIV_1_p1_COUNTER(19),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_19_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_19_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_19_rstpot_454
    );
  FREQ_DIV_1_p1_COUNTER_18 : X_FF
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_18_CLK,
      I => FREQ_DIV_1_p1_COUNTER_18_rstpot_458,
      O => FREQ_DIV_1_p1_COUNTER(18),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_18_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y20",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_18_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_18_rstpot_458
    );
  FREQ_DIV_1_p1_COUNTER_25 : X_FF
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_25_CLK,
      I => FREQ_DIV_1_p1_COUNTER_25_rstpot_462,
      O => FREQ_DIV_1_p1_COUNTER(25),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_25_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_25_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_25_rstpot_462
    );
  FREQ_DIV_1_p1_COUNTER_24 : X_FF
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_24_CLK,
      I => FREQ_DIV_1_p1_COUNTER_24_rstpot_467,
      O => FREQ_DIV_1_p1_COUNTER(24),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_24_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_24_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_24_rstpot_467
    );
  FREQ_DIV_1_p1_COUNTER_23 : X_FF
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_23_CLK,
      I => FREQ_DIV_1_p1_COUNTER_23_rstpot_471,
      O => FREQ_DIV_1_p1_COUNTER(23),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_23_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_23_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_23_rstpot_471
    );
  FREQ_DIV_1_p1_COUNTER_22 : X_FF
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_22_CLK,
      I => FREQ_DIV_1_p1_COUNTER_22_rstpot_475,
      O => FREQ_DIV_1_p1_COUNTER(22),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_22_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y21",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_22_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_22_rstpot_475
    );
  FREQ_DIV_1_p1_COUNTER_29 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_29_CLK,
      I => FREQ_DIV_1_p1_COUNTER_29_rstpot_479,
      O => FREQ_DIV_1_p1_COUNTER(29),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_29_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Result_29_0,
      ADR3 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_29_rstpot_479
    );
  FREQ_DIV_1_p1_COUNTER_28 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_28_CLK,
      I => FREQ_DIV_1_p1_COUNTER_28_rstpot_484,
      O => FREQ_DIV_1_p1_COUNTER(28),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_28_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_28_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_28_rstpot_484
    );
  FREQ_DIV_1_p1_COUNTER_27 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_27_CLK,
      I => FREQ_DIV_1_p1_COUNTER_27_rstpot_488,
      O => FREQ_DIV_1_p1_COUNTER(27),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_27_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_27_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_27_rstpot_488
    );
  FREQ_DIV_1_p1_COUNTER_26 : X_FF
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_26_CLK,
      I => FREQ_DIV_1_p1_COUNTER_26_rstpot_492,
      O => FREQ_DIV_1_p1_COUNTER(26),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_26_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y22",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_26_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_26_rstpot_492
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_3 : X_FF
    generic map(
      LOC => "SLICE_X22Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_CLK,
      I => SVN_SEG_DISP_1_GND_8_o_PWR_8_o_select_5_OUT(3),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE(3),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_GND_8_o_PWR_8_o_select_5_OUT_3_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y16",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1107,
      O => SVN_SEG_DISP_1_GND_8_o_PWR_8_o_select_5_OUT(3)
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_2_CLK,
      I => SVN_SEG_DISP_1_GND_8_o_PWR_8_o_select_5_OUT(2),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE(2),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_GND_8_o_PWR_8_o_select_5_OUT_2_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y16",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1109,
      O => SVN_SEG_DISP_1_GND_8_o_PWR_8_o_select_5_OUT(2)
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_1_CLK,
      I => SVN_SEG_DISP_1_GND_8_o_PWR_8_o_select_5_OUT(1),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE(1),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_GND_8_o_PWR_8_o_select_5_OUT_1_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y16",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => SVN_SEG_DISP_1_state_STATE_FSM_FFd3_1112,
      O => SVN_SEG_DISP_1_GND_8_o_PWR_8_o_select_5_OUT(1)
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_0_CLK,
      I => SVN_SEG_DISP_1_GND_8_o_PWR_8_o_select_5_OUT(0),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE(0),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_GND_8_o_PWR_8_o_select_5_OUT_0_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y16",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd4_1113,
      O => SVN_SEG_DISP_1_GND_8_o_PWR_8_o_select_5_OUT(0)
    );
  FREQ_DIV_1_p1_COUNTER_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_2_CLK,
      I => FREQ_DIV_1_p1_COUNTER_2_rstpot_513,
      O => FREQ_DIV_1_p1_COUNTER(2),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => X"5555555500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_2_0,
      ADR0 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_2_rstpot_513
    );
  FREQ_DIV_1_p1_COUNTER_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_1_CLK,
      I => FREQ_DIV_1_p1_COUNTER_1_rstpot_517,
      O => FREQ_DIV_1_p1_COUNTER(1),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Result_1_0,
      ADR3 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_1_rstpot_517
    );
  FREQ_DIV_1_OUTPUT_FREQ : X_FF
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_OUTPUT_FREQ_CLK,
      I => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_OUTPUT_FREQ_1110,
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => X"0000800000000000"
    )
    port map (
      ADR4 => N12,
      ADR2 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_1_1305,
      ADR3 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_5,
      ADR1 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_Q,
      ADR0 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_2_1307,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_3_1308,
      O => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o
    );
  FREQ_DIV_1_p1_COUNTER_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_0_CLK,
      I => FREQ_DIV_1_p1_COUNTER_0_rstpot_524,
      O => FREQ_DIV_1_p1_COUNTER(0),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_0_0,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_0_rstpot_524
    );
  FREQ_DIV_1_p1_COUNTER_17 : X_FF
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_17_CLK,
      I => FREQ_DIV_1_p1_COUNTER_17_rstpot_532,
      O => FREQ_DIV_1_p1_COUNTER(17),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_17_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => X"5555555500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_17_0,
      ADR0 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_17_rstpot_532
    );
  FREQ_DIV_1_p1_COUNTER_16 : X_FF
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_16_CLK,
      I => FREQ_DIV_1_p1_COUNTER_16_rstpot_537,
      O => FREQ_DIV_1_p1_COUNTER(16),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_16_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => Result_16_0,
      ADR3 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_16_rstpot_537
    );
  FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => X"0800000000000000"
    )
    port map (
      ADR2 => N12,
      ADR0 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_1_1305,
      ADR3 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_5,
      ADR1 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_Q,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_2_1307,
      ADR4 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_3_1308,
      O => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293
    );
  FREQ_DIV_1_p1_COUNTER_15 : X_FF
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_15_CLK,
      I => FREQ_DIV_1_p1_COUNTER_15_rstpot_546,
      O => FREQ_DIV_1_p1_COUNTER(15),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_15_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y19",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Result_15_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_15_rstpot_546
    );
  FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"FF00FFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => FREQ_DIV_1_p1_COUNTER(6),
      ADR3 => FREQ_DIV_1_p1_COUNTER(31),
      ADR4 => FREQ_DIV_1_p1_COUNTER(2),
      O => N12
    );
  FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_6 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => FREQ_DIV_1_p1_COUNTER(26),
      ADR1 => FREQ_DIV_1_p1_COUNTER(25),
      ADR4 => FREQ_DIV_1_p1_COUNTER(27),
      ADR3 => FREQ_DIV_1_p1_COUNTER(28),
      ADR0 => FREQ_DIV_1_p1_COUNTER(29),
      ADR2 => FREQ_DIV_1_p1_COUNTER(30),
      O => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_5
    );
  FREQ_DIV_1_p1_COUNTER_31 : X_FF
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_31_CLK,
      I => FREQ_DIV_1_p1_COUNTER_31_rstpot_562,
      O => FREQ_DIV_1_p1_COUNTER(31),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_31_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_31_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_31_rstpot_562
    );
  FREQ_DIV_1_p1_COUNTER_30 : X_FF
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_30_CLK,
      I => FREQ_DIV_1_p1_COUNTER_30_rstpot_566,
      O => FREQ_DIV_1_p1_COUNTER(30),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_30_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X22Y22",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_30_0,
      ADR5 => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_7_1293,
      O => FREQ_DIV_1_p1_COUNTER_30_rstpot_566
    );
  SVN_SEG_DISP_1_state_STATE_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X23Y16",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd4_CLK,
      I => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd4_IN,
      O => SVN_SEG_DISP_1_state_STATE_FSM_FFd4_1113,
      SET => GND,
      RST => GND
    );
  SVN_SEG_DISP_1_state_STATE_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X23Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd3_CLK,
      I => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd3_IN,
      O => SVN_SEG_DISP_1_state_STATE_FSM_FFd3_1112,
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X23Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_CLK,
      I => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_IN,
      O => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1109,
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X23Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_CLK,
      I => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_IN,
      O => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1107,
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y17",
      INIT => X"0000000400000000"
    )
    port map (
      ADR1 => FREQ_DIV_1_p1_COUNTER(1),
      ADR5 => FREQ_DIV_1_p1_COUNTER(0),
      ADR0 => FREQ_DIV_1_p1_COUNTER(3),
      ADR4 => FREQ_DIV_1_p1_COUNTER(4),
      ADR2 => FREQ_DIV_1_p1_COUNTER(5),
      ADR3 => FREQ_DIV_1_p1_COUNTER(7),
      O => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_Q
    );
  FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y18",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => FREQ_DIV_1_p1_COUNTER(9),
      ADR3 => FREQ_DIV_1_p1_COUNTER(8),
      ADR1 => FREQ_DIV_1_p1_COUNTER(10),
      ADR4 => FREQ_DIV_1_p1_COUNTER(12),
      ADR2 => FREQ_DIV_1_p1_COUNTER(17),
      ADR5 => FREQ_DIV_1_p1_COUNTER(18),
      O => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_2_1307
    );
  FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y19",
      INIT => X"C000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(13),
      ADR2 => FREQ_DIV_1_p1_COUNTER(11),
      ADR1 => FREQ_DIV_1_p1_COUNTER(16),
      ADR5 => FREQ_DIV_1_p1_COUNTER(15),
      ADR3 => FREQ_DIV_1_p1_COUNTER(14),
      O => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_1_1305
    );
  FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y21",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => FREQ_DIV_1_p1_COUNTER(20),
      ADR4 => FREQ_DIV_1_p1_COUNTER(19),
      ADR5 => FREQ_DIV_1_p1_COUNTER(21),
      ADR0 => FREQ_DIV_1_p1_COUNTER(22),
      ADR1 => FREQ_DIV_1_p1_COUNTER(23),
      ADR2 => FREQ_DIV_1_p1_COUNTER(24),
      O => FREQ_DIV_1_GND_4_o_p1_COUNTER_31_equal_1_o_31_3_1308
    );
  FREQ_DIV_2_p1_COUNTER_6 : X_FF
    generic map(
      LOC => "SLICE_X25Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_6_CLK,
      I => FREQ_DIV_2_p1_COUNTER_6_rstpot_606,
      O => FREQ_DIV_2_p1_COUNTER(6),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y28",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Result_6_1_0,
      ADR3 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_6_rstpot_606
    );
  FREQ_DIV_2_p1_COUNTER_5 : X_FF
    generic map(
      LOC => "SLICE_X25Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_5_CLK,
      I => FREQ_DIV_2_p1_COUNTER_5_rstpot_611,
      O => FREQ_DIV_2_p1_COUNTER(5),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y28",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Result_5_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_5_rstpot_611
    );
  FREQ_DIV_2_p1_COUNTER_4 : X_FF
    generic map(
      LOC => "SLICE_X25Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_4_CLK,
      I => FREQ_DIV_2_p1_COUNTER_4_rstpot_615,
      O => FREQ_DIV_2_p1_COUNTER(4),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y28",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_4_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_4_rstpot_615
    );
  FREQ_DIV_2_p1_COUNTER_3 : X_FF
    generic map(
      LOC => "SLICE_X25Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_3_CLK,
      I => FREQ_DIV_2_p1_COUNTER_3_rstpot_619,
      O => FREQ_DIV_2_p1_COUNTER(3),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y28",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_3_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_3_rstpot_619
    );
  FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y29",
      INIT => X"0200000000000000"
    )
    port map (
      ADR4 => FREQ_DIV_2_p1_COUNTER(1),
      ADR5 => FREQ_DIV_2_p1_COUNTER(0),
      ADR0 => FREQ_DIV_2_p1_COUNTER(3),
      ADR3 => FREQ_DIV_2_p1_COUNTER(2),
      ADR1 => FREQ_DIV_2_p1_COUNTER(6),
      ADR2 => FREQ_DIV_2_p1_COUNTER(7),
      O => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_2_1301
    );
  FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y29",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => FREQ_DIV_2_p1_COUNTER(5),
      ADR0 => FREQ_DIV_2_p1_COUNTER(4),
      ADR2 => FREQ_DIV_2_p1_COUNTER(12),
      ADR5 => FREQ_DIV_2_p1_COUNTER(11),
      ADR4 => FREQ_DIV_2_p1_COUNTER(14),
      ADR3 => FREQ_DIV_2_p1_COUNTER(13),
      O => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_Q
    );
  FREQ_DIV_2_p1_COUNTER_14 : X_FF
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_14_CLK,
      I => FREQ_DIV_2_p1_COUNTER_14_rstpot_637,
      O => FREQ_DIV_2_p1_COUNTER(14),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_14_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_14_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_14_rstpot_637
    );
  FREQ_DIV_2_p1_COUNTER_13 : X_FF
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_13_CLK,
      I => FREQ_DIV_2_p1_COUNTER_13_rstpot_642,
      O => FREQ_DIV_2_p1_COUNTER(13),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_13_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => X"00000000AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Result_13_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_13_rstpot_642
    );
  FREQ_DIV_2_p1_COUNTER_12 : X_FF
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_12_CLK,
      I => FREQ_DIV_2_p1_COUNTER_12_rstpot_646,
      O => FREQ_DIV_2_p1_COUNTER(12),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_12_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_12_rstpot_646
    );
  FREQ_DIV_2_p1_COUNTER_11 : X_FF
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_11_CLK,
      I => FREQ_DIV_2_p1_COUNTER_11_rstpot_650,
      O => FREQ_DIV_2_p1_COUNTER(11),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y30",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_11_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_11_rstpot_650
    );
  FREQ_DIV_2_p1_COUNTER_21 : X_FF
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_21_CLK,
      I => FREQ_DIV_2_p1_COUNTER_21_rstpot_654,
      O => FREQ_DIV_2_p1_COUNTER(21),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_21_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => Result_21_1_0,
      ADR2 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_21_rstpot_654
    );
  FREQ_DIV_2_p1_COUNTER_20 : X_FF
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_20_CLK,
      I => FREQ_DIV_2_p1_COUNTER_20_rstpot_659,
      O => FREQ_DIV_2_p1_COUNTER(20),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_20_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_20_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_20_rstpot_659
    );
  FREQ_DIV_2_p1_COUNTER_19 : X_FF
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_19_CLK,
      I => FREQ_DIV_2_p1_COUNTER_19_rstpot_663,
      O => FREQ_DIV_2_p1_COUNTER(19),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_19_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_19_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_19_rstpot_663
    );
  FREQ_DIV_2_p1_COUNTER_18 : X_FF
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_18_CLK,
      I => FREQ_DIV_2_p1_COUNTER_18_rstpot_667,
      O => FREQ_DIV_2_p1_COUNTER(18),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_18_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y31",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_18_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_18_rstpot_667
    );
  FREQ_DIV_2_p1_COUNTER_25 : X_FF
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_25_CLK,
      I => FREQ_DIV_2_p1_COUNTER_25_rstpot_671,
      O => FREQ_DIV_2_p1_COUNTER(25),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_25_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_25_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_25_rstpot_671
    );
  FREQ_DIV_2_p1_COUNTER_24 : X_FF
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_24_CLK,
      I => FREQ_DIV_2_p1_COUNTER_24_rstpot_676,
      O => FREQ_DIV_2_p1_COUNTER(24),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_24_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_24_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_24_rstpot_676
    );
  FREQ_DIV_2_p1_COUNTER_23 : X_FF
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_23_CLK,
      I => FREQ_DIV_2_p1_COUNTER_23_rstpot_680,
      O => FREQ_DIV_2_p1_COUNTER(23),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_23_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_23_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_23_rstpot_680
    );
  FREQ_DIV_2_p1_COUNTER_22 : X_FF
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_22_CLK,
      I => FREQ_DIV_2_p1_COUNTER_22_rstpot_684,
      O => FREQ_DIV_2_p1_COUNTER(22),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_22_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_22_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_22_rstpot_684
    );
  FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"FFFF00FFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => FREQ_DIV_2_p1_COUNTER(18),
      ADR4 => FREQ_DIV_2_p1_COUNTER(31),
      ADR3 => FREQ_DIV_2_p1_COUNTER(16),
      O => N14
    );
  FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_6 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => FREQ_DIV_2_p1_COUNTER(26),
      ADR1 => FREQ_DIV_2_p1_COUNTER(25),
      ADR3 => FREQ_DIV_2_p1_COUNTER(27),
      ADR4 => FREQ_DIV_2_p1_COUNTER(28),
      ADR5 => FREQ_DIV_2_p1_COUNTER(29),
      ADR2 => FREQ_DIV_2_p1_COUNTER(30),
      O => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_5
    );
  FREQ_DIV_2_p1_COUNTER_31 : X_FF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_31_CLK,
      I => FREQ_DIV_2_p1_COUNTER_31_rstpot_700,
      O => FREQ_DIV_2_p1_COUNTER(31),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_31_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_31_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_31_rstpot_700
    );
  FREQ_DIV_2_p1_COUNTER_30 : X_FF
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_30_CLK,
      I => FREQ_DIV_2_p1_COUNTER_30_rstpot_704,
      O => FREQ_DIV_2_p1_COUNTER(30),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_30_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y33",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_30_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_30_rstpot_704
    );
  CATHODE_2_OBUF_CATHODE_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_5_OBUF_708,
      O => CATHODE_5_OBUF_0
    );
  SVN_SEG_DISP_1_SVN_SEG_CATHODE_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"A120A120A120A120"
    )
    port map (
      ADR4 => '1',
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR0 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR5 => '1',
      O => CATHODE_2_OBUF_1147
    );
  SVN_SEG_DISP_1_SVN_SEG_CATHODE_5_1 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"0D840D84"
    )
    port map (
      ADR4 => '1',
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR0 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(1),
      O => CATHODE_5_OBUF_708
    );
  SVN_SEG_DISP_1_Mmux_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y18",
      INIT => X"FCFCCCCCF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd3_1112,
      ADR2 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(7),
      ADR5 => SVN_SEG_DISP_1_state_STATE_FSM_FFd4_1113,
      ADR1 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(3),
      O => N4
    );
  SVN_SEG_DISP_1_INT_DIGIT_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_3_CLK,
      I => SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_3_Q,
      O => SVN_SEG_DISP_1_INT_DIGIT(3),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_Mmux_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y18",
      INIT => X"FFFFFFFFFAF0AA00"
    )
    port map (
      ADR1 => '1',
      ADR4 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_0,
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1107,
      ADR5 => N4,
      ADR0 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_0,
      ADR3 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1109,
      O => SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_3_Q
    );
  SVN_SEG_DISP_1_Mmux_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y18",
      INIT => X"FFFFCC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => SVN_SEG_DISP_1_state_STATE_FSM_FFd3_1112,
      ADR1 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_0,
      ADR5 => SVN_SEG_DISP_1_state_STATE_FSM_FFd4_1113,
      ADR4 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(2),
      O => N6
    );
  SVN_SEG_DISP_1_INT_DIGIT_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_2_CLK,
      I => SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_2_Q,
      O => SVN_SEG_DISP_1_INT_DIGIT(2),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_Mmux_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X26Y18",
      INIT => X"FFFFECECFFFFA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(14),
      ADR5 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1107,
      ADR4 => N6,
      ADR0 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_0,
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1109,
      O => SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_2_Q
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_IN,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(7),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_IN,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(3),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_IN,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(2),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_IN,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(1),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(0),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_0
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(4),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_0
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(5),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_0
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(6),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_0
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_8 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_751,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(8),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_D,
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_Q15_UNCONNECTED,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_751,
      CE => '1'
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_D,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_752,
      CE => '1',
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_Q15_UNCONNECTED
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_752,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(0),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_12 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_12_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_763,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(12),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_D,
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_Q15_UNCONNECTED,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_763,
      CE => '1'
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_D,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_764,
      CE => '1',
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_Q15_UNCONNECTED
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_764,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(4),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_13 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_13_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_773,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(13),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_D,
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_Q15_UNCONNECTED,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_773,
      CE => '1'
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_D,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_774,
      CE => '1',
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_Q15_UNCONNECTED
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_5 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_774,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(5),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_14 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_14_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_783,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(14),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_D,
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_Q15_UNCONNECTED,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_783,
      CE => '1'
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_D,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_784,
      CE => '1',
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_Q15_UNCONNECTED
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_6 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_784,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(6),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(15),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_0
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(11),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_0
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(10),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_0
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(9),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_0
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_IN,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_Q,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_Q,
      ADR3 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_rt_814
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_15 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_rt_814,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(15),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_IN,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_Q,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_Q,
      ADR3 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_rt_810
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_11 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_rt_810,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(11),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_IN,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_Q,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_Q,
      ADR3 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_rt_808
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_10 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_rt_808,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(10),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_IN,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_Q,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_Q,
      ADR3 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_rt_805
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_9 : X_FF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_rt_805,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(9),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_pack_16,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(6)
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_pack_14,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(4)
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_pack_12,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(2)
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_pack_10,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(0)
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_glue_set_832,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(7),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"FF3FF333FF3FF333"
    )
    port map (
      ADR0 => '1',
      ADR1 => RESET_IBUF_0,
      ADR2 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(7),
      ADR3 => PSDO_RNDM_GEN_1_INPUT_SRG_2_1135,
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_glue_set_832
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"FBFB3B3B"
    )
    port map (
      ADR0 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(6),
      ADR1 => RESET_IBUF_0,
      ADR2 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(7),
      ADR3 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_glue_set_831
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6 : X_FF
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_glue_set_831,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_pack_16,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5 : X_FF
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_glue_set_822,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(5),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"FF33F3F3FF33F3F3"
    )
    port map (
      ADR0 => '1',
      ADR1 => RESET_IBUF_0,
      ADR4 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR2 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(5),
      ADR3 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(6),
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_glue_set_822
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"F3F3BBBB"
    )
    port map (
      ADR0 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(4),
      ADR1 => RESET_IBUF_0,
      ADR4 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR2 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(5),
      ADR3 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_glue_set_821
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_glue_set_821,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_pack_14,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_glue_set_842,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(3),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"FFF333F3FFF333F3"
    )
    port map (
      ADR0 => '1',
      ADR1 => RESET_IBUF_0,
      ADR3 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR2 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(3),
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(4),
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_glue_set_842
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"F3BBF3BB"
    )
    port map (
      ADR0 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(2),
      ADR1 => RESET_IBUF_0,
      ADR3 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR2 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(3),
      ADR4 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_glue_set_845
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_glue_set_845,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_pack_12,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_glue_set_851,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(1),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"F0CCFFFFF0CCFFFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => RESET_IBUF_0,
      ADR3 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR1 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(1),
      ADR2 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(2),
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_glue_set_851
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => X"CCAAFFFF"
    )
    port map (
      ADR0 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(0),
      ADR4 => RESET_IBUF_0,
      ADR3 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR1 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(1),
      ADR2 => '1',
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_glue_set_854
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_glue_set_854,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_pack_10,
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_2_CLK,
      I => FREQ_DIV_2_p1_COUNTER_2_rstpot_865,
      O => FREQ_DIV_2_p1_COUNTER(2),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => X"5555555500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_2_1_0,
      ADR0 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_2_rstpot_865
    );
  FREQ_DIV_2_p1_COUNTER_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_1_CLK,
      I => FREQ_DIV_2_p1_COUNTER_1_rstpot_869,
      O => FREQ_DIV_2_p1_COUNTER(1),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Result_1_1_0,
      ADR3 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_1_rstpot_869
    );
  FREQ_DIV_2_OUTPUT_FREQ : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_OUTPUT_FREQ_CLK,
      I => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_OUTPUT_FREQ_1124,
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => X"0000000080000000"
    )
    port map (
      ADR5 => N14,
      ADR1 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_1_1299,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_5,
      ADR2 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_Q,
      ADR3 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_2_1301,
      ADR0 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_3_1302,
      O => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o
    );
  FREQ_DIV_2_p1_COUNTER_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_0_CLK,
      I => FREQ_DIV_2_p1_COUNTER_0_rstpot_876,
      O => FREQ_DIV_2_p1_COUNTER(0),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y29",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_0_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_0_rstpot_876
    );
  FREQ_DIV_2_p1_COUNTER_17 : X_FF
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_17_CLK,
      I => FREQ_DIV_2_p1_COUNTER_17_rstpot_884,
      O => FREQ_DIV_2_p1_COUNTER(17),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_17_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => X"5555555500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_17_1_0,
      ADR0 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_17_rstpot_884
    );
  FREQ_DIV_2_p1_COUNTER_16 : X_FF
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_16_CLK,
      I => FREQ_DIV_2_p1_COUNTER_16_rstpot_889,
      O => FREQ_DIV_2_p1_COUNTER(16),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_16_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => Result_16_1_0,
      ADR3 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_16_rstpot_889
    );
  FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => X"0000000080000000"
    )
    port map (
      ADR5 => N14,
      ADR0 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_1_1299,
      ADR3 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_5,
      ADR2 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_Q,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_2_1301,
      ADR1 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_3_1302,
      O => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303
    );
  FREQ_DIV_2_p1_COUNTER_15 : X_FF
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_15_CLK,
      I => FREQ_DIV_2_p1_COUNTER_15_rstpot_898,
      O => FREQ_DIV_2_p1_COUNTER(15),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_15_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y30",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => Result_15_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_15_rstpot_898
    );
  FREQ_DIV_2_p1_COUNTER_29 : X_FF
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_29_CLK,
      I => FREQ_DIV_2_p1_COUNTER_29_rstpot_902,
      O => FREQ_DIV_2_p1_COUNTER(29),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_29_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_29_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_29_rstpot_902
    );
  FREQ_DIV_2_p1_COUNTER_28 : X_FF
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_28_CLK,
      I => FREQ_DIV_2_p1_COUNTER_28_rstpot_907,
      O => FREQ_DIV_2_p1_COUNTER(28),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_28_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_28_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_28_rstpot_907
    );
  FREQ_DIV_2_p1_COUNTER_27 : X_FF
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_27_CLK,
      I => FREQ_DIV_2_p1_COUNTER_27_rstpot_911,
      O => FREQ_DIV_2_p1_COUNTER(27),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_27_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => X"00000000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Result_27_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_27_rstpot_911
    );
  FREQ_DIV_2_p1_COUNTER_26 : X_FF
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_26_CLK,
      I => FREQ_DIV_2_p1_COUNTER_26_rstpot_915,
      O => FREQ_DIV_2_p1_COUNTER(26),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_26_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_26_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_7_1303,
      O => FREQ_DIV_2_p1_COUNTER_26_rstpot_915
    );
  SVN_SEG_DISP_1_Mram_SVN_SEG_CATHODE41 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y8",
      INIT => X"0F000F000F0FFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR5 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR4 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(3),
      O => CATHODE_4_OBUF_1286
    );
  SVN_SEG_DISP_1_Mmux_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"FFF0F0F0FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd3_1112,
      ADR3 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_0,
      ADR5 => SVN_SEG_DISP_1_state_STATE_FSM_FFd4_1113,
      ADR2 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(1),
      O => N8
    );
  SVN_SEG_DISP_1_INT_DIGIT_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_1_CLK,
      I => SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_1_Q,
      O => SVN_SEG_DISP_1_INT_DIGIT(1),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_Mmux_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"FFFFFFFFFFA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1109,
      ADR0 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_0,
      ADR5 => N8,
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1107,
      ADR3 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(13),
      O => SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_1_Q
    );
  SVN_SEG_DISP_1_Mmux_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"FFAAAAAAFF000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => SVN_SEG_DISP_1_state_STATE_FSM_FFd3_1112,
      ADR0 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_0,
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd4_1113,
      ADR3 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_0,
      O => N10
    );
  SVN_SEG_DISP_1_INT_DIGIT_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_0_CLK,
      I => SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_0_Q,
      O => SVN_SEG_DISP_1_INT_DIGIT(0),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_Mmux_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"FFFFFAAAFFFFF000"
    )
    port map (
      ADR1 => '1',
      ADR5 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1109,
      ADR0 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(8),
      ADR4 => N10,
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1107,
      ADR3 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(12),
      O => SVN_SEG_DISP_1_GND_8_o_SVN_SEG_VALUE_3_select_6_OUT_0_Q
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_pack_2,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_Q
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_pack_1,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_Q
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7 : X_FF
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_IN,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_Q,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_IN,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_Q,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_INPUT_SRG_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_2_CLK,
      I => PSDO_RNDM_GEN_1_OUTPUT_TMP_9_OUTPUT_TMP_15_XOR_40_o,
      O => PSDO_RNDM_GEN_1_INPUT_SRG_2_1135,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mxor_OUTPUT_TMP_9_OUTPUT_TMP_15_XOR_40_o_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => X"3CC3C33C3CC3C33C"
    )
    port map (
      ADR0 => '1',
      ADR2 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_Q,
      ADR3 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_Q,
      ADR1 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_Q,
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_Q,
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_OUTPUT_TMP_9_OUTPUT_TMP_15_XOR_40_o
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR0 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(2),
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt_965
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt_965,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_pack_2,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_INPUT_SRG_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_1_CLK,
      I => PSDO_RNDM_GEN_1_OUTPUT_TMP_7_OUTPUT_TMP_1_XOR_37_o,
      O => PSDO_RNDM_GEN_1_INPUT_SRG_1_1144,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mxor_OUTPUT_TMP_7_OUTPUT_TMP_1_XOR_37_o_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => X"6969969669699696"
    )
    port map (
      ADR3 => '1',
      ADR1 => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_Q,
      ADR2 => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_Q,
      ADR4 => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_Q,
      ADR0 => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_Q,
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_OUTPUT_TMP_7_OUTPUT_TMP_1_XOR_37_o
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => X"FF00FF00"
    )
    port map (
      ADR3 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(1),
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => '1',
      ADR4 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt_954
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt_954,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_pack_1,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_pack_16,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(6)
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_pack_14,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(4)
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_pack_12,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(2)
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_pack_10,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(0)
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_glue_set_986,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(7),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"F5F5FF55F5F5FF55"
    )
    port map (
      ADR1 => '1',
      ADR0 => RESET_IBUF_0,
      ADR4 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR3 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(7),
      ADR2 => PSDO_RNDM_GEN_1_INPUT_SRG_1_1144,
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_glue_set_986
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"FF55DDDD"
    )
    port map (
      ADR1 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(6),
      ADR0 => RESET_IBUF_0,
      ADR4 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR3 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(7),
      ADR2 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_glue_set_985
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_glue_set_985,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_pack_16,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_glue_set_976,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(5),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"FF3FCF0FFF3FCF0F"
    )
    port map (
      ADR0 => '1',
      ADR2 => RESET_IBUF_0,
      ADR1 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR4 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(5),
      ADR3 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(6),
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_glue_set_976
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"EFEF2F2F"
    )
    port map (
      ADR0 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(4),
      ADR2 => RESET_IBUF_0,
      ADR1 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR4 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(5),
      ADR3 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_glue_set_975
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_glue_set_975,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_pack_14,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_glue_set_996,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(3),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"FF5FF555FF5FF555"
    )
    port map (
      ADR1 => '1',
      ADR0 => RESET_IBUF_0,
      ADR2 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR4 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(3),
      ADR3 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(4),
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_glue_set_996
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"FDFD5D5D"
    )
    port map (
      ADR1 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(2),
      ADR0 => RESET_IBUF_0,
      ADR2 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR4 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(3),
      ADR3 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_glue_set_999
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_glue_set_999,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_pack_12,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_glue_set_1005,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(1),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"FAFF0AFFFAFF0AFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => RESET_IBUF_0,
      ADR2 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR0 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(1),
      ADR4 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(2),
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_glue_set_1005
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => X"ACFFACFF"
    )
    port map (
      ADR1 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(0),
      ADR3 => RESET_IBUF_0,
      ADR2 => FREQ_DIV_2_OUTPUT_FREQ_1124,
      ADR0 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(1),
      ADR4 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_glue_set_1008
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_glue_set_1008,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_pack_10,
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_10 : X_FF
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_10_CLK,
      I => FREQ_DIV_2_p1_COUNTER_10_rstpot_1015,
      O => FREQ_DIV_2_p1_COUNTER(10),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_10_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Result_10_1_0,
      ADR3 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_10_rstpot_1015
    );
  FREQ_DIV_2_p1_COUNTER_9 : X_FF
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_9_CLK,
      I => FREQ_DIV_2_p1_COUNTER_9_rstpot_1020,
      O => FREQ_DIV_2_p1_COUNTER(9),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_9_1_0,
      ADR5 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_9_rstpot_1020
    );
  FREQ_DIV_2_p1_COUNTER_8 : X_FF
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_8_CLK,
      I => FREQ_DIV_2_p1_COUNTER_8_rstpot_1024,
      O => FREQ_DIV_2_p1_COUNTER(8),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Result_8_1_0,
      ADR4 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_8_rstpot_1024
    );
  FREQ_DIV_2_p1_COUNTER_7 : X_FF
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_7_CLK,
      I => FREQ_DIV_2_p1_COUNTER_7_rstpot_1028,
      O => FREQ_DIV_2_p1_COUNTER(7),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => X"5555000055550000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Result_7_1_0,
      ADR0 => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_7_rstpot_1028
    );
  FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y30",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => FREQ_DIV_2_p1_COUNTER(9),
      ADR0 => FREQ_DIV_2_p1_COUNTER(8),
      ADR3 => FREQ_DIV_2_p1_COUNTER(10),
      ADR5 => FREQ_DIV_2_p1_COUNTER(15),
      ADR2 => FREQ_DIV_2_p1_COUNTER(17),
      ADR4 => FREQ_DIV_2_p1_COUNTER(23),
      O => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_3_1302
    );
  FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => X"C000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(20),
      ADR3 => FREQ_DIV_2_p1_COUNTER(19),
      ADR4 => FREQ_DIV_2_p1_COUNTER(24),
      ADR5 => FREQ_DIV_2_p1_COUNTER(22),
      ADR1 => FREQ_DIV_2_p1_COUNTER(21),
      O => FREQ_DIV_2_GND_5_o_p1_COUNTER_31_equal_1_o_31_1_1299
    );
  CATHODE_0_OBUF_CATHODE_0_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_3_OBUF_1044,
      O => CATHODE_3_OBUF_0
    );
  CATHODE_0_OBUF_CATHODE_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_1_OBUF_1052,
      O => CATHODE_1_OBUF_0
    );
  SVN_SEG_DISP_1_SVN_SEG_CATHODE_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y8",
      INIT => X"2200886622008866"
    )
    port map (
      ADR2 => '1',
      ADR4 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR0 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR5 => '1',
      O => CATHODE_0_OBUF_1145
    );
  SVN_SEG_DISP_1_SVN_SEG_CATHODE_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y8",
      INIT => X"99880066"
    )
    port map (
      ADR2 => '1',
      ADR4 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR0 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(2),
      O => CATHODE_3_OBUF_1044
    );
  SVN_SEG_DISP_1_Mram_SVN_SEG_CATHODE61 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y8",
      INIT => X"0030C00F0030C00F"
    )
    port map (
      ADR0 => '1',
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR4 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR5 => '1',
      O => CATHODE_6_OBUF_1128
    );
  SVN_SEG_DISP_1_Mram_SVN_SEG_CATHODE111 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y8",
      INIT => X"FC3030C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR4 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(0),
      O => CATHODE_1_OBUF_1052
    );
  TEST11 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y61",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => NEX_IBUF_0,
      ADR4 => TEST3_OBUF_0,
      O => TEST1_OBUF_1114
    );
  NlwBufferBlock_ANODE_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_SVN_SEG_ANODE(0),
      O => NlwBufferSignal_ANODE_0_OBUF_I
    );
  NlwBufferBlock_ANODE_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_SVN_SEG_ANODE(1),
      O => NlwBufferSignal_ANODE_1_OBUF_I
    );
  NlwBufferBlock_ANODE_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_SVN_SEG_ANODE(2),
      O => NlwBufferSignal_ANODE_2_OBUF_I
    );
  NlwBufferBlock_ANODE_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_SVN_SEG_ANODE(3),
      O => NlwBufferSignal_ANODE_3_OBUF_I
    );
  NlwBufferBlock_TEST1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST1_OBUF_1114,
      O => NlwBufferSignal_TEST1_OBUF_I
    );
  NlwBufferBlock_TEST2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST2_OBUF_0,
      O => NlwBufferSignal_TEST2_OBUF_I
    );
  NlwBufferBlock_TEST3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST3_OBUF_0,
      O => NlwBufferSignal_TEST3_OBUF_I
    );
  NlwBufferBlock_CATHODE_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_0_OBUF_1145,
      O => NlwBufferSignal_CATHODE_0_OBUF_I
    );
  NlwBufferBlock_CATHODE_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_1_OBUF_0,
      O => NlwBufferSignal_CATHODE_1_OBUF_I
    );
  NlwBufferBlock_CATHODE_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_2_OBUF_1147,
      O => NlwBufferSignal_CATHODE_2_OBUF_I
    );
  NlwBufferBlock_CATHODE_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_3_OBUF_0,
      O => NlwBufferSignal_CATHODE_3_OBUF_I
    );
  NlwBufferBlock_CATHODE_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_4_OBUF_1286,
      O => NlwBufferSignal_CATHODE_4_OBUF_I
    );
  NlwBufferBlock_CATHODE_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_5_OBUF_0,
      O => NlwBufferSignal_CATHODE_5_OBUF_I
    );
  NlwBufferBlock_CATHODE_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_6_OBUF_1128,
      O => NlwBufferSignal_CATHODE_6_OBUF_I
    );
  NlwBufferBlock_CLK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_6_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_5_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_4_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_3_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_10_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_9_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_8_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_7_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_14_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_13_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_12_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_11_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_21_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_20_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_19_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_18_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_25_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_24_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_23_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_22_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_29_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_28_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_27_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_26_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_SVN_SEG_ANODE_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_2_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_SVN_SEG_ANODE_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_1_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_SVN_SEG_ANODE_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_2_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_1_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_OUTPUT_FREQ_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_OUTPUT_FREQ_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_17_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_16_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_15_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_31_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_30_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd4_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1107,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd4_IN
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd3_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_state_STATE_FSM_FFd4_1113,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd3_IN
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_state_STATE_FSM_FFd3_1112,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_IN
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1109,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_IN
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_6_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_5_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_4_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_3_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_14_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_13_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_12_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_11_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_21_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_20_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_19_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_18_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_25_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_24_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_23_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_22_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_31_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_30_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_INT_DIGIT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_3_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_INT_DIGIT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_Q,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_Q,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_Q,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_Q,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(0),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(0),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_12_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(4),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(4),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_13_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(5),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(5),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_14_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(6),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(6),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(7),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(3),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(2),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(1),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_2_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_1_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_OUTPUT_FREQ_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_OUTPUT_FREQ_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_17_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_16_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_15_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_29_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_28_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_27_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_26_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_INT_DIGIT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_1_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_INT_DIGIT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => FREQ_DIV_1_OUTPUT_FREQ_1110,
      O => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_0_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(7),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(3),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_INPUT_SRG_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_INPUT_SRG_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_10_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_9_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_8_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_7_CLK
    );
  NlwBlock_TOP_EQ_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_TOP_EQ_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

