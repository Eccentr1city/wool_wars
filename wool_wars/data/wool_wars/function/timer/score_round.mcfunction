# Score the round

# Play scoring sound
execute at @a run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1

# Check what wool is at the location and award points
execute if score #current ww_current_wool matches 1 run function wool_wars:scoring/award_white
execute if score #current ww_current_wool matches 2 run function wool_wars:scoring/award_orange
execute if score #current ww_current_wool matches 3 run function wool_wars:scoring/award_magenta
execute if score #current ww_current_wool matches 4 run function wool_wars:scoring/award_light_blue
execute if score #current ww_current_wool matches 5 run function wool_wars:scoring/award_yellow
execute if score #current ww_current_wool matches 6 run function wool_wars:scoring/award_lime
execute if score #current ww_current_wool matches 7 run function wool_wars:scoring/award_pink
execute if score #current ww_current_wool matches 8 run function wool_wars:scoring/award_gray
execute if score #current ww_current_wool matches 9 run function wool_wars:scoring/award_light_gray
execute if score #current ww_current_wool matches 10 run function wool_wars:scoring/award_cyan
execute if score #current ww_current_wool matches 11 run function wool_wars:scoring/award_purple
execute if score #current ww_current_wool matches 12 run function wool_wars:scoring/award_blue
execute if score #current ww_current_wool matches 13 run function wool_wars:scoring/award_brown
execute if score #current ww_current_wool matches 14 run function wool_wars:scoring/award_green
execute if score #current ww_current_wool matches 15 run function wool_wars:scoring/award_red
execute if score #current ww_current_wool matches 16 run function wool_wars:scoring/award_black

# If no wool, announce no score
execute if score #current ww_current_wool matches 0 run tellraw @a ["",{"text":"❌ ","color":"red"},{"text":"No team scores this round!","color":"yellow"}]

# Show current scores
function wool_wars:scoring/show_scores

# Reset timer and countdown
scoreboard players operation #timer ww_timer = #max ww_max_timer
scoreboard players set #countdown ww_timer 0

# Announce new round
tellraw @a ["",{"text":"","color":"green"},{"text":"──────────────────────────","color":"gray"}]
tellraw @a ["",{"text":"🎮 ","color":"green"},{"text":"New round started!","color":"green","bold":true}]
tellraw @a ["",{"text":"","color":"green"},{"text":"──────────────────────────","color":"gray"}] 