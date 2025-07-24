# Set a specific player to a team
# Usage: /function wool_wars:admin/set_player_team {player:"PlayerName", team:"red"}
# Team options: white, orange, magenta, light_blue, yellow, lime, pink, gray, light_gray, cyan, purple, blue, brown, green, red, black

# Remove player from all teams first
$team leave @a[name="$(player)"]

# Add to specified team
$team join ww_$(team) @a[name="$(player)"]

# Give them wool
$give @a[name="$(player)",team=ww_$(team)] $(team)_wool 64

# Announce the change
$tellraw @a ["",{"text":"[Wool Wars Admin] ","color":"dark_purple","bold":true},{"text":"$(player)","color":"yellow","bold":true},{"text":" has been moved to team ","color":"gray"},{"text":"$(team)","color":"gold","bold":true}]
$execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.4 1 