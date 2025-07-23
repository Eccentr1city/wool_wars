# Award point to Cyan team
scoreboard players add #cyan ww_cyan 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Cyan","color":"dark_aqua","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#cyan","objective":"ww_cyan"},"color":"dark_aqua","bold":true},{"text":" points","color":"green"}]
