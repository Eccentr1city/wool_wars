# Award point to Purple team in multi-location mode
scoreboard players add #purple ww_purple 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Purple","color":"dark_purple","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#purple","objective":"ww_purple"},"color":"dark_purple","bold":true},{"text":" points","color":"green"}]
