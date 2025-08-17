# Handle placement of bedrock blocks in multi-location mode
# Run as the player who placed bedrock, at their location

# Only process if in multi-location mode and setup is not complete
execute unless score #multi ww_multi_mode matches 1 run return 0
execute if score #multi ww_loc_setup_count >= #multi ww_loc_count run return 0

# Find the nearest bedrock block within 5 blocks that was just placed
# Check in a small radius around the player
execute as @s at @s anchored eyes positioned ^ ^ ^3 anchored feet positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:multi/detection/set_control_point
execute as @s at @s anchored eyes positioned ^ ^ ^2 anchored feet positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:multi/detection/set_control_point
execute as @s at @s anchored eyes positioned ^ ^ ^1 anchored feet positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:multi/detection/set_control_point

# Also check directly below and around the player
execute as @s at @s positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:multi/detection/set_control_point
execute as @s at @s positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:multi/detection/set_control_point
execute as @s at @s positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:multi/detection/set_control_point
execute as @s at @s positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:bedrock run function wool_wars:multi/detection/set_control_point
execute as @s at @s positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:bedrock run function wool_wars:multi/detection/set_control_point
