restart

view wave
# view signals
# view processes

delete wave *
add wave -height 30 sim:/PSDO_RNDM_GEN/*

# value time, value time (after the actual time value)
force CLK_RNDM 0 0, 1 50ns -r 100ns

# 1: reset
force RESET_RNDM 1 0
force NLOAD_RNDM 1 0

# 2: kein reset mehr
force RESET_RNDM 0 200
force NLOAD_RNDM 1 200

# 3: ausgabe
force NLOAD_RNDM 0 375

# 4: schieben
force NLOAD_RNDM 1 475

# 5: ausgabe
force NLOAD_RNDM 0 575

force NLOAD_RNDM 1 675

force NLOAD_RNDM 0 775

force NLOAD_RNDM 1 875

force NLOAD_RNDM 0 975

force NLOAD_RNDM 1 1075

force NLOAD_RNDM 0 1175

force NLOAD_RNDM 1 1275

force NLOAD_RNDM 0 1375

force RESET_RNDM 1 1400

force RESET_RNDM 0 1650

force NLOAD_RNDM 1 1675

force NLOAD_RNDM 0 1775

force NLOAD_RNDM 1 1875

force NLOAD_RNDM 0 1975

force NLOAD_RNDM 1 2075

run 2200 ns
