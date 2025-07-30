# Pause the timer

# Check if already paused
execute if score #paused ww_paused matches 1 run tellraw @s ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer is already paused!","color":"red"}]
execute if score #paused ww_paused matches 1 run return 0

# Set pause state
scoreboard players set #paused ww_paused 1

# Announce pause
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer has been ","color":"yellow"},{"text":"PAUSED","color":"red","bold":true},{"text":" by ","color":"yellow"},{"selector":"@s","color":"aqua"}]

# Play sound effect
execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.5 0.5 