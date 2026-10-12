execute store result storage treasurehunt:game max_location int 1 run scoreboard players get .max_location treasurehunt.store
execute store result storage treasurehunt:game max_reward int 1 run scoreboard players get .max_reward treasurehunt.store
data modify storage treasurehunt:game available_locations set from storage treasurehunt:locations locations
data remove storage treasurehunt:game populated_locations

scoreboard players operation .max_available_location treasurehunt.store = .max_location treasurehunt.store
execute store result storage treasurehunt:game max_available_location int 1 run scoreboard players get .max_available_location treasurehunt.store

scoreboard players set .max_populated_location treasurehunt.store -1
execute store result storage treasurehunt:game max_populated_location int 1 run scoreboard players get .max_populated_location treasurehunt.store

# activate game
scoreboard players set .game_active treasurehunt.store 1
