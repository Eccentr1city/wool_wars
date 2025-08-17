# Award point to White team in multi-location mode
scoreboard players add #white ww_white 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"White","color":"white","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#white","objective":"ww_white"},"color":"white","bold":true},{"text":" points","color":"green"}]
