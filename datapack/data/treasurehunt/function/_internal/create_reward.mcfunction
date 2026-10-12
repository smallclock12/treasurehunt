$function treasurehunt:debug {msg: "Creating reward. Location $(x) $(y) $(z) $(rot)."}

$setblock $(x) $(y) $(z) minecraft:chest[facing=$(rot)]{LootTable:"treasurehunt:treasure"}
$particle minecraft:firework $(x) $(y) $(z) 0 1 0 0.1 10
