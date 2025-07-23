# Join Orange team

# Leave any existing team
team leave @s

# Join orange team
team join ww_orange @s

# Give player orange wool
give @s minecraft:orange_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Orange","color":"gold","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
