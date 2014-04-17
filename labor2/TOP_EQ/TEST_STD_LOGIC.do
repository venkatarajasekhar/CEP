restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/TEST_STD_LOGIC/*

# value time, value time (after the actual time value)
force CLK 0 0, 1 50ns -r 100ns

# 1: reset
force RESET 1 25 ns

# 2: kein reset
force RESET 0 110 ns

# 3: y = 1
force Y 1 130 ns

# 4: y = 1
force Y 0 180 ns

run 300 ns

