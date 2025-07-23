# List all players and their teams

tellraw @a ["",{"text":"=== Wool Wars Team Roster ===","color":"gold","bold":true}]
tellraw @a [""]

# Show each team's members
tellraw @a ["",{"text":"White: ","color":"white","bold":true},{"selector":"@a[team=ww_white]","color":"white"}]
tellraw @a ["",{"text":"Orange: ","color":"gold","bold":true},{"selector":"@a[team=ww_orange]","color":"gold"}]
tellraw @a ["",{"text":"Magenta: ","color":"light_purple","bold":true},{"selector":"@a[team=ww_magenta]","color":"light_purple"}]
tellraw @a ["",{"text":"Light Blue: ","color":"aqua","bold":true},{"selector":"@a[team=ww_light_blue]","color":"aqua"}]
tellraw @a ["",{"text":"Yellow: ","color":"yellow","bold":true},{"selector":"@a[team=ww_yellow]","color":"yellow"}]
tellraw @a ["",{"text":"Lime: ","color":"green","bold":true},{"selector":"@a[team=ww_lime]","color":"green"}]
tellraw @a ["",{"text":"Pink: ","color":"light_purple","bold":true},{"selector":"@a[team=ww_pink]","color":"light_purple"}]
tellraw @a ["",{"text":"Gray: ","color":"dark_gray","bold":true},{"selector":"@a[team=ww_gray]","color":"dark_gray"}]
tellraw @a ["",{"text":"Light Gray: ","color":"gray","bold":true},{"selector":"@a[team=ww_light_gray]","color":"gray"}]
tellraw @a ["",{"text":"Cyan: ","color":"dark_aqua","bold":true},{"selector":"@a[team=ww_cyan]","color":"dark_aqua"}]
tellraw @a ["",{"text":"Purple: ","color":"dark_purple","bold":true},{"selector":"@a[team=ww_purple]","color":"dark_purple"}]
tellraw @a ["",{"text":"Blue: ","color":"blue","bold":true},{"selector":"@a[team=ww_blue]","color":"blue"}]
tellraw @a ["",{"text":"Brown: ","color":"gold","bold":true},{"selector":"@a[team=ww_brown]","color":"gold"}]
tellraw @a ["",{"text":"Green: ","color":"dark_green","bold":true},{"selector":"@a[team=ww_green]","color":"dark_green"}]
tellraw @a ["",{"text":"Red: ","color":"red","bold":true},{"selector":"@a[team=ww_red]","color":"red"}]
tellraw @a ["",{"text":"Black: ","color":"black","bold":true},{"selector":"@a[team=ww_black]","color":"black"}]

tellraw @a [""]
tellraw @a ["",{"text":"No Team: ","color":"gray","italic":true},{"selector":"@a[team=]","color":"gray","italic":true}]
tellraw @a [""]
tellraw @a ["",{"text":"=========================","color":"gold","bold":true}] 