# Award point to Purple team
scoreboard players add #purple ww_purple 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Purple","color":"dark_purple","bold":true},{"text":" Team scores! Current score: ","color":"green"},{"score":{"name":"#purple","objective":"ww_purple"},"color":"dark_purple","bold":true},{"text":" points","color":"green"}]
