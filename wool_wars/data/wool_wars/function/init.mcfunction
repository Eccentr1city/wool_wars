# Wool Wars Initialization
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Datapack loaded successfully!","color":"green"}]

# Create scoreboards for timer
scoreboard objectives add ww_timer dummy "Timer"
scoreboard objectives add ww_max_timer dummy "Max Timer"
scoreboard objectives add ww_seconds dummy "Seconds"
scoreboard objectives add ww_minutes dummy "Minutes"

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

# Set default check location
scoreboard players set #location ww_check_x 0
scoreboard players set #location ww_check_y 80
scoreboard players set #location ww_check_z 0

# Initialize timer (10 minutes = 12000 ticks by default)
scoreboard players set #max ww_max_timer 12000
scoreboard players set #timer ww_timer 12000
scoreboard players set #countdown ww_timer 0

# Initialize wool tracking
scoreboard players set #current ww_current_wool 0
scoreboard players set #previous ww_previous_wool 0

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

tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Default check location: ","color":"yellow"},{"text":"0, 80, 0","color":"aqua"}]
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Use ","color":"yellow"},{"text":"/function wool_wars:util/set_location {x:X, y:Y, z:Z}","color":"aqua"},{"text":" to change","color":"yellow"}] 