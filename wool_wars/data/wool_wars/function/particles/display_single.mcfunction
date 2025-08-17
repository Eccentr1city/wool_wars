# Display particles for single-location mode
# Shows color-coded particles at the control point location

# Get the current wool color and display corresponding particles
execute store result storage wool_wars:temp x int 1 run scoreboard players get #location ww_check_x
execute store result storage wool_wars:temp y int 1 run scoreboard players get #location ww_check_y
execute store result storage wool_wars:temp z int 1 run scoreboard players get #location ww_check_z

# Display particles based on current wool color
execute if score #current ww_current_wool matches 0 run function wool_wars:particles/show_neutral with storage wool_wars:temp
execute if score #current ww_current_wool matches 1 run function wool_wars:particles/show_white with storage wool_wars:temp
execute if score #current ww_current_wool matches 2 run function wool_wars:particles/show_orange with storage wool_wars:temp
execute if score #current ww_current_wool matches 3 run function wool_wars:particles/show_magenta with storage wool_wars:temp
execute if score #current ww_current_wool matches 4 run function wool_wars:particles/show_light_blue with storage wool_wars:temp
execute if score #current ww_current_wool matches 5 run function wool_wars:particles/show_yellow with storage wool_wars:temp
execute if score #current ww_current_wool matches 6 run function wool_wars:particles/show_lime with storage wool_wars:temp
execute if score #current ww_current_wool matches 7 run function wool_wars:particles/show_pink with storage wool_wars:temp
execute if score #current ww_current_wool matches 8 run function wool_wars:particles/show_gray with storage wool_wars:temp
execute if score #current ww_current_wool matches 9 run function wool_wars:particles/show_light_gray with storage wool_wars:temp
execute if score #current ww_current_wool matches 10 run function wool_wars:particles/show_cyan with storage wool_wars:temp
execute if score #current ww_current_wool matches 11 run function wool_wars:particles/show_purple with storage wool_wars:temp
execute if score #current ww_current_wool matches 12 run function wool_wars:particles/show_blue with storage wool_wars:temp
execute if score #current ww_current_wool matches 13 run function wool_wars:particles/show_brown with storage wool_wars:temp
execute if score #current ww_current_wool matches 14 run function wool_wars:particles/show_green with storage wool_wars:temp
execute if score #current ww_current_wool matches 15 run function wool_wars:particles/show_red with storage wool_wars:temp
execute if score #current ww_current_wool matches 16 run function wool_wars:particles/show_black with storage wool_wars:temp
