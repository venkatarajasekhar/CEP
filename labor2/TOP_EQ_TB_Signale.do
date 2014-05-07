onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_nex
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_noe
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_nwe
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_clk
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_reset
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_rdy
add wave -noupdate -format Logic -height 30 /top_eq_tb/tb_locked
add wave -noupdate -format Literal -height 30 /top_eq_tb/tb_data
#add wave -noupdate -format Literal -radix decimal /top_eq_tb/top_eq_i/equal/w
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/int_clk_syn
#add wave -noupdate -format Logic /top_eq_tb/top_eq_i/int_pe_pulse
#add wave -noupdate -format Logic /top_eq_tb/top_eq_i/equal/start
#add wave -noupdate -format Literal -radix decimal /top_eq_tb/top_eq_i/equal/y
#add wave -noupdate -format Logic /top_eq_tb/top_eq_i/int_en_pulse
add wave -noupdate -format Logic /top_eq_tb/top_eq_i/int_clk_pe
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2499330 ps} 0}
configure wave -namecolwidth 401
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
WaveRestoreZoom {2499050 ps} {2500175 ps}
