# 1 minute warning
tellraw @a ["",{"text":"⏰ ","color":"yellow"},{"text":"1 minute","color":"red","bold":true},{"text":" until scoring!","color":"yellow"}]
execute at @a run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.6 1.2 