# Join Green team

# Leave any existing team
team leave @s

# Join green team
team join ww_green @s

# Give player green wool
give @s minecraft:green_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Green","color":"dark_green","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
