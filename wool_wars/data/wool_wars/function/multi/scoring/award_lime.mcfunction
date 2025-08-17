# Award point to Lime team in multi-location mode
scoreboard players add #lime ww_lime 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Lime","color":"green","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#lime","objective":"ww_lime"},"color":"green","bold":true},{"text":" points","color":"green"}]
