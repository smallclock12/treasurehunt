function treasurehunt:debug {msg: "Running reward tick"}

# setup data & call create_reward
$function treasurehunt:_internal/create_reward with storage treasurehunt:game available_locations[$(location_roll)]

# move location into populated locations
$data modify storage treasurehunt:game populated_locations append from storage treasurehunt:game available_locations[$(location_roll)]
$data remove storage treasurehunt:game available_locations[$(location_roll)]

# update values
scoreboard players operation .last_index_available_locations treasurehunt.store -= .num1 treasurehunt.store
execute store result storage treasurehunt:game last_index_available_locations int 1 run scoreboard players get .last_index_available_locations treasurehunt.store
scoreboard players operation .last_index_populated_locations treasurehunt.store += .num1 treasurehunt.store
execute store result storage treasurehunt:game last_index_populated_locations int 1 run scoreboard players get .last_index_populated_locations treasurehunt.store
