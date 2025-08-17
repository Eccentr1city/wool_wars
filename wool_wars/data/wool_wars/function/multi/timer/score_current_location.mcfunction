# Score the current location in multi-location mode

# Play scoring sound
execute at @a run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 0.5 1

# Get the current wool at the active location
scoreboard players set #current_wool ww_temp 0
execute if score #multi ww_current_loc_index matches 0 run scoreboard players operation #current_wool ww_temp = #multi ww_current_wool_0
execute if score #multi ww_current_loc_index matches 1 run scoreboard players operation #current_wool ww_temp = #multi ww_current_wool_1
execute if score #multi ww_current_loc_index matches 2 run scoreboard players operation #current_wool ww_temp = #multi ww_current_wool_2
execute if score #multi ww_current_loc_index matches 3 run scoreboard players operation #current_wool ww_temp = #multi ww_current_wool_3
execute if score #multi ww_current_loc_index matches 4 run scoreboard players operation #current_wool ww_temp = #multi ww_current_wool_4

# Award points based on wool color
execute if score #current_wool ww_temp matches 1 run function wool_wars:multi/scoring/award_white
execute if score #current_wool ww_temp matches 2 run function wool_wars:multi/scoring/award_orange
execute if score #current_wool ww_temp matches 3 run function wool_wars:multi/scoring/award_magenta
execute if score #current_wool ww_temp matches 4 run function wool_wars:multi/scoring/award_light_blue
execute if score #current_wool ww_temp matches 5 run function wool_wars:multi/scoring/award_yellow
execute if score #current_wool ww_temp matches 6 run function wool_wars:multi/scoring/award_lime
execute if score #current_wool ww_temp matches 7 run function wool_wars:multi/scoring/award_pink
execute if score #current_wool ww_temp matches 8 run function wool_wars:multi/scoring/award_gray
execute if score #current_wool ww_temp matches 9 run function wool_wars:multi/scoring/award_light_gray
execute if score #current_wool ww_temp matches 10 run function wool_wars:multi/scoring/award_cyan
execute if score #current_wool ww_temp matches 11 run function wool_wars:multi/scoring/award_purple
execute if score #current_wool ww_temp matches 12 run function wool_wars:multi/scoring/award_blue
execute if score #current_wool ww_temp matches 13 run function wool_wars:multi/scoring/award_brown
execute if score #current_wool ww_temp matches 14 run function wool_wars:multi/scoring/award_green
execute if score #current_wool ww_temp matches 15 run function wool_wars:multi/scoring/award_red
execute if score #current_wool ww_temp matches 16 run function wool_wars:multi/scoring/award_black

# If no wool, announce no score
execute if score #current_wool ww_temp matches 0 run tellraw @a ["",{"text":"❌ ","color":"red"},{"text":"No team scores at Location #","color":"yellow"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"!","color":"yellow"}]

# Show current scores
function wool_wars:scoring/show_scores

# Advance to next location
function wool_wars:multi/timer/advance_location

# Reset timer
scoreboard players operation #timer ww_timer = #max ww_max_timer
scoreboard players set #countdown ww_timer 0
