# Award point to Blue team
scoreboard players add #blue ww_blue 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Blue","color":"blue","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#blue","objective":"ww_blue"},"color":"blue","bold":true},{"text":" points","color":"green"}]
