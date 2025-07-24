# Join Lime team

# Leave any existing team
team leave @s

# Join lime team
team join ww_lime @s

# Give player lime wool
give @s minecraft:lime_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Lime","color":"green","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.4 1
