function treasurehunt:debug {msg: "Running reward tick"}

# setup data & call create_reward
$function treasurehunt:_internal/create_reward with storage treasurehunt:game available_locations[$(location_roll)]

# move location into populated locations
$data modify storage treasurehunt:game populated_locations append from storage treasurehunt:game available_locations[$(location_roll)]
$data remove storage treasurehunt:game available_locations[$(location_roll)]

# update values
scoreboard players operation .max_available_location treasurehunt.store -= .num1 treasurehunt.store
execute store result storage treasurehunt:game max_available_location int 1 run scoreboard players get .max_available_location treasurehunt.store
scoreboard players operation .max_populated_location treasurehunt.store += .num1 treasurehunt.store
execute store result storage treasurehunt:game max_populated_location int 1 run scoreboard players get .max_populated_location treasurehunt.store
