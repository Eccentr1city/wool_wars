# Show black team particles
# Black particles with dark effect

# Dust particles with black color (RGB: 0.1, 0.1, 0.1)
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.1,0.1,0.1],scale:1.5} ~ ~ ~ 0.3 0.3 0.3 0 3 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.15,0.15,0.15],scale:1.0} ~ ~0.5 ~ 0.2 0.5 0.2 0 2 force

# Vertical beam effect for visibility through blocks
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.1,0.1,0.1],scale:2.0} ~ ~1 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.1,0.1,0.1],scale:2.0} ~ ~2 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.1,0.1,0.1],scale:2.0} ~ ~3 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.1,0.1,0.1],scale:1.5} ~ ~4 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.1,0.1,0.1],scale:1.0} ~ ~5 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.05,0.05,0.05],scale:0.8} ~ ~6 ~ 0 1 0 0 1 force

# Ring effect at base with purple tint for visibility
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.2,0.0,0.2],scale:1.2} ~0.5 ~ ~ 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.2,0.0,0.2],scale:1.2} ~-0.5 ~ ~ 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.2,0.0,0.2],scale:1.2} ~ ~ ~0.5 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.2,0.0,0.2],scale:1.2} ~ ~ ~-0.5 0 0 0 0 1 force
