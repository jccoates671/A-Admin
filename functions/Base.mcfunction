//setup
tellraw @a[tag=!AadminJoin] {"rawtext":[{"text":"§4A-Admin"},{"text":"§6 By JC GWE Is Installed On This Server/World/Realm"}]}
tag @a add AadminJoin
scoreboard objectives add AadminClearlag dummy
//Freeze
execute @e[type=item,name="Packed Ice"] ~ ~ ~ /tag @s add deployed
execute @e[type=item,name="Packed Ice",tag=deployed] ~ ~ ~ /tag @p[r=2] add deployerFREZ
execute @e[type=item,name="Packed Ice",tag=deployed] ~ ~ ~ /kill @s
execute @a[tag=deployerFREZ] ~ ~ ~ /tag @p[x=^,y=^,z=^] add Frozen
execute @a[tag=deployerFREZ] ~ ~ ~ /give @s packed_ice
tag @a remove deployerFREZ

//Vanish
execute @a[tag=Vanish] ~ ~ ~ /effect @s invisibility 1 255 true
title @a[tag=Vanish] actionbar "§1§lYou Are In Vanish"

//clearlag
scoreboard players add @a AadminClearlag 1
execute @s[scores={AadminClearlag=10000}] ~ ~ ~ /tellraw @a {"rawtext":[{"text":"§4[A-Admin]"},{"text":"§6 Clearing Entitys"}]}
execute @s[scores={AadminClearlag=10000}] ~ ~ ~ /kill @a[type=item]
execute @s[scores={AadminClearlag=10000}] ~ ~ ~ /scoreboard players set @a AadminClearlag 0