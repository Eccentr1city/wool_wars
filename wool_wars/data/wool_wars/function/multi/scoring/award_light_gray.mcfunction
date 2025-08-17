# Award point to Light Gray team in multi-location mode
scoreboard players add #light_gray ww_light_gray 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Light Gray","color":"gray","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#light_gray","objective":"ww_light_gray"},"color":"gray","bold":true},{"text":" points","color":"green"}]
