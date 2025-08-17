# Display particles for multi-location mode
# Shows color-coded particles at all active control points

# Only process if in multi-location mode and setup is complete
execute unless score #multi ww_multi_mode matches 1 run return 0
execute unless score #multi ww_loc_setup_count >= #multi ww_loc_count run return 0

# Display particles at each active location
execute if score #multi ww_loc_count matches 2.. run function wool_wars:particles/display_location_0
execute if score #multi ww_loc_count matches 2.. run function wool_wars:particles/display_location_1
execute if score #multi ww_loc_count matches 3.. run function wool_wars:particles/display_location_2
execute if score #multi ww_loc_count matches 4.. run function wool_wars:particles/display_location_3
execute if score #multi ww_loc_count matches 5.. run function wool_wars:particles/display_location_4
