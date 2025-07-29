# Check what block is at the check location (dynamic version)

# Store previous wool type
scoreboard players operation #previous ww_previous_wool = #current ww_current_wool

# Reset current wool type
scoreboard players set #current ww_current_wool 0

# Check for each wool color at the stored check location using execute positioned
execute store result storage wool_wars:temp x int 1 run scoreboard players get #location ww_check_x
execute store result storage wool_wars:temp y int 1 run scoreboard players get #location ww_check_y
execute store result storage wool_wars:temp z int 1 run scoreboard players get #location ww_check_z

# Use the helper function to check at the exact coordinates
function wool_wars:check_wool_at_position with storage wool_wars:temp

# Check if wool has changed
execute unless score #current ww_current_wool = #previous ww_previous_wool run function wool_wars:detection/wool_changed 