onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_nex
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_noe
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_nwe
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_clk
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_reset
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_rdy
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_locked
add wave -noupdate -format Literal -height 30 -radix decimal /top_eq_tb/tb_data
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/int_clk_syn
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/int_clk_pe
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_nex
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_noe
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_nwe
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_clk
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_reset
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_rdy
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_locked
add wave -noupdate -format Literal -height 30 -radix decimal /top_eq_tb/tb_data
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/int_clk_syn
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/int_clk_pe
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/int_nwe3/o
add wave -noupdate -format Literal -expand /top_eq_tb/top_eq_i/equal_w
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_15/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_14/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_13/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_11/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_10/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_9/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_8/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_7/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_6/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_5/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_4/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_3/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_2/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_1/o
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal_w_0/o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15389725 ps} 0} {{Cursor 2} {2150 ps} 0} {{Cursor 3} {2151 ps} 0}
configure wave -namecolwidth 224
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ps} {15090867 ps}
