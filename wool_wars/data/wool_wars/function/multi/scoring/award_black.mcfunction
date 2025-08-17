# Award point to Black team in multi-location mode
scoreboard players add #black ww_black 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Black","color":"black","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#black","objective":"ww_black"},"color":"black","bold":true},{"text":" points","color":"green"}]
