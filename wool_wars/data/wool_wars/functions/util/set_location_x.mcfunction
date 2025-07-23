# Set X coordinate
# Usage: /function wool_wars:util/set_location_x {value:X}

$scoreboard players set #location ww_check_x $(value)
$tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"X coordinate set to: ","color":"yellow"},{"text":"$(value)","color":"aqua"}] 