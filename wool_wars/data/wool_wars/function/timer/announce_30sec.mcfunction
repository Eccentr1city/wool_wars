# 30 second warning
tellraw @a ["",{"text":"⏰ ","color":"yellow"},{"text":"30 seconds","color":"red","bold":true},{"text":" until scoring!","color":"yellow"}]
execute at @a run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.7 1.5 