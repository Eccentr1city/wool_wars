# Award point to Yellow team in multi-location mode
scoreboard players add #yellow ww_yellow 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Yellow","color":"yellow","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#yellow","objective":"ww_yellow"},"color":"yellow","bold":true},{"text":" points","color":"green"}]
