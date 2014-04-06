restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/EDGE_DCTR/*

# value time, value time (after the actual time value)
force CLK_EDGE_DCTR 0 0, 1 50ns -r 100ns

force INPUT_EDGE_DCTR 1 125

run 600 ns