# Display timer for multi-location mode

# Calculate total seconds from ticks (timer ticks / 20)
scoreboard players operation #total_seconds ww_temp = #timer ww_timer
scoreboard players operation #total_seconds ww_temp /= #20 ww_temp

# Calculate minutes (copy total seconds, then divide by 60)  
scoreboard players operation #display_minutes ww_minutes = #total_seconds ww_temp
scoreboard players operation #display_minutes ww_minutes /= #60 ww_temp

# Calculate remaining seconds (copy total seconds again, then modulo 60)
scoreboard players operation #display_seconds ww_seconds = #total_seconds ww_temp
scoreboard players operation #display_seconds ww_seconds %= #60 ww_temp

# Get coordinates of the next location to be scored
scoreboard players set #next_x ww_temp 0
scoreboard players set #next_y ww_temp 0
scoreboard players set #next_z ww_temp 0

execute if score #multi ww_current_loc_index matches 0 run scoreboard players operation #next_x ww_temp = #multi ww_loc_x_0
execute if score #multi ww_current_loc_index matches 0 run scoreboard players operation #next_y ww_temp = #multi ww_loc_y_0
execute if score #multi ww_current_loc_index matches 0 run scoreboard players operation #next_z ww_temp = #multi ww_loc_z_0

execute if score #multi ww_current_loc_index matches 1 run scoreboard players operation #next_x ww_temp = #multi ww_loc_x_1
execute if score #multi ww_current_loc_index matches 1 run scoreboard players operation #next_y ww_temp = #multi ww_loc_y_1
execute if score #multi ww_current_loc_index matches 1 run scoreboard players operation #next_z ww_temp = #multi ww_loc_z_1

execute if score #multi ww_current_loc_index matches 2 run scoreboard players operation #next_x ww_temp = #multi ww_loc_x_2
execute if score #multi ww_current_loc_index matches 2 run scoreboard players operation #next_y ww_temp = #multi ww_loc_y_2
execute if score #multi ww_current_loc_index matches 2 run scoreboard players operation #next_z ww_temp = #multi ww_loc_z_2

execute if score #multi ww_current_loc_index matches 3 run scoreboard players operation #next_x ww_temp = #multi ww_loc_x_3
execute if score #multi ww_current_loc_index matches 3 run scoreboard players operation #next_y ww_temp = #multi ww_loc_y_3
execute if score #multi ww_current_loc_index matches 3 run scoreboard players operation #next_z ww_temp = #multi ww_loc_z_3

execute if score #multi ww_current_loc_index matches 4 run scoreboard players operation #next_x ww_temp = #multi ww_loc_x_4
execute if score #multi ww_current_loc_index matches 4 run scoreboard players operation #next_y ww_temp = #multi ww_loc_y_4
execute if score #multi ww_current_loc_index matches 4 run scoreboard players operation #next_z ww_temp = #multi ww_loc_z_4

# Display timer with location info in actionbar
# Show normal timer when not paused
execute if score #paused ww_paused matches 0 if score #timer ww_timer matches 1.. run title @a actionbar ["",{"text":"⏱ ","color":"gold","bold":true},{"score":{"name":"#display_minutes","objective":"ww_minutes"},"color":"yellow","bold":true},{"text":"m ","color":"yellow","bold":true},{"score":{"name":"#display_seconds","objective":"ww_seconds"},"color":"yellow","bold":true},{"text":"s → Loc #","color":"yellow","bold":true},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true},{"text":"  ","color":"white"},{"score":{"name":"#next_x","objective":"ww_temp"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#next_y","objective":"ww_temp"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#next_z","objective":"ww_temp"},"color":"white","bold":true}]

# Show paused timer
execute if score #paused ww_paused matches 1 if score #timer ww_timer matches 1.. run title @a actionbar ["",{"text":"⏸ PAUSED ","color":"red","bold":true},{"score":{"name":"#display_minutes","objective":"ww_minutes"},"color":"gray","bold":true},{"text":"m ","color":"gray","bold":true},{"score":{"name":"#display_seconds","objective":"ww_seconds"},"color":"gray","bold":true},{"text":"s → Loc #","color":"gray","bold":true},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"dark_aqua","bold":true},{"text":"  ","color":"gray"},{"score":{"name":"#next_x","objective":"ww_temp"},"color":"gray","bold":true},{"text":", ","color":"gray"},{"score":{"name":"#next_y","objective":"ww_temp"},"color":"gray","bold":true},{"text":", ","color":"gray"},{"score":{"name":"#next_z","objective":"ww_temp"},"color":"gray","bold":true}]

# Display "TIME'S UP!" when timer reaches zero
execute if score #timer ww_timer matches 0 run title @a actionbar ["",{"text":"⏱ TIME'S UP!","color":"red","bold":true}]
