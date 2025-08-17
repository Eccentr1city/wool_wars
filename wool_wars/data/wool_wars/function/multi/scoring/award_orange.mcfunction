# Award point to Orange team in multi-location mode
scoreboard players add #orange ww_orange 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Orange","color":"gold","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#orange","objective":"ww_orange"},"color":"gold","bold":true},{"text":" points","color":"green"}]
