# Check wool at location 0

# Store coordinates in storage for macro function
execute store result storage wool_wars:multi x int 1 run scoreboard players get #multi ww_loc_x_0
execute store result storage wool_wars:multi y int 1 run scoreboard players get #multi ww_loc_y_0
execute store result storage wool_wars:multi z int 1 run scoreboard players get #multi ww_loc_z_0

# Use the helper function to check at the exact coordinates
function wool_wars:multi/util/check_wool_at_position_0 with storage wool_wars:multi
