# Check what block is at the check location (dynamic version)

# Store previous wool type
scoreboard players operation #previous ww_previous_wool = #current ww_current_wool

# Reset current wool type
scoreboard players set #current ww_current_wool 0

# Create marker entity at check location
summon marker 0 80 0 {Tags:["ww_check_marker"]}
execute store result entity @e[type=marker,tag=ww_check_marker,limit=1] Pos[0] double 1 run scoreboard players get #location ww_check_x
execute store result entity @e[type=marker,tag=ww_check_marker,limit=1] Pos[1] double 1 run scoreboard players get #location ww_check_y
execute store result entity @e[type=marker,tag=ww_check_marker,limit=1] Pos[2] double 1 run scoreboard players get #location ww_check_z

# Check for each wool color at the marker location
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:white_wool run scoreboard players set #current ww_current_wool 1
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:orange_wool run scoreboard players set #current ww_current_wool 2
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:magenta_wool run scoreboard players set #current ww_current_wool 3
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:light_blue_wool run scoreboard players set #current ww_current_wool 4
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:yellow_wool run scoreboard players set #current ww_current_wool 5
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:lime_wool run scoreboard players set #current ww_current_wool 6
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:pink_wool run scoreboard players set #current ww_current_wool 7
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:gray_wool run scoreboard players set #current ww_current_wool 8
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:light_gray_wool run scoreboard players set #current ww_current_wool 9
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:cyan_wool run scoreboard players set #current ww_current_wool 10
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:purple_wool run scoreboard players set #current ww_current_wool 11
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:blue_wool run scoreboard players set #current ww_current_wool 12
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:brown_wool run scoreboard players set #current ww_current_wool 13
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:green_wool run scoreboard players set #current ww_current_wool 14
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:red_wool run scoreboard players set #current ww_current_wool 15
execute at @e[type=marker,tag=ww_check_marker,limit=1] if block ~ ~ ~ minecraft:black_wool run scoreboard players set #current ww_current_wool 16

# Remove marker
kill @e[type=marker,tag=ww_check_marker]

# Check if wool has changed
execute unless score #current ww_current_wool = #previous ww_previous_wool run function wool_wars:detection/wool_changed 