# Show gray team particles
# Gray particles with stone effect

# Dust particles with gray color (RGB: 0.3, 0.3, 0.3)
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:1.5} ~ ~ ~ 0.3 0.3 0.3 0 3 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.35,0.35,0.35],scale:1.0} ~ ~0.5 ~ 0.2 0.5 0.2 0 2 force

# Vertical beam effect for visibility through blocks
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:2.0} ~ ~1 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:2.0} ~ ~2 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:2.0} ~ ~3 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:1.5} ~ ~4 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:1.0} ~ ~5 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.25,0.25,0.25],scale:0.8} ~ ~6 ~ 0 1 0 0 1 force

# Ring effect at base
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:1.2} ~0.5 ~ ~ 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:1.2} ~-0.5 ~ ~ 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:1.2} ~ ~ ~0.5 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.3,0.3,0.3],scale:1.2} ~ ~ ~-0.5 0 0 0 0 1 force
