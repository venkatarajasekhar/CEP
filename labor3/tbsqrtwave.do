onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /lab3tb/TEST/d
add wave -noupdate -radix decimal /lab3tb/TEST/q
add wave -noupdate -radix decimal /lab3tb/TEST/ZUSTAND
add wave -noupdate -radix decimal /lab3tb/TEST/FOLGE_Z
add wave -noupdate -radix decimal /lab3tb/TEST/PRESET
add wave -noupdate -radix decimal /lab3tb/TEST/EN_R0
add wave -noupdate -radix decimal /lab3tb/TEST/EN_R1
add wave -noupdate -radix decimal /lab3tb/TEST/EN_R2
add wave -noupdate -radix decimal /lab3tb/TEST/EN_R3
add wave -noupdate -radix decimal /lab3tb/TEST/EN_R4
add wave -noupdate -radix decimal /lab3tb/TEST/Select0
add wave -noupdate -radix decimal /lab3tb/TEST/Select2
add wave -noupdate -radix decimal /lab3tb/TEST/Select3
add wave -noupdate -radix decimal /lab3tb/TEST/Select4
add wave -noupdate -radix decimal /lab3tb/TEST/Select1
add wave -noupdate -radix decimal /lab3tb/TEST/komplement
add wave -noupdate -radix decimal /lab3tb/TEST/comparbit
add wave -noupdate -radix decimal /lab3tb/TEST/differenz
add wave -noupdate -radix decimal /lab3tb/TEST/summe
add wave -noupdate -radix decimal /lab3tb/TEST/shifterg
add wave -noupdate -radix decimal /lab3tb/TEST/qout
add wave -noupdate -radix decimal /lab3tb/TEST/rout
add wave -noupdate -radix decimal /lab3tb/TEST/nout
add wave -noupdate -radix decimal /lab3tb/TEST/r3out
add wave -noupdate -radix decimal /lab3tb/TEST/r4out
add wave -noupdate -radix decimal /lab3tb/TEST/CLK
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {1 ns}
