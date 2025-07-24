# Reset all scores

# Reset all team scores to 0
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

# Reset timer
scoreboard players operation #timer ww_timer = #max ww_max_timer
scoreboard players set #countdown ww_timer 0

# Announce reset
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"All scores have been reset!","color":"yellow"}]
execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 2 