# Display particles at location 2

# Store coordinates in storage
execute store result storage wool_wars:temp x int 1 run scoreboard players get #multi ww_loc_x_2
execute store result storage wool_wars:temp y int 1 run scoreboard players get #multi ww_loc_y_2
execute store result storage wool_wars:temp z int 1 run scoreboard players get #multi ww_loc_z_2

# Display particles based on current wool color at location 2
execute if score #multi ww_current_wool_2 matches 0 run function wool_wars:particles/show_neutral with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 1 run function wool_wars:particles/show_white with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 2 run function wool_wars:particles/show_orange with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 3 run function wool_wars:particles/show_magenta with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 4 run function wool_wars:particles/show_light_blue with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 5 run function wool_wars:particles/show_yellow with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 6 run function wool_wars:particles/show_lime with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 7 run function wool_wars:particles/show_pink with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 8 run function wool_wars:particles/show_gray with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 9 run function wool_wars:particles/show_light_gray with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 10 run function wool_wars:particles/show_cyan with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 11 run function wool_wars:particles/show_purple with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 12 run function wool_wars:particles/show_blue with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 13 run function wool_wars:particles/show_brown with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 14 run function wool_wars:particles/show_green with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 15 run function wool_wars:particles/show_red with storage wool_wars:temp
execute if score #multi ww_current_wool_2 matches 16 run function wool_wars:particles/show_black with storage wool_wars:temp

# Add extra particles if this is the current scoring location
execute if score #multi ww_current_loc_index matches 2 run function wool_wars:particles/highlight_active with storage wool_wars:temp
