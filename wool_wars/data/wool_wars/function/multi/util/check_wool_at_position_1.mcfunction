# Check for wool at specific coordinates for location 1
# Called with macro parameters: x, y, z

# Check for each wool color at the specified position
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:white_wool run scoreboard players set #multi ww_current_wool_1 1
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:orange_wool run scoreboard players set #multi ww_current_wool_1 2
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:magenta_wool run scoreboard players set #multi ww_current_wool_1 3
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:light_blue_wool run scoreboard players set #multi ww_current_wool_1 4
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:yellow_wool run scoreboard players set #multi ww_current_wool_1 5
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:lime_wool run scoreboard players set #multi ww_current_wool_1 6
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:pink_wool run scoreboard players set #multi ww_current_wool_1 7
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:gray_wool run scoreboard players set #multi ww_current_wool_1 8
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:light_gray_wool run scoreboard players set #multi ww_current_wool_1 9
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:cyan_wool run scoreboard players set #multi ww_current_wool_1 10
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:purple_wool run scoreboard players set #multi ww_current_wool_1 11
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:blue_wool run scoreboard players set #multi ww_current_wool_1 12
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:brown_wool run scoreboard players set #multi ww_current_wool_1 13
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:green_wool run scoreboard players set #multi ww_current_wool_1 14
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:red_wool run scoreboard players set #multi ww_current_wool_1 15
$execute positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:black_wool run scoreboard players set #multi ww_current_wool_1 16
