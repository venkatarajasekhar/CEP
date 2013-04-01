restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/SRG/*

# value time, value time (after the actual time value)
force CLK 1 0, 0 150ns -r 300ns

# 1: reset
force NLOAD 1 0
force RESET 1 0
force INPUT 0 0

# 2: kein reset
force NLOAD 1 150
force RESET 0 150
force INPUT 0 150

# 3: nload 0
force NLOAD 0 360
force RESET 0 360
force INPUT 0 360

# 4: nload 1
force NLOAD 1 370
force RESET 0 370
force INPUT 0 370

run 1600 ns