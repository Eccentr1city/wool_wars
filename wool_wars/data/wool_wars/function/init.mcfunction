# Wool Wars Initialization
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Datapack loaded successfully!","color":"green"}]

# Create scoreboards for timer
scoreboard objectives add ww_timer dummy "Timer"
scoreboard objectives add ww_max_timer dummy "Max Timer"
scoreboard objectives add ww_seconds dummy "Seconds"
scoreboard objectives add ww_minutes dummy "Minutes"
scoreboard objectives add ww_temp dummy "Temp Calculations"
scoreboard objectives add ww_paused dummy "Timer Paused"

# Create math constants for timer display
scoreboard players set #20 ww_temp 20
scoreboard players set #60 ww_temp 60

# Create scoreboards for team scores
scoreboard objectives add ww_white dummy "White Team"
scoreboard objectives add ww_orange dummy "Orange Team"
scoreboard objectives add ww_magenta dummy "Magenta Team"
scoreboard objectives add ww_light_blue dummy "Light Blue Team"
scoreboard objectives add ww_yellow dummy "Yellow Team"
scoreboard objectives add ww_lime dummy "Lime Team"
scoreboard objectives add ww_pink dummy "Pink Team"
scoreboard objectives add ww_gray dummy "Gray Team"
scoreboard objectives add ww_light_gray dummy "Light Gray Team"
scoreboard objectives add ww_cyan dummy "Cyan Team"
scoreboard objectives add ww_purple dummy "Purple Team"
scoreboard objectives add ww_blue dummy "Blue Team"
scoreboard objectives add ww_brown dummy "Brown Team"
scoreboard objectives add ww_green dummy "Green Team"
scoreboard objectives add ww_red dummy "Red Team"
scoreboard objectives add ww_black dummy "Black Team"

# Create scoreboards for wool detection
scoreboard objectives add ww_current_wool dummy "Current Wool"
scoreboard objectives add ww_previous_wool dummy "Previous Wool"

# Create scoreboard for check location
scoreboard objectives add ww_check_x dummy "Check X"
scoreboard objectives add ww_check_y dummy "Check Y"
scoreboard objectives add ww_check_z dummy "Check Z"

# Create scoreboard for wool replenishment
scoreboard objectives add ww_wool_check dummy "Wool Check Timer"

# Create scoreboard for bedrock placement detection
scoreboard objectives add ww_placed_bedrock minecraft.used:minecraft.bedrock "Placed Bedrock"

# Create scoreboards for multi-location mode
scoreboard objectives add ww_multi_mode dummy "Multi Location Mode"
scoreboard objectives add ww_loc_count dummy "Location Count"
scoreboard objectives add ww_loc_setup_count dummy "Setup Count"
scoreboard objectives add ww_current_loc_index dummy "Current Location Index"

# Create scoreboards for multi-location coordinates (0-4)
scoreboard objectives add ww_loc_x_0 dummy "Location 0 X"
scoreboard objectives add ww_loc_y_0 dummy "Location 0 Y"
scoreboard objectives add ww_loc_z_0 dummy "Location 0 Z"
scoreboard objectives add ww_loc_x_1 dummy "Location 1 X"
scoreboard objectives add ww_loc_y_1 dummy "Location 1 Y"
scoreboard objectives add ww_loc_z_1 dummy "Location 1 Z"
scoreboard objectives add ww_loc_x_2 dummy "Location 2 X"
scoreboard objectives add ww_loc_y_2 dummy "Location 2 Y"
scoreboard objectives add ww_loc_z_2 dummy "Location 2 Z"
scoreboard objectives add ww_loc_x_3 dummy "Location 3 X"
scoreboard objectives add ww_loc_y_3 dummy "Location 3 Y"
scoreboard objectives add ww_loc_z_3 dummy "Location 3 Z"
scoreboard objectives add ww_loc_x_4 dummy "Location 4 X"
scoreboard objectives add ww_loc_y_4 dummy "Location 4 Y"
scoreboard objectives add ww_loc_z_4 dummy "Location 4 Z"

