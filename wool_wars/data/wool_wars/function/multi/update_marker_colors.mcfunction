# Update location marker colors based on current wool

# Get coordinates for each location and update marker colors
execute if score #multi ww_loc_count matches 2.. run function wool_wars:multi/util/update_marker_color_0
execute if score #multi ww_loc_count matches 2.. run function wool_wars:multi/util/update_marker_color_1
execute if score #multi ww_loc_count matches 3.. run function wool_wars:multi/util/update_marker_color_2
execute if score #multi ww_loc_count matches 4.. run function wool_wars:multi/util/update_marker_color_3
execute if score #multi ww_loc_count matches 5.. run function wool_wars:multi/util/update_marker_color_4
