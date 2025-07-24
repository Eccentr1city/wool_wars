# Final countdown

# Check every 20 ticks (1 second)
execute if score #timer ww_timer matches 200 run tellraw @a ["",{"text":"10","color":"red","bold":true}]
execute if score #timer ww_timer matches 200 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.5

execute if score #timer ww_timer matches 180 run tellraw @a ["",{"text":"9","color":"red","bold":true}]
execute if score #timer ww_timer matches 180 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.5

execute if score #timer ww_timer matches 160 run tellraw @a ["",{"text":"8","color":"red","bold":true}]
execute if score #timer ww_timer matches 160 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.6

execute if score #timer ww_timer matches 140 run tellraw @a ["",{"text":"7","color":"red","bold":true}]
execute if score #timer ww_timer matches 140 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.6

execute if score #timer ww_timer matches 120 run tellraw @a ["",{"text":"6","color":"red","bold":true}]
execute if score #timer ww_timer matches 120 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.7

execute if score #timer ww_timer matches 100 run tellraw @a ["",{"text":"5","color":"red","bold":true}]
execute if score #timer ww_timer matches 100 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.7

execute if score #timer ww_timer matches 80 run tellraw @a ["",{"text":"4","color":"red","bold":true}]
execute if score #timer ww_timer matches 80 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.8

execute if score #timer ww_timer matches 60 run tellraw @a ["",{"text":"3","color":"red","bold":true}]
execute if score #timer ww_timer matches 60 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.8

execute if score #timer ww_timer matches 40 run tellraw @a ["",{"text":"2","color":"red","bold":true}]
execute if score #timer ww_timer matches 40 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.9

execute if score #timer ww_timer matches 20 run tellraw @a ["",{"text":"1","color":"red","bold":true}]
execute if score #timer ww_timer matches 20 run execute at @a run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 0.3 0.9 