# Show neutral particles (no wool placed)
# Gray particles to indicate unclaimed location

# Dust particles with gray color (RGB: 0.5, 0.5, 0.5)
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.5,0.5,0.5],scale:1.5} ~ ~ ~ 0.3 0.3 0.3 0 2 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.5,0.5,0.5],scale:1.0} ~ ~0.5 ~ 0.2 0.5 0.2 0 1 force

# Vertical beam effect for visibility through blocks
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.5,0.5,0.5],scale:2.0} ~ ~1 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.5,0.5,0.5],scale:2.0} ~ ~2 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.5,0.5,0.5],scale:2.0} ~ ~3 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.5,0.5,0.5],scale:1.5} ~ ~4 ~ 0 1 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[0.5,0.5,0.5],scale:1.0} ~ ~5 ~ 0 1 0 0 1 force

# Ambient particles at ground level
$execute positioned $(x) $(y) $(z) run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 1 force
