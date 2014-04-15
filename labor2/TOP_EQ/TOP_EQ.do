restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/TOP_EQ/*

force CLK 0 0, 1 50ns -r 100ns
force RESET 1 0 ns

force RESET 0 100 ns


run 8000 ns