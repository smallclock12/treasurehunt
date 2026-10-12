function treasurehunt:debug {msg: "Running reward tick"}

# setup data & call create_reward
data remove storage treasurehunt:tmp createrewardargs
$data modify storage treasurehunt:tmp createrewardargs.reward_target_x set from storage treasurehunt:rewards defaults[$(reward_roll)].x
$data modify storage treasurehunt:tmp createrewardargs.reward_target_y set from storage treasurehunt:rewards defaults[$(reward_roll)].y
$data modify storage treasurehunt:tmp createrewardargs.reward_target_z set from storage treasurehunt:rewards defaults[$(reward_roll)].z
$data modify storage treasurehunt:tmp createrewardargs.location_target_x set from storage treasurehunt:game available_locations[$(location_roll)].x
$data modify storage treasurehunt:tmp createrewardargs.location_target_y set from storage treasurehunt:game available_locations[$(location_roll)].y
$data modify storage treasurehunt:tmp createrewardargs.location_target_z set from storage treasurehunt:game available_locations[$(location_roll)].z
function treasurehunt:game/create_reward with storage treasurehunt:tmp createrewardargs

# move location into populated locations
$data modify storage treasurehunt:game populated_locations append from storage treasurehunt:game available_locations[$(location_roll)]
$data remove storage treasurehunt:game available_locations[$(location_roll)]

# update values
scoreboard players operation .max_available_location treasurehunt.store -= .num1 treasurehunt.store
execute store result storage treasurehunt:game max_available_location int 1 run scoreboard players get .max_available_location treasurehunt.store
scoreboard players operation .max_populated_location treasurehunt.store += .num1 treasurehunt.store
execute store result storage treasurehunt:game max_populated_location int 1 run scoreboard players get .max_populated_location treasurehunt.store


