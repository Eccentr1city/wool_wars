# Reset the timer without affecting scores

# Reset timer to maximum value
scoreboard players operation #timer ww_timer = #max ww_max_timer
scoreboard players set #countdown ww_timer 0

# Unpause if paused
scoreboard players set #paused ww_paused 0

# Announce reset
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer has been reset by ","color":"yellow"},{"selector":"@s","color":"aqua"},{"text":"!","color":"yellow"}]

# Show current timer duration
scoreboard players operation #minutes ww_minutes = #max ww_max_timer
scoreboard players operation #minutes ww_minutes /= #20 ww_temp
scoreboard players operation #minutes ww_minutes /= #60 ww_temp

tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer set to ","color":"gray"},{"score":{"name":"#minutes","objective":"ww_minutes"},"color":"aqua"},{"text":" minutes","color":"gray"}]

# Play sound effect
execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 1 