# Award point to Green team
scoreboard players add #green ww_green 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Green","color":"dark_green","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#green","objective":"ww_green"},"color":"dark_green","bold":true},{"text":" points","color":"green"}]
