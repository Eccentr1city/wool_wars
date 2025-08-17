# Award point to Gray team in multi-location mode
scoreboard players add #gray ww_gray 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Gray","color":"dark_gray","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#gray","objective":"ww_gray"},"color":"dark_gray","bold":true},{"text":" points","color":"green"}]
