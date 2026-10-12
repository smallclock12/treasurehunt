$function treasurehunt:debug {msg: "Creating reward. Location $(x) $(y) $(z)."}

$setblock $(x) $(y) $(z) minecraft:chest{LootTable:"treasurehunt:treasure"}
$particle minecraft:firework $(x) $(y) $(z) 0 1 0 0.1 10
