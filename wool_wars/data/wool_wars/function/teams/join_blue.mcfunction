# Join Blue team

# Leave any existing team
team leave @s

# Join blue team
team join ww_blue @s

# Give player blue wool
give @s minecraft:blue_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Blue","color":"blue","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
