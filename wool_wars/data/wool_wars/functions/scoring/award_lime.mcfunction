# Award point to Lime team
scoreboard players add #lime ww_lime 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Lime","color":"green","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#lime","objective":"ww_lime"},"color":"green","bold":true},{"text":" points","color":"green"}]
