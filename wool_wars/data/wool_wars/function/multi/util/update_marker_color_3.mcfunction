# Update marker color at location 3 based on current wool

# Store coordinates in storage
execute store result storage wool_wars:multi x int 1 run scoreboard players get #multi ww_loc_x_3
execute store result storage wool_wars:multi y int 1 run scoreboard players get #multi ww_loc_y_3
execute store result storage wool_wars:multi z int 1 run scoreboard players get #multi ww_loc_z_3

# Update team assignment based on wool color
execute if score #multi ww_current_wool_3 matches 0 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_white"}
execute if score #multi ww_current_wool_3 matches 1 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_white"}
execute if score #multi ww_current_wool_3 matches 2 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_orange"}
execute if score #multi ww_current_wool_3 matches 3 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_magenta"}
execute if score #multi ww_current_wool_3 matches 4 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_light_blue"}
execute if score #multi ww_current_wool_3 matches 5 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_yellow"}
execute if score #multi ww_current_wool_3 matches 6 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_lime"}
execute if score #multi ww_current_wool_3 matches 7 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_pink"}
execute if score #multi ww_current_wool_3 matches 8 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_gray"}
execute if score #multi ww_current_wool_3 matches 9 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_light_gray"}
execute if score #multi ww_current_wool_3 matches 10 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_cyan"}
execute if score #multi ww_current_wool_3 matches 11 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_purple"}
execute if score #multi ww_current_wool_3 matches 12 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_blue"}
execute if score #multi ww_current_wool_3 matches 13 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_brown"}
execute if score #multi ww_current_wool_3 matches 14 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_green"}
execute if score #multi ww_current_wool_3 matches 15 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_red"}
execute if score #multi ww_current_wool_3 matches 16 run function wool_wars:multi/util/set_marker_team_3 {team:"ww_black"}
