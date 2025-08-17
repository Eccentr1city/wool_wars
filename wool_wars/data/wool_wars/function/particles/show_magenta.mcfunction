# Show magenta team particles
# Magenta particles with vibrant effect

# Dust particles with magenta color (RGB: 1.0, 0.0, 1.0)
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:1.5} ~ ~ ~ 0.3 0.3 0.3 0 3 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.9,0.0,0.9],scale:1.0} ~ ~0.5 ~ 0.2 0.5 0.2 0 2 force

# Vertical beam effect for visibility through blocks
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:2.0} ~ ~1 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:2.0} ~ ~2 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:2.0} ~ ~3 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:1.5} ~ ~4 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:1.0} ~ ~5 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.8,0.0,0.8],scale:0.8} ~ ~6 ~ 0 1 0 0 1 force

# Ring effect at base
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:1.2} ~0.5 ~ ~ 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:1.2} ~-0.5 ~ ~ 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:1.2} ~ ~ ~0.5 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.0,1.0],scale:1.2} ~ ~ ~-0.5 0 0 0 0 1 force
