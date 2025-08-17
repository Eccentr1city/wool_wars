# Advance to the next location in the rotation

# Increment location index
scoreboard players add #multi ww_current_loc_index 1

# Wrap around if we exceed the location count
execute if score #multi ww_current_loc_index >= #multi ww_loc_count run scoreboard players set #multi ww_current_loc_index 0

# Announce the next location
tellraw @a ["",{"text":"","color":"green"},{"text":"──────────────────────────","color":"gray"}]
tellraw @a ["",{"text":"🎮 ","color":"green"},{"text":"Next target: Location #","color":"green","bold":true},{"score":{"name":"#multi","objective":"ww_current_loc_index"},"color":"aqua","bold":true}]
tellraw @a ["",{"text":"","color":"green"},{"text":"──────────────────────────","color":"gray"}]
