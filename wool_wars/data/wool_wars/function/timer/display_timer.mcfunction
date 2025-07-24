# Display timer function - shows countdown at top of screen

# Calculate total seconds from ticks (timer ticks / 20)
scoreboard players operation #total_seconds ww_temp = #timer ww_timer
scoreboard players operation #total_seconds ww_temp /= #20 ww_temp

# Calculate minutes (copy total seconds, then divide by 60)  
scoreboard players operation #display_minutes ww_minutes = #total_seconds ww_temp
scoreboard players operation #display_minutes ww_minutes /= #60 ww_temp

# Calculate remaining seconds (copy total seconds again, then modulo 60)
scoreboard players operation #display_seconds ww_seconds = #total_seconds ww_temp
scoreboard players operation #display_seconds ww_seconds %= #60 ww_temp

# Display timer and coordinates in actionbar (small text at bottom of screen)
execute if score #timer ww_timer matches 1.. run title @a actionbar ["",{"text":"⏱ ","color":"gold","bold":true},{"score":{"name":"#display_minutes","objective":"ww_minutes"},"color":"yellow","bold":true},{"text":"m ","color":"yellow","bold":true},{"score":{"name":"#display_seconds","objective":"ww_seconds"},"color":"yellow","bold":true},{"text":"s","color":"yellow","bold":true},{"text":"  📍 ","color":"aqua","bold":true},{"score":{"name":"#location","objective":"ww_check_x"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#location","objective":"ww_check_y"},"color":"white","bold":true},{"text":", ","color":"white"},{"score":{"name":"#location","objective":"ww_check_z"},"color":"white","bold":true}]

# Display "TIME'S UP!" when timer reaches zero
execute if score #timer ww_timer matches 0 run title @a actionbar ["",{"text":"⏱ TIME'S UP!","color":"red","bold":true}] 