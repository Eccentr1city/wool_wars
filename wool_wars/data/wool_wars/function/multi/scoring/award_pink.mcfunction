# Award point to Pink team in multi-location mode
scoreboard players add #pink ww_pink 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Pink","color":"light_purple","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#pink","objective":"ww_pink"},"color":"light_purple","bold":true},{"text":" points","color":"green"}]
