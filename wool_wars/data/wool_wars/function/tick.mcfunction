# Main tick function - runs every tick

# Check for bedrock placement
function wool_wars:detection/bedrock_placed

# Check for wool changes (single-location mode)
execute if score #multi ww_multi_mode matches 0 run function wool_wars:check_wool_dynamic

# Check for wool changes (multi-location mode)
execute if score #multi ww_multi_mode matches 1 run function wool_wars:multi/check_all_locations

# Update timer
function wool_wars:timer/tick

# Display timer and coordinates constantly (single-location mode)
execute if score #multi ww_multi_mode matches 0 run function wool_wars:timer/display_timer

# Display timer for multi-location mode
execute if score #multi ww_multi_mode matches 1 run function wool_wars:multi/timer/display_timer_multi

# Display particle effects at control points (single-location mode)
execute if score #multi ww_multi_mode matches 0 run function wool_wars:particles/display_single

# Display particle effects at all control points (multi-location mode)
execute if score #multi ww_multi_mode matches 1 run function wool_wars:particles/display_multi

# Check for wool replenishment every 20 ticks (1 second)
scoreboard players add #wool_check ww_wool_check 1
execute if score #wool_check ww_wool_check matches 20.. run function wool_wars:teams/replenish_wool
execute if score #wool_check ww_wool_check matches 20.. run scoreboard players set #wool_check ww_wool_check 0 