# Create scoreboards for multi-location wool tracking (0-4)
scoreboard objectives add ww_current_wool_0 dummy "Current Wool 0"
scoreboard objectives add ww_previous_wool_0 dummy "Previous Wool 0"
scoreboard objectives add ww_current_wool_1 dummy "Current Wool 1"
scoreboard objectives add ww_previous_wool_1 dummy "Previous Wool 1"
scoreboard objectives add ww_current_wool_2 dummy "Current Wool 2"
scoreboard objectives add ww_previous_wool_2 dummy "Previous Wool 2"
scoreboard objectives add ww_current_wool_3 dummy "Current Wool 3"
scoreboard objectives add ww_previous_wool_3 dummy "Previous Wool 3"
scoreboard objectives add ww_current_wool_4 dummy "Current Wool 4"
scoreboard objectives add ww_previous_wool_4 dummy "Previous Wool 4"

# Set default check location
scoreboard players set #location ww_check_x 0
scoreboard players set #location ww_check_y 80
scoreboard players set #location ww_check_z 0

# Initialize timer (10 minutes = 12000 ticks by default)
scoreboard players set #max ww_max_timer 12000
scoreboard players set #timer ww_timer 12000
scoreboard players set #countdown ww_timer 0
scoreboard players set #paused ww_paused 0

# Initialize wool tracking
scoreboard players set #current ww_current_wool 0
scoreboard players set #previous ww_previous_wool 0

# Initialize multi-location mode (disabled by default)
scoreboard players set #multi ww_multi_mode 0
scoreboard players set #multi ww_loc_count 0
scoreboard players set #multi ww_loc_setup_count 0
scoreboard players set #multi ww_current_loc_index 0

# Initialize multi-location wool tracking
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

# Initialize all team scores to 0
scoreboard players set #white ww_white 0
scoreboard players set #orange ww_orange 0
scoreboard players set #magenta ww_magenta 0
scoreboard players set #light_blue ww_light_blue 0
scoreboard players set #yellow ww_yellow 0
scoreboard players set #lime ww_lime 0
scoreboard players set #pink ww_pink 0
scoreboard players set #gray ww_gray 0
scoreboard players set #light_gray ww_light_gray 0
scoreboard players set #cyan ww_cyan 0
scoreboard players set #purple ww_purple 0
scoreboard players set #blue ww_blue 0
scoreboard players set #brown ww_brown 0
scoreboard players set #green ww_green 0
scoreboard players set #red ww_red 0
scoreboard players set #black ww_black 0

# Create teams for each wool color
team add ww_white "White Team"
team modify ww_white color white
team add ww_orange "Orange Team"
team modify ww_orange color gold
team add ww_magenta "Magenta Team"
team modify ww_magenta color light_purple
team add ww_light_blue "Light Blue Team"
team modify ww_light_blue color aqua
team add ww_yellow "Yellow Team"
team modify ww_yellow color yellow
team add ww_lime "Lime Team"
team modify ww_lime color green
team add ww_pink "Pink Team"
team modify ww_pink color light_purple
team add ww_gray "Gray Team"
team modify ww_gray color dark_gray
team add ww_light_gray "Light Gray Team"
team modify ww_light_gray color gray
team add ww_cyan "Cyan Team"
team modify ww_cyan color dark_aqua
team add ww_purple "Purple Team"
team modify ww_purple color dark_purple
team add ww_blue "Blue Team"
team modify ww_blue color blue
team add ww_brown "Brown Team"
team modify ww_brown color gold
team add ww_green "Green Team"
team modify ww_green color dark_green
team add ww_red "Red Team"
team modify ww_red color red
team add ww_black "Black Team"
team modify ww_black color black

# Give the player who ran the init a named bedrock block
give @s minecraft:bedrock[item_name='Wool Wars Control Point',lore=['{"text":"Place to set the control point","color":"gray"}','{"text":"Wool will be checked above this block","color":"gray"}']] 1

tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Run ","color":"yellow"},{"text":"/function wool_wars:init","color":"aqua"},{"text":" to receive a control point block. Jump and place it under you to set the wool target location.","color":"yellow"}]