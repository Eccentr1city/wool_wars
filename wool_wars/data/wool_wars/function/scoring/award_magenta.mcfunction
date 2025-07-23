# Award point to Magenta team
scoreboard players add #magenta ww_magenta 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Magenta","color":"light_purple","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#magenta","objective":"ww_magenta"},"color":"light_purple","bold":true},{"text":" points","color":"green"}]
