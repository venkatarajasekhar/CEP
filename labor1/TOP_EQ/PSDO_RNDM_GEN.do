restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/PSDO_RNDM_GEN/*

# value time, value time (after the actual time value)
force CLK_RNDM 1 0, 0 150ns -r 300ns

# 1: reset
force RESET_RNDM 1 0

# 2: kein reset mehr, 0 einfuegen
force RESET_RNDM 0 60

run 1600 ns
