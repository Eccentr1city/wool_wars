# Handle placement of the Wool Wars Control Point bedrock
# Run as the player who placed bedrock, at their location

# Find the nearest bedrock block within 5 blocks that was just placed
# We'll check in a small radius around the player
execute as @s at @s anchored eyes positioned ^ ^ ^3 anchored feet positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:detection/set_control_point
execute as @s at @s anchored eyes positioned ^ ^ ^2 anchored feet positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:detection/set_control_point
execute as @s at @s anchored eyes positioned ^ ^ ^1 anchored feet positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:detection/set_control_point

# Also check directly below and around the player
execute as @s at @s positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:detection/set_control_point
execute as @s at @s positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:detection/set_control_point
execute as @s at @s positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:bedrock run function wool_wars:detection/set_control_point
execute as @s at @s positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:bedrock run function wool_wars:detection/set_control_point
execute as @s at @s positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:bedrock run function wool_wars:detection/set_control_point 