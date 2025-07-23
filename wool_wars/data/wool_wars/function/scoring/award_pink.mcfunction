# Award point to Pink team
scoreboard players add #pink ww_pink 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Pink","color":"light_purple","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#pink","objective":"ww_pink"},"color":"light_purple","bold":true},{"text":" points","color":"green"}]
