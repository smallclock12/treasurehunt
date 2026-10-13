execute if score .game_active treasurehunt.store = .num1 treasurehunt.store run minecraft:return run tellraw @s [{text:"Cannot start a new game while one is already running!", bold: true, color: "dark_red"}]

execute if score .location_editor_active treasurehunt.store = .num1 treasurehunt.store run minecraft:return run tellraw @s [{text:"Cannot start a game while location editor is active.", bold: true, color: "dark_red"}]

function treasurehunt:_internal/location_loop { call: "treasurehunt:_internal/set_max_location" }

execute store result storage treasurehunt:game max_location int 1 run scoreboard players get .max_location treasurehunt.store
data modify storage treasurehunt:game available_locations set from storage treasurehunt:locations locations
data remove storage treasurehunt:game populated_locations

scoreboard players operation .max_available_location treasurehunt.store = .max_location treasurehunt.store
execute store result storage treasurehunt:game max_available_location int 1 run scoreboard players get .max_available_location treasurehunt.store

scoreboard players set .max_populated_location treasurehunt.store -1
execute store result storage treasurehunt:game max_populated_location int 1 run scoreboard players get .max_populated_location treasurehunt.store

# activate game
scoreboard objectives remove treasurehunt.game
scoreboard objectives add treasurehunt.game dummy
scoreboard players set .game_active treasurehunt.store 1

tellraw @a[distance=..100] [{text:"Treasure hunt has started!", bold:true, color:"green"}]

