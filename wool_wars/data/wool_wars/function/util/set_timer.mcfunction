# Set timer interval in minutes
# Usage: /function wool_wars:util/set_timer {minutes:X}

# Convert minutes to ticks (1 minute = 1200 ticks)
$scoreboard players set #max ww_max_timer $(minutes)
scoreboard players set #temp ww_max_timer 1200
scoreboard players operation #max ww_max_timer *= #temp ww_max_timer

# Reset current timer to new max value
scoreboard players operation #timer ww_timer = #max ww_max_timer

# Announce the change
execute if score #multi ww_multi_mode matches 0 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer interval set to ","color":"yellow"},{"text":"$(minutes)","color":"aqua","bold":true},{"text":" minutes","color":"yellow"}]
execute if score #multi ww_multi_mode matches 1 run tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Timer interval set to ","color":"yellow"},{"text":"$(minutes)","color":"aqua","bold":true},{"text":" minutes between location scoring","color":"yellow"}]
execute at @a run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.4 1 