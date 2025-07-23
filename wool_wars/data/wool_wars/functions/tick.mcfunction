# Main tick function - runs every tick

# Check for wool changes
function wool_wars:check_wool_dynamic

# Update timer
function wool_wars:timer/tick

# Check for wool replenishment every 20 ticks (1 second)
scoreboard players add #wool_check ww_wool_check 1
execute if score #wool_check ww_wool_check matches 20.. run function wool_wars:teams/replenish_wool
execute if score #wool_check ww_wool_check matches 20.. run scoreboard players set #wool_check ww_wool_check 0 