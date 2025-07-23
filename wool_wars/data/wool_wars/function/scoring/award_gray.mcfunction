# Award point to Gray team
scoreboard players add #gray ww_gray 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Gray","color":"dark_gray","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#gray","objective":"ww_gray"},"color":"dark_gray","bold":true},{"text":" points","color":"green"}]
