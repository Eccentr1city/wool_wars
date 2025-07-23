# Set Y coordinate
# Usage: /function wool_wars:util/set_location_y {value:Y}

$scoreboard players set #location ww_check_y $(value)
$tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Y coordinate set to: ","color":"yellow"},{"text":"$(value)","color":"aqua"}] 