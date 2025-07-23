# Award point to Yellow team
scoreboard players add #yellow ww_yellow 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Yellow","color":"yellow","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#yellow","objective":"ww_yellow"},"color":"yellow","bold":true},{"text":" points","color":"green"}]
