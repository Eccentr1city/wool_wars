# Set team for marker at location 1
# Called with macro parameter: team

# Use stored coordinates to find and update the marker
execute store result storage wool_wars:multi x int 1 run scoreboard players get #multi ww_loc_x_1
execute store result storage wool_wars:multi y int 1 run scoreboard players get #multi ww_loc_y_1
execute store result storage wool_wars:multi z int 1 run scoreboard players get #multi ww_loc_z_1
$data modify storage wool_wars:multi team set value "$(team)"
function wool_wars:multi/util/set_marker_team_at_pos with storage wool_wars:multi
