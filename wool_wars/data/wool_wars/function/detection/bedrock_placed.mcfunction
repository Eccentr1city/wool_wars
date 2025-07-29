# Detect and handle placement of the Wool Wars Control Point bedrock block

# Check each player who placed bedrock
execute as @a[scores={ww_placed_bedrock=1..}] at @s run function wool_wars:detection/handle_bedrock_placement

# Reset the scoreboard
scoreboard players reset @a ww_placed_bedrock 