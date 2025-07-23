# Join Cyan team

# Leave any existing team
team leave @s

# Join cyan team
team join ww_cyan @s

# Give player cyan wool
give @s minecraft:cyan_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Cyan","color":"dark_aqua","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
