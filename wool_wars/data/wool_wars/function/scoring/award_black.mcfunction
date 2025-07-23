# Award point to Black team
scoreboard players add #black ww_black 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Black","color":"black","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#black","objective":"ww_black"},"color":"black","bold":true},{"text":" points","color":"green"}]
