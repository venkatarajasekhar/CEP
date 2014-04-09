--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: TOP_EQ_timesim.vhd
-- /___/   /\     Timestamp: Wed Apr 09 16:30:56 2014
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
    TEST_OSZI : out STD_LOGIC; 
    ANODE : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    CATHODE : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end TOP_EQ;

architecture Structure of TOP_EQ is
  signal CATHODE_0_OBUF_1105 : STD_LOGIC; 
  signal CATHODE_3_OBUF_0 : STD_LOGIC; 
  signal CATHODE_2_OBUF_1112 : STD_LOGIC; 
  signal CATHODE_5_OBUF_0 : STD_LOGIC; 
  signal Result_0_0 : STD_LOGIC; 
  signal Result_1_0 : STD_LOGIC; 
  signal Result_2_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_Q_1120 : STD_LOGIC; 
  signal Result_3_0 : STD_LOGIC; 
  signal Result_4_0 : STD_LOGIC; 
  signal Result_5_0 : STD_LOGIC; 
  signal Result_6_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_Q_1129 : STD_LOGIC; 
  signal Result_7_0 : STD_LOGIC; 
  signal Result_8_0 : STD_LOGIC; 
  signal Result_9_0 : STD_LOGIC; 
  signal Result_10_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_Q_1138 : STD_LOGIC; 
  signal Result_11_0 : STD_LOGIC; 
  signal Result_12_0 : STD_LOGIC; 
  signal Result_13_0 : STD_LOGIC; 
  signal Result_14_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_Q_1147 : STD_LOGIC; 
  signal Result_15_0 : STD_LOGIC; 
  signal Result_16_0 : STD_LOGIC; 
  signal Result_17_0 : STD_LOGIC; 
  signal Result_18_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_Q_1156 : STD_LOGIC; 
  signal Result_19_0 : STD_LOGIC; 
  signal Result_20_0 : STD_LOGIC; 
  signal Result_21_0 : STD_LOGIC; 
  signal Result_22_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_Q_1165 : STD_LOGIC; 
  signal Result_23_0 : STD_LOGIC; 
  signal Result_24_0 : STD_LOGIC; 
  signal Result_25_0 : STD_LOGIC; 
  signal Result_26_0 : STD_LOGIC; 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_Q_1174 : STD_LOGIC; 
  signal Result_27_0 : STD_LOGIC; 
  signal Result_28_0 : STD_LOGIC; 
  signal Result_29_0 : STD_LOGIC; 
  signal Result_30_0 : STD_LOGIC; 
  signal Result_31_0 : STD_LOGIC; 
  signal Result_0_1_0 : STD_LOGIC; 
  signal Result_1_1_0 : STD_LOGIC; 
  signal Result_2_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_Q_1191 : STD_LOGIC; 
  signal Result_3_1_0 : STD_LOGIC; 
  signal Result_4_1_0 : STD_LOGIC; 
  signal Result_5_1_0 : STD_LOGIC; 
  signal Result_6_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_Q_1200 : STD_LOGIC; 
  signal Result_7_1_0 : STD_LOGIC; 
  signal Result_8_1_0 : STD_LOGIC; 
  signal Result_9_1_0 : STD_LOGIC; 
  signal Result_10_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_Q_1209 : STD_LOGIC; 
  signal Result_11_1_0 : STD_LOGIC; 
  signal Result_12_1_0 : STD_LOGIC; 
  signal Result_13_1_0 : STD_LOGIC; 
  signal Result_14_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_Q_1218 : STD_LOGIC; 
  signal Result_15_1_0 : STD_LOGIC; 
  signal Result_16_1_0 : STD_LOGIC; 
  signal Result_17_1_0 : STD_LOGIC; 
  signal Result_18_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_Q_1227 : STD_LOGIC; 
  signal Result_19_1_0 : STD_LOGIC; 
  signal Result_20_1_0 : STD_LOGIC; 
  signal Result_21_1_0 : STD_LOGIC; 
  signal Result_22_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_Q_1236 : STD_LOGIC; 
  signal Result_23_1_0 : STD_LOGIC; 
  signal Result_24_1_0 : STD_LOGIC; 
  signal Result_25_1_0 : STD_LOGIC; 
  signal Result_26_1_0 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_Q_1245 : STD_LOGIC; 
  signal Result_27_1_0 : STD_LOGIC; 
  signal Result_28_1_0 : STD_LOGIC; 
  signal Result_29_1_0 : STD_LOGIC; 
  signal Result_30_1_0 : STD_LOGIC; 
  signal Result_31_1_0 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_SVN_SEG_ANODE_0_0 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_SVN_SEG_ANODE_2_0 : STD_LOGIC; 
  signal TEST1_OBUF_1260 : STD_LOGIC; 
  signal TEST2_OBUF_0 : STD_LOGIC; 
  signal TEST3_OBUF_0 : STD_LOGIC; 
  signal NEX_IBUF_0 : STD_LOGIC; 
  signal TEST_OSZI_OBUF_0 : STD_LOGIC; 
  signal CATHODE_1_OBUF_0 : STD_LOGIC; 
  signal CATHODE_4_OBUF_1266 : STD_LOGIC; 
  signal CATHODE_6_OBUF_1267 : STD_LOGIC; 
  signal RESET_IBUF_0 : STD_LOGIC; 
  signal TEST_OSZI_OBUF_BUFG_1269 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_0 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o : STD_LOGIC; 
  signal FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_INPUT_SRG_1_1292 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_Q : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_INPUT_SRG_2_1297 : STD_LOGIC; 
  signal FREQ_DIV_1_OUTPUT_FREQ_1298 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_0 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_0 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o : STD_LOGIC; 
  signal FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_5_1319 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_4_1320 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_3_1321 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_2_1322 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_1_1323 : STD_LOGIC; 
  signal FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_Q : STD_LOGIC; 
  signal FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_5_1325 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_4_1326 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_3_1327 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_2_1328 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_1_1329 : STD_LOGIC; 
  signal FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_Q : STD_LOGIC; 
  signal FREQ_DIV_2_OUTPUT_FREQ_1331 : STD_LOGIC; 
  signal FREQ_DIV_1_RESET_FREQ_inv : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_3_rt_17 : STD_LOGIC; 
  signal ProtoComp2_CYINITGND_0 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_2_rt_8 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_1_rt_4 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_5_rt_36 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_6_rt_25 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_4_rt_23 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_7_rt_22 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_9_rt_58 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_10_rt_47 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_8_rt_45 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_11_rt_44 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_13_rt_80 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_14_rt_69 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_12_rt_67 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_15_rt_66 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_17_rt_102 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_18_rt_91 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_16_rt_89 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_19_rt_88 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_21_rt_124 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_22_rt_113 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_20_rt_111 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_23_rt_110 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_25_rt_146 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_26_rt_135 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_24_rt_133 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_27_rt_132 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_31_rt_165 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_28_rt_158 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_29_rt_156 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_30_rt_155 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_3_rt_190 : STD_LOGIC; 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_ProtoComp2_CYINITGND_0 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_2_rt_181 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_1_rt_177 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_5_rt_209 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_6_rt_198 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_4_rt_196 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_7_rt_195 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_9_rt_231 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_10_rt_220 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_8_rt_218 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_11_rt_217 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_13_rt_253 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_14_rt_242 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_12_rt_240 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_15_rt_239 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_17_rt_275 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_18_rt_264 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_16_rt_262 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_19_rt_261 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_21_rt_297 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_22_rt_286 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_20_rt_284 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_23_rt_283 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_25_rt_319 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_26_rt_308 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_24_rt_306 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_27_rt_305 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_31_rt_338 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_28_rt_331 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_29_rt_329 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_30_rt_328 : STD_LOGIC; 
  signal NEX_IBUF_361 : STD_LOGIC; 
  signal TEST3_OBUF_364 : STD_LOGIC; 
  signal TEST2_OBUF_367 : STD_LOGIC; 
  signal TEST_OSZI_OBUF_388 : STD_LOGIC; 
  signal RESET_IBUF_391 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_state_STATE_FSM_FFd2_pack_1 : STD_LOGIC; 
  signal SVN_SEG_DISP_1_state_STATE_FSM_FFd2_In : STD_LOGIC; 
  signal SVN_SEG_DISP_1_state_STATE_FSM_FFd1_In : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_0_rstpot_437 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_1_rstpot_432 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_2_rstpot_427 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_3_rstpot_421 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_4_rstpot_458 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_5_rstpot_453 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_6_rstpot_448 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_7_rstpot_442 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_8_rstpot_479 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_9_rstpot_474 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_10_rstpot_469 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_11_rstpot_463 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_22_rstpot_531 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_23_rstpot_526 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_24_rstpot_521 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_25_rstpot_515 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_26_rstpot_552 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_27_rstpot_547 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_28_rstpot_542 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_29_rstpot_536 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_30_rstpot_566 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_31_rstpot_561 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_12_rstpot_621 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_13_rstpot_616 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_14_rstpot_611 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_15_rstpot_637 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_16_rstpot_632 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_17_rstpot_626 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_18_rstpot_665 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_19_rstpot_660 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_20_rstpot_655 : STD_LOGIC; 
  signal FREQ_DIV_1_p1_COUNTER_21_rstpot_649 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_12_rstpot_681 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_13_rstpot_676 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_14_rstpot_671 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_rt_700 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_rt_695 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_rt_690 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_15_rstpot_734 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_16_rstpot_729 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_17_rstpot_723 : STD_LOGIC; 
  signal CATHODE_5_OBUF_746 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_793 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_792 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_785 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_784 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_777 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_775 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_763 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_759 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_rt_821 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_pack_6 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_rt_814 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_pack_4 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt_809 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_pack_2 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt_804 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_TMP_7_OUTPUT_TMP_1_XOR_37_o : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt_844 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_pack_1 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_pack_2 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt_826 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_OUTPUT_TMP_9_OUTPUT_TMP_15_XOR_40_o : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_4_rstpot_876 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_5_rstpot_871 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_6_rstpot_866 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_7_rstpot_860 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_8_rstpot_897 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_9_rstpot_892 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_10_rstpot_887 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_11_rstpot_881 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_22_rstpot_956 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_23_rstpot_951 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_24_rstpot_946 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_25_rstpot_940 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_26_rstpot_977 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_27_rstpot_972 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_28_rstpot_967 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_29_rstpot_961 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_30_rstpot_991 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_31_rstpot_986 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_rt_1014 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_pack_6 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_rt_1007 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_pack_4 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_rt_1002 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_pack_2 : STD_LOGIC; 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_rt_997 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_0_rstpot_1035 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_1_rstpot_1030 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_2_rstpot_1025 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_3_rstpot_1019 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_18_rstpot_1063 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_19_rstpot_1058 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_20_rstpot_1053 : STD_LOGIC; 
  signal FREQ_DIV_2_p1_COUNTER_21_rstpot_1047 : STD_LOGIC; 
  signal CATHODE_1_OBUF_1071 : STD_LOGIC; 
  signal CATHODE_3_OBUF_1076 : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ANODE_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TEST1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TEST2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TEST3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TEST_OSZI_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CATHODE_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TEST_OSZI_OBUF_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_OUTPUT_FREQ_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_15_CLK : STD_LOGIC; 
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
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_OUTPUT_FREQ_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_18_CLK : STD_LOGIC; 
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
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_Q15_UNCONNECTED : STD_LOGIC; 
  signal NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_Q15_UNCONNECTED : STD_LOGIC; 
  signal SVN_SEG_DISP_1_INT_DIGIT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal FREQ_DIV_1_p1_COUNTER : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal FREQ_DIV_2_p1_COUNTER : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal SVN_SEG_DISP_1_SVN_SEG_ANODE : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PSDO_RNDM_GEN_1_OUTPUT_RNDM : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal FREQ_DIV_1_Mcount_p1_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal FREQ_DIV_2_Mcount_p1_COUNTER_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SVN_SEG_DISP_1_n0056 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SVN_SEG_DISP_1_n0036 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
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
      LOC => "SLICE_X22Y27",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_1_p1_COUNTER(3),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_3_rt_17
    );
  N0_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y27",
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
  ProtoComp2_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X22Y27"
    )
    port map (
      O => ProtoComp2_CYINITGND_0
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y27"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp2_CYINITGND_0,
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_Q_1120,
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
      S(3) => FREQ_DIV_1_p1_COUNTER_3_rt_17,
      S(2) => FREQ_DIV_1_p1_COUNTER_2_rt_8,
      S(1) => FREQ_DIV_1_p1_COUNTER_1_rt_4,
      S(0) => FREQ_DIV_1_Mcount_p1_COUNTER_lut(0)
    );
  FREQ_DIV_1_p1_COUNTER_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y27",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(2),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_2_rt_8
    );
  N0_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y27",
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
      LOC => "SLICE_X22Y27",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(1),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_1_rt_4
    );
  N0_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y27",
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
      LOC => "SLICE_X22Y27",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_1_p1_COUNTER(0),
      ADR5 => '1',
      O => FREQ_DIV_1_Mcount_p1_COUNTER_lut(0)
    );
  CATHODE_7_OBUF_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y27",
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
      LOC => "SLICE_X22Y28",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_1_p1_COUNTER(7),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_7_rt_22
    );
  N0_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y28",
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
      LOC => "SLICE_X22Y28"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_3_Q_1120,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_Q_1129,
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
      S(3) => FREQ_DIV_1_p1_COUNTER_7_rt_22,
      S(2) => FREQ_DIV_1_p1_COUNTER_6_rt_25,
      S(1) => FREQ_DIV_1_p1_COUNTER_5_rt_36,
      S(0) => FREQ_DIV_1_p1_COUNTER_4_rt_23
    );
  FREQ_DIV_1_p1_COUNTER_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y28",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(6),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_6_rt_25
    );
  N0_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y28",
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
      LOC => "SLICE_X22Y28",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(5),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_5_rt_36
    );
  N0_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y28",
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
      LOC => "SLICE_X22Y28",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_1_p1_COUNTER(4),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_4_rt_23
    );
  N0_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y28",
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
      LOC => "SLICE_X22Y29",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_1_p1_COUNTER(11),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_11_rt_44
    );
  N0_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y29",
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
      LOC => "SLICE_X22Y29"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_7_Q_1129,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_Q_1138,
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
      S(3) => FREQ_DIV_1_p1_COUNTER_11_rt_44,
      S(2) => FREQ_DIV_1_p1_COUNTER_10_rt_47,
      S(1) => FREQ_DIV_1_p1_COUNTER_9_rt_58,
      S(0) => FREQ_DIV_1_p1_COUNTER_8_rt_45
    );
  FREQ_DIV_1_p1_COUNTER_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y29",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(10),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_10_rt_47
    );
  N0_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y29",
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
      LOC => "SLICE_X22Y29",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(9),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_9_rt_58
    );
  N0_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y29",
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
      LOC => "SLICE_X22Y29",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => FREQ_DIV_1_p1_COUNTER(8),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_8_rt_45
    );
  N0_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y29",
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
      LOC => "SLICE_X22Y30",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(15),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_15_rt_66
    );
  N0_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y30",
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
      LOC => "SLICE_X22Y30"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_11_Q_1138,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_Q_1147,
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
      S(3) => FREQ_DIV_1_p1_COUNTER_15_rt_66,
      S(2) => FREQ_DIV_1_p1_COUNTER_14_rt_69,
      S(1) => FREQ_DIV_1_p1_COUNTER_13_rt_80,
      S(0) => FREQ_DIV_1_p1_COUNTER_12_rt_67
    );
  FREQ_DIV_1_p1_COUNTER_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y30",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(14),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_14_rt_69
    );
  N0_16_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y30",
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
      LOC => "SLICE_X22Y30",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(13),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_13_rt_80
    );
  N0_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y30",
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
      LOC => "SLICE_X22Y30",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(12),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_12_rt_67
    );
  N0_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y30",
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
      LOC => "SLICE_X22Y31",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(19),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_19_rt_88
    );
  N0_21_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y31",
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
      LOC => "SLICE_X22Y31"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_15_Q_1147,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_Q_1156,
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
      S(3) => FREQ_DIV_1_p1_COUNTER_19_rt_88,
      S(2) => FREQ_DIV_1_p1_COUNTER_18_rt_91,
      S(1) => FREQ_DIV_1_p1_COUNTER_17_rt_102,
      S(0) => FREQ_DIV_1_p1_COUNTER_16_rt_89
    );
  FREQ_DIV_1_p1_COUNTER_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y31",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_1_p1_COUNTER(18),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_18_rt_91
    );
  N0_20_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y31",
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
      LOC => "SLICE_X22Y31",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(17),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_17_rt_102
    );
  N0_19_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y31",
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
      LOC => "SLICE_X22Y31",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(16),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_16_rt_89
    );
  N0_18_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y31",
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
      LOC => "SLICE_X22Y32",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(23),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_23_rt_110
    );
  N0_25_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y32",
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
      LOC => "SLICE_X22Y32"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_19_Q_1156,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_Q_1165,
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
      S(3) => FREQ_DIV_1_p1_COUNTER_23_rt_110,
      S(2) => FREQ_DIV_1_p1_COUNTER_22_rt_113,
      S(1) => FREQ_DIV_1_p1_COUNTER_21_rt_124,
      S(0) => FREQ_DIV_1_p1_COUNTER_20_rt_111
    );
  FREQ_DIV_1_p1_COUNTER_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y32",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(22),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_22_rt_113
    );
  N0_24_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y32",
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
      LOC => "SLICE_X22Y32",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(21),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_21_rt_124
    );
  N0_23_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y32",
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
      LOC => "SLICE_X22Y32",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_1_p1_COUNTER(20),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_20_rt_111
    );
  N0_22_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y32",
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
      LOC => "SLICE_X22Y33",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(27),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_27_rt_132
    );
  N0_29_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y33",
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
      LOC => "SLICE_X22Y33"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_23_Q_1165,
      CYINIT => '0',
      CO(3) => FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_Q_1174,
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
      S(3) => FREQ_DIV_1_p1_COUNTER_27_rt_132,
      S(2) => FREQ_DIV_1_p1_COUNTER_26_rt_135,
      S(1) => FREQ_DIV_1_p1_COUNTER_25_rt_146,
      S(0) => FREQ_DIV_1_p1_COUNTER_24_rt_133
    );
  FREQ_DIV_1_p1_COUNTER_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y33",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(26),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_26_rt_135
    );
  N0_28_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y33",
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
      LOC => "SLICE_X22Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(25),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_25_rt_146
    );
  N0_27_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y33",
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
      LOC => "SLICE_X22Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(24),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_24_rt_133
    );
  N0_26_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y33",
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
      LOC => "SLICE_X22Y34",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(31),
      O => FREQ_DIV_1_p1_COUNTER_31_rt_165
    );
  FREQ_DIV_1_Mcount_p1_COUNTER_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y34"
    )
    port map (
      CI => FREQ_DIV_1_Mcount_p1_COUNTER_cy_27_Q_1174,
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
      S(3) => FREQ_DIV_1_p1_COUNTER_31_rt_165,
      S(2) => FREQ_DIV_1_p1_COUNTER_30_rt_155,
      S(1) => FREQ_DIV_1_p1_COUNTER_29_rt_156,
      S(0) => FREQ_DIV_1_p1_COUNTER_28_rt_158
    );
  FREQ_DIV_1_p1_COUNTER_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X22Y34",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => FREQ_DIV_1_p1_COUNTER(30),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_30_rt_155
    );
  N0_32_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y34",
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
      LOC => "SLICE_X22Y34",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_1_p1_COUNTER(29),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_29_rt_156
    );
  N0_31_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y34",
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
      LOC => "SLICE_X22Y34",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_1_p1_COUNTER(28),
      ADR5 => '1',
      O => FREQ_DIV_1_p1_COUNTER_28_rt_158
    );
  N0_30_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y34",
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
      LOC => "SLICE_X28Y31",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(3),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_3_rt_190
    );
  N0_37_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y31",
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
  ProtoComp2_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X28Y31"
    )
    port map (
      O => FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_ProtoComp2_CYINITGND_0
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X28Y31"
    )
    port map (
      CI => '0',
      CYINIT => FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_ProtoComp2_CYINITGND_0,
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_Q_1191,
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
      S(3) => FREQ_DIV_2_p1_COUNTER_3_rt_190,
      S(2) => FREQ_DIV_2_p1_COUNTER_2_rt_181,
      S(1) => FREQ_DIV_2_p1_COUNTER_1_rt_177,
      S(0) => FREQ_DIV_2_Mcount_p1_COUNTER_lut(0)
    );
  FREQ_DIV_2_p1_COUNTER_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y31",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(2),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_2_rt_181
    );
  N0_36_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y31",
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
      LOC => "SLICE_X28Y31",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(1),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_1_rt_177
    );
  N0_35_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y31",
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
      LOC => "SLICE_X28Y31",
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
      LOC => "SLICE_X28Y31",
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
      LOC => "SLICE_X28Y32",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(7),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_7_rt_195
    );
  N0_41_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y32",
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
      LOC => "SLICE_X28Y32"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_3_Q_1191,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_Q_1200,
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
      S(3) => FREQ_DIV_2_p1_COUNTER_7_rt_195,
      S(2) => FREQ_DIV_2_p1_COUNTER_6_rt_198,
      S(1) => FREQ_DIV_2_p1_COUNTER_5_rt_209,
      S(0) => FREQ_DIV_2_p1_COUNTER_4_rt_196
    );
  FREQ_DIV_2_p1_COUNTER_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y32",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(6),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_6_rt_198
    );
  N0_40_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y32",
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
      LOC => "SLICE_X28Y32",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(5),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_5_rt_209
    );
  N0_39_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y32",
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
      LOC => "SLICE_X28Y32",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(4),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_4_rt_196
    );
  N0_38_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y32",
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
      LOC => "SLICE_X28Y33",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(11),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_11_rt_217
    );
  N0_45_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y33",
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
      LOC => "SLICE_X28Y33"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_7_Q_1200,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_Q_1209,
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
      S(3) => FREQ_DIV_2_p1_COUNTER_11_rt_217,
      S(2) => FREQ_DIV_2_p1_COUNTER_10_rt_220,
      S(1) => FREQ_DIV_2_p1_COUNTER_9_rt_231,
      S(0) => FREQ_DIV_2_p1_COUNTER_8_rt_218
    );
  FREQ_DIV_2_p1_COUNTER_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(10),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_10_rt_220
    );
  N0_44_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y33",
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
      LOC => "SLICE_X28Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(9),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_9_rt_231
    );
  N0_43_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y33",
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
      LOC => "SLICE_X28Y33",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(8),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_8_rt_218
    );
  N0_42_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y33",
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
      LOC => "SLICE_X28Y34",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(15),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_15_rt_239
    );
  N0_49_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y34",
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
      LOC => "SLICE_X28Y34"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_11_Q_1209,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_Q_1218,
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
      S(3) => FREQ_DIV_2_p1_COUNTER_15_rt_239,
      S(2) => FREQ_DIV_2_p1_COUNTER_14_rt_242,
      S(1) => FREQ_DIV_2_p1_COUNTER_13_rt_253,
      S(0) => FREQ_DIV_2_p1_COUNTER_12_rt_240
    );
  FREQ_DIV_2_p1_COUNTER_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y34",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(14),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_14_rt_242
    );
  N0_48_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y34",
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
      LOC => "SLICE_X28Y34",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(13),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_13_rt_253
    );
  N0_47_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y34",
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
      LOC => "SLICE_X28Y34",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(12),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_12_rt_240
    );
  N0_46_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y34",
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
      LOC => "SLICE_X28Y35",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(19),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_19_rt_261
    );
  N0_53_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y35",
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
      LOC => "SLICE_X28Y35"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_15_Q_1218,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_Q_1227,
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
      S(3) => FREQ_DIV_2_p1_COUNTER_19_rt_261,
      S(2) => FREQ_DIV_2_p1_COUNTER_18_rt_264,
      S(1) => FREQ_DIV_2_p1_COUNTER_17_rt_275,
      S(0) => FREQ_DIV_2_p1_COUNTER_16_rt_262
    );
  FREQ_DIV_2_p1_COUNTER_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y35",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(18),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_18_rt_264
    );
  N0_52_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y35",
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
      LOC => "SLICE_X28Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(17),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_17_rt_275
    );
  N0_51_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y35",
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
      LOC => "SLICE_X28Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(16),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_16_rt_262
    );
  N0_50_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y35",
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
      LOC => "SLICE_X28Y36",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(23),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_23_rt_283
    );
  N0_57_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y36",
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
      LOC => "SLICE_X28Y36"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_19_Q_1227,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_Q_1236,
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
      S(3) => FREQ_DIV_2_p1_COUNTER_23_rt_283,
      S(2) => FREQ_DIV_2_p1_COUNTER_22_rt_286,
      S(1) => FREQ_DIV_2_p1_COUNTER_21_rt_297,
      S(0) => FREQ_DIV_2_p1_COUNTER_20_rt_284
    );
  FREQ_DIV_2_p1_COUNTER_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y36",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(22),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_22_rt_286
    );
  N0_56_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y36",
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
      LOC => "SLICE_X28Y36",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(21),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_21_rt_297
    );
  N0_55_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y36",
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
      LOC => "SLICE_X28Y36",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(20),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_20_rt_284
    );
  N0_54_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y36",
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
      LOC => "SLICE_X28Y37",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(27),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_27_rt_305
    );
  N0_61_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y37",
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
      LOC => "SLICE_X28Y37"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_23_Q_1236,
      CYINIT => '0',
      CO(3) => FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_Q_1245,
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
      S(3) => FREQ_DIV_2_p1_COUNTER_27_rt_305,
      S(2) => FREQ_DIV_2_p1_COUNTER_26_rt_308,
      S(1) => FREQ_DIV_2_p1_COUNTER_25_rt_319,
      S(0) => FREQ_DIV_2_p1_COUNTER_24_rt_306
    );
  FREQ_DIV_2_p1_COUNTER_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y37",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(26),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_26_rt_308
    );
  N0_60_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y37",
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
      LOC => "SLICE_X28Y37",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(25),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_25_rt_319
    );
  N0_59_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y37",
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
      LOC => "SLICE_X28Y37",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(24),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_24_rt_306
    );
  N0_58_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y37",
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
      LOC => "SLICE_X28Y38",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => FREQ_DIV_2_p1_COUNTER(31),
      O => FREQ_DIV_2_p1_COUNTER_31_rt_338
    );
  FREQ_DIV_2_Mcount_p1_COUNTER_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X28Y38"
    )
    port map (
      CI => FREQ_DIV_2_Mcount_p1_COUNTER_cy_27_Q_1245,
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
      S(3) => FREQ_DIV_2_p1_COUNTER_31_rt_338,
      S(2) => FREQ_DIV_2_p1_COUNTER_30_rt_328,
      S(1) => FREQ_DIV_2_p1_COUNTER_29_rt_329,
      S(0) => FREQ_DIV_2_p1_COUNTER_28_rt_331
    );
  FREQ_DIV_2_p1_COUNTER_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X28Y38",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => FREQ_DIV_2_p1_COUNTER(30),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_30_rt_328
    );
  N0_64_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y38",
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
      LOC => "SLICE_X28Y38",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => FREQ_DIV_2_p1_COUNTER(29),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_29_rt_329
    );
  N0_63_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y38",
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
      LOC => "SLICE_X28Y38",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => FREQ_DIV_2_p1_COUNTER(28),
      ADR5 => '1',
      O => FREQ_DIV_2_p1_COUNTER_28_rt_331
    );
  N0_62_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X28Y38",
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
  ProtoComp6_IMUX : X_BUF
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
  ProtoComp6_IMUX_1 : X_BUF
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
  ProtoComp6_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST2_OBUF_367,
      O => TEST2_OBUF_0
    );
  TEST_OSZI_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => NlwBufferSignal_TEST_OSZI_OBUF_I,
      O => TEST_OSZI
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
  CLK_IBUF : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      O => TEST_OSZI_OBUF_388,
      I => CLK
    );
  ProtoComp6_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_388,
      O => TEST_OSZI_OBUF_0
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 202 ps
    )
    port map (
      O => RESET_IBUF_391,
      I => RESET
    );
  ProtoComp6_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 202 ps
    )
    port map (
      I => RESET_IBUF_391,
      O => RESET_IBUF_0
    );
  TEST_OSZI_OBUF_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_TEST_OSZI_OBUF_BUFG_IN,
      O => TEST_OSZI_OBUF_BUFG_1269
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_3_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_SVN_SEG_ANODE(2),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE_2_0
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_3_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_SVN_SEG_ANODE(0),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE_0_0
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_3 : X_FF
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_OUTPUT_FREQ_1298,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_CLK,
      I => SVN_SEG_DISP_1_n0056(3),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE(3),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_n0056_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => X"0F0FFFFF0F0FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      ADR5 => '1',
      O => SVN_SEG_DISP_1_n0056(3)
    );
  SVN_SEG_DISP_1_state_STATE_n0056_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => X"F0F0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      O => SVN_SEG_DISP_1_n0056(2)
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_2 : X_FF
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_OUTPUT_FREQ_1298,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_2_CLK,
      I => SVN_SEG_DISP_1_n0056(2),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE(2),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_1 : X_FF
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_OUTPUT_FREQ_1298,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_1_CLK,
      I => SVN_SEG_DISP_1_n0056(1),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE(1),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_n0056_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => X"FFFF00FFFFFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      ADR5 => '1',
      O => SVN_SEG_DISP_1_n0056(1)
    );
  SVN_SEG_DISP_1_state_STATE_n0056_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => X"FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      O => SVN_SEG_DISP_1_n0056(0)
    );
  SVN_SEG_DISP_1_SVN_SEG_ANODE_0 : X_FF
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_OUTPUT_FREQ_1298,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_0_CLK,
      I => SVN_SEG_DISP_1_n0056(0),
      O => SVN_SEG_DISP_1_SVN_SEG_ANODE(0),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_FSM_FFd1_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_pack_1,
      O => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299
    );
  SVN_SEG_DISP_1_state_STATE_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X23Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_CLK,
      I => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_In,
      O => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_state_STATE_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y15",
      INIT => X"3F3FC0C03F3FC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      ADR2 => FREQ_DIV_1_OUTPUT_FREQ_1298,
      ADR5 => '1',
      O => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_In
    );
  SVN_SEG_DISP_1_state_STATE_FSM_FFd2_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y15",
      INIT => X"3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR3 => '1',
      ADR2 => FREQ_DIV_1_OUTPUT_FREQ_1298,
      O => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_In
    );
  SVN_SEG_DISP_1_state_STATE_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X23Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_CLK,
      I => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_In,
      O => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_pack_1,
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_3 : X_FF
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_3_CLK,
      I => FREQ_DIV_1_p1_COUNTER_3_rstpot_421,
      O => FREQ_DIV_1_p1_COUNTER(3),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => X"000000000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Result_3_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_3_rstpot_421
    );
  FREQ_DIV_1_p1_COUNTER_2 : X_FF
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_2_CLK,
      I => FREQ_DIV_1_p1_COUNTER_2_rstpot_427,
      O => FREQ_DIV_1_p1_COUNTER(2),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => X"000000F0000000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR2 => Result_2_0,
      ADR3 => RESET_IBUF_0,
      ADR4 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_2_rstpot_427
    );
  FREQ_DIV_1_p1_COUNTER_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_1_CLK,
      I => FREQ_DIV_1_p1_COUNTER_1_rstpot_432,
      O => FREQ_DIV_1_p1_COUNTER(1),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => X"0000000050505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Result_1_0,
      ADR0 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_1_rstpot_432
    );
  FREQ_DIV_1_p1_COUNTER_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_0_CLK,
      I => FREQ_DIV_1_p1_COUNTER_0_rstpot_437,
      O => FREQ_DIV_1_p1_COUNTER(0),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y27",
      INIT => X"000000000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Result_0_0,
      ADR4 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_0_rstpot_437
    );
  FREQ_DIV_1_p1_COUNTER_7 : X_FF
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_7_CLK,
      I => FREQ_DIV_1_p1_COUNTER_7_rstpot_442,
      O => FREQ_DIV_1_p1_COUNTER(7),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => X"000000000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Result_7_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_7_rstpot_442
    );
  FREQ_DIV_1_p1_COUNTER_6 : X_FF
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_6_CLK,
      I => FREQ_DIV_1_p1_COUNTER_6_rstpot_448,
      O => FREQ_DIV_1_p1_COUNTER(6),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => X"0000000050505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Result_6_0,
      ADR0 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_6_rstpot_448
    );
  FREQ_DIV_1_p1_COUNTER_5 : X_FF
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_5_CLK,
      I => FREQ_DIV_1_p1_COUNTER_5_rstpot_453,
      O => FREQ_DIV_1_p1_COUNTER(5),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => X"0000000050505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Result_5_0,
      ADR0 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_5_rstpot_453
    );
  FREQ_DIV_1_p1_COUNTER_4 : X_FF
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_4_CLK,
      I => FREQ_DIV_1_p1_COUNTER_4_rstpot_458,
      O => FREQ_DIV_1_p1_COUNTER(4),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y28",
      INIT => X"000000000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Result_4_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_4_rstpot_458
    );
  FREQ_DIV_1_p1_COUNTER_11 : X_FF
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_11_CLK,
      I => FREQ_DIV_1_p1_COUNTER_11_rstpot_463,
      O => FREQ_DIV_1_p1_COUNTER(11),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => X"000000000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Result_11_0,
      ADR4 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_11_rstpot_463
    );
  FREQ_DIV_1_p1_COUNTER_10 : X_FF
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_10_CLK,
      I => FREQ_DIV_1_p1_COUNTER_10_rstpot_469,
      O => FREQ_DIV_1_p1_COUNTER(10),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_10_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => X"000000000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Result_10_0,
      ADR5 => RESET_IBUF_0,
      ADR4 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_10_rstpot_469
    );
  FREQ_DIV_1_p1_COUNTER_9 : X_FF
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_9_CLK,
      I => FREQ_DIV_1_p1_COUNTER_9_rstpot_474,
      O => FREQ_DIV_1_p1_COUNTER(9),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => X"0000000000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => Result_9_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_9_rstpot_474
    );
  FREQ_DIV_1_p1_COUNTER_8 : X_FF
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_8_CLK,
      I => FREQ_DIV_1_p1_COUNTER_8_rstpot_479,
      O => FREQ_DIV_1_p1_COUNTER(8),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y29",
      INIT => X"0000000033003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => Result_8_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_8_rstpot_479
    );
  FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_5 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => FREQ_DIV_1_p1_COUNTER(25),
      ADR0 => FREQ_DIV_1_p1_COUNTER(24),
      ADR3 => FREQ_DIV_1_p1_COUNTER(26),
      ADR4 => FREQ_DIV_1_p1_COUNTER(27),
      ADR5 => FREQ_DIV_1_p1_COUNTER(28),
      ADR2 => FREQ_DIV_1_p1_COUNTER(29),
      O => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_4_1326
    );
  FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => FREQ_DIV_1_p1_COUNTER(13),
      ADR2 => FREQ_DIV_1_p1_COUNTER(12),
      ADR3 => FREQ_DIV_1_p1_COUNTER(14),
      ADR4 => FREQ_DIV_1_p1_COUNTER(15),
      ADR5 => FREQ_DIV_1_p1_COUNTER(16),
      ADR0 => FREQ_DIV_1_p1_COUNTER(17),
      O => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_2_1328
    );
  FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => X"0000000000000100"
    )
    port map (
      ADR3 => FREQ_DIV_1_p1_COUNTER(0),
      ADR5 => FREQ_DIV_1_p1_COUNTER(1),
      ADR4 => FREQ_DIV_1_p1_COUNTER(2),
      ADR2 => FREQ_DIV_1_p1_COUNTER(3),
      ADR0 => FREQ_DIV_1_p1_COUNTER(4),
      ADR1 => FREQ_DIV_1_p1_COUNTER(5),
      O => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_Q
    );
  FREQ_DIV_1_OUTPUT_FREQ : X_FF
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_RESET_FREQ_inv,
      CLK => NlwBufferSignal_FREQ_DIV_1_OUTPUT_FREQ_CLK,
      I => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_OUTPUT_FREQ_1298,
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y30",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_5_1325,
      ADR2 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_4_1326,
      ADR3 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_3_1327,
      ADR0 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_2_1328,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_1_1329,
      ADR4 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_Q,
      O => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o
    );
  FREQ_DIV_1_p1_COUNTER_25 : X_FF
    generic map(
      LOC => "SLICE_X23Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_25_CLK,
      I => FREQ_DIV_1_p1_COUNTER_25_rstpot_515,
      O => FREQ_DIV_1_p1_COUNTER(25),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_25_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y32",
      INIT => X"0000000030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_25_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_25_rstpot_515
    );
  FREQ_DIV_1_p1_COUNTER_24 : X_FF
    generic map(
      LOC => "SLICE_X23Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_24_CLK,
      I => FREQ_DIV_1_p1_COUNTER_24_rstpot_521,
      O => FREQ_DIV_1_p1_COUNTER(24),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_24_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y32",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_24_0,
      ADR5 => RESET_IBUF_0,
      ADR2 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_24_rstpot_521
    );
  FREQ_DIV_1_p1_COUNTER_23 : X_FF
    generic map(
      LOC => "SLICE_X23Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_23_CLK,
      I => FREQ_DIV_1_p1_COUNTER_23_rstpot_526,
      O => FREQ_DIV_1_p1_COUNTER(23),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_23_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y32",
      INIT => X"0000000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_23_0,
      ADR0 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_23_rstpot_526
    );
  FREQ_DIV_1_p1_COUNTER_22 : X_FF
    generic map(
      LOC => "SLICE_X23Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_22_CLK,
      I => FREQ_DIV_1_p1_COUNTER_22_rstpot_531,
      O => FREQ_DIV_1_p1_COUNTER(22),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_22_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y32",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_22_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_22_rstpot_531
    );
  FREQ_DIV_1_p1_COUNTER_29 : X_FF
    generic map(
      LOC => "SLICE_X23Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_29_CLK,
      I => FREQ_DIV_1_p1_COUNTER_29_rstpot_536,
      O => FREQ_DIV_1_p1_COUNTER(29),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_29_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y33",
      INIT => X"000000000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Result_29_0,
      ADR4 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_29_rstpot_536
    );
  FREQ_DIV_1_p1_COUNTER_28 : X_FF
    generic map(
      LOC => "SLICE_X23Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_28_CLK,
      I => FREQ_DIV_1_p1_COUNTER_28_rstpot_542,
      O => FREQ_DIV_1_p1_COUNTER(28),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_28_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y33",
      INIT => X"0000000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_28_0,
      ADR0 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_28_rstpot_542
    );
  FREQ_DIV_1_p1_COUNTER_27 : X_FF
    generic map(
      LOC => "SLICE_X23Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_27_CLK,
      I => FREQ_DIV_1_p1_COUNTER_27_rstpot_547,
      O => FREQ_DIV_1_p1_COUNTER(27),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_27_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y33",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_27_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_27_rstpot_547
    );
  FREQ_DIV_1_p1_COUNTER_26 : X_FF
    generic map(
      LOC => "SLICE_X23Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_26_CLK,
      I => FREQ_DIV_1_p1_COUNTER_26_rstpot_552,
      O => FREQ_DIV_1_p1_COUNTER(26),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_26_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y33",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_26_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_26_rstpot_552
    );
  FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_6 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y34",
      INIT => X"000000000F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => FREQ_DIV_1_p1_COUNTER(31),
      ADR2 => FREQ_DIV_1_p1_COUNTER(30),
      O => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_5_1325
    );
  FREQ_DIV_1_p1_COUNTER_31 : X_FF
    generic map(
      LOC => "SLICE_X23Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_31_CLK,
      I => FREQ_DIV_1_p1_COUNTER_31_rstpot_561,
      O => FREQ_DIV_1_p1_COUNTER(31),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_31_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X23Y34",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_31_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_31_rstpot_561
    );
  FREQ_DIV_1_p1_COUNTER_30 : X_FF
    generic map(
      LOC => "SLICE_X23Y34",
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
      LOC => "SLICE_X23Y34",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_30_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_30_rstpot_566
    );
  SVN_SEG_DISP_1_Mram_SVN_SEG_CATHODE41 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y8",
      INIT => X"0A0A0A0A0F0FAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR5 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR4 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(3),
      O => CATHODE_4_OBUF_1266
    );
  SVN_SEG_DISP_1_INT_DIGIT_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_OUTPUT_FREQ_1298,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_3_CLK,
      I => SVN_SEG_DISP_1_n0036(3),
      O => SVN_SEG_DISP_1_INT_DIGIT(3),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_Mmux_n003641 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => X"F0CCF0CCAAFFAA00"
    )
    port map (
      ADR5 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR3 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      ADR1 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(7),
      ADR2 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(15),
      ADR0 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_0,
      ADR4 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(3),
      O => SVN_SEG_DISP_1_n0036(3)
    );
  SVN_SEG_DISP_1_INT_DIGIT_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_OUTPUT_FREQ_1298,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_2_CLK,
      I => SVN_SEG_DISP_1_n0036(2),
      O => SVN_SEG_DISP_1_INT_DIGIT(2),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_Mmux_n003631 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => X"AFAFA0A0CFC0CFC0"
    )
    port map (
      ADR5 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      ADR4 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_0,
      ADR0 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(14),
      ADR1 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_0,
      ADR3 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(2),
      O => SVN_SEG_DISP_1_n0036(2)
    );
  SVN_SEG_DISP_1_INT_DIGIT_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_OUTPUT_FREQ_1298,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_1_CLK,
      I => SVN_SEG_DISP_1_n0036(1),
      O => SVN_SEG_DISP_1_INT_DIGIT(1),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_Mmux_n003621 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => X"FC0CAFAFFC0CA0A0"
    )
    port map (
      ADR2 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR4 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      ADR0 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_0,
      ADR3 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(13),
      ADR1 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_0,
      ADR5 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(1),
      O => SVN_SEG_DISP_1_n0036(1)
    );
  SVN_SEG_DISP_1_INT_DIGIT_0 : X_FF
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_OUTPUT_FREQ_1298,
      CLK => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_0_CLK,
      I => SVN_SEG_DISP_1_n0036(0),
      O => SVN_SEG_DISP_1_INT_DIGIT(0),
      RST => GND,
      SET => GND
    );
  SVN_SEG_DISP_1_Mmux_n003611 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => X"FFAA00AAF0CCF0CC"
    )
    port map (
      ADR3 => SVN_SEG_DISP_1_state_STATE_FSM_FFd2_1299,
      ADR5 => SVN_SEG_DISP_1_state_STATE_FSM_FFd1_1300,
      ADR2 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_0,
      ADR4 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(12),
      ADR0 => PSDO_RNDM_GEN_1_OUTPUT_RNDM(8),
      ADR1 => PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_0,
      O => SVN_SEG_DISP_1_n0036(0)
    );
  FREQ_DIV_1_p1_COUNTER_14 : X_FF
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_14_CLK,
      I => FREQ_DIV_1_p1_COUNTER_14_rstpot_611,
      O => FREQ_DIV_1_p1_COUNTER(14),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_14_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"0000000030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_14_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_14_rstpot_611
    );
  FREQ_DIV_1_p1_COUNTER_13 : X_FF
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_13_CLK,
      I => FREQ_DIV_1_p1_COUNTER_13_rstpot_616,
      O => FREQ_DIV_1_p1_COUNTER(13),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_13_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"0000000050505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Result_13_0,
      ADR0 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_13_rstpot_616
    );
  FREQ_DIV_1_p1_COUNTER_12 : X_FF
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_12_CLK,
      I => FREQ_DIV_1_p1_COUNTER_12_rstpot_621,
      O => FREQ_DIV_1_p1_COUNTER(12),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y29",
      INIT => X"000000000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Result_12_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_12_rstpot_621
    );
  FREQ_DIV_1_p1_COUNTER_17 : X_FF
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_17_CLK,
      I => FREQ_DIV_1_p1_COUNTER_17_rstpot_626,
      O => FREQ_DIV_1_p1_COUNTER(17),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_17_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"0303000003030000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => Result_17_0,
      ADR1 => RESET_IBUF_0,
      ADR2 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_17_rstpot_626
    );
  FREQ_DIV_1_p1_COUNTER_16 : X_FF
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_16_CLK,
      I => FREQ_DIV_1_p1_COUNTER_16_rstpot_632,
      O => FREQ_DIV_1_p1_COUNTER(16),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_16_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"0000000033003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => Result_16_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_1_p1_COUNTER_16_rstpot_632
    );
  FREQ_DIV_1_p1_COUNTER_15 : X_FF
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_15_CLK,
      I => FREQ_DIV_1_p1_COUNTER_15_rstpot_637,
      O => FREQ_DIV_1_p1_COUNTER(15),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_15_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_15_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_15_rstpot_637
    );
  FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y31",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_5_1325,
      ADR4 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_4_1326,
      ADR1 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_3_1327,
      ADR0 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_2_1328,
      ADR2 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_1_1329,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_Q,
      O => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287
    );
  FREQ_DIV_1_p1_COUNTER_21 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_21_CLK,
      I => FREQ_DIV_1_p1_COUNTER_21_rstpot_649,
      O => FREQ_DIV_1_p1_COUNTER(21),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_21_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"0000000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Result_21_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_21_rstpot_649
    );
  FREQ_DIV_1_p1_COUNTER_20 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_20_CLK,
      I => FREQ_DIV_1_p1_COUNTER_20_rstpot_655,
      O => FREQ_DIV_1_p1_COUNTER(20),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_20_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"0000333300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => Result_20_0,
      ADR1 => RESET_IBUF_0,
      ADR4 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_20_rstpot_655
    );
  FREQ_DIV_1_p1_COUNTER_19 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_19_CLK,
      I => FREQ_DIV_1_p1_COUNTER_19_rstpot_660,
      O => FREQ_DIV_1_p1_COUNTER(19),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_19_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_19_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_19_rstpot_660
    );
  FREQ_DIV_1_p1_COUNTER_18 : X_FF
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_18_CLK,
      I => FREQ_DIV_1_p1_COUNTER_18_rstpot_665,
      O => FREQ_DIV_1_p1_COUNTER(18),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_p1_COUNTER_18_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y32",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_18_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_7_1287,
      O => FREQ_DIV_1_p1_COUNTER_18_rstpot_665
    );
  FREQ_DIV_2_p1_COUNTER_14 : X_FF
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_14_CLK,
      I => FREQ_DIV_2_p1_COUNTER_14_rstpot_671,
      O => FREQ_DIV_2_p1_COUNTER(14),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_14_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => X"000000000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Result_14_1_0,
      ADR4 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_14_rstpot_671
    );
  FREQ_DIV_2_p1_COUNTER_13 : X_FF
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_13_CLK,
      I => FREQ_DIV_2_p1_COUNTER_13_rstpot_676,
      O => FREQ_DIV_2_p1_COUNTER(13),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_13_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_13_1_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_13_rstpot_676
    );
  FREQ_DIV_2_p1_COUNTER_12 : X_FF
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_12_CLK,
      I => FREQ_DIV_2_p1_COUNTER_12_rstpot_681,
      O => FREQ_DIV_2_p1_COUNTER(12),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X24Y35",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_12_1_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_12_rstpot_681
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(11),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_0
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(10),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_0
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_OUTPUT_RNDM(9),
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_0
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_7 : X_FF
    generic map(
      LOC => "SLICE_X25Y19",
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
      LOC => "SLICE_X25Y19",
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
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y19",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_Q,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_rt_690
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_11 : X_FF
    generic map(
      LOC => "SLICE_X25Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_rt_690,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(11),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_2 : X_FF
    generic map(
      LOC => "SLICE_X25Y19",
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
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y19",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_Q,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_rt_695
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_10 : X_FF
    generic map(
      LOC => "SLICE_X25Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_rt_695,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(10),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y19",
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
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X25Y19",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_Q,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_rt_700
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_9 : X_FF
    generic map(
      LOC => "SLICE_X25Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_rt_700,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(9),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_15 : X_FF
    generic map(
      LOC => "SLICE_X25Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_IN,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(15),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y29",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => FREQ_DIV_1_p1_COUNTER(7),
      ADR4 => FREQ_DIV_1_p1_COUNTER(6),
      ADR0 => FREQ_DIV_1_p1_COUNTER(8),
      ADR1 => FREQ_DIV_1_p1_COUNTER(9),
      ADR2 => FREQ_DIV_1_p1_COUNTER(10),
      ADR3 => FREQ_DIV_1_p1_COUNTER(11),
      O => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_1_1329
    );
  FREQ_DIV_1_RESET_FREQ_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => RESET_IBUF_0,
      O => FREQ_DIV_1_RESET_FREQ_inv
    );
  FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y32",
      INIT => X"0000000000000001"
    )
    port map (
      ADR4 => FREQ_DIV_1_p1_COUNTER(19),
      ADR5 => FREQ_DIV_1_p1_COUNTER(18),
      ADR1 => FREQ_DIV_1_p1_COUNTER(20),
      ADR2 => FREQ_DIV_1_p1_COUNTER(21),
      ADR0 => FREQ_DIV_1_p1_COUNTER(22),
      ADR3 => FREQ_DIV_1_p1_COUNTER(23),
      O => FREQ_DIV_1_GND_6_o_p1_COUNTER_31_equal_1_o_31_3_1327
    );
  FREQ_DIV_2_p1_COUNTER_17 : X_FF
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_17_CLK,
      I => FREQ_DIV_2_p1_COUNTER_17_rstpot_723,
      O => FREQ_DIV_2_p1_COUNTER(17),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_17_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_17_1_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_17_rstpot_723
    );
  FREQ_DIV_2_p1_COUNTER_16 : X_FF
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_16_CLK,
      I => FREQ_DIV_2_p1_COUNTER_16_rstpot_729,
      O => FREQ_DIV_2_p1_COUNTER(16),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_16_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => X"1111111100000000"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Result_16_1_0,
      ADR0 => RESET_IBUF_0,
      ADR1 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_16_rstpot_729
    );
  FREQ_DIV_2_p1_COUNTER_15 : X_FF
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_15_CLK,
      I => FREQ_DIV_2_p1_COUNTER_15_rstpot_734,
      O => FREQ_DIV_2_p1_COUNTER(15),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_15_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_15_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_15_rstpot_734
    );
  FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y34",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_5_1319,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_4_1320,
      ADR2 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_3_1321,
      ADR0 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_2_1322,
      ADR4 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_1_1323,
      ADR3 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_Q,
      O => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310
    );
  CATHODE_2_OBUF_CATHODE_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_5_OBUF_746,
      O => CATHODE_5_OBUF_0
    );
  SVN_SEG_DISP_1_SVN_SEG_CATHODE_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y8",
      INIT => X"80A480A480A480A4"
    )
    port map (
      ADR4 => '1',
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR0 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR5 => '1',
      O => CATHODE_2_OBUF_1112
    );
  SVN_SEG_DISP_1_SVN_SEG_CATHODE_5_1 : X_LUT5
    generic map(
      LOC => "SLICE_X26Y8",
      INIT => X"2D042D04"
    )
    port map (
      ADR4 => '1',
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR0 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(1),
      O => CATHODE_5_OBUF_746
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
      LOC => "SLICE_X26Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_785,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(8),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y19",
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
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_785,
      CE => '1'
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_D,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_784,
      CE => '1',
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_Q15_UNCONNECTED
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_784,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(0),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_12 : X_FF
    generic map(
      LOC => "SLICE_X26Y19",
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
      LOC => "SLICE_X26Y19",
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
      LOC => "SLICE_X26Y19",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_D,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_759,
      CE => '1',
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_Q15_UNCONNECTED
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_4_759,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(4),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_13 : X_FF
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_13_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_793,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(13),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y19",
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
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_793,
      CE => '1'
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_D,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_792,
      CE => '1',
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_Q15_UNCONNECTED
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_5 : X_FF
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_5_792,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(5),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_14 : X_FF
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_14_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_775,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(14),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y19",
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
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_775,
      CE => '1'
    );
  PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6 : X_SRLC16E
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_CLK,
      D => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_D,
      Q => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_777,
      CE => '1',
      Q15 => NLW_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_Q15_UNCONNECTED
    );
  PSDO_RNDM_GEN_1_OUTPUT_RNDM_6 : X_FF
    generic map(
      LOC => "SLICE_X26Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_CLK,
      I => PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_6_777,
      O => PSDO_RNDM_GEN_1_OUTPUT_RNDM(6),
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_pack_6,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(3)
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_pack_4,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(2)
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_pack_2,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(1)
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(0),
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_0
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_IN,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(7),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(4),
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_rt_821
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_rt_821,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_pack_6,
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_IN,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(6),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(3),
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_rt_814
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_rt_814,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_pack_4,
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_IN,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(5),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(2),
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt_809
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt_809,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_pack_2,
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_IN,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(4),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(1),
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt_804
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt_804,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(0),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
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
      LOC => "SLICE_X26Y21",
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
      LOC => "SLICE_X26Y21",
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
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_2_CLK,
      I => PSDO_RNDM_GEN_1_OUTPUT_TMP_9_OUTPUT_TMP_15_XOR_40_o,
      O => PSDO_RNDM_GEN_1_INPUT_SRG_2_1297,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mxor_OUTPUT_TMP_9_OUTPUT_TMP_15_XOR_40_o_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"6699996666999966"
    )
    port map (
      ADR2 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_Q,
      ADR3 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_Q,
      ADR0 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_Q,
      ADR1 => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_Q,
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_OUTPUT_TMP_9_OUTPUT_TMP_15_XOR_40_o
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR2 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(2),
      ADR1 => '1',
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt_826
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_rt_826,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_pack_2,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_INPUT_SRG_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_1_CLK,
      I => PSDO_RNDM_GEN_1_OUTPUT_TMP_7_OUTPUT_TMP_1_XOR_37_o,
      O => PSDO_RNDM_GEN_1_INPUT_SRG_1_1292,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_Mxor_OUTPUT_TMP_7_OUTPUT_TMP_1_XOR_37_o_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"6996699669966996"
    )
    port map (
      ADR4 => '1',
      ADR0 => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_Q,
      ADR2 => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_Q,
      ADR3 => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_3_Q,
      ADR1 => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_Q,
      ADR5 => '1',
      O => PSDO_RNDM_GEN_1_OUTPUT_TMP_7_OUTPUT_TMP_1_XOR_37_o
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"FFFF0000"
    )
    port map (
      ADR4 => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(1),
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => '1',
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt_844
    );
  PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_CLK,
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_rt_844,
      O => PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_pack_1,
      RST => GND,
      SET => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
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
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
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
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
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
  PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y22",
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
  FREQ_DIV_2_p1_COUNTER_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_7_CLK,
      I => FREQ_DIV_2_p1_COUNTER_7_rstpot_860,
      O => FREQ_DIV_2_p1_COUNTER(7),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_7_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_7_rstpot_860
    );
  FREQ_DIV_2_p1_COUNTER_6 : X_FF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_6_CLK,
      I => FREQ_DIV_2_p1_COUNTER_6_rstpot_866,
      O => FREQ_DIV_2_p1_COUNTER(6),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => X"0303030300000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => Result_6_1_0,
      ADR1 => RESET_IBUF_0,
      ADR2 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_6_rstpot_866
    );
  FREQ_DIV_2_p1_COUNTER_5 : X_FF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_5_CLK,
      I => FREQ_DIV_2_p1_COUNTER_5_rstpot_871,
      O => FREQ_DIV_2_p1_COUNTER(5),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => X"000000000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Result_5_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_5_rstpot_871
    );
  FREQ_DIV_2_p1_COUNTER_4 : X_FF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_4_CLK,
      I => FREQ_DIV_2_p1_COUNTER_4_rstpot_876,
      O => FREQ_DIV_2_p1_COUNTER(4),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_4_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_4_rstpot_876
    );
  FREQ_DIV_2_p1_COUNTER_11 : X_FF
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_11_CLK,
      I => FREQ_DIV_2_p1_COUNTER_11_rstpot_881,
      O => FREQ_DIV_2_p1_COUNTER(11),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_11_1_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_11_rstpot_881
    );
  FREQ_DIV_2_p1_COUNTER_10 : X_FF
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_10_CLK,
      I => FREQ_DIV_2_p1_COUNTER_10_rstpot_887,
      O => FREQ_DIV_2_p1_COUNTER(10),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_10_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => X"0033003300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Result_10_1_0,
      ADR1 => RESET_IBUF_0,
      ADR3 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_10_rstpot_887
    );
  FREQ_DIV_2_p1_COUNTER_9 : X_FF
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_9_CLK,
      I => FREQ_DIV_2_p1_COUNTER_9_rstpot_892,
      O => FREQ_DIV_2_p1_COUNTER(9),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => X"000000000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Result_9_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_9_rstpot_892
    );
  FREQ_DIV_2_p1_COUNTER_8 : X_FF
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_8_CLK,
      I => FREQ_DIV_2_p1_COUNTER_8_rstpot_897,
      O => FREQ_DIV_2_p1_COUNTER(8),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y33",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_8_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_8_rstpot_897
    );
  FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_5 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => FREQ_DIV_2_p1_COUNTER(25),
      ADR1 => FREQ_DIV_2_p1_COUNTER(24),
      ADR3 => FREQ_DIV_2_p1_COUNTER(26),
      ADR5 => FREQ_DIV_2_p1_COUNTER(27),
      ADR4 => FREQ_DIV_2_p1_COUNTER(28),
      ADR2 => FREQ_DIV_2_p1_COUNTER(29),
      O => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_4_1320
    );
  FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_3 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => FREQ_DIV_2_p1_COUNTER(13),
      ADR5 => FREQ_DIV_2_p1_COUNTER(12),
      ADR4 => FREQ_DIV_2_p1_COUNTER(14),
      ADR0 => FREQ_DIV_2_p1_COUNTER(15),
      ADR1 => FREQ_DIV_2_p1_COUNTER(16),
      ADR2 => FREQ_DIV_2_p1_COUNTER(17),
      O => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_2_1322
    );
  FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_1 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => X"0000000000000040"
    )
    port map (
      ADR1 => FREQ_DIV_2_p1_COUNTER(1),
      ADR2 => FREQ_DIV_2_p1_COUNTER(0),
      ADR3 => FREQ_DIV_2_p1_COUNTER(2),
      ADR5 => FREQ_DIV_2_p1_COUNTER(3),
      ADR0 => FREQ_DIV_2_p1_COUNTER(4),
      ADR4 => FREQ_DIV_2_p1_COUNTER(5),
      O => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_Q
    );
  FREQ_DIV_2_OUTPUT_FREQ : X_FF
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => '0'
    )
    port map (
      CE => FREQ_DIV_1_RESET_FREQ_inv,
      CLK => NlwBufferSignal_FREQ_DIV_2_OUTPUT_FREQ_CLK,
      I => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_OUTPUT_FREQ_1331,
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_5_1319,
      ADR2 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_4_1320,
      ADR0 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_3_1321,
      ADR1 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_2_1322,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_1_1323,
      ADR4 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_Q,
      O => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o
    );
  FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_4 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y35",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => FREQ_DIV_2_p1_COUNTER(19),
      ADR0 => FREQ_DIV_2_p1_COUNTER(18),
      ADR3 => FREQ_DIV_2_p1_COUNTER(20),
      ADR2 => FREQ_DIV_2_p1_COUNTER(21),
      ADR5 => FREQ_DIV_2_p1_COUNTER(22),
      ADR4 => FREQ_DIV_2_p1_COUNTER(23),
      O => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_3_1321
    );
  FREQ_DIV_2_p1_COUNTER_25 : X_FF
    generic map(
      LOC => "SLICE_X26Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_25_CLK,
      I => FREQ_DIV_2_p1_COUNTER_25_rstpot_940,
      O => FREQ_DIV_2_p1_COUNTER(25),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_25_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y36",
      INIT => X"0000000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Result_25_1_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_25_rstpot_940
    );
  FREQ_DIV_2_p1_COUNTER_24 : X_FF
    generic map(
      LOC => "SLICE_X26Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_24_CLK,
      I => FREQ_DIV_2_p1_COUNTER_24_rstpot_946,
      O => FREQ_DIV_2_p1_COUNTER(24),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_24_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y36",
      INIT => X"0000000033330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Result_24_1_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_24_rstpot_946
    );
  FREQ_DIV_2_p1_COUNTER_23 : X_FF
    generic map(
      LOC => "SLICE_X26Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_23_CLK,
      I => FREQ_DIV_2_p1_COUNTER_23_rstpot_951,
      O => FREQ_DIV_2_p1_COUNTER(23),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_23_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y36",
      INIT => X"000000000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Result_23_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_23_rstpot_951
    );
  FREQ_DIV_2_p1_COUNTER_22 : X_FF
    generic map(
      LOC => "SLICE_X26Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_22_CLK,
      I => FREQ_DIV_2_p1_COUNTER_22_rstpot_956,
      O => FREQ_DIV_2_p1_COUNTER(22),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_22_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y36",
      INIT => X"0000000000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => Result_22_1_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_22_rstpot_956
    );
  FREQ_DIV_2_p1_COUNTER_29 : X_FF
    generic map(
      LOC => "SLICE_X26Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_29_CLK,
      I => FREQ_DIV_2_p1_COUNTER_29_rstpot_961,
      O => FREQ_DIV_2_p1_COUNTER(29),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_29_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y37",
      INIT => X"0000000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_29_1_0,
      ADR0 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_29_rstpot_961
    );
  FREQ_DIV_2_p1_COUNTER_28 : X_FF
    generic map(
      LOC => "SLICE_X26Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_28_CLK,
      I => FREQ_DIV_2_p1_COUNTER_28_rstpot_967,
      O => FREQ_DIV_2_p1_COUNTER(28),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_28_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y37",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_28_1_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_28_rstpot_967
    );
  FREQ_DIV_2_p1_COUNTER_27 : X_FF
    generic map(
      LOC => "SLICE_X26Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_27_CLK,
      I => FREQ_DIV_2_p1_COUNTER_27_rstpot_972,
      O => FREQ_DIV_2_p1_COUNTER(27),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_27_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y37",
      INIT => X"0000000055005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Result_27_1_0,
      ADR0 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_27_rstpot_972
    );
  FREQ_DIV_2_p1_COUNTER_26 : X_FF
    generic map(
      LOC => "SLICE_X26Y37",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_26_CLK,
      I => FREQ_DIV_2_p1_COUNTER_26_rstpot_977,
      O => FREQ_DIV_2_p1_COUNTER(26),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_26_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y37",
      INIT => X"0000000050505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Result_26_1_0,
      ADR0 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_26_rstpot_977
    );
  FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_6 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => X"000000000F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => FREQ_DIV_2_p1_COUNTER(31),
      ADR2 => FREQ_DIV_2_p1_COUNTER(30),
      O => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_5_1319
    );
  FREQ_DIV_2_p1_COUNTER_31 : X_FF
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_31_CLK,
      I => FREQ_DIV_2_p1_COUNTER_31_rstpot_986,
      O => FREQ_DIV_2_p1_COUNTER(31),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_31_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => X"0000000033003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => Result_31_1_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_31_rstpot_986
    );
  FREQ_DIV_2_p1_COUNTER_30 : X_FF
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_30_CLK,
      I => FREQ_DIV_2_p1_COUNTER_30_rstpot_991,
      O => FREQ_DIV_2_p1_COUNTER(30),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_30_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X26Y38",
      INIT => X"0000000030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Result_30_1_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_30_rstpot_991
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_pack_6,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(3)
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_pack_4,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(2)
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_pack_2,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(1)
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(0),
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_0
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_IN,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(7),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(4),
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_rt_1014
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_rt_1014,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_pack_6,
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_IN,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(6),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(3),
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_rt_1007
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_rt_1007,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_pack_4,
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_IN,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(5),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(2),
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_rt_1002
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_rt_1002,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_pack_2,
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_CLK,
      I => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_IN,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(4),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_rt : X_LUT5
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(1),
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_rt_997
    );
  PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0 : X_SFF
    generic map(
      LOC => "SLICE_X27Y21",
      INIT => '1'
    )
    port map (
      CE => FREQ_DIV_2_OUTPUT_FREQ_1331,
      CLK => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_CLK,
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_rt_997,
      O => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(0),
      SSET => RESET_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  FREQ_DIV_2_p1_COUNTER_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_3_CLK,
      I => FREQ_DIV_2_p1_COUNTER_3_rstpot_1019,
      O => FREQ_DIV_2_p1_COUNTER(3),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_3_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_3_rstpot_1019
    );
  FREQ_DIV_2_p1_COUNTER_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_2_CLK,
      I => FREQ_DIV_2_p1_COUNTER_2_rstpot_1025,
      O => FREQ_DIV_2_p1_COUNTER(2),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => X"0000000033003300"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => Result_2_1_0,
      ADR1 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_2_rstpot_1025
    );
  FREQ_DIV_2_p1_COUNTER_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_1_CLK,
      I => FREQ_DIV_2_p1_COUNTER_1_rstpot_1030,
      O => FREQ_DIV_2_p1_COUNTER(1),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => X"000000000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Result_1_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_1_rstpot_1030
    );
  FREQ_DIV_2_p1_COUNTER_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_0_CLK,
      I => FREQ_DIV_2_p1_COUNTER_0_rstpot_1035,
      O => FREQ_DIV_2_p1_COUNTER(0),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y31",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_0_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o,
      O => FREQ_DIV_2_p1_COUNTER_0_rstpot_1035
    );
  FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_2 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y33",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => FREQ_DIV_2_p1_COUNTER(7),
      ADR3 => FREQ_DIV_2_p1_COUNTER(6),
      ADR5 => FREQ_DIV_2_p1_COUNTER(8),
      ADR4 => FREQ_DIV_2_p1_COUNTER(9),
      ADR1 => FREQ_DIV_2_p1_COUNTER(10),
      ADR2 => FREQ_DIV_2_p1_COUNTER(11),
      O => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_1_1323
    );
  FREQ_DIV_2_p1_COUNTER_21 : X_FF
    generic map(
      LOC => "SLICE_X27Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_21_CLK,
      I => FREQ_DIV_2_p1_COUNTER_21_rstpot_1047,
      O => FREQ_DIV_2_p1_COUNTER(21),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_21_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y36",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_21_1_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_21_rstpot_1047
    );
  FREQ_DIV_2_p1_COUNTER_20 : X_FF
    generic map(
      LOC => "SLICE_X27Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_20_CLK,
      I => FREQ_DIV_2_p1_COUNTER_20_rstpot_1053,
      O => FREQ_DIV_2_p1_COUNTER(20),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_20_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y36",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_20_1_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_20_rstpot_1053
    );
  FREQ_DIV_2_p1_COUNTER_19 : X_FF
    generic map(
      LOC => "SLICE_X27Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_19_CLK,
      I => FREQ_DIV_2_p1_COUNTER_19_rstpot_1058,
      O => FREQ_DIV_2_p1_COUNTER(19),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_19_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y36",
      INIT => X"0000000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Result_19_1_0,
      ADR3 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_19_rstpot_1058
    );
  FREQ_DIV_2_p1_COUNTER_18 : X_FF
    generic map(
      LOC => "SLICE_X27Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_18_CLK,
      I => FREQ_DIV_2_p1_COUNTER_18_rstpot_1063,
      O => FREQ_DIV_2_p1_COUNTER(18),
      RST => GND,
      SET => GND
    );
  FREQ_DIV_2_p1_COUNTER_18_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X27Y36",
      INIT => X"000000000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Result_18_1_0,
      ADR2 => RESET_IBUF_0,
      ADR5 => FREQ_DIV_2_GND_7_o_p1_COUNTER_31_equal_1_o_31_7_1310,
      O => FREQ_DIV_2_p1_COUNTER_18_rstpot_1063
    );
  CATHODE_6_OBUF_CATHODE_6_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_1_OBUF_1071,
      O => CATHODE_1_OBUF_0
    );
  SVN_SEG_DISP_1_Mram_SVN_SEG_CATHODE61 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y8",
      INIT => X"4025402540254025"
    )
    port map (
      ADR4 => '1',
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR0 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR5 => '1',
      O => CATHODE_6_OBUF_1267
    );
  SVN_SEG_DISP_1_Mram_SVN_SEG_CATHODE111 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y8",
      INIT => X"B860B860"
    )
    port map (
      ADR4 => '1',
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR0 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(0),
      O => CATHODE_1_OBUF_1071
    );
  CATHODE_0_OBUF_CATHODE_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_3_OBUF_1076,
      O => CATHODE_3_OBUF_0
    );
  SVN_SEG_DISP_1_SVN_SEG_CATHODE_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y8",
      INIT => X"3C0300303C030030"
    )
    port map (
      ADR0 => '1',
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR4 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(2),
      ADR5 => '1',
      O => CATHODE_0_OBUF_1105
    );
  SVN_SEG_DISP_1_SVN_SEG_CATHODE_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X29Y8",
      INIT => X"C0C30C30"
    )
    port map (
      ADR0 => '1',
      ADR1 => SVN_SEG_DISP_1_INT_DIGIT(1),
      ADR3 => SVN_SEG_DISP_1_INT_DIGIT(3),
      ADR4 => SVN_SEG_DISP_1_INT_DIGIT(0),
      ADR2 => SVN_SEG_DISP_1_INT_DIGIT(2),
      O => CATHODE_3_OBUF_1076
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
      ADR4 => NEX_IBUF_0,
      ADR2 => TEST3_OBUF_0,
      O => TEST1_OBUF_1260
    );
  NlwBufferBlock_ANODE_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => SVN_SEG_DISP_1_SVN_SEG_ANODE_0_0,
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
      I => SVN_SEG_DISP_1_SVN_SEG_ANODE_2_0,
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
      I => TEST1_OBUF_1260,
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
  NlwBufferBlock_TEST_OSZI_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_0,
      O => NlwBufferSignal_TEST_OSZI_OBUF_I
    );
  NlwBufferBlock_CATHODE_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CATHODE_0_OBUF_1105,
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
      I => CATHODE_2_OBUF_1112,
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
      I => CATHODE_4_OBUF_1266,
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
      I => CATHODE_6_OBUF_1267,
      O => NlwBufferSignal_CATHODE_6_OBUF_I
    );
  NlwBufferBlock_TEST_OSZI_OBUF_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_0,
      O => NlwBufferSignal_TEST_OSZI_OBUF_BUFG_IN
    );
  NlwBufferBlock_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_3_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_SVN_SEG_ANODE_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_2_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_SVN_SEG_ANODE_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_1_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_SVN_SEG_ANODE_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_SVN_SEG_ANODE_0_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd1_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_state_STATE_FSM_FFd2_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_3_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_2_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_1_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_7_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_6_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_5_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_4_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_11_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_10_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_9_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_8_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_OUTPUT_FREQ_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_OUTPUT_FREQ_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_25_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_24_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_23_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_22_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_29_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_28_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_27_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_26_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_31_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_30_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_INT_DIGIT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_3_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_INT_DIGIT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_2_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_INT_DIGIT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_1_CLK
    );
  NlwBufferBlock_SVN_SEG_DISP_1_INT_DIGIT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_SVN_SEG_DISP_1_INT_DIGIT_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_14_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_13_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_12_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_17_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_16_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_15_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_21_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_20_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_19_CLK
    );
  NlwBufferBlock_FREQ_DIV_1_p1_COUNTER_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_1_p1_COUNTER_18_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_14_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_13_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_12_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
      I => TEST_OSZI_OBUF_BUFG_1269,
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
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_11_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_10_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_9_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_Q,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_15_IN
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_17_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_16_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_15_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_8_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_0,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_8_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_D : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_0,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_0_D
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_0_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_12_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
      I => TEST_OSZI_OBUF_BUFG_1269,
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
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_4_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_13_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
      I => TEST_OSZI_OBUF_BUFG_1269,
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
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_5_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_OUTPUT_RNDM_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_14_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_Mshreg_OUTPUT_RNDM_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
      I => TEST_OSZI_OBUF_BUFG_1269,
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
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_OUTPUT_RNDM_6_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_INPUT_SRG_1_1292,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_7_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_3_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(7),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_6_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(6),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_5_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG(5),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_4_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_INTREG_0_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
      I => TEST_OSZI_OBUF_BUFG_1269,
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
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_INPUT_SRG_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_INPUT_SRG_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_1_COMP_OUTPUT_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_OUTPUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
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
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_7_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_6_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_5_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_4_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_11_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_10_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_9_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_8_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_OUTPUT_FREQ_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_OUTPUT_FREQ_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_25_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_24_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_23_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_22_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_29_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_28_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_27_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_26_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_31_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_30_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_INPUT_SRG_2_1297,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_7_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_3_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(7),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_6_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_2_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(6),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_5_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_1_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_CLK
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG(5),
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_4_IN
    );
  NlwBufferBlock_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_PSDO_RNDM_GEN_1_SRG_2_COMP_INTREG_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_3_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_2_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_1_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_0_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_21_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_20_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_19_CLK
    );
  NlwBufferBlock_FREQ_DIV_2_p1_COUNTER_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TEST_OSZI_OBUF_BUFG_1269,
      O => NlwBufferSignal_FREQ_DIV_2_p1_COUNTER_18_CLK
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

