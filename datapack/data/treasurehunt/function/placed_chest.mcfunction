# let non treasurehunt_location_editors keep the advancement
execute if entity @s[tag=!treasurehunt_location_editor] run minecraft:return fail

# find and store chest
tag @s add chestcaster
scoreboard players set .chestcast treasurehunt.store 10
execute at @s anchored eyes positioned ^ ^ ^.1 run function treasurehunt:_internal/chestcast

# tidy up
advancement revoke @s only treasurehunt:placed_chest
tag @s remove chestcaster
