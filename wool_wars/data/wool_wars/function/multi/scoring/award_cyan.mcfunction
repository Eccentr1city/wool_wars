# Award point to Cyan team in multi-location mode
scoreboard players add #cyan ww_cyan 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Cyan","color":"dark_aqua","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#cyan","objective":"ww_cyan"},"color":"dark_aqua","bold":true},{"text":" points","color":"green"}]
