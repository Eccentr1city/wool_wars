# Award point to Red team in multi-location mode
scoreboard players add #red ww_red 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Red","color":"red","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#red","objective":"ww_red"},"color":"red","bold":true},{"text":" points","color":"green"}]
