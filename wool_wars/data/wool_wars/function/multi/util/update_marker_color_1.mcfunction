# Update marker color at location 1 based on current wool

# Store coordinates in storage
execute store result storage wool_wars:multi x int 1 run scoreboard players get #multi ww_loc_x_1
execute store result storage wool_wars:multi y int 1 run scoreboard players get #multi ww_loc_y_1
execute store result storage wool_wars:multi z int 1 run scoreboard players get #multi ww_loc_z_1

# Update team assignment based on wool color
execute if score #multi ww_current_wool_1 matches 0 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_white"}
execute if score #multi ww_current_wool_1 matches 1 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_white"}
execute if score #multi ww_current_wool_1 matches 2 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_orange"}
execute if score #multi ww_current_wool_1 matches 3 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_magenta"}
execute if score #multi ww_current_wool_1 matches 4 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_light_blue"}
execute if score #multi ww_current_wool_1 matches 5 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_yellow"}
execute if score #multi ww_current_wool_1 matches 6 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_lime"}
execute if score #multi ww_current_wool_1 matches 7 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_pink"}
execute if score #multi ww_current_wool_1 matches 8 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_gray"}
execute if score #multi ww_current_wool_1 matches 9 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_light_gray"}
execute if score #multi ww_current_wool_1 matches 10 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_cyan"}
execute if score #multi ww_current_wool_1 matches 11 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_purple"}
execute if score #multi ww_current_wool_1 matches 12 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_blue"}
execute if score #multi ww_current_wool_1 matches 13 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_brown"}
execute if score #multi ww_current_wool_1 matches 14 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_green"}
execute if score #multi ww_current_wool_1 matches 15 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_red"}
execute if score #multi ww_current_wool_1 matches 16 run function wool_wars:multi/util/set_marker_team_1 {team:"ww_black"}
