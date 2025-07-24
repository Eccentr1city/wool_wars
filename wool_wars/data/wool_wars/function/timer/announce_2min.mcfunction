# 2 minute warning
tellraw @a ["",{"text":"⏰ ","color":"yellow"},{"text":"2 minutes","color":"gold","bold":true},{"text":" until scoring!","color":"yellow"}]
execute at @a run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 1 