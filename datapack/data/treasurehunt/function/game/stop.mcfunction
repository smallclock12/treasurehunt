scoreboard players set .game_active treasurehunt.store 0
scoreboard players set .game_ticks treasurehunt.store 0

function treasurehunt:_internal/location_loop { call: "treasurehunt:_internal/clear_location" }

execute at @e[type=minecraft:marker, tag=treasure_hunt_location_start, limit=1] run tellraw @a[distance=..100] [{text:"The treasure hunt has come to a close.", bold:true, color:"green"}]
minecraft:kill @e[type=minecraft:marker, tag=treasure_hunt_location_start]
