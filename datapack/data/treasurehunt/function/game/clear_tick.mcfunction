function treasurehunt:debug {msg: "Running clear tick"}

# verify there is something to clear up
execute unless score .max_populated_location treasurehunt.store >= .game_max_populated_location treasurehunt.store run minecraft:return fail

function treasurehunt:debug {msg: "Clear tick passed check"}

# setup data & call clear_reward
function treasurehunt:_internal/clear_location with storage treasurehunt:game populated_locations[0]

# move location into available locations
data modify storage treasurehunt:game available_locations append from storage treasurehunt:game populated_locations[0]
data remove storage treasurehunt:game populated_locations[0]

# update values
scoreboard players operation .max_available_location treasurehunt.store += .num1 treasurehunt.store
execute store result storage treasurehunt:game max_available_location int 1 run scoreboard players get .max_available_location treasurehunt.store
scoreboard players operation .max_populated_location treasurehunt.store -= .num1 treasurehunt.store
execute store result storage treasurehunt:game max_populated_location int 1 run scoreboard players get .max_populated_location treasurehunt.store

