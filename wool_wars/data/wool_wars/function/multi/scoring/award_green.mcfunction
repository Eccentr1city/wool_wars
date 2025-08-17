# Award point to Green team in multi-location mode
scoreboard players add #green ww_green 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Green","color":"dark_green","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#green","objective":"ww_green"},"color":"dark_green","bold":true},{"text":" points","color":"green"}]
