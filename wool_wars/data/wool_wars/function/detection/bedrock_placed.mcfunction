# Detect and handle placement of the Wool Wars Control Point bedrock block

# Check each player who placed bedrock (single-location mode)
execute as @a[scores={ww_placed_bedrock=1..}] at @s if score #multi ww_multi_mode matches 0 run function wool_wars:detection/handle_bedrock_placement

# Check each player who placed bedrock (multi-location mode)
execute as @a[scores={ww_placed_bedrock=1..}] at @s if score #multi ww_multi_mode matches 1 run function wool_wars:multi/detection/handle_bedrock_placement

# Reset the scoreboard
scoreboard players reset @a ww_placed_bedrock 