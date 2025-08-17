# Disable multi-location mode and return to single-location mode

# Clear any existing location markers and processing markers
kill @e[tag=ww_location_marker]
kill @e[tag=ww_processed_bedrock]

# Disable multi-location mode
scoreboard players set #multi ww_multi_mode 0
scoreboard players set #multi ww_loc_count 0
scoreboard players set #multi ww_loc_setup_count 0
scoreboard players set #multi ww_current_loc_index 0

# Reset timer to default (10 minutes)
scoreboard players set #max ww_max_timer 12000
scoreboard players set #timer ww_timer 12000
scoreboard players set #countdown ww_timer 0
scoreboard players set #paused ww_paused 0

# Reset single-location wool tracking
scoreboard players set #current ww_current_wool 0
scoreboard players set #previous ww_previous_wool 0

# Reset single-location coordinates to default
scoreboard players set #location ww_check_x 0
scoreboard players set #location ww_check_y 80
scoreboard players set #location ww_check_z 0

# Announce the change
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Multi-location mode disabled","color":"yellow"}]
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Returned to single-location mode","color":"yellow"}]
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Run ","color":"yellow"},{"text":"/function wool_wars:init","color":"aqua"},{"text":" to set up a new control point","color":"yellow"}]

# Play sound
execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 0.8
