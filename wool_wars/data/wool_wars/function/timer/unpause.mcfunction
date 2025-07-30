# Unpause the timer

# Check if not paused
execute if score #paused ww_paused matches 0 run tellraw @s ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer is not paused!","color":"red"}]
execute if score #paused ww_paused matches 0 run return 0

# Set pause state
scoreboard players set #paused ww_paused 0

# Announce unpause
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer has been ","color":"yellow"},{"text":"RESUMED","color":"green","bold":true},{"text":" by ","color":"yellow"},{"selector":"@s","color":"aqua"}]

# Play sound effect
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.5 1.5 