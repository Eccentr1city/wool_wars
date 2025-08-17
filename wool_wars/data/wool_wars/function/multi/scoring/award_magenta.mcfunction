# Award point to Magenta team in multi-location mode
scoreboard players add #magenta ww_magenta 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Magenta","color":"light_purple","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#magenta","objective":"ww_magenta"},"color":"light_purple","bold":true},{"text":" points","color":"green"}]
