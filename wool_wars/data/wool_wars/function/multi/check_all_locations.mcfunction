# Check wool at all active locations in multi-location mode

# Only process if in multi-location mode and setup is complete
execute unless score #multi ww_multi_mode matches 1 run return 0
execute unless score #multi ww_loc_setup_count >= #multi ww_loc_count run return 0

# Store previous wool states
scoreboard players operation #multi ww_previous_wool_0 = #multi ww_current_wool_0
scoreboard players operation #multi ww_previous_wool_1 = #multi ww_current_wool_1
scoreboard players operation #multi ww_previous_wool_2 = #multi ww_current_wool_2
scoreboard players operation #multi ww_previous_wool_3 = #multi ww_current_wool_3
scoreboard players operation #multi ww_previous_wool_4 = #multi ww_current_wool_4

# Reset current wool states
scoreboard players set #multi ww_current_wool_0 0
scoreboard players set #multi ww_current_wool_1 0
scoreboard players set #multi ww_current_wool_2 0
scoreboard players set #multi ww_current_wool_3 0
scoreboard players set #multi ww_current_wool_4 0

# Check wool at each active location
execute if score #multi ww_loc_count matches 2.. run function wool_wars:multi/util/check_wool_at_location_0
execute if score #multi ww_loc_count matches 2.. run function wool_wars:multi/util/check_wool_at_location_1
execute if score #multi ww_loc_count matches 3.. run function wool_wars:multi/util/check_wool_at_location_2
execute if score #multi ww_loc_count matches 4.. run function wool_wars:multi/util/check_wool_at_location_3
execute if score #multi ww_loc_count matches 5.. run function wool_wars:multi/util/check_wool_at_location_4

# Check for wool changes at each location
execute unless score #multi ww_current_wool_0 = #multi ww_previous_wool_0 run function wool_wars:multi/detection/wool_changed_0
execute unless score #multi ww_current_wool_1 = #multi ww_previous_wool_1 run function wool_wars:multi/detection/wool_changed_1
execute unless score #multi ww_current_wool_2 = #multi ww_previous_wool_2 run function wool_wars:multi/detection/wool_changed_2
execute unless score #multi ww_current_wool_3 = #multi ww_previous_wool_3 run function wool_wars:multi/detection/wool_changed_3
execute unless score #multi ww_current_wool_4 = #multi ww_previous_wool_4 run function wool_wars:multi/detection/wool_changed_4

# Update location marker colors based on current wool
function wool_wars:multi/update_marker_colors
