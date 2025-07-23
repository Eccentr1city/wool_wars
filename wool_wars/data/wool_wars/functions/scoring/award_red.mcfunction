# Award point to Red team
scoreboard players add #red ww_red 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Red","color":"red","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#red","objective":"ww_red"},"color":"red","bold":true},{"text":" points","color":"green"}]
