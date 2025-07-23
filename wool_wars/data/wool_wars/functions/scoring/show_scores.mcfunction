# Show current scores

tellraw @a ["",{"text":"","color":"gold"},{"text":"══════════════════════════","color":"gold"}]
tellraw @a ["",{"text":"       CURRENT SCORES       ","color":"gold","bold":true}]
tellraw @a ["",{"text":"","color":"gold"},{"text":"══════════════════════════","color":"gold"}]

# Only show teams with points > 0
execute if score #white ww_white matches 1.. run tellraw @a ["",{"text":"  "},{"text":"White","color":"white","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#white","objective":"ww_white"},"color":"white"},{"text":" points","color":"gray"}]
execute if score #orange ww_orange matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Orange","color":"gold","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#orange","objective":"ww_orange"},"color":"gold"},{"text":" points","color":"gray"}]
execute if score #magenta ww_magenta matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Magenta","color":"light_purple","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#magenta","objective":"ww_magenta"},"color":"light_purple"},{"text":" points","color":"gray"}]
execute if score #light_blue ww_light_blue matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Light Blue","color":"aqua","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#light_blue","objective":"ww_light_blue"},"color":"aqua"},{"text":" points","color":"gray"}]
execute if score #yellow ww_yellow matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Yellow","color":"yellow","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#yellow","objective":"ww_yellow"},"color":"yellow"},{"text":" points","color":"gray"}]
execute if score #lime ww_lime matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Lime","color":"green","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#lime","objective":"ww_lime"},"color":"green"},{"text":" points","color":"gray"}]
execute if score #pink ww_pink matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Pink","color":"light_purple","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#pink","objective":"ww_pink"},"color":"light_purple"},{"text":" points","color":"gray"}]
execute if score #gray ww_gray matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Gray","color":"dark_gray","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#gray","objective":"ww_gray"},"color":"dark_gray"},{"text":" points","color":"gray"}]
execute if score #light_gray ww_light_gray matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Light Gray","color":"gray","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#light_gray","objective":"ww_light_gray"},"color":"gray"},{"text":" points","color":"gray"}]
execute if score #cyan ww_cyan matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Cyan","color":"dark_aqua","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#cyan","objective":"ww_cyan"},"color":"dark_aqua"},{"text":" points","color":"gray"}]
execute if score #purple ww_purple matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Purple","color":"dark_purple","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#purple","objective":"ww_purple"},"color":"dark_purple"},{"text":" points","color":"gray"}]
execute if score #blue ww_blue matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Blue","color":"blue","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#blue","objective":"ww_blue"},"color":"blue"},{"text":" points","color":"gray"}]
execute if score #brown ww_brown matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Brown","color":"gold","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#brown","objective":"ww_brown"},"color":"gold"},{"text":" points","color":"gray"}]
execute if score #green ww_green matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Green","color":"dark_green","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#green","objective":"ww_green"},"color":"dark_green"},{"text":" points","color":"gray"}]
execute if score #red ww_red matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Red","color":"red","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#red","objective":"ww_red"},"color":"red"},{"text":" points","color":"gray"}]
execute if score #black ww_black matches 1.. run tellraw @a ["",{"text":"  "},{"text":"Black","color":"black","bold":true},{"text":": ","color":"gray"},{"score":{"name":"#black","objective":"ww_black"},"color":"black"},{"text":" points","color":"gray"}]

tellraw @a ["",{"text":"","color":"gold"},{"text":"══════════════════════════","color":"gold"}] 