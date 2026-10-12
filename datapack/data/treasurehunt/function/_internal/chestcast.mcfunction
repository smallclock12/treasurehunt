scoreboard players remove .chestcast treasurehunt.store 1

execute if block ~ ~ ~ minecraft:chest run return run function treasurehunt:_internal/hit_chest

execute if score .chestcast treasurehunt.store matches 1.. positioned ^ ^ ^.5 run function treasurehunt:_internal/chestcast
