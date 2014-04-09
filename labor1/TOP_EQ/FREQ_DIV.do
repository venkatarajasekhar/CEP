restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/FREQ_DIV/*

# value time, value time (after the actual time value)
force CLK 0 0, 1 50ns -r 100ns

run 1600 ns

