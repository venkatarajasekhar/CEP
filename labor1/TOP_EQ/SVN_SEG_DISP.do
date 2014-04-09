restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/SVN_SEG_DISP/*

# value time, value time (after the actual time value)
force CLK 0 0, 1 150ns -r 300ns


# Value of SVN SEG DISP
force SVN_SEG_VALUE 0xfc30 200ns


run 1600 ns
