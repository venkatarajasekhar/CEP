restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/SRG/*

# value time, value time (after the actual time value)
force CLK 1 0, 0 50ns -r 100ns

# 1: reset
force NLOAD 1 0 ns
force RESET 1 0 ns
force INPUT 0 0 ns

# 2: kein reset mehr, 0 einfuegen
force NLOAD 1 60 ns
force RESET 0 60 ns
force INPUT 0 60 ns

# 3: kein reset mehr, 1 einfuegen
force NLOAD 1 500 ns
force RESET 0 500 ns
force INPUT 1 500 ns

# 4: kein reset mehr, 0 einfuegen
force NLOAD 1 850 ns
force RESET 0 850 ns 
force INPUT 0 850 ns

# 5: kein reset mehr, ausgabe
force NLOAD 0 1275 ns
force RESET 0 1275 ns
force INPUT 0 1275 ns

run 1600 ns