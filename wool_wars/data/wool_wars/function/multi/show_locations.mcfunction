# Show all active locations in multi-location mode

# Only show if in multi-location mode
execute unless score #multi ww_multi_mode matches 1 run tellraw @s ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Multi-location mode is not active","color":"red"}]
execute unless score #multi ww_multi_mode matches 1 run return 0

tellraw @a ["",{"text":"","color":"gold"},{"text":"══════════════════════════","color":"gold"}]
tellraw @a ["",{"text":"     MULTI-LOCATION STATUS     ","color":"gold","bold":true}]
tellraw @a ["",{"text":"","color":"gold"},{"text":"══════════════════════════","color":"gold"}]

# Show current target
tellraw @a ["",{"text":"🎯 ","color":"gold"},{"text":"Next target: Location #","color":"yellow"},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true}]
tellraw @a [""]

# Show all locations
execute if score #multi ww_loc_count matches 2.. run tellraw @a ["",{"text":"📍 ","color":"aqua"},{"text":"Location #0: ","color":"yellow"},{"score":{"name":"#multi","objective":"ww_loc_x_0"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_y_0"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_z_0"},"color":"white","bold":true}]

execute if score #multi ww_loc_count matches 2.. run tellraw @a ["",{"text":"📍 ","color":"aqua"},{"text":"Location #1: ","color":"yellow"},{"score":{"name":"#multi","objective":"ww_loc_x_1"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_y_1"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_z_1"},"color":"white","bold":true}]

execute if score #multi ww_loc_count matches 3.. run tellraw @a ["",{"text":"📍 ","color":"aqua"},{"text":"Location #2: ","color":"yellow"},{"score":{"name":"#multi","objective":"ww_loc_x_2"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_y_2"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_z_2"},"color":"white","bold":true}]

execute if score #multi ww_loc_count matches 4.. run tellraw @a ["",{"text":"📍 ","color":"aqua"},{"text":"Location #3: ","color":"yellow"},{"score":{"name":"#multi","objective":"ww_loc_x_3"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_y_3"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_z_3"},"color":"white","bold":true}]

execute if score #multi ww_loc_count matches 5.. run tellraw @a ["",{"text":"📍 ","color":"aqua"},{"text":"Location #4: ","color":"yellow"},{"score":{"name":"#multi","objective":"ww_loc_x_4"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_y_4"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#multi","objective":"ww_loc_z_4"},"color":"white","bold":true}]

tellraw @a ["",{"text":"","color":"gold"},{"text":"══════════════════════════","color":"gold"}]
