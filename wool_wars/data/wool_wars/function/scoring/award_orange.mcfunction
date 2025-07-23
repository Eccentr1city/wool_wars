# Award point to orange team
scoreboard players add #orange ww_orange 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Orange","color":"gold","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#orange","objective":"ww_orange"},"color":"gold","bold":true},{"text":" points","color":"green"}] 