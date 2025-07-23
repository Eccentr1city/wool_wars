# Set Z coordinate
# Usage: /function wool_wars:util/set_location_z {value:Z}

$scoreboard players set #location ww_check_z $(value)
$tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"text":"Z coordinate set to: ","color":"yellow"},{"text":"$(value)","color":"aqua"}] 