# Award point to white team
scoreboard players add #white ww_white 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"White","color":"white","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#white","objective":"ww_white"},"color":"white","bold":true},{"text":" points","color":"green"}] 