# Called when all locations have been set up in multi-location mode

# Announce completion
tellraw @a ["",{"text":"","color":"green"},{"text":"══════════════════════════","color":"gold"}]
tellraw @a ["",{"text":"🎮 ","color":"green"},{"text":"Multi-Location Setup Complete!","color":"green","bold":true}]
tellraw @a ["",{"text":"","color":"green"},{"text":"══════════════════════════","color":"gold"}]

# Show all locations
function wool_wars:multi/show_locations

# Reset timer and start the game
scoreboard players operation #timer ww_timer = #max ww_max_timer
scoreboard players set #countdown ww_timer 0
scoreboard players set #paused ww_paused 0

tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Game started! First location to be scored: ","color":"yellow"},{"text":"Location #0","color":"aqua","bold":true}]

# Play completion sound
execute at @a run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 0.7 1
