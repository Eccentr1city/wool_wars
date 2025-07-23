# Award point to Brown team
scoreboard players add #brown ww_brown 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Brown","color":"gold","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#brown","objective":"ww_brown"},"color":"gold","bold":true},{"text":" points","color":"green"}]
