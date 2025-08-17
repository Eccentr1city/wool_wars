# Set up multi-location mode
# Usage: /function wool_wars:multi/setup {count:N}
# Where N is between 2 and 5

# Validate count parameter (must be 2-5)
$scoreboard players set #temp ww_temp $(count)
execute unless score #temp ww_temp matches 2..5 run tellraw @s ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Error: Location count must be between 2 and 5","color":"red"}]
execute unless score #temp ww_temp matches 2..5 run return 0

# Clear any existing location markers and processing markers
kill @e[tag=ww_location_marker]
kill @e[tag=ww_processed_bedrock]

# Enable multi-location mode
scoreboard players set #multi ww_multi_mode 1
$scoreboard players set #multi ww_loc_count $(count)
scoreboard players set #multi ww_loc_setup_count 0
scoreboard players set #multi ww_current_loc_index 0

# Reset all location coordinates
scoreboard players set #multi ww_loc_x_0 0
scoreboard players set #multi ww_loc_y_0 0
scoreboard players set #multi ww_loc_z_0 0
scoreboard players set #multi ww_loc_x_1 0
scoreboard players set #multi ww_loc_y_1 0
scoreboard players set #multi ww_loc_z_1 0
scoreboard players set #multi ww_loc_x_2 0
scoreboard players set #multi ww_loc_y_2 0
scoreboard players set #multi ww_loc_z_2 0
scoreboard players set #multi ww_loc_x_3 0
scoreboard players set #multi ww_loc_y_3 0
scoreboard players set #multi ww_loc_z_3 0
scoreboard players set #multi ww_loc_x_4 0
scoreboard players set #multi ww_loc_y_4 0
scoreboard players set #multi ww_loc_z_4 0

# Reset all wool tracking
scoreboard players set #multi ww_current_wool_0 0
scoreboard players set #multi ww_previous_wool_0 0
scoreboard players set #multi ww_current_wool_1 0
scoreboard players set #multi ww_previous_wool_1 0
scoreboard players set #multi ww_current_wool_2 0
scoreboard players set #multi ww_previous_wool_2 0
scoreboard players set #multi ww_current_wool_3 0
scoreboard players set #multi ww_previous_wool_3 0
scoreboard players set #multi ww_current_wool_4 0
scoreboard players set #multi ww_previous_wool_4 0

# Calculate timer interval (10 minutes / count)
# 10 minutes = 12000 ticks, so interval = 12000 / count
scoreboard players set #temp ww_temp 12000
$scoreboard players set #divisor ww_temp $(count)
scoreboard players operation #temp ww_temp /= #divisor ww_temp
scoreboard players operation #max ww_max_timer = #temp ww_temp
scoreboard players operation #timer ww_timer = #max ww_max_timer

# Reset timer state
scoreboard players set #countdown ww_timer 0
scoreboard players set #paused ww_paused 0

# Give the player the specified number of bedrock blocks
$give @s minecraft:bedrock[item_name='{"text":"Wool Wars Multi-Location Point","color":"gold","bold":true}',lore=['{"text":"Place to set a control point","color":"gray"}','{"text":"Wool will be checked above this block","color":"gray"}','{"text":"Multi-location mode active","color":"aqua"}']] $(count)

# Announce setup
$tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s","color":"aqua"},{"text":" activated multi-location mode with ","color":"yellow"},{"text":"$(count)","color":"aqua","bold":true},{"text":" locations","color":"yellow"}]
$tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Place all ","color":"yellow"},{"text":"$(count)","color":"aqua","bold":true},{"text":" bedrock blocks to set the control points","color":"yellow"}]
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer interval set to ","color":"yellow"},{"score":{"name":"#temp","objective":"ww_temp"},"color":"aqua","bold":true},{"text":" ticks between locations","color":"yellow"}]

# Play setup sound
execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 1.2
