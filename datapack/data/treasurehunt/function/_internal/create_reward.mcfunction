$function treasurehunt:debug {msg: "Creating reward. Location $(x) $(y) $(z) $(rot)."}

$setblock $(x) $(y) $(z) minecraft:chest[facing=$(rot)]{LootTable:"$(loot_table)"}
$particle minecraft:firework $(x) $(y) $(z) 0 1 0 0.1 10
