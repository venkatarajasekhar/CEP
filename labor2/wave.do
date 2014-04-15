onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -height 30 /top_eq_tb_stdl/tb_clk
add wave -noupdate -format Logic -height 30 /top_eq_tb_stdl/tb_reset
add wave -noupdate -format Literal -height 30 -expand /top_eq_tb_stdl/tb_anode
add wave -noupdate -format Literal -height 30 -expand /top_eq_tb_stdl/tb_cathode
add wave -noupdate -format Logic /top_eq_tb_stdl/top_eq_tb_i/freq_div_2_output_freq/o
add wave -noupdate -format Logic /top_eq_tb_stdl/top_eq_tb_i/freq_div_2_output_freq/clk
add wave -noupdate -format Logic /top_eq_tb_stdl/top_eq_tb_i/freq_div_1_output_freq/o
add wave -noupdate -format Logic /top_eq_tb_stdl/top_eq_tb_i/freq_div_1_output_freq/clk
add wave -noupdate -format Logic /top_eq_tb_stdl/top_eq_tb_i/freq_div_1_output_freq/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {345 ps} 0} {{Cursor 2} {2150 ps} 0} {{Cursor 3} {2151 ps} 0}
configure wave -namecolwidth 241
configure wave -valuecolwidth 38
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {10038 ns}
