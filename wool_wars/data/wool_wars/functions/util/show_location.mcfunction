# Show current check location

tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Current check location:","color":"yellow"}]
tellraw @a ["",{"text":"  X: ","color":"gray"},{"score":{"name":"#location","objective":"ww_check_x"},"color":"aqua"}]
tellraw @a ["",{"text":"  Y: ","color":"gray"},{"score":{"name":"#location","objective":"ww_check_y"},"color":"aqua"}]
tellraw @a ["",{"text":"  Z: ","color":"gray"},{"score":{"name":"#location","objective":"ww_check_z"},"color":"aqua"}] 