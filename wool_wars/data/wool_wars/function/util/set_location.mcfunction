# Set custom check location
# Usage: /function wool_wars:util/set_location {x:X, y:Y, z:Z}

$scoreboard players set #location ww_check_x $(x)
$scoreboard players set #location ww_check_y $(y)
$scoreboard players set #location ww_check_z $(z)

$tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Check location set to: ","color":"yellow"},{"text":"$(x), $(y), $(z)","color":"aqua","bold":true}]
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1

# Show a particle effect at the new location  
$particle minecraft:end_rod $(x) $(y) $(z) 0.5 0.5 0.5 0.01 20 force 