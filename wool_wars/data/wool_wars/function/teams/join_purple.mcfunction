# Join Purple team

# Leave any existing team
team leave @s

# Join purple team
team join ww_purple @s

# Give player purple wool
give @s minecraft:purple_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Purple","color":"dark_purple","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
