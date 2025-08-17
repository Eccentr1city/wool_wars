# Check wool at location 2

# Store coordinates in storage for macro function
execute store result storage wool_wars:multi x int 1 run scoreboard players get #multi ww_loc_x_2
execute store result storage wool_wars:multi y int 1 run scoreboard players get #multi ww_loc_y_2
execute store result storage wool_wars:multi z int 1 run scoreboard players get #multi ww_loc_z_2

# Use the helper function to check at the exact coordinates
function wool_wars:multi/util/check_wool_at_position_2 with storage wool_wars:multi
