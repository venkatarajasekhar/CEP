onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {TOP_EQ Inputs/Outputs}
add wave -noupdate -label {CLK 25MHz} -radix decimal /topeq_tb/INSTANZ/CLK
add wave -noupdate -label {TOP_EQ Input NE} -radix decimal /topeq_tb/INSTANZ/NE
add wave -noupdate -label {TOP_EQ Input NOE} -radix decimal /topeq_tb/INSTANZ/NOE
add wave -noupdate -label {TOP_EQ Input NWE} -radix decimal /topeq_tb/INSTANZ/NWE
add wave -noupdate -label {TOP_EQ Input Resetbutton} -radix decimal /topeq_tb/INSTANZ/Resetbutton
add wave -noupdate -label {TOP_EQ InOut Data} -radix decimal /topeq_tb/INSTANZ/D
add wave -noupdate -label {TOP_EQ Output Locked} -radix decimal /topeq_tb/INSTANZ/LOCKED_OUT
add wave -noupdate -label {TOP_EQ Output RDY} -radix decimal /topeq_tb/INSTANZ/RDY
add wave -noupdate -divider {TOP_EQ intern Signals}
add wave -noupdate -label CLK_PE -radix decimal /topeq_tb/INSTANZ/out1
add wave -noupdate -label CLK_SYN -radix decimal /topeq_tb/INSTANZ/out2
add wave -noupdate -label clk_wiz_locked -radix decimal /topeq_tb/INSTANZ/locked
add wave -noupdate -radix decimal /topeq_tb/INSTANZ/FSMC_IF/INTDATA_1
add wave -noupdate -radix decimal /topeq_tb/INSTANZ/FSMC_IF/INTDATA_0
add wave -noupdate /topeq_tb/INSTANZ/FSMC_IF/EN
add wave -noupdate -label {reset_fsmc = restbutton or (not locked)} -radix decimal /topeq_tb/INSTANZ/reset_fsmc
add wave -noupdate -divider {Clockdiv clk_wiz outputs}
add wave -noupdate -radix decimal /topeq_tb/INSTANZ/CLOCKDIV/clkout0
add wave -noupdate -radix decimal /topeq_tb/INSTANZ/CLOCKDIV/clkout1
add wave -noupdate -divider {FSMC Inputs/Outputs}
add wave -noupdate -label {InOut Data} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/DATA
add wave -noupdate -label {Input NE} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/INTNE
add wave -noupdate -label {Input NWE} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/INTNWE
add wave -noupdate -label {Input NOE} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/INTNOE
add wave -noupdate -label {internes Signal Y (Datainput von SQRT)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/Y
add wave -noupdate -label {internes Signal W (Dataoutput SQRT)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/W
add wave -noupdate -label CLK_PE -radix decimal /topeq_tb/INSTANZ/FSMC_IF/CLK_PE
add wave -noupdate -label CLK_SYN -radix decimal /topeq_tb/INSTANZ/FSMC_IF/CLK_SYN
add wave -noupdate -divider {SQRT Inputs/Outputs}
add wave -noupdate -label {Input d (Data)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/d
add wave -noupdate -label {Output q} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/q
add wave -noupdate -label CLK_PE -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/CLK
add wave -noupdate -divider {SQRT States/States+}
add wave -noupdate -label Zustand -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/ZUSTAND
add wave -noupdate -label Folgezustand -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/FOLGE_Z
add wave -noupdate -divider {SQRT Selects/Enables/Preset}
add wave -noupdate -label {Preset und Slect fuer MUX an Register 1} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/PRESET
add wave -noupdate -label {Enable R0} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R0
add wave -noupdate -label {Enable R1} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R1
add wave -noupdate -label {Enable R2} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R2
add wave -noupdate -label {Enable R3} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R3
add wave -noupdate -label {Enable R4} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R4
add wave -noupdate -label {Select 0 (Subtrahierer)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/Select0
add wave -noupdate -label {Select 1 (Shift left)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/Select1
add wave -noupdate -label {Select 2 (Addierer)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/Select2
add wave -noupdate -label {Select 3 (MUX R3)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/Select3
add wave -noupdate -label {Select 4 (Comparator)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/Select4
add wave -noupdate -divider {SQRT Operatoren}
add wave -noupdate -label Comparatorbit -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/comparbit
add wave -noupdate -label {Differenz (Subtrahierer)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/differenz
add wave -noupdate -label {Summe (Addierer)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/summe
add wave -noupdate -label {Shiftergebnis (Shift Left)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/shifterg
add wave -noupdate -divider {SQRT Register mit Selects}
add wave -noupdate -label {Enable R0} /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R0
add wave -noupdate -label {Enable R1} /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R1
add wave -noupdate -label {Enable R2} /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R2
add wave -noupdate -label {Enable R3} /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R3
add wave -noupdate -label {Enable R4} /topeq_tb/INSTANZ/FSMC_IF/WURZEL/EN_R4
add wave -noupdate -label {R0 (qout)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/qout
add wave -noupdate -label {R1 (rout)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/rout
add wave -noupdate -label {R2 (nout)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/nout
add wave -noupdate -label {R3 (X1/t)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/r3out
add wave -noupdate -label {R4 (X2/X3)} -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/r4out
add wave -noupdate -label CLK_PE -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/CLK
add wave -noupdate -divider {other intern Signals}
add wave -noupdate -label Komplementbit -radix decimal /topeq_tb/INSTANZ/FSMC_IF/WURZEL/komplement
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {50760875 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 332
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {50715700 ps} {50797732 ps}
