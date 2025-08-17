# Award point to Brown team in multi-location mode
scoreboard players add #brown ww_brown 1
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Brown","color":"gold","bold":true},{"text":" Team scores at Location #","color":"green"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"! Current score: ","color":"green"},{"score":{"name":"#brown","objective":"ww_brown"},"color":"gold","bold":true},{"text":" points","color":"green"}]
