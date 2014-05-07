restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/FREQ_DIV_TB/*

# value time, value time (after the actual time value)

run 1600 ns

