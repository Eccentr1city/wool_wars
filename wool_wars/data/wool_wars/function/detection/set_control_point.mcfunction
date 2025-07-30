# Set the control point location to one block above the bedrock
# This function is called at the bedrock's position

# Store the current position (bedrock location) in a marker entity
summon minecraft:marker ~ ~ ~ {Tags:["ww_pos_getter"]}

# Get the coordinates from the marker
execute store result score #location ww_check_x run data get entity @n[tag=ww_pos_getter] Pos[0]
execute store result score #location ww_check_y run data get entity @n[tag=ww_pos_getter] Pos[1]
execute store result score #location ww_check_z run data get entity @n[tag=ww_pos_getter] Pos[2]

# Remove the temporary marker
kill @e[tag=ww_pos_getter]

# Add 1 to Y coordinate (wool will be checked above the bedrock)
scoreboard players add #location ww_check_y 1

# Create temporary storage for coordinates to display
execute store result storage wool_wars:temp x int 1 run scoreboard players get #location ww_check_x
execute store result storage wool_wars:temp y int 1 run scoreboard players get #location ww_check_y
execute store result storage wool_wars:temp z int 1 run scoreboard players get #location ww_check_z

# Announce the new location
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Control point set by ","color":"yellow"},{"selector":"@s","color":"aqua"},{"text":"!","color":"yellow"}]
function wool_wars:util/show_location

# Reset the timer
scoreboard players operation #timer ww_timer = #max ww_max_timer
scoreboard players set #countdown ww_timer 0
scoreboard players set #paused ww_paused 0
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer has been reset!","color":"yellow"}]

# Play sound and particle effects
execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 1.5
execute positioned ~ ~1 ~ run particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.1 50 force
execute positioned ~ ~1 ~ run particle minecraft:totem_of_undying ~ ~ ~ 0.3 0.5 0.3 0.2 20 force

# Add glowing effect to show the location temporarily
execute positioned ~ ~1 ~ run summon minecraft:marker ~ ~ ~ {Tags:["ww_temp_marker"]}
execute positioned ~ ~1 ~ run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 1 force
schedule function wool_wars:detection/remove_temp_marker 200t 