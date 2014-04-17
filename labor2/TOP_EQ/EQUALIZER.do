restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/EQUALIZER/*

# value time, value time (after the actual time value)
force CLK_PE 0 0, 1 50ns -r 100ns

# 1: reset
force RESET 1 25 ns

# 2: kein reset
force RESET 0 125 ns

# 3: +1
force Y 1 175 ns

run 10000 ns

