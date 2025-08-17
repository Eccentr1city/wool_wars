# Highlight the currently active scoring location with extra particles
# This makes it clear which location will be scored next

# Golden ring particles at base level
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:2.0} ~1 ~ ~ 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:2.0} ~-1 ~ ~ 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:2.0} ~ ~ ~1 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:2.0} ~ ~ ~-1 0 0 0 0 1 force

# Diagonal golden particles
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:1.5} ~0.7 ~ ~0.7 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:1.5} ~-0.7 ~ ~0.7 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:1.5} ~0.7 ~ ~-0.7 0 0 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:1.5} ~-0.7 ~ ~-0.7 0 0 0 0 1 force

# Sparkling effect around the location
$execute positioned $(x) $(y) $(z) run particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.01 1 force
$execute positioned $(x) $(y) $(z) run particle minecraft:end_rod ~ ~0.5 ~ 0.3 0.3 0.3 0.01 1 force

# Extra vertical beam particles
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:1.0} ~ ~7 ~ 0 0.5 0 0 1 force
$execute positioned $(x) $(y) $(z) run particle dust{color:[1.0,0.85,0.0],scale:0.8} ~ ~8 ~ 0 0.5 0 0 1 force
