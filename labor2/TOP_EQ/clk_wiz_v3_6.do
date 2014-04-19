restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/clk_wiz_v3_6/*

# value time, value time (after the actual time value)
force CLK_IN1 0 0, 1 1000ns -r 2000ns

run 10000 ns

