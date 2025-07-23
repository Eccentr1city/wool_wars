# Handle wool changes

# If previous was wool (>0) and current is not wool (0), wool was destroyed
execute if score #previous ww_previous_wool matches 1.. if score #current ww_current_wool matches 0 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Wool destroyed!","color":"red"}]

# If current is wool (>0), announce placement
execute if score #current ww_current_wool matches 1 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"White","color":"white","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 2 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Orange","color":"gold","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 3 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Magenta","color":"light_purple","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 4 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Light Blue","color":"aqua","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 5 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Yellow","color":"yellow","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 6 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Lime","color":"green","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 7 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Pink","color":"light_purple","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 8 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Gray","color":"dark_gray","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 9 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Light Gray","color":"gray","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 10 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Cyan","color":"dark_aqua","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 11 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Purple","color":"dark_purple","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 12 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Blue","color":"blue","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 13 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Brown","color":"gold","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 14 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Green","color":"dark_green","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 15 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Red","color":"red","bold":true},{"text":" wool placed!","color":"yellow"}]
execute if score #current ww_current_wool matches 16 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Team ","color":"yellow"},{"text":"Black","color":"black","bold":true},{"text":" wool placed!","color":"yellow"}]

# Play sound for wool change
execute at @a run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1 