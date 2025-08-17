# Award point to Blue team in multi-location mode
scoreboard players add #blue ww_blue 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Blue","color":"blue","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#blue","objective":"ww_blue"},"color":"blue","bold":true},{"text":" points","color":"green"}]
