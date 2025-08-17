# Set a control point location in multi-location mode
# This function is called at the bedrock's position

# Only process if in multi-location mode and setup is not complete
execute unless score #multi ww_multi_mode matches 1 run return 0
execute if score #multi ww_loc_setup_count >= #multi ww_loc_count run return 0

# Check if this bedrock block has already been processed
# Look for existing markers at this location
execute if entity @e[tag=ww_processed_bedrock,distance=..1] run return 0

# Mark this bedrock as processed
summon minecraft:marker ~ ~ ~ {Tags:["ww_processed_bedrock"]}

# Store the current position (bedrock location) in a marker entity
summon minecraft:marker ~ ~ ~ {Tags:["ww_pos_getter"]}

# Get the coordinates from the marker
execute store result score #temp_x ww_temp run data get entity @n[tag=ww_pos_getter] Pos[0]
execute store result score #temp_y ww_temp run data get entity @n[tag=ww_pos_getter] Pos[1]
execute store result score #temp_z ww_temp run data get entity @n[tag=ww_pos_getter] Pos[2]

# Remove the temporary marker
kill @e[tag=ww_pos_getter]

# Add 1 to Y coordinate (wool will be checked above the bedrock)
scoreboard players add #temp_y ww_temp 1

# Store coordinates based on current setup count
execute if score #multi ww_loc_setup_count matches 0 run scoreboard players operation #multi ww_loc_x_0 = #temp_x ww_temp
execute if score #multi ww_loc_setup_count matches 0 run scoreboard players operation #multi ww_loc_y_0 = #temp_y ww_temp
execute if score #multi ww_loc_setup_count matches 0 run scoreboard players operation #multi ww_loc_z_0 = #temp_z ww_temp

execute if score #multi ww_loc_setup_count matches 1 run scoreboard players operation #multi ww_loc_x_1 = #temp_x ww_temp
execute if score #multi ww_loc_setup_count matches 1 run scoreboard players operation #multi ww_loc_y_1 = #temp_y ww_temp
execute if score #multi ww_loc_setup_count matches 1 run scoreboard players operation #multi ww_loc_z_1 = #temp_z ww_temp

execute if score #multi ww_loc_setup_count matches 2 run scoreboard players operation #multi ww_loc_x_2 = #temp_x ww_temp
execute if score #multi ww_loc_setup_count matches 2 run scoreboard players operation #multi ww_loc_y_2 = #temp_y ww_temp
execute if score #multi ww_loc_setup_count matches 2 run scoreboard players operation #multi ww_loc_z_2 = #temp_z ww_temp

execute if score #multi ww_loc_setup_count matches 3 run scoreboard players operation #multi ww_loc_x_3 = #temp_x ww_temp
execute if score #multi ww_loc_setup_count matches 3 run scoreboard players operation #multi ww_loc_y_3 = #temp_y ww_temp
execute if score #multi ww_loc_setup_count matches 3 run scoreboard players operation #multi ww_loc_z_3 = #temp_z ww_temp

execute if score #multi ww_loc_setup_count matches 4 run scoreboard players operation #multi ww_loc_x_4 = #temp_x ww_temp
execute if score #multi ww_loc_setup_count matches 4 run scoreboard players operation #multi ww_loc_y_4 = #temp_y ww_temp
execute if score #multi ww_loc_setup_count matches 4 run scoreboard players operation #multi ww_loc_z_4 = #temp_z ww_temp

# Create a glowing marker at the location (one block above bedrock)
execute positioned ~ ~1 ~ run summon minecraft:marker ~ ~ ~ {Tags:["ww_location_marker"],Glowing:1b,team:"ww_white"}

# Increment setup count
scoreboard players add #multi ww_loc_setup_count 1

# Announce the new location
scoreboard players operation #current_loc ww_temp = #multi ww_loc_setup_count
scoreboard players remove #current_loc ww_temp 1
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Location #","color":"yellow"},{"score":{"name":"#current_loc","objective":"ww_temp"},"color":"aqua","bold":true},{"text":" set by ","color":"yellow"},{"selector":"@s","color":"aqua"},{"text":" at ","color":"yellow"},{"score":{"name":"#temp_x","objective":"ww_temp"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#temp_y","objective":"ww_temp"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#temp_z","objective":"ww_temp"},"color":"white","bold":true}]

# Check if setup is complete
execute if score #multi ww_loc_setup_count >= #multi ww_loc_count run function wool_wars:multi/setup_complete

# Play sound and particle effects
execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 1.5
execute positioned ~ ~1 ~ run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.1 50 force
execute positioned ~ ~1 ~ run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0.5 0.3 0.2 20 force
