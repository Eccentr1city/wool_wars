# Set custom check location

tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Location Commands:","color":"yellow"}]
tellraw @a ["",{"text":"  Set X: ","color":"gray"},{"text":"/function wool_wars:util/set_location_x {value:X}","color":"aqua"}]
tellraw @a ["",{"text":"  Set Y: ","color":"gray"},{"text":"/function wool_wars:util/set_location_y {value:Y}","color":"aqua"}]
tellraw @a ["",{"text":"  Set Z: ","color":"gray"},{"text":"/function wool_wars:util/set_location_z {value:Z}","color":"aqua"}]
tellraw @a ["",{"text":"  Show current: ","color":"gray"},{"text":"/function wool_wars:util/show_location","color":"aqua"}]
tellraw @a [""]
tellraw @a ["",{"text":"Example: ","color":"gray"},{"text":"/function wool_wars:util/set_location_y {value:100}","color":"aqua"}] 