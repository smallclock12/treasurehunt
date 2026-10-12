$function treasurehunt:debug {msg: "Creating reward. Location $(location_target_x) $(location_target_y) $(location_target_z). Reward $(reward_target_x) $(reward_target_y) $(reward_target_z)"}

$setblock $(location_target_x) $(location_target_y) $(location_target_z) minecraft:chest
$data modify block $(location_target_x) $(location_target_y) $(location_target_z) Items set from block $(reward_target_x) $(reward_target_y) $(reward_target_z) Items
$particle minecraft:firework $(location_target_x) $(location_target_y) $(location_target_z) 0 1 0 0.1 10
