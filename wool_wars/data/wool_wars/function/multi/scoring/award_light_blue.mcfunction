# Award point to Light Blue team in multi-location mode
scoreboard players add #light_blue ww_light_blue 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Light Blue","color":"aqua","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#light_blue","objective":"ww_light_blue"},"color":"aqua","bold":true},{"text":" points","color":"green"}]
