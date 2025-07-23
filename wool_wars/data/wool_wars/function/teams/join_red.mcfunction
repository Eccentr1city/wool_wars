# Join Red team

# Leave any existing team
team leave @s

# Join red team
team join ww_red @s

# Give player red wool
give @s minecraft:red_wool 64

# Announce
tellraw @a ["",{"text":"[Wool Wars] ","color":"gold","bold":true},{"selector":"@s"},{"text":" joined ","color":"yellow"},{"text":"Red","color":"red","bold":true},{"text":" Team!","color":"yellow"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
